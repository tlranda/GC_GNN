; ModuleID = 'syr2k_exhaustive/mmp_all_SM_600.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_600.c"
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
  %call862 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1714 = bitcast i8* %call1 to double*
  %polly.access.call1723 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2724 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1723, %call2
  %polly.access.call2743 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2743, %call1
  %2 = or i1 %0, %1
  %polly.access.call763 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call763, %call2
  %4 = icmp ule i8* %polly.access.call2743, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call763, %call1
  %8 = icmp ule i8* %polly.access.call1723, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header836, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1174 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1173 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1172 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1171 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1171, %scevgep1174
  %bound1 = icmp ult i8* %scevgep1173, %scevgep1172
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
  br i1 %exitcond18.not.i, label %vector.ph1178, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1178:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1185 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1186 = shufflevector <4 x i64> %broadcast.splatinsert1185, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1177

vector.body1177:                                  ; preds = %vector.body1177, %vector.ph1178
  %index1179 = phi i64 [ 0, %vector.ph1178 ], [ %index.next1180, %vector.body1177 ]
  %vec.ind1183 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1178 ], [ %vec.ind.next1184, %vector.body1177 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1183, %broadcast.splat1186
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call862, i64 %indvars.iv7.i, i64 %index1179
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1180 = add i64 %index1179, 4
  %vec.ind.next1184 = add <4 x i64> %vec.ind1183, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1180, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1177, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1177
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1178, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit897
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start506, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1241 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1241, label %for.body3.i46.preheader1381, label %vector.ph1242

vector.ph1242:                                    ; preds = %for.body3.i46.preheader
  %n.vec1244 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %vector.ph1242
  %index1245 = phi i64 [ 0, %vector.ph1242 ], [ %index.next1246, %vector.body1240 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call862, i64 %indvars.iv21.i, i64 %index1245
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1246 = add i64 %index1245, 4
  %46 = icmp eq i64 %index.next1246, %n.vec1244
  br i1 %46, label %middle.block1238, label %vector.body1240, !llvm.loop !18

middle.block1238:                                 ; preds = %vector.body1240
  %cmp.n1248 = icmp eq i64 %indvars.iv21.i, %n.vec1244
  br i1 %cmp.n1248, label %for.inc6.i, label %for.body3.i46.preheader1381

for.body3.i46.preheader1381:                      ; preds = %for.body3.i46.preheader, %middle.block1238
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1244, %middle.block1238 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1381, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1381 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call862, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1238, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call862, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !47

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting507
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start300, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1285 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1285, label %for.body3.i60.preheader1379, label %vector.ph1286

vector.ph1286:                                    ; preds = %for.body3.i60.preheader
  %n.vec1288 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1284

vector.body1284:                                  ; preds = %vector.body1284, %vector.ph1286
  %index1289 = phi i64 [ 0, %vector.ph1286 ], [ %index.next1290, %vector.body1284 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call862, i64 %indvars.iv21.i52, i64 %index1289
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1293 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1293, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1290 = add i64 %index1289, 4
  %57 = icmp eq i64 %index.next1290, %n.vec1288
  br i1 %57, label %middle.block1282, label %vector.body1284, !llvm.loop !64

middle.block1282:                                 ; preds = %vector.body1284
  %cmp.n1292 = icmp eq i64 %indvars.iv21.i52, %n.vec1288
  br i1 %cmp.n1292, label %for.inc6.i63, label %for.body3.i60.preheader1379

for.body3.i60.preheader1379:                      ; preds = %for.body3.i60.preheader, %middle.block1282
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1288, %middle.block1282 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1379, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1379 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call862, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1282, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call862, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !47

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting301
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1332 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1332, label %for.body3.i99.preheader1377, label %vector.ph1333

vector.ph1333:                                    ; preds = %for.body3.i99.preheader
  %n.vec1335 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1331

vector.body1331:                                  ; preds = %vector.body1331, %vector.ph1333
  %index1336 = phi i64 [ 0, %vector.ph1333 ], [ %index.next1337, %vector.body1331 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call862, i64 %indvars.iv21.i91, i64 %index1336
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1340 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1340, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1337 = add i64 %index1336, 4
  %68 = icmp eq i64 %index.next1337, %n.vec1335
  br i1 %68, label %middle.block1329, label %vector.body1331, !llvm.loop !66

middle.block1329:                                 ; preds = %vector.body1331
  %cmp.n1339 = icmp eq i64 %indvars.iv21.i91, %n.vec1335
  br i1 %cmp.n1339, label %for.inc6.i102, label %for.body3.i99.preheader1377

for.body3.i99.preheader1377:                      ; preds = %for.body3.i99.preheader, %middle.block1329
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1335, %middle.block1329 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1377, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1377 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call862, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1329, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call862, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !47

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !68
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call862, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !70

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !71

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
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
  %indvar1344 = phi i64 [ %indvar.next1345, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1344, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1346 = icmp ult i64 %88, 4
  br i1 %min.iters.check1346, label %polly.loop_header192.preheader, label %vector.ph1347

vector.ph1347:                                    ; preds = %polly.loop_header
  %n.vec1349 = and i64 %88, -4
  br label %vector.body1343

vector.body1343:                                  ; preds = %vector.body1343, %vector.ph1347
  %index1350 = phi i64 [ 0, %vector.ph1347 ], [ %index.next1351, %vector.body1343 ]
  %90 = shl nuw nsw i64 %index1350, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1354 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1354, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1351 = add i64 %index1350, 4
  %95 = icmp eq i64 %index.next1351, %n.vec1349
  br i1 %95, label %middle.block1341, label %vector.body1343, !llvm.loop !79

middle.block1341:                                 ; preds = %vector.body1343
  %cmp.n1353 = icmp eq i64 %88, %n.vec1349
  br i1 %cmp.n1353, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1341
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1349, %middle.block1341 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1341
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1075.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1345 = add i64 %indvar1344, 1
  br i1 %exitcond1075.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1074.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit224
  %indvars.iv1065 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1066, %polly.loop_exit224 ]
  %indvars.iv = phi i64 [ 1200, %polly.loop_header200.preheader ], [ %indvars.iv.next, %polly.loop_exit224 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit224 ]
  %97 = mul nsw i64 %polly.indvar203, -64
  %98 = shl nsw i64 %polly.indvar203, 6
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit214
  %99 = add nsw i64 %97, 1199
  %100 = shl nuw nsw i64 %polly.indvar203, 1
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit261
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -64
  %indvars.iv.next1066 = add nsw i64 %indvars.iv1065, -64
  %exitcond1073.not = icmp eq i64 %polly.indvar_next204, 19
  br i1 %exitcond1073.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit214, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_exit214 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar209, 1200
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_header212
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1056.not = icmp eq i64 %polly.indvar_next210, 1000
  br i1 %exitcond1056.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_header212, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_header212 ]
  %101 = add nuw nsw i64 %polly.indvar215, %98
  %polly.access.mul.call2219 = mul nuw nsw i64 %101, 1000
  %polly.access.add.call2220 = add nuw nsw i64 %polly.access.mul.call2219, %polly.indvar209
  %polly.access.call2221 = getelementptr double, double* %polly.access.cast.call2724, i64 %polly.access.add.call2220
  %polly.access.call2221.load = load double, double* %polly.access.call2221, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar215, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2221.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next216, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header222:                             ; preds = %polly.loop_exit261, %polly.loop_exit208
  %indvar1358 = phi i64 [ %indvar.next1359, %polly.loop_exit261 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit261 ], [ %indvars.iv1065, %polly.loop_exit208 ]
  %indvars.iv1060 = phi i64 [ %indvars.iv.next1061, %polly.loop_exit261 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit261 ], [ %100, %polly.loop_exit208 ]
  %102 = shl nuw nsw i64 %indvar1358, 5
  %smin1069 = call i64 @llvm.smin.i64(i64 %indvars.iv1067, i64 -1168)
  %103 = add nsw i64 %smin1069, 1199
  %smax = call i64 @llvm.smax.i64(i64 %103, i64 0)
  %104 = shl nsw i64 %polly.indvar225, 5
  %105 = add nsw i64 %104, %97
  %106 = add nsw i64 %105, -1
  %.inv = icmp ugt i64 %105, 63
  %107 = select i1 %.inv, i64 63, i64 %106
  %polly.loop_guard = icmp sgt i64 %107, -1
  %108 = or i64 %105, 31
  %109 = icmp ult i64 %99, %108
  %110 = select i1 %109, i64 %99, i64 %108
  %polly.loop_guard248.not = icmp ugt i64 %105, %110
  br i1 %polly.loop_guard, label %polly.loop_header228.us, label %polly.loop_header222.split

polly.loop_header228.us:                          ; preds = %polly.loop_header222, %polly.loop_exit247.us
  %polly.indvar231.us = phi i64 [ %polly.indvar_next232.us, %polly.loop_exit247.us ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar231.us, 1200
  br label %polly.loop_header234.us

polly.loop_header234.us:                          ; preds = %polly.loop_header228.us, %polly.loop_header234.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_header234.us ], [ 0, %polly.loop_header228.us ]
  %111 = add nuw nsw i64 %polly.indvar237.us, %98
  %polly.access.mul.call1241.us = mul nuw nsw i64 %111, 1000
  %polly.access.add.call1242.us = add nuw nsw i64 %polly.access.mul.call1241.us, %polly.indvar231.us
  %polly.access.call1243.us = getelementptr double, double* %polly.access.cast.call1714, i64 %polly.access.add.call1242.us
  %polly.access.call1243.load.us = load double, double* %polly.access.call1243.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1243.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next238.us = add nuw i64 %polly.indvar237.us, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar237.us, %107
  br i1 %exitcond1058.not, label %polly.loop_exit236.loopexit.us, label %polly.loop_header234.us

polly.loop_header245.us:                          ; preds = %polly.loop_exit236.loopexit.us, %polly.loop_header245.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_header245.us ], [ %105, %polly.loop_exit236.loopexit.us ]
  %112 = add nuw nsw i64 %polly.indvar249.us, %98
  %polly.access.mul.call1253.us = mul nuw nsw i64 %112, 1000
  %polly.access.add.call1254.us = add nuw nsw i64 %polly.access.mul.call1253.us, %polly.indvar231.us
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1714, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257.us = add nuw nsw i64 %polly.indvar249.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1258.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1258.us, align 8
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %polly.loop_cond251.not.not.us = icmp ult i64 %polly.indvar249.us, %110
  br i1 %polly.loop_cond251.not.not.us, label %polly.loop_header245.us, label %polly.loop_exit247.us

polly.loop_exit247.us:                            ; preds = %polly.loop_header245.us, %polly.loop_exit236.loopexit.us
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar_next232.us, 1000
  br i1 %exitcond1059.not, label %polly.loop_header259.preheader, label %polly.loop_header228.us

polly.loop_exit236.loopexit.us:                   ; preds = %polly.loop_header234.us
  br i1 %polly.loop_guard248.not, label %polly.loop_exit247.us, label %polly.loop_header245.us

polly.loop_header222.split:                       ; preds = %polly.loop_header222
  br i1 %polly.loop_guard248.not, label %polly.loop_header259.preheader, label %polly.loop_header228

polly.loop_exit261:                               ; preds = %polly.loop_exit268.loopexit.us, %polly.loop_header259.preheader
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next1061 = add nuw nsw i64 %indvars.iv1060, 32
  %indvars.iv.next1068 = add nsw i64 %indvars.iv1067, -32
  %exitcond1072.not = icmp eq i64 %polly.indvar_next226, 38
  %indvar.next1359 = add i64 %indvar1358, 1
  br i1 %exitcond1072.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header222.split, %polly.loop_exit247
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit247 ], [ 0, %polly.loop_header222.split ]
  %polly.access.mul.Packed_MemRef_call1256 = mul nuw nsw i64 %polly.indvar231, 1200
  br label %polly.loop_header245

polly.loop_exit247:                               ; preds = %polly.loop_header245
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar_next232, 1000
  br i1 %exitcond1057.not, label %polly.loop_header259.preheader, label %polly.loop_header228

polly.loop_header259.preheader:                   ; preds = %polly.loop_exit247, %polly.loop_exit247.us, %polly.loop_header222.split
  %113 = mul nsw i64 %polly.indvar225, -32
  %polly.loop_guard2691160 = icmp sgt i64 %113, -1200
  br i1 %polly.loop_guard2691160, label %polly.loop_header259.us, label %polly.loop_exit261

polly.loop_header259.us:                          ; preds = %polly.loop_header259.preheader, %polly.loop_exit268.loopexit.us
  %polly.indvar262.us = phi i64 [ %polly.indvar_next263.us, %polly.loop_exit268.loopexit.us ], [ 0, %polly.loop_header259.preheader ]
  %polly.access.mul.Packed_MemRef_call1279.us = mul nuw nsw i64 %polly.indvar262.us, 1200
  br label %polly.loop_header266.us

polly.loop_header266.us:                          ; preds = %polly.loop_header259.us, %polly.loop_exit275.us
  %indvars.iv1062 = phi i64 [ %indvars.iv1060, %polly.loop_header259.us ], [ %indvars.iv.next1063, %polly.loop_exit275.us ]
  %polly.indvar270.us = phi i64 [ 0, %polly.loop_header259.us ], [ %polly.indvar_next271.us, %polly.loop_exit275.us ]
  %114 = add i64 %102, %polly.indvar270.us
  %smin1360 = call i64 @llvm.smin.i64(i64 %114, i64 63)
  %115 = add nuw nsw i64 %smin1360, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1062, i64 63)
  %116 = add nuw nsw i64 %polly.indvar270.us, %105
  %117 = add nuw nsw i64 %polly.indvar270.us, %104
  %polly.access.add.Packed_MemRef_call2284.us = add nuw nsw i64 %116, %polly.access.mul.Packed_MemRef_call1279.us
  %polly.access.Packed_MemRef_call2285.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call2285.us, align 8
  %polly.access.Packed_MemRef_call1293.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2284.us
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call1293.us, align 8
  %118 = mul nuw nsw i64 %117, 9600
  %min.iters.check1361 = icmp ult i64 %smin1360, 3
  br i1 %min.iters.check1361, label %polly.loop_header273.us.preheader, label %vector.ph1362

vector.ph1362:                                    ; preds = %polly.loop_header266.us
  %n.vec1364 = and i64 %115, -4
  %broadcast.splatinsert1370 = insertelement <4 x double> poison, double %_p_scalar_286.us, i32 0
  %broadcast.splat1371 = shufflevector <4 x double> %broadcast.splatinsert1370, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1373 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1374 = shufflevector <4 x double> %broadcast.splatinsert1373, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1357

vector.body1357:                                  ; preds = %vector.body1357, %vector.ph1362
  %index1365 = phi i64 [ 0, %vector.ph1362 ], [ %index.next1366, %vector.body1357 ]
  %119 = add nuw nsw i64 %index1365, %98
  %120 = add nuw nsw i64 %index1365, %polly.access.mul.Packed_MemRef_call1279.us
  %121 = getelementptr double, double* %Packed_MemRef_call1, i64 %120
  %122 = bitcast double* %121 to <4 x double>*
  %wide.load1369 = load <4 x double>, <4 x double>* %122, align 8
  %123 = fmul fast <4 x double> %broadcast.splat1371, %wide.load1369
  %124 = getelementptr double, double* %Packed_MemRef_call2, i64 %120
  %125 = bitcast double* %124 to <4 x double>*
  %wide.load1372 = load <4 x double>, <4 x double>* %125, align 8
  %126 = fmul fast <4 x double> %broadcast.splat1374, %wide.load1372
  %127 = shl i64 %119, 3
  %128 = add nuw nsw i64 %127, %118
  %129 = getelementptr i8, i8* %call, i64 %128
  %130 = bitcast i8* %129 to <4 x double>*
  %wide.load1375 = load <4 x double>, <4 x double>* %130, align 8, !alias.scope !72, !noalias !74
  %131 = fadd fast <4 x double> %126, %123
  %132 = fmul fast <4 x double> %131, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %133 = fadd fast <4 x double> %132, %wide.load1375
  %134 = bitcast i8* %129 to <4 x double>*
  store <4 x double> %133, <4 x double>* %134, align 8, !alias.scope !72, !noalias !74
  %index.next1366 = add i64 %index1365, 4
  %135 = icmp eq i64 %index.next1366, %n.vec1364
  br i1 %135, label %middle.block1355, label %vector.body1357, !llvm.loop !84

middle.block1355:                                 ; preds = %vector.body1357
  %cmp.n1368 = icmp eq i64 %115, %n.vec1364
  br i1 %cmp.n1368, label %polly.loop_exit275.us, label %polly.loop_header273.us.preheader

polly.loop_header273.us.preheader:                ; preds = %polly.loop_header266.us, %middle.block1355
  %polly.indvar276.us.ph = phi i64 [ 0, %polly.loop_header266.us ], [ %n.vec1364, %middle.block1355 ]
  br label %polly.loop_header273.us

polly.loop_header273.us:                          ; preds = %polly.loop_header273.us.preheader, %polly.loop_header273.us
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_header273.us ], [ %polly.indvar276.us.ph, %polly.loop_header273.us.preheader ]
  %136 = add nuw nsw i64 %polly.indvar276.us, %98
  %polly.access.add.Packed_MemRef_call1280.us = add nuw nsw i64 %polly.indvar276.us, %polly.access.mul.Packed_MemRef_call1279.us
  %polly.access.Packed_MemRef_call1281.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call1281.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %polly.access.Packed_MemRef_call2289.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1280.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call2289.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %137 = shl i64 %136, 3
  %138 = add nuw nsw i64 %137, %118
  %scevgep295.us = getelementptr i8, i8* %call, i64 %138
  %scevgep295296.us = bitcast i8* %scevgep295.us to double*
  %_p_scalar_297.us = load double, double* %scevgep295296.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_297.us
  store double %p_add42.i118.us, double* %scevgep295296.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar276.us, %smin
  br i1 %exitcond1064.not, label %polly.loop_exit275.us, label %polly.loop_header273.us, !llvm.loop !85

polly.loop_exit275.us:                            ; preds = %polly.loop_header273.us, %middle.block1355
  %polly.indvar_next271.us = add nuw nsw i64 %polly.indvar270.us, 1
  %indvars.iv.next1063 = add nuw nsw i64 %indvars.iv1062, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar270.us, %smax
  br i1 %exitcond1070.not, label %polly.loop_exit268.loopexit.us, label %polly.loop_header266.us

polly.loop_exit268.loopexit.us:                   ; preds = %polly.loop_exit275.us
  %polly.indvar_next263.us = add nuw nsw i64 %polly.indvar262.us, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar_next263.us, 1000
  br i1 %exitcond1071.not, label %polly.loop_exit261, label %polly.loop_header259.us

polly.loop_header245:                             ; preds = %polly.loop_header228, %polly.loop_header245
  %polly.indvar249 = phi i64 [ %polly.indvar_next250, %polly.loop_header245 ], [ %105, %polly.loop_header228 ]
  %139 = add nuw nsw i64 %polly.indvar249, %98
  %polly.access.mul.call1253 = mul nuw nsw i64 %139, 1000
  %polly.access.add.call1254 = add nuw nsw i64 %polly.access.mul.call1253, %polly.indvar231
  %polly.access.call1255 = getelementptr double, double* %polly.access.cast.call1714, i64 %polly.access.add.call1254
  %polly.access.call1255.load = load double, double* %polly.access.call1255, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257 = add nuw nsw i64 %polly.indvar249, %polly.access.mul.Packed_MemRef_call1256
  %polly.access.Packed_MemRef_call1258 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257
  store double %polly.access.call1255.load, double* %polly.access.Packed_MemRef_call1258, align 8
  %polly.indvar_next250 = add nuw nsw i64 %polly.indvar249, 1
  %polly.loop_cond251.not.not = icmp ult i64 %polly.indvar249, %110
  br i1 %polly.loop_cond251.not.not, label %polly.loop_header245, label %polly.loop_exit247

polly.start300:                                   ; preds = %kernel_syr2k.exit
  %malloccall302 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall304 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header388

polly.exiting301:                                 ; preds = %polly.loop_exit428
  tail call void @free(i8* %malloccall302)
  tail call void @free(i8* %malloccall304)
  br label %kernel_syr2k.exit90

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.start300
  %indvar1297 = phi i64 [ %indvar.next1298, %polly.loop_exit396 ], [ 0, %polly.start300 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start300 ]
  %140 = add i64 %indvar1297, 1
  %141 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %141
  %min.iters.check1299 = icmp ult i64 %140, 4
  br i1 %min.iters.check1299, label %polly.loop_header394.preheader, label %vector.ph1300

vector.ph1300:                                    ; preds = %polly.loop_header388
  %n.vec1302 = and i64 %140, -4
  br label %vector.body1296

vector.body1296:                                  ; preds = %vector.body1296, %vector.ph1300
  %index1303 = phi i64 [ 0, %vector.ph1300 ], [ %index.next1304, %vector.body1296 ]
  %142 = shl nuw nsw i64 %index1303, 3
  %143 = getelementptr i8, i8* %scevgep400, i64 %142
  %144 = bitcast i8* %143 to <4 x double>*
  %wide.load1307 = load <4 x double>, <4 x double>* %144, align 8, !alias.scope !86, !noalias !88
  %145 = fmul fast <4 x double> %wide.load1307, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %146 = bitcast i8* %143 to <4 x double>*
  store <4 x double> %145, <4 x double>* %146, align 8, !alias.scope !86, !noalias !88
  %index.next1304 = add i64 %index1303, 4
  %147 = icmp eq i64 %index.next1304, %n.vec1302
  br i1 %147, label %middle.block1294, label %vector.body1296, !llvm.loop !93

middle.block1294:                                 ; preds = %vector.body1296
  %cmp.n1306 = icmp eq i64 %140, %n.vec1302
  br i1 %cmp.n1306, label %polly.loop_exit396, label %polly.loop_header394.preheader

polly.loop_header394.preheader:                   ; preds = %polly.loop_header388, %middle.block1294
  %polly.indvar397.ph = phi i64 [ 0, %polly.loop_header388 ], [ %n.vec1302, %middle.block1294 ]
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394, %middle.block1294
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1100.not = icmp eq i64 %polly.indvar_next392, 1200
  %indvar.next1298 = add i64 %indvar1297, 1
  br i1 %exitcond1100.not, label %polly.loop_header404.preheader, label %polly.loop_header388

polly.loop_header404.preheader:                   ; preds = %polly.loop_exit396
  %Packed_MemRef_call1303 = bitcast i8* %malloccall302 to double*
  %Packed_MemRef_call2305 = bitcast i8* %malloccall304 to double*
  br label %polly.loop_header404

polly.loop_header394:                             ; preds = %polly.loop_header394.preheader, %polly.loop_header394
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_header394 ], [ %polly.indvar397.ph, %polly.loop_header394.preheader ]
  %148 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %148
  %scevgep401402 = bitcast i8* %scevgep401 to double*
  %_p_scalar_403 = load double, double* %scevgep401402, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_403, 1.200000e+00
  store double %p_mul.i57, double* %scevgep401402, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond1099.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !94

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_exit428
  %indvars.iv1089 = phi i64 [ 0, %polly.loop_header404.preheader ], [ %indvars.iv.next1090, %polly.loop_exit428 ]
  %indvars.iv1076 = phi i64 [ 1200, %polly.loop_header404.preheader ], [ %indvars.iv.next1077, %polly.loop_exit428 ]
  %polly.indvar407 = phi i64 [ 0, %polly.loop_header404.preheader ], [ %polly.indvar_next408, %polly.loop_exit428 ]
  %149 = mul nsw i64 %polly.indvar407, -64
  %150 = shl nsw i64 %polly.indvar407, 6
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_exit418
  %151 = add nsw i64 %149, 1199
  %152 = shl nuw nsw i64 %polly.indvar407, 1
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_exit467
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %indvars.iv.next1077 = add nsw i64 %indvars.iv1076, -64
  %indvars.iv.next1090 = add nsw i64 %indvars.iv1089, -64
  %exitcond1098.not = icmp eq i64 %polly.indvar_next408, 19
  br i1 %exitcond1098.not, label %polly.exiting301, label %polly.loop_header404

polly.loop_header410:                             ; preds = %polly.loop_exit418, %polly.loop_header404
  %polly.indvar413 = phi i64 [ 0, %polly.loop_header404 ], [ %polly.indvar_next414, %polly.loop_exit418 ]
  %polly.access.mul.Packed_MemRef_call2305 = mul nuw nsw i64 %polly.indvar413, 1200
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_header416
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar_next414, 1000
  br i1 %exitcond1079.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header416:                             ; preds = %polly.loop_header416, %polly.loop_header410
  %polly.indvar419 = phi i64 [ 0, %polly.loop_header410 ], [ %polly.indvar_next420, %polly.loop_header416 ]
  %153 = add nuw nsw i64 %polly.indvar419, %150
  %polly.access.mul.call2423 = mul nuw nsw i64 %153, 1000
  %polly.access.add.call2424 = add nuw nsw i64 %polly.access.mul.call2423, %polly.indvar413
  %polly.access.call2425 = getelementptr double, double* %polly.access.cast.call2724, i64 %polly.access.add.call2424
  %polly.access.call2425.load = load double, double* %polly.access.call2425, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2305 = add nuw nsw i64 %polly.indvar419, %polly.access.mul.Packed_MemRef_call2305
  %polly.access.Packed_MemRef_call2305 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305
  store double %polly.access.call2425.load, double* %polly.access.Packed_MemRef_call2305, align 8
  %polly.indvar_next420 = add nuw nsw i64 %polly.indvar419, 1
  %exitcond1078.not = icmp eq i64 %polly.indvar_next420, %indvars.iv1076
  br i1 %exitcond1078.not, label %polly.loop_exit418, label %polly.loop_header416

polly.loop_header426:                             ; preds = %polly.loop_exit467, %polly.loop_exit412
  %indvar1311 = phi i64 [ %indvar.next1312, %polly.loop_exit467 ], [ 0, %polly.loop_exit412 ]
  %indvars.iv1091 = phi i64 [ %indvars.iv.next1092, %polly.loop_exit467 ], [ %indvars.iv1089, %polly.loop_exit412 ]
  %indvars.iv1083 = phi i64 [ %indvars.iv.next1084, %polly.loop_exit467 ], [ 0, %polly.loop_exit412 ]
  %polly.indvar429 = phi i64 [ %polly.indvar_next430, %polly.loop_exit467 ], [ %152, %polly.loop_exit412 ]
  %154 = shl nuw nsw i64 %indvar1311, 5
  %smin1093 = call i64 @llvm.smin.i64(i64 %indvars.iv1091, i64 -1168)
  %155 = add nsw i64 %smin1093, 1199
  %smax1094 = call i64 @llvm.smax.i64(i64 %155, i64 0)
  %156 = shl nsw i64 %polly.indvar429, 5
  %157 = add nsw i64 %156, %149
  %158 = add nsw i64 %157, -1
  %.inv916 = icmp ugt i64 %157, 63
  %159 = select i1 %.inv916, i64 63, i64 %158
  %polly.loop_guard442 = icmp sgt i64 %159, -1
  %160 = or i64 %157, 31
  %161 = icmp ult i64 %151, %160
  %162 = select i1 %161, i64 %151, i64 %160
  %polly.loop_guard454.not = icmp ugt i64 %157, %162
  br i1 %polly.loop_guard442, label %polly.loop_header432.us, label %polly.loop_header426.split

polly.loop_header432.us:                          ; preds = %polly.loop_header426, %polly.loop_exit453.us
  %polly.indvar435.us = phi i64 [ %polly.indvar_next436.us, %polly.loop_exit453.us ], [ 0, %polly.loop_header426 ]
  %polly.access.mul.Packed_MemRef_call1303.us = mul nuw nsw i64 %polly.indvar435.us, 1200
  br label %polly.loop_header439.us

polly.loop_header439.us:                          ; preds = %polly.loop_header432.us, %polly.loop_header439.us
  %polly.indvar443.us = phi i64 [ %polly.indvar_next444.us, %polly.loop_header439.us ], [ 0, %polly.loop_header432.us ]
  %163 = add nuw nsw i64 %polly.indvar443.us, %150
  %polly.access.mul.call1447.us = mul nuw nsw i64 %163, 1000
  %polly.access.add.call1448.us = add nuw nsw i64 %polly.access.mul.call1447.us, %polly.indvar435.us
  %polly.access.call1449.us = getelementptr double, double* %polly.access.cast.call1714, i64 %polly.access.add.call1448.us
  %polly.access.call1449.load.us = load double, double* %polly.access.call1449.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303.us = add nuw nsw i64 %polly.indvar443.us, %polly.access.mul.Packed_MemRef_call1303.us
  %polly.access.Packed_MemRef_call1303.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us
  store double %polly.access.call1449.load.us, double* %polly.access.Packed_MemRef_call1303.us, align 8
  %polly.indvar_next444.us = add nuw i64 %polly.indvar443.us, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar443.us, %159
  br i1 %exitcond1081.not, label %polly.loop_exit441.loopexit.us, label %polly.loop_header439.us

polly.loop_header451.us:                          ; preds = %polly.loop_exit441.loopexit.us, %polly.loop_header451.us
  %polly.indvar455.us = phi i64 [ %polly.indvar_next456.us, %polly.loop_header451.us ], [ %157, %polly.loop_exit441.loopexit.us ]
  %164 = add nuw nsw i64 %polly.indvar455.us, %150
  %polly.access.mul.call1459.us = mul nuw nsw i64 %164, 1000
  %polly.access.add.call1460.us = add nuw nsw i64 %polly.access.mul.call1459.us, %polly.indvar435.us
  %polly.access.call1461.us = getelementptr double, double* %polly.access.cast.call1714, i64 %polly.access.add.call1460.us
  %polly.access.call1461.load.us = load double, double* %polly.access.call1461.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303463.us = add nuw nsw i64 %polly.indvar455.us, %polly.access.mul.Packed_MemRef_call1303.us
  %polly.access.Packed_MemRef_call1303464.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303463.us
  store double %polly.access.call1461.load.us, double* %polly.access.Packed_MemRef_call1303464.us, align 8
  %polly.indvar_next456.us = add nuw nsw i64 %polly.indvar455.us, 1
  %polly.loop_cond457.not.not.us = icmp ult i64 %polly.indvar455.us, %162
  br i1 %polly.loop_cond457.not.not.us, label %polly.loop_header451.us, label %polly.loop_exit453.us

polly.loop_exit453.us:                            ; preds = %polly.loop_header451.us, %polly.loop_exit441.loopexit.us
  %polly.indvar_next436.us = add nuw nsw i64 %polly.indvar435.us, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar_next436.us, 1000
  br i1 %exitcond1082.not, label %polly.loop_header465.preheader, label %polly.loop_header432.us

polly.loop_exit441.loopexit.us:                   ; preds = %polly.loop_header439.us
  br i1 %polly.loop_guard454.not, label %polly.loop_exit453.us, label %polly.loop_header451.us

polly.loop_header426.split:                       ; preds = %polly.loop_header426
  br i1 %polly.loop_guard454.not, label %polly.loop_header465.preheader, label %polly.loop_header432

polly.loop_exit467:                               ; preds = %polly.loop_exit474.loopexit.us, %polly.loop_header465.preheader
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %indvars.iv.next1084 = add nuw nsw i64 %indvars.iv1083, 32
  %indvars.iv.next1092 = add nsw i64 %indvars.iv1091, -32
  %exitcond1097.not = icmp eq i64 %polly.indvar_next430, 38
  %indvar.next1312 = add i64 %indvar1311, 1
  br i1 %exitcond1097.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header432:                             ; preds = %polly.loop_header426.split, %polly.loop_exit453
  %polly.indvar435 = phi i64 [ %polly.indvar_next436, %polly.loop_exit453 ], [ 0, %polly.loop_header426.split ]
  %polly.access.mul.Packed_MemRef_call1303462 = mul nuw nsw i64 %polly.indvar435, 1200
  br label %polly.loop_header451

polly.loop_exit453:                               ; preds = %polly.loop_header451
  %polly.indvar_next436 = add nuw nsw i64 %polly.indvar435, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar_next436, 1000
  br i1 %exitcond1080.not, label %polly.loop_header465.preheader, label %polly.loop_header432

polly.loop_header465.preheader:                   ; preds = %polly.loop_exit453, %polly.loop_exit453.us, %polly.loop_header426.split
  %165 = mul nsw i64 %polly.indvar429, -32
  %polly.loop_guard4751161 = icmp sgt i64 %165, -1200
  br i1 %polly.loop_guard4751161, label %polly.loop_header465.us, label %polly.loop_exit467

polly.loop_header465.us:                          ; preds = %polly.loop_header465.preheader, %polly.loop_exit474.loopexit.us
  %polly.indvar468.us = phi i64 [ %polly.indvar_next469.us, %polly.loop_exit474.loopexit.us ], [ 0, %polly.loop_header465.preheader ]
  %polly.access.mul.Packed_MemRef_call1303485.us = mul nuw nsw i64 %polly.indvar468.us, 1200
  br label %polly.loop_header472.us

polly.loop_header472.us:                          ; preds = %polly.loop_header465.us, %polly.loop_exit481.us
  %indvars.iv1085 = phi i64 [ %indvars.iv1083, %polly.loop_header465.us ], [ %indvars.iv.next1086, %polly.loop_exit481.us ]
  %polly.indvar476.us = phi i64 [ 0, %polly.loop_header465.us ], [ %polly.indvar_next477.us, %polly.loop_exit481.us ]
  %166 = add i64 %154, %polly.indvar476.us
  %smin1313 = call i64 @llvm.smin.i64(i64 %166, i64 63)
  %167 = add nuw nsw i64 %smin1313, 1
  %smin1087 = call i64 @llvm.smin.i64(i64 %indvars.iv1085, i64 63)
  %168 = add nuw nsw i64 %polly.indvar476.us, %157
  %169 = add nuw nsw i64 %polly.indvar476.us, %156
  %polly.access.add.Packed_MemRef_call2305490.us = add nuw nsw i64 %168, %polly.access.mul.Packed_MemRef_call1303485.us
  %polly.access.Packed_MemRef_call2305491.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305490.us
  %_p_scalar_492.us = load double, double* %polly.access.Packed_MemRef_call2305491.us, align 8
  %polly.access.Packed_MemRef_call1303499.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call2305490.us
  %_p_scalar_500.us = load double, double* %polly.access.Packed_MemRef_call1303499.us, align 8
  %170 = mul nuw nsw i64 %169, 9600
  %min.iters.check1314 = icmp ult i64 %smin1313, 3
  br i1 %min.iters.check1314, label %polly.loop_header479.us.preheader, label %vector.ph1315

vector.ph1315:                                    ; preds = %polly.loop_header472.us
  %n.vec1317 = and i64 %167, -4
  %broadcast.splatinsert1323 = insertelement <4 x double> poison, double %_p_scalar_492.us, i32 0
  %broadcast.splat1324 = shufflevector <4 x double> %broadcast.splatinsert1323, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1326 = insertelement <4 x double> poison, double %_p_scalar_500.us, i32 0
  %broadcast.splat1327 = shufflevector <4 x double> %broadcast.splatinsert1326, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1310

vector.body1310:                                  ; preds = %vector.body1310, %vector.ph1315
  %index1318 = phi i64 [ 0, %vector.ph1315 ], [ %index.next1319, %vector.body1310 ]
  %171 = add nuw nsw i64 %index1318, %150
  %172 = add nuw nsw i64 %index1318, %polly.access.mul.Packed_MemRef_call1303485.us
  %173 = getelementptr double, double* %Packed_MemRef_call1303, i64 %172
  %174 = bitcast double* %173 to <4 x double>*
  %wide.load1322 = load <4 x double>, <4 x double>* %174, align 8
  %175 = fmul fast <4 x double> %broadcast.splat1324, %wide.load1322
  %176 = getelementptr double, double* %Packed_MemRef_call2305, i64 %172
  %177 = bitcast double* %176 to <4 x double>*
  %wide.load1325 = load <4 x double>, <4 x double>* %177, align 8
  %178 = fmul fast <4 x double> %broadcast.splat1327, %wide.load1325
  %179 = shl i64 %171, 3
  %180 = add nuw nsw i64 %179, %170
  %181 = getelementptr i8, i8* %call, i64 %180
  %182 = bitcast i8* %181 to <4 x double>*
  %wide.load1328 = load <4 x double>, <4 x double>* %182, align 8, !alias.scope !86, !noalias !88
  %183 = fadd fast <4 x double> %178, %175
  %184 = fmul fast <4 x double> %183, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %185 = fadd fast <4 x double> %184, %wide.load1328
  %186 = bitcast i8* %181 to <4 x double>*
  store <4 x double> %185, <4 x double>* %186, align 8, !alias.scope !86, !noalias !88
  %index.next1319 = add i64 %index1318, 4
  %187 = icmp eq i64 %index.next1319, %n.vec1317
  br i1 %187, label %middle.block1308, label %vector.body1310, !llvm.loop !97

middle.block1308:                                 ; preds = %vector.body1310
  %cmp.n1321 = icmp eq i64 %167, %n.vec1317
  br i1 %cmp.n1321, label %polly.loop_exit481.us, label %polly.loop_header479.us.preheader

polly.loop_header479.us.preheader:                ; preds = %polly.loop_header472.us, %middle.block1308
  %polly.indvar482.us.ph = phi i64 [ 0, %polly.loop_header472.us ], [ %n.vec1317, %middle.block1308 ]
  br label %polly.loop_header479.us

polly.loop_header479.us:                          ; preds = %polly.loop_header479.us.preheader, %polly.loop_header479.us
  %polly.indvar482.us = phi i64 [ %polly.indvar_next483.us, %polly.loop_header479.us ], [ %polly.indvar482.us.ph, %polly.loop_header479.us.preheader ]
  %188 = add nuw nsw i64 %polly.indvar482.us, %150
  %polly.access.add.Packed_MemRef_call1303486.us = add nuw nsw i64 %polly.indvar482.us, %polly.access.mul.Packed_MemRef_call1303485.us
  %polly.access.Packed_MemRef_call1303487.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303486.us
  %_p_scalar_488.us = load double, double* %polly.access.Packed_MemRef_call1303487.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_492.us, %_p_scalar_488.us
  %polly.access.Packed_MemRef_call2305495.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call1303486.us
  %_p_scalar_496.us = load double, double* %polly.access.Packed_MemRef_call2305495.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_500.us, %_p_scalar_496.us
  %189 = shl i64 %188, 3
  %190 = add nuw nsw i64 %189, %170
  %scevgep501.us = getelementptr i8, i8* %call, i64 %190
  %scevgep501502.us = bitcast i8* %scevgep501.us to double*
  %_p_scalar_503.us = load double, double* %scevgep501502.us, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_503.us
  store double %p_add42.i79.us, double* %scevgep501502.us, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next483.us = add nuw nsw i64 %polly.indvar482.us, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar482.us, %smin1087
  br i1 %exitcond1088.not, label %polly.loop_exit481.us, label %polly.loop_header479.us, !llvm.loop !98

polly.loop_exit481.us:                            ; preds = %polly.loop_header479.us, %middle.block1308
  %polly.indvar_next477.us = add nuw nsw i64 %polly.indvar476.us, 1
  %indvars.iv.next1086 = add nuw nsw i64 %indvars.iv1085, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar476.us, %smax1094
  br i1 %exitcond1095.not, label %polly.loop_exit474.loopexit.us, label %polly.loop_header472.us

polly.loop_exit474.loopexit.us:                   ; preds = %polly.loop_exit481.us
  %polly.indvar_next469.us = add nuw nsw i64 %polly.indvar468.us, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar_next469.us, 1000
  br i1 %exitcond1096.not, label %polly.loop_exit467, label %polly.loop_header465.us

polly.loop_header451:                             ; preds = %polly.loop_header432, %polly.loop_header451
  %polly.indvar455 = phi i64 [ %polly.indvar_next456, %polly.loop_header451 ], [ %157, %polly.loop_header432 ]
  %191 = add nuw nsw i64 %polly.indvar455, %150
  %polly.access.mul.call1459 = mul nuw nsw i64 %191, 1000
  %polly.access.add.call1460 = add nuw nsw i64 %polly.access.mul.call1459, %polly.indvar435
  %polly.access.call1461 = getelementptr double, double* %polly.access.cast.call1714, i64 %polly.access.add.call1460
  %polly.access.call1461.load = load double, double* %polly.access.call1461, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303463 = add nuw nsw i64 %polly.indvar455, %polly.access.mul.Packed_MemRef_call1303462
  %polly.access.Packed_MemRef_call1303464 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303463
  store double %polly.access.call1461.load, double* %polly.access.Packed_MemRef_call1303464, align 8
  %polly.indvar_next456 = add nuw nsw i64 %polly.indvar455, 1
  %polly.loop_cond457.not.not = icmp ult i64 %polly.indvar455, %162
  br i1 %polly.loop_cond457.not.not, label %polly.loop_header451, label %polly.loop_exit453

polly.start506:                                   ; preds = %init_array.exit
  %malloccall508 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall510 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header594

polly.exiting507:                                 ; preds = %polly.loop_exit634
  tail call void @free(i8* %malloccall508)
  tail call void @free(i8* %malloccall510)
  br label %kernel_syr2k.exit

polly.loop_header594:                             ; preds = %polly.loop_exit602, %polly.start506
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit602 ], [ 0, %polly.start506 ]
  %polly.indvar597 = phi i64 [ %polly.indvar_next598, %polly.loop_exit602 ], [ 1, %polly.start506 ]
  %192 = add i64 %indvar, 1
  %193 = mul nuw nsw i64 %polly.indvar597, 9600
  %scevgep606 = getelementptr i8, i8* %call, i64 %193
  %min.iters.check1252 = icmp ult i64 %192, 4
  br i1 %min.iters.check1252, label %polly.loop_header600.preheader, label %vector.ph1253

vector.ph1253:                                    ; preds = %polly.loop_header594
  %n.vec1255 = and i64 %192, -4
  br label %vector.body1251

vector.body1251:                                  ; preds = %vector.body1251, %vector.ph1253
  %index1256 = phi i64 [ 0, %vector.ph1253 ], [ %index.next1257, %vector.body1251 ]
  %194 = shl nuw nsw i64 %index1256, 3
  %195 = getelementptr i8, i8* %scevgep606, i64 %194
  %196 = bitcast i8* %195 to <4 x double>*
  %wide.load1260 = load <4 x double>, <4 x double>* %196, align 8, !alias.scope !99, !noalias !101
  %197 = fmul fast <4 x double> %wide.load1260, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %198 = bitcast i8* %195 to <4 x double>*
  store <4 x double> %197, <4 x double>* %198, align 8, !alias.scope !99, !noalias !101
  %index.next1257 = add i64 %index1256, 4
  %199 = icmp eq i64 %index.next1257, %n.vec1255
  br i1 %199, label %middle.block1249, label %vector.body1251, !llvm.loop !106

middle.block1249:                                 ; preds = %vector.body1251
  %cmp.n1259 = icmp eq i64 %192, %n.vec1255
  br i1 %cmp.n1259, label %polly.loop_exit602, label %polly.loop_header600.preheader

polly.loop_header600.preheader:                   ; preds = %polly.loop_header594, %middle.block1249
  %polly.indvar603.ph = phi i64 [ 0, %polly.loop_header594 ], [ %n.vec1255, %middle.block1249 ]
  br label %polly.loop_header600

polly.loop_exit602:                               ; preds = %polly.loop_header600, %middle.block1249
  %polly.indvar_next598 = add nuw nsw i64 %polly.indvar597, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar_next598, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1125.not, label %polly.loop_header610.preheader, label %polly.loop_header594

polly.loop_header610.preheader:                   ; preds = %polly.loop_exit602
  %Packed_MemRef_call1509 = bitcast i8* %malloccall508 to double*
  %Packed_MemRef_call2511 = bitcast i8* %malloccall510 to double*
  br label %polly.loop_header610

polly.loop_header600:                             ; preds = %polly.loop_header600.preheader, %polly.loop_header600
  %polly.indvar603 = phi i64 [ %polly.indvar_next604, %polly.loop_header600 ], [ %polly.indvar603.ph, %polly.loop_header600.preheader ]
  %200 = shl nuw nsw i64 %polly.indvar603, 3
  %scevgep607 = getelementptr i8, i8* %scevgep606, i64 %200
  %scevgep607608 = bitcast i8* %scevgep607 to double*
  %_p_scalar_609 = load double, double* %scevgep607608, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_609, 1.200000e+00
  store double %p_mul.i, double* %scevgep607608, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next604 = add nuw nsw i64 %polly.indvar603, 1
  %exitcond1124.not = icmp eq i64 %polly.indvar_next604, %polly.indvar597
  br i1 %exitcond1124.not, label %polly.loop_exit602, label %polly.loop_header600, !llvm.loop !107

polly.loop_header610:                             ; preds = %polly.loop_header610.preheader, %polly.loop_exit634
  %indvars.iv1114 = phi i64 [ 0, %polly.loop_header610.preheader ], [ %indvars.iv.next1115, %polly.loop_exit634 ]
  %indvars.iv1101 = phi i64 [ 1200, %polly.loop_header610.preheader ], [ %indvars.iv.next1102, %polly.loop_exit634 ]
  %polly.indvar613 = phi i64 [ 0, %polly.loop_header610.preheader ], [ %polly.indvar_next614, %polly.loop_exit634 ]
  %201 = mul nsw i64 %polly.indvar613, -64
  %202 = shl nsw i64 %polly.indvar613, 6
  br label %polly.loop_header616

polly.loop_exit618:                               ; preds = %polly.loop_exit624
  %203 = add nsw i64 %201, 1199
  %204 = shl nuw nsw i64 %polly.indvar613, 1
  br label %polly.loop_header632

polly.loop_exit634:                               ; preds = %polly.loop_exit673
  %polly.indvar_next614 = add nuw nsw i64 %polly.indvar613, 1
  %indvars.iv.next1102 = add nsw i64 %indvars.iv1101, -64
  %indvars.iv.next1115 = add nsw i64 %indvars.iv1114, -64
  %exitcond1123.not = icmp eq i64 %polly.indvar_next614, 19
  br i1 %exitcond1123.not, label %polly.exiting507, label %polly.loop_header610

polly.loop_header616:                             ; preds = %polly.loop_exit624, %polly.loop_header610
  %polly.indvar619 = phi i64 [ 0, %polly.loop_header610 ], [ %polly.indvar_next620, %polly.loop_exit624 ]
  %polly.access.mul.Packed_MemRef_call2511 = mul nuw nsw i64 %polly.indvar619, 1200
  br label %polly.loop_header622

polly.loop_exit624:                               ; preds = %polly.loop_header622
  %polly.indvar_next620 = add nuw nsw i64 %polly.indvar619, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar_next620, 1000
  br i1 %exitcond1104.not, label %polly.loop_exit618, label %polly.loop_header616

polly.loop_header622:                             ; preds = %polly.loop_header622, %polly.loop_header616
  %polly.indvar625 = phi i64 [ 0, %polly.loop_header616 ], [ %polly.indvar_next626, %polly.loop_header622 ]
  %205 = add nuw nsw i64 %polly.indvar625, %202
  %polly.access.mul.call2629 = mul nuw nsw i64 %205, 1000
  %polly.access.add.call2630 = add nuw nsw i64 %polly.access.mul.call2629, %polly.indvar619
  %polly.access.call2631 = getelementptr double, double* %polly.access.cast.call2724, i64 %polly.access.add.call2630
  %polly.access.call2631.load = load double, double* %polly.access.call2631, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2511 = add nuw nsw i64 %polly.indvar625, %polly.access.mul.Packed_MemRef_call2511
  %polly.access.Packed_MemRef_call2511 = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511
  store double %polly.access.call2631.load, double* %polly.access.Packed_MemRef_call2511, align 8
  %polly.indvar_next626 = add nuw nsw i64 %polly.indvar625, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next626, %indvars.iv1101
  br i1 %exitcond1103.not, label %polly.loop_exit624, label %polly.loop_header622

polly.loop_header632:                             ; preds = %polly.loop_exit673, %polly.loop_exit618
  %indvar1264 = phi i64 [ %indvar.next1265, %polly.loop_exit673 ], [ 0, %polly.loop_exit618 ]
  %indvars.iv1116 = phi i64 [ %indvars.iv.next1117, %polly.loop_exit673 ], [ %indvars.iv1114, %polly.loop_exit618 ]
  %indvars.iv1108 = phi i64 [ %indvars.iv.next1109, %polly.loop_exit673 ], [ 0, %polly.loop_exit618 ]
  %polly.indvar635 = phi i64 [ %polly.indvar_next636, %polly.loop_exit673 ], [ %204, %polly.loop_exit618 ]
  %206 = shl nuw nsw i64 %indvar1264, 5
  %smin1118 = call i64 @llvm.smin.i64(i64 %indvars.iv1116, i64 -1168)
  %207 = add nsw i64 %smin1118, 1199
  %smax1119 = call i64 @llvm.smax.i64(i64 %207, i64 0)
  %208 = shl nsw i64 %polly.indvar635, 5
  %209 = add nsw i64 %208, %201
  %210 = add nsw i64 %209, -1
  %.inv917 = icmp ugt i64 %209, 63
  %211 = select i1 %.inv917, i64 63, i64 %210
  %polly.loop_guard648 = icmp sgt i64 %211, -1
  %212 = or i64 %209, 31
  %213 = icmp ult i64 %203, %212
  %214 = select i1 %213, i64 %203, i64 %212
  %polly.loop_guard660.not = icmp ugt i64 %209, %214
  br i1 %polly.loop_guard648, label %polly.loop_header638.us, label %polly.loop_header632.split

polly.loop_header638.us:                          ; preds = %polly.loop_header632, %polly.loop_exit659.us
  %polly.indvar641.us = phi i64 [ %polly.indvar_next642.us, %polly.loop_exit659.us ], [ 0, %polly.loop_header632 ]
  %polly.access.mul.Packed_MemRef_call1509.us = mul nuw nsw i64 %polly.indvar641.us, 1200
  br label %polly.loop_header645.us

polly.loop_header645.us:                          ; preds = %polly.loop_header638.us, %polly.loop_header645.us
  %polly.indvar649.us = phi i64 [ %polly.indvar_next650.us, %polly.loop_header645.us ], [ 0, %polly.loop_header638.us ]
  %215 = add nuw nsw i64 %polly.indvar649.us, %202
  %polly.access.mul.call1653.us = mul nuw nsw i64 %215, 1000
  %polly.access.add.call1654.us = add nuw nsw i64 %polly.access.mul.call1653.us, %polly.indvar641.us
  %polly.access.call1655.us = getelementptr double, double* %polly.access.cast.call1714, i64 %polly.access.add.call1654.us
  %polly.access.call1655.load.us = load double, double* %polly.access.call1655.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1509.us = add nuw nsw i64 %polly.indvar649.us, %polly.access.mul.Packed_MemRef_call1509.us
  %polly.access.Packed_MemRef_call1509.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us
  store double %polly.access.call1655.load.us, double* %polly.access.Packed_MemRef_call1509.us, align 8
  %polly.indvar_next650.us = add nuw i64 %polly.indvar649.us, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar649.us, %211
  br i1 %exitcond1106.not, label %polly.loop_exit647.loopexit.us, label %polly.loop_header645.us

polly.loop_header657.us:                          ; preds = %polly.loop_exit647.loopexit.us, %polly.loop_header657.us
  %polly.indvar661.us = phi i64 [ %polly.indvar_next662.us, %polly.loop_header657.us ], [ %209, %polly.loop_exit647.loopexit.us ]
  %216 = add nuw nsw i64 %polly.indvar661.us, %202
  %polly.access.mul.call1665.us = mul nuw nsw i64 %216, 1000
  %polly.access.add.call1666.us = add nuw nsw i64 %polly.access.mul.call1665.us, %polly.indvar641.us
  %polly.access.call1667.us = getelementptr double, double* %polly.access.cast.call1714, i64 %polly.access.add.call1666.us
  %polly.access.call1667.load.us = load double, double* %polly.access.call1667.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1509669.us = add nuw nsw i64 %polly.indvar661.us, %polly.access.mul.Packed_MemRef_call1509.us
  %polly.access.Packed_MemRef_call1509670.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509669.us
  store double %polly.access.call1667.load.us, double* %polly.access.Packed_MemRef_call1509670.us, align 8
  %polly.indvar_next662.us = add nuw nsw i64 %polly.indvar661.us, 1
  %polly.loop_cond663.not.not.us = icmp ult i64 %polly.indvar661.us, %214
  br i1 %polly.loop_cond663.not.not.us, label %polly.loop_header657.us, label %polly.loop_exit659.us

polly.loop_exit659.us:                            ; preds = %polly.loop_header657.us, %polly.loop_exit647.loopexit.us
  %polly.indvar_next642.us = add nuw nsw i64 %polly.indvar641.us, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next642.us, 1000
  br i1 %exitcond1107.not, label %polly.loop_header671.preheader, label %polly.loop_header638.us

polly.loop_exit647.loopexit.us:                   ; preds = %polly.loop_header645.us
  br i1 %polly.loop_guard660.not, label %polly.loop_exit659.us, label %polly.loop_header657.us

polly.loop_header632.split:                       ; preds = %polly.loop_header632
  br i1 %polly.loop_guard660.not, label %polly.loop_header671.preheader, label %polly.loop_header638

polly.loop_exit673:                               ; preds = %polly.loop_exit680.loopexit.us, %polly.loop_header671.preheader
  %polly.indvar_next636 = add nuw nsw i64 %polly.indvar635, 1
  %indvars.iv.next1109 = add nuw nsw i64 %indvars.iv1108, 32
  %indvars.iv.next1117 = add nsw i64 %indvars.iv1116, -32
  %exitcond1122.not = icmp eq i64 %polly.indvar_next636, 38
  %indvar.next1265 = add i64 %indvar1264, 1
  br i1 %exitcond1122.not, label %polly.loop_exit634, label %polly.loop_header632

polly.loop_header638:                             ; preds = %polly.loop_header632.split, %polly.loop_exit659
  %polly.indvar641 = phi i64 [ %polly.indvar_next642, %polly.loop_exit659 ], [ 0, %polly.loop_header632.split ]
  %polly.access.mul.Packed_MemRef_call1509668 = mul nuw nsw i64 %polly.indvar641, 1200
  br label %polly.loop_header657

polly.loop_exit659:                               ; preds = %polly.loop_header657
  %polly.indvar_next642 = add nuw nsw i64 %polly.indvar641, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next642, 1000
  br i1 %exitcond1105.not, label %polly.loop_header671.preheader, label %polly.loop_header638

polly.loop_header671.preheader:                   ; preds = %polly.loop_exit659, %polly.loop_exit659.us, %polly.loop_header632.split
  %217 = mul nsw i64 %polly.indvar635, -32
  %polly.loop_guard6811162 = icmp sgt i64 %217, -1200
  br i1 %polly.loop_guard6811162, label %polly.loop_header671.us, label %polly.loop_exit673

polly.loop_header671.us:                          ; preds = %polly.loop_header671.preheader, %polly.loop_exit680.loopexit.us
  %polly.indvar674.us = phi i64 [ %polly.indvar_next675.us, %polly.loop_exit680.loopexit.us ], [ 0, %polly.loop_header671.preheader ]
  %polly.access.mul.Packed_MemRef_call1509691.us = mul nuw nsw i64 %polly.indvar674.us, 1200
  br label %polly.loop_header678.us

polly.loop_header678.us:                          ; preds = %polly.loop_header671.us, %polly.loop_exit687.us
  %indvars.iv1110 = phi i64 [ %indvars.iv1108, %polly.loop_header671.us ], [ %indvars.iv.next1111, %polly.loop_exit687.us ]
  %polly.indvar682.us = phi i64 [ 0, %polly.loop_header671.us ], [ %polly.indvar_next683.us, %polly.loop_exit687.us ]
  %218 = add i64 %206, %polly.indvar682.us
  %smin1266 = call i64 @llvm.smin.i64(i64 %218, i64 63)
  %219 = add nuw nsw i64 %smin1266, 1
  %smin1112 = call i64 @llvm.smin.i64(i64 %indvars.iv1110, i64 63)
  %220 = add nuw nsw i64 %polly.indvar682.us, %209
  %221 = add nuw nsw i64 %polly.indvar682.us, %208
  %polly.access.add.Packed_MemRef_call2511696.us = add nuw nsw i64 %220, %polly.access.mul.Packed_MemRef_call1509691.us
  %polly.access.Packed_MemRef_call2511697.us = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511696.us
  %_p_scalar_698.us = load double, double* %polly.access.Packed_MemRef_call2511697.us, align 8
  %polly.access.Packed_MemRef_call1509705.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call2511696.us
  %_p_scalar_706.us = load double, double* %polly.access.Packed_MemRef_call1509705.us, align 8
  %222 = mul nuw nsw i64 %221, 9600
  %min.iters.check1267 = icmp ult i64 %smin1266, 3
  br i1 %min.iters.check1267, label %polly.loop_header685.us.preheader, label %vector.ph1268

vector.ph1268:                                    ; preds = %polly.loop_header678.us
  %n.vec1270 = and i64 %219, -4
  %broadcast.splatinsert1276 = insertelement <4 x double> poison, double %_p_scalar_698.us, i32 0
  %broadcast.splat1277 = shufflevector <4 x double> %broadcast.splatinsert1276, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1279 = insertelement <4 x double> poison, double %_p_scalar_706.us, i32 0
  %broadcast.splat1280 = shufflevector <4 x double> %broadcast.splatinsert1279, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1263

vector.body1263:                                  ; preds = %vector.body1263, %vector.ph1268
  %index1271 = phi i64 [ 0, %vector.ph1268 ], [ %index.next1272, %vector.body1263 ]
  %223 = add nuw nsw i64 %index1271, %202
  %224 = add nuw nsw i64 %index1271, %polly.access.mul.Packed_MemRef_call1509691.us
  %225 = getelementptr double, double* %Packed_MemRef_call1509, i64 %224
  %226 = bitcast double* %225 to <4 x double>*
  %wide.load1275 = load <4 x double>, <4 x double>* %226, align 8
  %227 = fmul fast <4 x double> %broadcast.splat1277, %wide.load1275
  %228 = getelementptr double, double* %Packed_MemRef_call2511, i64 %224
  %229 = bitcast double* %228 to <4 x double>*
  %wide.load1278 = load <4 x double>, <4 x double>* %229, align 8
  %230 = fmul fast <4 x double> %broadcast.splat1280, %wide.load1278
  %231 = shl i64 %223, 3
  %232 = add nuw nsw i64 %231, %222
  %233 = getelementptr i8, i8* %call, i64 %232
  %234 = bitcast i8* %233 to <4 x double>*
  %wide.load1281 = load <4 x double>, <4 x double>* %234, align 8, !alias.scope !99, !noalias !101
  %235 = fadd fast <4 x double> %230, %227
  %236 = fmul fast <4 x double> %235, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %237 = fadd fast <4 x double> %236, %wide.load1281
  %238 = bitcast i8* %233 to <4 x double>*
  store <4 x double> %237, <4 x double>* %238, align 8, !alias.scope !99, !noalias !101
  %index.next1272 = add i64 %index1271, 4
  %239 = icmp eq i64 %index.next1272, %n.vec1270
  br i1 %239, label %middle.block1261, label %vector.body1263, !llvm.loop !110

middle.block1261:                                 ; preds = %vector.body1263
  %cmp.n1274 = icmp eq i64 %219, %n.vec1270
  br i1 %cmp.n1274, label %polly.loop_exit687.us, label %polly.loop_header685.us.preheader

polly.loop_header685.us.preheader:                ; preds = %polly.loop_header678.us, %middle.block1261
  %polly.indvar688.us.ph = phi i64 [ 0, %polly.loop_header678.us ], [ %n.vec1270, %middle.block1261 ]
  br label %polly.loop_header685.us

polly.loop_header685.us:                          ; preds = %polly.loop_header685.us.preheader, %polly.loop_header685.us
  %polly.indvar688.us = phi i64 [ %polly.indvar_next689.us, %polly.loop_header685.us ], [ %polly.indvar688.us.ph, %polly.loop_header685.us.preheader ]
  %240 = add nuw nsw i64 %polly.indvar688.us, %202
  %polly.access.add.Packed_MemRef_call1509692.us = add nuw nsw i64 %polly.indvar688.us, %polly.access.mul.Packed_MemRef_call1509691.us
  %polly.access.Packed_MemRef_call1509693.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509692.us
  %_p_scalar_694.us = load double, double* %polly.access.Packed_MemRef_call1509693.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_698.us, %_p_scalar_694.us
  %polly.access.Packed_MemRef_call2511701.us = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call1509692.us
  %_p_scalar_702.us = load double, double* %polly.access.Packed_MemRef_call2511701.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_706.us, %_p_scalar_702.us
  %241 = shl i64 %240, 3
  %242 = add nuw nsw i64 %241, %222
  %scevgep707.us = getelementptr i8, i8* %call, i64 %242
  %scevgep707708.us = bitcast i8* %scevgep707.us to double*
  %_p_scalar_709.us = load double, double* %scevgep707708.us, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_709.us
  store double %p_add42.i.us, double* %scevgep707708.us, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next689.us = add nuw nsw i64 %polly.indvar688.us, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar688.us, %smin1112
  br i1 %exitcond1113.not, label %polly.loop_exit687.us, label %polly.loop_header685.us, !llvm.loop !111

polly.loop_exit687.us:                            ; preds = %polly.loop_header685.us, %middle.block1261
  %polly.indvar_next683.us = add nuw nsw i64 %polly.indvar682.us, 1
  %indvars.iv.next1111 = add nuw nsw i64 %indvars.iv1110, 1
  %exitcond1120.not = icmp eq i64 %polly.indvar682.us, %smax1119
  br i1 %exitcond1120.not, label %polly.loop_exit680.loopexit.us, label %polly.loop_header678.us

polly.loop_exit680.loopexit.us:                   ; preds = %polly.loop_exit687.us
  %polly.indvar_next675.us = add nuw nsw i64 %polly.indvar674.us, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar_next675.us, 1000
  br i1 %exitcond1121.not, label %polly.loop_exit673, label %polly.loop_header671.us

polly.loop_header657:                             ; preds = %polly.loop_header638, %polly.loop_header657
  %polly.indvar661 = phi i64 [ %polly.indvar_next662, %polly.loop_header657 ], [ %209, %polly.loop_header638 ]
  %243 = add nuw nsw i64 %polly.indvar661, %202
  %polly.access.mul.call1665 = mul nuw nsw i64 %243, 1000
  %polly.access.add.call1666 = add nuw nsw i64 %polly.access.mul.call1665, %polly.indvar641
  %polly.access.call1667 = getelementptr double, double* %polly.access.cast.call1714, i64 %polly.access.add.call1666
  %polly.access.call1667.load = load double, double* %polly.access.call1667, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1509669 = add nuw nsw i64 %polly.indvar661, %polly.access.mul.Packed_MemRef_call1509668
  %polly.access.Packed_MemRef_call1509670 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509669
  store double %polly.access.call1667.load, double* %polly.access.Packed_MemRef_call1509670, align 8
  %polly.indvar_next662 = add nuw nsw i64 %polly.indvar661, 1
  %polly.loop_cond663.not.not = icmp ult i64 %polly.indvar661, %214
  br i1 %polly.loop_cond663.not.not, label %polly.loop_header657, label %polly.loop_exit659

polly.loop_header836:                             ; preds = %entry, %polly.loop_exit844
  %indvars.iv1150 = phi i64 [ %indvars.iv.next1151, %polly.loop_exit844 ], [ 0, %entry ]
  %polly.indvar839 = phi i64 [ %polly.indvar_next840, %polly.loop_exit844 ], [ 0, %entry ]
  %smin1152 = call i64 @llvm.smin.i64(i64 %indvars.iv1150, i64 -1168)
  %244 = shl nsw i64 %polly.indvar839, 5
  %245 = add nsw i64 %smin1152, 1199
  br label %polly.loop_header842

polly.loop_exit844:                               ; preds = %polly.loop_exit850
  %polly.indvar_next840 = add nuw nsw i64 %polly.indvar839, 1
  %indvars.iv.next1151 = add nsw i64 %indvars.iv1150, -32
  %exitcond1155.not = icmp eq i64 %polly.indvar_next840, 38
  br i1 %exitcond1155.not, label %polly.loop_header863, label %polly.loop_header836

polly.loop_header842:                             ; preds = %polly.loop_exit850, %polly.loop_header836
  %indvars.iv1146 = phi i64 [ %indvars.iv.next1147, %polly.loop_exit850 ], [ 0, %polly.loop_header836 ]
  %polly.indvar845 = phi i64 [ %polly.indvar_next846, %polly.loop_exit850 ], [ 0, %polly.loop_header836 ]
  %246 = mul nsw i64 %polly.indvar845, -32
  %smin1190 = call i64 @llvm.smin.i64(i64 %246, i64 -1168)
  %247 = add nsw i64 %smin1190, 1200
  %smin1148 = call i64 @llvm.smin.i64(i64 %indvars.iv1146, i64 -1168)
  %248 = shl nsw i64 %polly.indvar845, 5
  %249 = add nsw i64 %smin1148, 1199
  br label %polly.loop_header848

polly.loop_exit850:                               ; preds = %polly.loop_exit856
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %indvars.iv.next1147 = add nsw i64 %indvars.iv1146, -32
  %exitcond1154.not = icmp eq i64 %polly.indvar_next846, 38
  br i1 %exitcond1154.not, label %polly.loop_exit844, label %polly.loop_header842

polly.loop_header848:                             ; preds = %polly.loop_exit856, %polly.loop_header842
  %polly.indvar851 = phi i64 [ 0, %polly.loop_header842 ], [ %polly.indvar_next852, %polly.loop_exit856 ]
  %250 = add nuw nsw i64 %polly.indvar851, %244
  %251 = trunc i64 %250 to i32
  %252 = mul nuw nsw i64 %250, 9600
  %min.iters.check = icmp eq i64 %247, 0
  br i1 %min.iters.check, label %polly.loop_header854, label %vector.ph1191

vector.ph1191:                                    ; preds = %polly.loop_header848
  %broadcast.splatinsert1198 = insertelement <4 x i64> poison, i64 %248, i32 0
  %broadcast.splat1199 = shufflevector <4 x i64> %broadcast.splatinsert1198, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1200 = insertelement <4 x i32> poison, i32 %251, i32 0
  %broadcast.splat1201 = shufflevector <4 x i32> %broadcast.splatinsert1200, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1189

vector.body1189:                                  ; preds = %vector.body1189, %vector.ph1191
  %index1192 = phi i64 [ 0, %vector.ph1191 ], [ %index.next1193, %vector.body1189 ]
  %vec.ind1196 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1191 ], [ %vec.ind.next1197, %vector.body1189 ]
  %253 = add nuw nsw <4 x i64> %vec.ind1196, %broadcast.splat1199
  %254 = trunc <4 x i64> %253 to <4 x i32>
  %255 = mul <4 x i32> %broadcast.splat1201, %254
  %256 = add <4 x i32> %255, <i32 3, i32 3, i32 3, i32 3>
  %257 = urem <4 x i32> %256, <i32 1200, i32 1200, i32 1200, i32 1200>
  %258 = sitofp <4 x i32> %257 to <4 x double>
  %259 = fmul fast <4 x double> %258, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %260 = extractelement <4 x i64> %253, i32 0
  %261 = shl i64 %260, 3
  %262 = add nuw nsw i64 %261, %252
  %263 = getelementptr i8, i8* %call, i64 %262
  %264 = bitcast i8* %263 to <4 x double>*
  store <4 x double> %259, <4 x double>* %264, align 8, !alias.scope !112, !noalias !114
  %index.next1193 = add i64 %index1192, 4
  %vec.ind.next1197 = add <4 x i64> %vec.ind1196, <i64 4, i64 4, i64 4, i64 4>
  %265 = icmp eq i64 %index.next1193, %247
  br i1 %265, label %polly.loop_exit856, label %vector.body1189, !llvm.loop !117

polly.loop_exit856:                               ; preds = %vector.body1189, %polly.loop_header854
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %exitcond1153.not = icmp eq i64 %polly.indvar851, %245
  br i1 %exitcond1153.not, label %polly.loop_exit850, label %polly.loop_header848

polly.loop_header854:                             ; preds = %polly.loop_header848, %polly.loop_header854
  %polly.indvar857 = phi i64 [ %polly.indvar_next858, %polly.loop_header854 ], [ 0, %polly.loop_header848 ]
  %266 = add nuw nsw i64 %polly.indvar857, %248
  %267 = trunc i64 %266 to i32
  %268 = mul i32 %267, %251
  %269 = add i32 %268, 3
  %270 = urem i32 %269, 1200
  %p_conv31.i = sitofp i32 %270 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %271 = shl i64 %266, 3
  %272 = add nuw nsw i64 %271, %252
  %scevgep860 = getelementptr i8, i8* %call, i64 %272
  %scevgep860861 = bitcast i8* %scevgep860 to double*
  store double %p_div33.i, double* %scevgep860861, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %exitcond1149.not = icmp eq i64 %polly.indvar857, %249
  br i1 %exitcond1149.not, label %polly.loop_exit856, label %polly.loop_header854, !llvm.loop !118

polly.loop_header863:                             ; preds = %polly.loop_exit844, %polly.loop_exit871
  %indvars.iv1140 = phi i64 [ %indvars.iv.next1141, %polly.loop_exit871 ], [ 0, %polly.loop_exit844 ]
  %polly.indvar866 = phi i64 [ %polly.indvar_next867, %polly.loop_exit871 ], [ 0, %polly.loop_exit844 ]
  %smin1142 = call i64 @llvm.smin.i64(i64 %indvars.iv1140, i64 -1168)
  %273 = shl nsw i64 %polly.indvar866, 5
  %274 = add nsw i64 %smin1142, 1199
  br label %polly.loop_header869

polly.loop_exit871:                               ; preds = %polly.loop_exit877
  %polly.indvar_next867 = add nuw nsw i64 %polly.indvar866, 1
  %indvars.iv.next1141 = add nsw i64 %indvars.iv1140, -32
  %exitcond1145.not = icmp eq i64 %polly.indvar_next867, 38
  br i1 %exitcond1145.not, label %polly.loop_header889, label %polly.loop_header863

polly.loop_header869:                             ; preds = %polly.loop_exit877, %polly.loop_header863
  %indvars.iv1136 = phi i64 [ %indvars.iv.next1137, %polly.loop_exit877 ], [ 0, %polly.loop_header863 ]
  %polly.indvar872 = phi i64 [ %polly.indvar_next873, %polly.loop_exit877 ], [ 0, %polly.loop_header863 ]
  %275 = mul nsw i64 %polly.indvar872, -32
  %smin1205 = call i64 @llvm.smin.i64(i64 %275, i64 -968)
  %276 = add nsw i64 %smin1205, 1000
  %smin1138 = call i64 @llvm.smin.i64(i64 %indvars.iv1136, i64 -968)
  %277 = shl nsw i64 %polly.indvar872, 5
  %278 = add nsw i64 %smin1138, 999
  br label %polly.loop_header875

polly.loop_exit877:                               ; preds = %polly.loop_exit883
  %polly.indvar_next873 = add nuw nsw i64 %polly.indvar872, 1
  %indvars.iv.next1137 = add nsw i64 %indvars.iv1136, -32
  %exitcond1144.not = icmp eq i64 %polly.indvar_next873, 32
  br i1 %exitcond1144.not, label %polly.loop_exit871, label %polly.loop_header869

polly.loop_header875:                             ; preds = %polly.loop_exit883, %polly.loop_header869
  %polly.indvar878 = phi i64 [ 0, %polly.loop_header869 ], [ %polly.indvar_next879, %polly.loop_exit883 ]
  %279 = add nuw nsw i64 %polly.indvar878, %273
  %280 = trunc i64 %279 to i32
  %281 = mul nuw nsw i64 %279, 8000
  %min.iters.check1206 = icmp eq i64 %276, 0
  br i1 %min.iters.check1206, label %polly.loop_header881, label %vector.ph1207

vector.ph1207:                                    ; preds = %polly.loop_header875
  %broadcast.splatinsert1216 = insertelement <4 x i64> poison, i64 %277, i32 0
  %broadcast.splat1217 = shufflevector <4 x i64> %broadcast.splatinsert1216, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1218 = insertelement <4 x i32> poison, i32 %280, i32 0
  %broadcast.splat1219 = shufflevector <4 x i32> %broadcast.splatinsert1218, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1204

vector.body1204:                                  ; preds = %vector.body1204, %vector.ph1207
  %index1210 = phi i64 [ 0, %vector.ph1207 ], [ %index.next1211, %vector.body1204 ]
  %vec.ind1214 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1207 ], [ %vec.ind.next1215, %vector.body1204 ]
  %282 = add nuw nsw <4 x i64> %vec.ind1214, %broadcast.splat1217
  %283 = trunc <4 x i64> %282 to <4 x i32>
  %284 = mul <4 x i32> %broadcast.splat1219, %283
  %285 = add <4 x i32> %284, <i32 2, i32 2, i32 2, i32 2>
  %286 = urem <4 x i32> %285, <i32 1000, i32 1000, i32 1000, i32 1000>
  %287 = sitofp <4 x i32> %286 to <4 x double>
  %288 = fmul fast <4 x double> %287, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %289 = extractelement <4 x i64> %282, i32 0
  %290 = shl i64 %289, 3
  %291 = add nuw nsw i64 %290, %281
  %292 = getelementptr i8, i8* %call2, i64 %291
  %293 = bitcast i8* %292 to <4 x double>*
  store <4 x double> %288, <4 x double>* %293, align 8, !alias.scope !116, !noalias !119
  %index.next1211 = add i64 %index1210, 4
  %vec.ind.next1215 = add <4 x i64> %vec.ind1214, <i64 4, i64 4, i64 4, i64 4>
  %294 = icmp eq i64 %index.next1211, %276
  br i1 %294, label %polly.loop_exit883, label %vector.body1204, !llvm.loop !120

polly.loop_exit883:                               ; preds = %vector.body1204, %polly.loop_header881
  %polly.indvar_next879 = add nuw nsw i64 %polly.indvar878, 1
  %exitcond1143.not = icmp eq i64 %polly.indvar878, %274
  br i1 %exitcond1143.not, label %polly.loop_exit877, label %polly.loop_header875

polly.loop_header881:                             ; preds = %polly.loop_header875, %polly.loop_header881
  %polly.indvar884 = phi i64 [ %polly.indvar_next885, %polly.loop_header881 ], [ 0, %polly.loop_header875 ]
  %295 = add nuw nsw i64 %polly.indvar884, %277
  %296 = trunc i64 %295 to i32
  %297 = mul i32 %296, %280
  %298 = add i32 %297, 2
  %299 = urem i32 %298, 1000
  %p_conv10.i = sitofp i32 %299 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %300 = shl i64 %295, 3
  %301 = add nuw nsw i64 %300, %281
  %scevgep887 = getelementptr i8, i8* %call2, i64 %301
  %scevgep887888 = bitcast i8* %scevgep887 to double*
  store double %p_div12.i, double* %scevgep887888, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next885 = add nuw nsw i64 %polly.indvar884, 1
  %exitcond1139.not = icmp eq i64 %polly.indvar884, %278
  br i1 %exitcond1139.not, label %polly.loop_exit883, label %polly.loop_header881, !llvm.loop !121

polly.loop_header889:                             ; preds = %polly.loop_exit871, %polly.loop_exit897
  %indvars.iv1130 = phi i64 [ %indvars.iv.next1131, %polly.loop_exit897 ], [ 0, %polly.loop_exit871 ]
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_exit897 ], [ 0, %polly.loop_exit871 ]
  %smin1132 = call i64 @llvm.smin.i64(i64 %indvars.iv1130, i64 -1168)
  %302 = shl nsw i64 %polly.indvar892, 5
  %303 = add nsw i64 %smin1132, 1199
  br label %polly.loop_header895

polly.loop_exit897:                               ; preds = %polly.loop_exit903
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %indvars.iv.next1131 = add nsw i64 %indvars.iv1130, -32
  %exitcond1135.not = icmp eq i64 %polly.indvar_next893, 38
  br i1 %exitcond1135.not, label %init_array.exit, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_exit903, %polly.loop_header889
  %indvars.iv1126 = phi i64 [ %indvars.iv.next1127, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %304 = mul nsw i64 %polly.indvar898, -32
  %smin1223 = call i64 @llvm.smin.i64(i64 %304, i64 -968)
  %305 = add nsw i64 %smin1223, 1000
  %smin1128 = call i64 @llvm.smin.i64(i64 %indvars.iv1126, i64 -968)
  %306 = shl nsw i64 %polly.indvar898, 5
  %307 = add nsw i64 %smin1128, 999
  br label %polly.loop_header901

polly.loop_exit903:                               ; preds = %polly.loop_exit909
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %indvars.iv.next1127 = add nsw i64 %indvars.iv1126, -32
  %exitcond1134.not = icmp eq i64 %polly.indvar_next899, 32
  br i1 %exitcond1134.not, label %polly.loop_exit897, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_exit909, %polly.loop_header895
  %polly.indvar904 = phi i64 [ 0, %polly.loop_header895 ], [ %polly.indvar_next905, %polly.loop_exit909 ]
  %308 = add nuw nsw i64 %polly.indvar904, %302
  %309 = trunc i64 %308 to i32
  %310 = mul nuw nsw i64 %308, 8000
  %min.iters.check1224 = icmp eq i64 %305, 0
  br i1 %min.iters.check1224, label %polly.loop_header907, label %vector.ph1225

vector.ph1225:                                    ; preds = %polly.loop_header901
  %broadcast.splatinsert1234 = insertelement <4 x i64> poison, i64 %306, i32 0
  %broadcast.splat1235 = shufflevector <4 x i64> %broadcast.splatinsert1234, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1236 = insertelement <4 x i32> poison, i32 %309, i32 0
  %broadcast.splat1237 = shufflevector <4 x i32> %broadcast.splatinsert1236, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1222

vector.body1222:                                  ; preds = %vector.body1222, %vector.ph1225
  %index1228 = phi i64 [ 0, %vector.ph1225 ], [ %index.next1229, %vector.body1222 ]
  %vec.ind1232 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1225 ], [ %vec.ind.next1233, %vector.body1222 ]
  %311 = add nuw nsw <4 x i64> %vec.ind1232, %broadcast.splat1235
  %312 = trunc <4 x i64> %311 to <4 x i32>
  %313 = mul <4 x i32> %broadcast.splat1237, %312
  %314 = add <4 x i32> %313, <i32 1, i32 1, i32 1, i32 1>
  %315 = urem <4 x i32> %314, <i32 1200, i32 1200, i32 1200, i32 1200>
  %316 = sitofp <4 x i32> %315 to <4 x double>
  %317 = fmul fast <4 x double> %316, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %318 = extractelement <4 x i64> %311, i32 0
  %319 = shl i64 %318, 3
  %320 = add nuw nsw i64 %319, %310
  %321 = getelementptr i8, i8* %call1, i64 %320
  %322 = bitcast i8* %321 to <4 x double>*
  store <4 x double> %317, <4 x double>* %322, align 8, !alias.scope !115, !noalias !122
  %index.next1229 = add i64 %index1228, 4
  %vec.ind.next1233 = add <4 x i64> %vec.ind1232, <i64 4, i64 4, i64 4, i64 4>
  %323 = icmp eq i64 %index.next1229, %305
  br i1 %323, label %polly.loop_exit909, label %vector.body1222, !llvm.loop !123

polly.loop_exit909:                               ; preds = %vector.body1222, %polly.loop_header907
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %exitcond1133.not = icmp eq i64 %polly.indvar904, %303
  br i1 %exitcond1133.not, label %polly.loop_exit903, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_header901, %polly.loop_header907
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_header907 ], [ 0, %polly.loop_header901 ]
  %324 = add nuw nsw i64 %polly.indvar910, %306
  %325 = trunc i64 %324 to i32
  %326 = mul i32 %325, %309
  %327 = add i32 %326, 1
  %328 = urem i32 %327, 1200
  %p_conv.i = sitofp i32 %328 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %329 = shl i64 %324, 3
  %330 = add nuw nsw i64 %329, %310
  %scevgep914 = getelementptr i8, i8* %call1, i64 %330
  %scevgep914915 = bitcast i8* %scevgep914 to double*
  store double %p_div.i, double* %scevgep914915, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %exitcond1129.not = icmp eq i64 %polly.indvar910, %307
  br i1 %exitcond1129.not, label %polly.loop_exit909, label %polly.loop_header907, !llvm.loop !124
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
!22 = distinct !{!"B"}
!23 = distinct !{!23, !12, !24, !25, !26, !27, !30}
!24 = !{!"llvm.loop.disable_nonforced"}
!25 = !{!"llvm.loop.id", !"k"}
!26 = !{!"llvm.loop.tile.size", i32 64}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 2048}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !24, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.loop.interchange.followup_interchanged", !43}
!43 = distinct !{!43, !12, !24, !41, !44, !45, !46}
!44 = !{!"llvm.data.pack.enable", i1 true}
!45 = !{!"llvm.data.pack.array", !21}
!46 = !{!"llvm.data.pack.allocate", !"malloc"}
!47 = distinct !{!47, !12, !24, !48, !49, !50, !51, !52, !61}
!48 = !{!"llvm.loop.id", !"i"}
!49 = !{!"llvm.loop.tile.enable", i1 true}
!50 = !{!"llvm.loop.tile.depth", i32 3}
!51 = !{!"llvm.loop.tile.size", i32 32}
!52 = !{!"llvm.loop.tile.followup_floor", !53}
!53 = distinct !{!53, !12, !24, !54, !55, !56, !57, !58}
!54 = !{!"llvm.loop.id", !"i1"}
!55 = !{!"llvm.loop.interchange.enable", i1 true}
!56 = !{!"llvm.loop.interchange.depth", i32 5}
!57 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!58 = !{!"llvm.loop.interchange.followup_interchanged", !59}
!59 = distinct !{!59, !12, !24, !54, !44, !60, !46}
!60 = !{!"llvm.data.pack.array", !22}
!61 = !{!"llvm.loop.tile.followup_tile", !62}
!62 = distinct !{!62, !12, !24, !63}
!63 = !{!"llvm.loop.id", !"i2"}
!64 = distinct !{!64, !12, !13}
!65 = distinct !{!65, !12, !13}
!66 = distinct !{!66, !12, !13}
!67 = distinct !{!67, !12, !13}
!68 = !{!69, !69, i64 0}
!69 = !{!"any pointer", !4, i64 0}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76, !77, !78}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !73, !"polly.alias.scope.Packed_MemRef_call1"}
!78 = distinct !{!78, !73, !"polly.alias.scope.Packed_MemRef_call2"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !81, !13}
!81 = !{!"llvm.loop.unroll.runtime.disable"}
!82 = !{!72, !75, !77, !78}
!83 = !{!72, !76, !77, !78}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !81, !13}
!86 = distinct !{!86, !87, !"polly.alias.scope.MemRef_call"}
!87 = distinct !{!87, !"polly.alias.scope.domain"}
!88 = !{!89, !90, !91, !92}
!89 = distinct !{!89, !87, !"polly.alias.scope.MemRef_call1"}
!90 = distinct !{!90, !87, !"polly.alias.scope.MemRef_call2"}
!91 = distinct !{!91, !87, !"polly.alias.scope.Packed_MemRef_call1"}
!92 = distinct !{!92, !87, !"polly.alias.scope.Packed_MemRef_call2"}
!93 = distinct !{!93, !13}
!94 = distinct !{!94, !81, !13}
!95 = !{!86, !89, !91, !92}
!96 = !{!86, !90, !91, !92}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !81, !13}
!99 = distinct !{!99, !100, !"polly.alias.scope.MemRef_call"}
!100 = distinct !{!100, !"polly.alias.scope.domain"}
!101 = !{!102, !103, !104, !105}
!102 = distinct !{!102, !100, !"polly.alias.scope.MemRef_call1"}
!103 = distinct !{!103, !100, !"polly.alias.scope.MemRef_call2"}
!104 = distinct !{!104, !100, !"polly.alias.scope.Packed_MemRef_call1"}
!105 = distinct !{!105, !100, !"polly.alias.scope.Packed_MemRef_call2"}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !81, !13}
!108 = !{!99, !102, !104, !105}
!109 = !{!99, !103, !104, !105}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !81, !13}
!112 = distinct !{!112, !113, !"polly.alias.scope.MemRef_call"}
!113 = distinct !{!113, !"polly.alias.scope.domain"}
!114 = !{!115, !116}
!115 = distinct !{!115, !113, !"polly.alias.scope.MemRef_call1"}
!116 = distinct !{!116, !113, !"polly.alias.scope.MemRef_call2"}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !81, !13}
!119 = !{!115, !112}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !81, !13}
!122 = !{!116, !112}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !81, !13}
