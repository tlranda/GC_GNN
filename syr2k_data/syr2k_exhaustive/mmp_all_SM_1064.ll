; ModuleID = 'syr2k_exhaustive/mmp_all_SM_1064.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_1064.c"
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
  %call933 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1785 = bitcast i8* %call1 to double*
  %polly.access.call1794 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2795 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1794, %call2
  %polly.access.call2814 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2814, %call1
  %2 = or i1 %0, %1
  %polly.access.call834 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call834, %call2
  %4 = icmp ule i8* %polly.access.call2814, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call834, %call1
  %8 = icmp ule i8* %polly.access.call1794, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header907, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1169 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1168 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1167 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1166 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1166, %scevgep1169
  %bound1 = icmp ult i8* %scevgep1168, %scevgep1167
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
  br i1 %exitcond18.not.i, label %vector.ph1173, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1173:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1180 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1181 = shufflevector <4 x i64> %broadcast.splatinsert1180, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1172

vector.body1172:                                  ; preds = %vector.body1172, %vector.ph1173
  %index1174 = phi i64 [ 0, %vector.ph1173 ], [ %index.next1175, %vector.body1172 ]
  %vec.ind1178 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1173 ], [ %vec.ind.next1179, %vector.body1172 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1178, %broadcast.splat1181
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call933, i64 %indvars.iv7.i, i64 %index1174
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1175 = add i64 %index1174, 4
  %vec.ind.next1179 = add <4 x i64> %vec.ind1178, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1175, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1172, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1172
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1173, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit968
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start552, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1236 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1236, label %for.body3.i46.preheader1391, label %vector.ph1237

vector.ph1237:                                    ; preds = %for.body3.i46.preheader
  %n.vec1239 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1235

vector.body1235:                                  ; preds = %vector.body1235, %vector.ph1237
  %index1240 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1241, %vector.body1235 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call933, i64 %indvars.iv21.i, i64 %index1240
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1241 = add i64 %index1240, 4
  %46 = icmp eq i64 %index.next1241, %n.vec1239
  br i1 %46, label %middle.block1233, label %vector.body1235, !llvm.loop !18

middle.block1233:                                 ; preds = %vector.body1235
  %cmp.n1243 = icmp eq i64 %indvars.iv21.i, %n.vec1239
  br i1 %cmp.n1243, label %for.inc6.i, label %for.body3.i46.preheader1391

for.body3.i46.preheader1391:                      ; preds = %for.body3.i46.preheader, %middle.block1233
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1239, %middle.block1233 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1391, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1391 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call933, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1233, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call933, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !46

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting553
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start321, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1283 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1283, label %for.body3.i60.preheader1387, label %vector.ph1284

vector.ph1284:                                    ; preds = %for.body3.i60.preheader
  %n.vec1286 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1282

vector.body1282:                                  ; preds = %vector.body1282, %vector.ph1284
  %index1287 = phi i64 [ 0, %vector.ph1284 ], [ %index.next1288, %vector.body1282 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call933, i64 %indvars.iv21.i52, i64 %index1287
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1291 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1291, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1288 = add i64 %index1287, 4
  %57 = icmp eq i64 %index.next1288, %n.vec1286
  br i1 %57, label %middle.block1280, label %vector.body1282, !llvm.loop !63

middle.block1280:                                 ; preds = %vector.body1282
  %cmp.n1290 = icmp eq i64 %indvars.iv21.i52, %n.vec1286
  br i1 %cmp.n1290, label %for.inc6.i63, label %for.body3.i60.preheader1387

for.body3.i60.preheader1387:                      ; preds = %for.body3.i60.preheader, %middle.block1280
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1286, %middle.block1280 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1387, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1387 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call933, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !64

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1280, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call933, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !46

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting322
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1333 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1333, label %for.body3.i99.preheader1383, label %vector.ph1334

vector.ph1334:                                    ; preds = %for.body3.i99.preheader
  %n.vec1336 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1332

vector.body1332:                                  ; preds = %vector.body1332, %vector.ph1334
  %index1337 = phi i64 [ 0, %vector.ph1334 ], [ %index.next1338, %vector.body1332 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call933, i64 %indvars.iv21.i91, i64 %index1337
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1341 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1341, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1338 = add i64 %index1337, 4
  %68 = icmp eq i64 %index.next1338, %n.vec1336
  br i1 %68, label %middle.block1330, label %vector.body1332, !llvm.loop !65

middle.block1330:                                 ; preds = %vector.body1332
  %cmp.n1340 = icmp eq i64 %indvars.iv21.i91, %n.vec1336
  br i1 %cmp.n1340, label %for.inc6.i102, label %for.body3.i99.preheader1383

for.body3.i99.preheader1383:                      ; preds = %for.body3.i99.preheader, %middle.block1330
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1336, %middle.block1330 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1383, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1383 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call933, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !66

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1330, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call933, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !46

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !67
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call933, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !69

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !70

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  %malloccall136 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1345 = phi i64 [ %indvar.next1346, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1345, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1347 = icmp ult i64 %88, 4
  br i1 %min.iters.check1347, label %polly.loop_header192.preheader, label %vector.ph1348

vector.ph1348:                                    ; preds = %polly.loop_header
  %n.vec1350 = and i64 %88, -4
  br label %vector.body1344

vector.body1344:                                  ; preds = %vector.body1344, %vector.ph1348
  %index1351 = phi i64 [ 0, %vector.ph1348 ], [ %index.next1352, %vector.body1344 ]
  %90 = shl nuw nsw i64 %index1351, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1355 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !71, !noalias !73
  %93 = fmul fast <4 x double> %wide.load1355, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !71, !noalias !73
  %index.next1352 = add i64 %index1351, 4
  %95 = icmp eq i64 %index.next1352, %n.vec1350
  br i1 %95, label %middle.block1342, label %vector.body1344, !llvm.loop !78

middle.block1342:                                 ; preds = %vector.body1344
  %cmp.n1354 = icmp eq i64 %88, %n.vec1350
  br i1 %cmp.n1354, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1342
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1350, %middle.block1342 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1342
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1056.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1346 = add i64 %indvar1345, 1
  br i1 %exitcond1056.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !71, !noalias !73
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1055.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !79

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar203, 100
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar_next204, 10
  br i1 %exitcond1054.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035, %polly.loop_exit230 ], [ 96, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %102, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %98 = shl nuw nsw i64 %polly.indvar209, 2
  %99 = mul nsw i64 %polly.indvar209, -4
  %100 = mul nsw i64 %polly.indvar209, -100
  %101 = mul nuw nsw i64 %polly.indvar209, 100
  br label %polly.loop_header212

polly.loop_exit230:                               ; preds = %polly.loop_exit280
  %102 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -100
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, -4
  %indvars.iv.next1041 = add nuw nsw i64 %indvars.iv1040, 4
  %indvars.iv.next1045 = add nsw i64 %indvars.iv1044, -4
  %exitcond1053.not = icmp eq i64 %102, 12
  br i1 %exitcond1053.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %103 = add nuw nsw i64 %polly.indvar215, %97
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next216, 100
  br i1 %exitcond1033.not, label %polly.loop_header228.preheader, label %polly.loop_header212

polly.loop_header228.preheader:                   ; preds = %polly.loop_exit220
  %104 = add nsw i64 %100, 1199
  br label %polly.loop_header228

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %105 = add nuw nsw i64 %polly.indvar221, %101
  %polly.access.mul.call2225 = mul nuw nsw i64 %105, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %103, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2795, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_header228.preheader, %polly.loop_exit280
  %indvar1359 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %indvar.next1360, %polly.loop_exit280 ]
  %indvars.iv1046 = phi i64 [ %indvars.iv1044, %polly.loop_header228.preheader ], [ %indvars.iv.next1047, %polly.loop_exit280 ]
  %indvars.iv1042 = phi i64 [ %indvars.iv1040, %polly.loop_header228.preheader ], [ %indvars.iv.next1043, %polly.loop_exit280 ]
  %polly.indvar231 = phi i64 [ %polly.indvar209, %polly.loop_header228.preheader ], [ %polly.indvar_next232, %polly.loop_exit280 ]
  %106 = mul nsw i64 %indvar1359, -96
  %107 = add i64 %98, %106
  %smax1361 = call i64 @llvm.smax.i64(i64 %107, i64 0)
  %108 = mul nuw nsw i64 %indvar1359, 96
  %109 = add i64 %99, %108
  %110 = add i64 %smax1361, %109
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1042, i64 0)
  %111 = add i64 %smax, %indvars.iv1046
  %.not.not = icmp ugt i64 %polly.indvar231, %polly.indvar209
  %112 = mul nuw nsw i64 %polly.indvar231, 96
  %113 = add nsw i64 %112, %100
  %114 = add nsw i64 %113, -1
  %.inv = icmp sgt i64 %113, 99
  %115 = select i1 %.inv, i64 99, i64 %114
  %polly.loop_guard = icmp sgt i64 %115, -1
  %116 = add nsw i64 %113, 95
  %117 = icmp ult i64 %104, %116
  %118 = select i1 %117, i64 %104, i64 %116
  %polly.loop_guard254.not = icmp sgt i64 %113, %118
  br i1 %.not.not, label %polly.loop_header234.us, label %polly.loop_header234

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.us ], [ 0, %polly.loop_header228 ]
  br i1 %polly.loop_guard, label %polly.loop_header240.preheader.us, label %polly.loop_exit242.us

polly.loop_header240.us:                          ; preds = %polly.loop_header240.preheader.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header240.preheader.us ]
  %119 = add nuw nsw i64 %polly.indvar243.us, %101
  %polly.access.mul.call1247.us = mul nuw nsw i64 %119, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %122, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1785, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar243.us, %115
  br i1 %exitcond1038.not, label %polly.loop_exit242.us, label %polly.loop_header240.us

polly.loop_exit242.us:                            ; preds = %polly.loop_header240.us, %polly.loop_header234.us
  br i1 %polly.loop_guard254.not, label %polly.merge.us, label %polly.loop_header251.preheader.us

polly.loop_header251.us:                          ; preds = %polly.loop_header251.preheader.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %113, %polly.loop_header251.preheader.us ]
  %120 = add nsw i64 %polly.indvar255.us, %101
  %polly.access.mul.call1259.us = mul nuw nsw i64 %120, 1000
  %polly.access.add.call1260.us = add nuw nsw i64 %121, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1785, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1263.us = add nsw i64 %polly.indvar255.us, %polly.access.mul.Packed_MemRef_call1262.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nsw i64 %polly.indvar255.us, 1
  %polly.loop_cond257.not.not.us = icmp slt i64 %polly.indvar255.us, %118
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.us, label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.loop_header251.us, %polly.loop_exit242.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1039.not = icmp eq i64 %polly.indvar_next238.us, 100
  br i1 %exitcond1039.not, label %polly.loop_header278.preheader, label %polly.loop_header234.us

polly.loop_header251.preheader.us:                ; preds = %polly.loop_exit242.us
  %121 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.Packed_MemRef_call1262.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header251.us

polly.loop_header240.preheader.us:                ; preds = %polly.loop_header234.us
  %122 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header240.us

polly.loop_exit280:                               ; preds = %polly.loop_exit287, %polly.loop_header278.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1043 = add nsw i64 %indvars.iv1042, -96
  %indvars.iv.next1047 = add nsw i64 %indvars.iv1046, 96
  %exitcond1052.not = icmp eq i64 %polly.indvar_next232, 13
  %indvar.next1360 = add i64 %indvar1359, 1
  br i1 %exitcond1052.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228, %polly.merge
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.merge ], [ 0, %polly.loop_header228 ]
  %123 = add nuw nsw i64 %polly.indvar237, %97
  %polly.access.mul.Packed_MemRef_call1275 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header265

polly.merge:                                      ; preds = %polly.loop_header265
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar_next238, 100
  br i1 %exitcond1037.not, label %polly.loop_header278.preheader, label %polly.loop_header234

polly.loop_header278.preheader:                   ; preds = %polly.merge, %polly.merge.us
  %124 = sub nsw i64 %101, %112
  %125 = icmp sgt i64 %124, 0
  %126 = select i1 %125, i64 %124, i64 0
  %127 = mul nsw i64 %polly.indvar231, -96
  %128 = icmp slt i64 %127, -1104
  %129 = select i1 %128, i64 %127, i64 -1104
  %130 = add nsw i64 %129, 1199
  %polly.loop_guard288.not = icmp sgt i64 %126, %130
  br i1 %polly.loop_guard288.not, label %polly.loop_exit280, label %polly.loop_header278

polly.loop_header265:                             ; preds = %polly.loop_header265, %polly.loop_header234
  %polly.indvar268 = phi i64 [ 0, %polly.loop_header234 ], [ %polly.indvar_next269, %polly.loop_header265 ]
  %131 = add nuw nsw i64 %polly.indvar268, %101
  %polly.access.mul.call1272 = mul nuw nsw i64 %131, 1000
  %polly.access.add.call1273 = add nuw nsw i64 %123, %polly.access.mul.call1272
  %polly.access.call1274 = getelementptr double, double* %polly.access.cast.call1785, i64 %polly.access.add.call1273
  %polly.access.call1274.load = load double, double* %polly.access.call1274, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1276 = add nuw nsw i64 %polly.indvar268, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call1277 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1276
  store double %polly.access.call1274.load, double* %polly.access.Packed_MemRef_call1277, align 8
  %polly.indvar_next269 = add nuw nsw i64 %polly.indvar268, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar_next269, %indvars.iv1034
  br i1 %exitcond1036.not, label %polly.merge, label %polly.loop_header265

polly.loop_header278:                             ; preds = %polly.loop_header278.preheader, %polly.loop_exit287
  %polly.indvar281 = phi i64 [ %polly.indvar_next282, %polly.loop_exit287 ], [ 0, %polly.loop_header278.preheader ]
  %polly.access.mul.Packed_MemRef_call1300 = mul nuw nsw i64 %polly.indvar281, 1200
  br label %polly.loop_header285

polly.loop_exit287:                               ; preds = %polly.loop_exit295
  %polly.indvar_next282 = add nuw nsw i64 %polly.indvar281, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar_next282, 100
  br i1 %exitcond1051.not, label %polly.loop_exit280, label %polly.loop_header278

polly.loop_header285:                             ; preds = %polly.loop_header278, %polly.loop_exit295
  %indvar1362 = phi i64 [ 0, %polly.loop_header278 ], [ %indvar.next1363, %polly.loop_exit295 ]
  %indvars.iv1048 = phi i64 [ %111, %polly.loop_header278 ], [ %indvars.iv.next1049, %polly.loop_exit295 ]
  %polly.indvar289 = phi i64 [ %126, %polly.loop_header278 ], [ %polly.indvar_next290, %polly.loop_exit295 ]
  %132 = add i64 %110, %indvar1362
  %smin1364 = call i64 @llvm.smin.i64(i64 %132, i64 99)
  %133 = add nsw i64 %smin1364, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1048, i64 99)
  %134 = add nuw i64 %polly.indvar289, %112
  %135 = add i64 %134, %100
  %polly.loop_guard2961152 = icmp sgt i64 %135, -1
  br i1 %polly.loop_guard2961152, label %polly.loop_header293.preheader, label %polly.loop_exit295

polly.loop_header293.preheader:                   ; preds = %polly.loop_header285
  %polly.access.add.Packed_MemRef_call2305 = add nsw i64 %polly.access.mul.Packed_MemRef_call1300, %135
  %polly.access.Packed_MemRef_call2306 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2305
  %_p_scalar_307 = load double, double* %polly.access.Packed_MemRef_call2306, align 8
  %polly.access.Packed_MemRef_call1314 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2305
  %_p_scalar_315 = load double, double* %polly.access.Packed_MemRef_call1314, align 8
  %136 = mul i64 %134, 9600
  %min.iters.check1365 = icmp ult i64 %133, 4
  br i1 %min.iters.check1365, label %polly.loop_header293.preheader1380, label %vector.ph1366

vector.ph1366:                                    ; preds = %polly.loop_header293.preheader
  %n.vec1368 = and i64 %133, -4
  %broadcast.splatinsert1374 = insertelement <4 x double> poison, double %_p_scalar_307, i32 0
  %broadcast.splat1375 = shufflevector <4 x double> %broadcast.splatinsert1374, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1377 = insertelement <4 x double> poison, double %_p_scalar_315, i32 0
  %broadcast.splat1378 = shufflevector <4 x double> %broadcast.splatinsert1377, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1358

vector.body1358:                                  ; preds = %vector.body1358, %vector.ph1366
  %index1369 = phi i64 [ 0, %vector.ph1366 ], [ %index.next1370, %vector.body1358 ]
  %137 = add nuw nsw i64 %index1369, %101
  %138 = add nuw nsw i64 %index1369, %polly.access.mul.Packed_MemRef_call1300
  %139 = getelementptr double, double* %Packed_MemRef_call1, i64 %138
  %140 = bitcast double* %139 to <4 x double>*
  %wide.load1373 = load <4 x double>, <4 x double>* %140, align 8
  %141 = fmul fast <4 x double> %broadcast.splat1375, %wide.load1373
  %142 = getelementptr double, double* %Packed_MemRef_call2, i64 %138
  %143 = bitcast double* %142 to <4 x double>*
  %wide.load1376 = load <4 x double>, <4 x double>* %143, align 8
  %144 = fmul fast <4 x double> %broadcast.splat1378, %wide.load1376
  %145 = shl i64 %137, 3
  %146 = add i64 %145, %136
  %147 = getelementptr i8, i8* %call, i64 %146
  %148 = bitcast i8* %147 to <4 x double>*
  %wide.load1379 = load <4 x double>, <4 x double>* %148, align 8, !alias.scope !71, !noalias !73
  %149 = fadd fast <4 x double> %144, %141
  %150 = fmul fast <4 x double> %149, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %151 = fadd fast <4 x double> %150, %wide.load1379
  %152 = bitcast i8* %147 to <4 x double>*
  store <4 x double> %151, <4 x double>* %152, align 8, !alias.scope !71, !noalias !73
  %index.next1370 = add i64 %index1369, 4
  %153 = icmp eq i64 %index.next1370, %n.vec1368
  br i1 %153, label %middle.block1356, label %vector.body1358, !llvm.loop !83

middle.block1356:                                 ; preds = %vector.body1358
  %cmp.n1372 = icmp eq i64 %133, %n.vec1368
  br i1 %cmp.n1372, label %polly.loop_exit295, label %polly.loop_header293.preheader1380

polly.loop_header293.preheader1380:               ; preds = %polly.loop_header293.preheader, %middle.block1356
  %polly.indvar297.ph = phi i64 [ 0, %polly.loop_header293.preheader ], [ %n.vec1368, %middle.block1356 ]
  br label %polly.loop_header293

polly.loop_exit295:                               ; preds = %polly.loop_header293, %middle.block1356, %polly.loop_header285
  %polly.indvar_next290 = add nuw nsw i64 %polly.indvar289, 1
  %polly.loop_cond291.not.not = icmp slt i64 %polly.indvar289, %130
  %indvars.iv.next1049 = add i64 %indvars.iv1048, 1
  %indvar.next1363 = add i64 %indvar1362, 1
  br i1 %polly.loop_cond291.not.not, label %polly.loop_header285, label %polly.loop_exit287

polly.loop_header293:                             ; preds = %polly.loop_header293.preheader1380, %polly.loop_header293
  %polly.indvar297 = phi i64 [ %polly.indvar_next298, %polly.loop_header293 ], [ %polly.indvar297.ph, %polly.loop_header293.preheader1380 ]
  %154 = add nuw nsw i64 %polly.indvar297, %101
  %polly.access.add.Packed_MemRef_call1301 = add nuw nsw i64 %polly.indvar297, %polly.access.mul.Packed_MemRef_call1300
  %polly.access.Packed_MemRef_call1302 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1301
  %_p_scalar_303 = load double, double* %polly.access.Packed_MemRef_call1302, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_307, %_p_scalar_303
  %polly.access.Packed_MemRef_call2310 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1301
  %_p_scalar_311 = load double, double* %polly.access.Packed_MemRef_call2310, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_315, %_p_scalar_311
  %155 = shl i64 %154, 3
  %156 = add i64 %155, %136
  %scevgep316 = getelementptr i8, i8* %call, i64 %156
  %scevgep316317 = bitcast i8* %scevgep316 to double*
  %_p_scalar_318 = load double, double* %scevgep316317, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_318
  store double %p_add42.i118, double* %scevgep316317, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next298 = add nuw nsw i64 %polly.indvar297, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar297, %smin
  br i1 %exitcond1050.not, label %polly.loop_exit295, label %polly.loop_header293, !llvm.loop !84

polly.start321:                                   ; preds = %kernel_syr2k.exit
  %malloccall323 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  %malloccall325 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header409

polly.exiting322:                                 ; preds = %polly.loop_exit433
  tail call void @free(i8* %malloccall323)
  tail call void @free(i8* %malloccall325)
  br label %kernel_syr2k.exit90

polly.loop_header409:                             ; preds = %polly.loop_exit417, %polly.start321
  %indvar1295 = phi i64 [ %indvar.next1296, %polly.loop_exit417 ], [ 0, %polly.start321 ]
  %polly.indvar412 = phi i64 [ %polly.indvar_next413, %polly.loop_exit417 ], [ 1, %polly.start321 ]
  %157 = add i64 %indvar1295, 1
  %158 = mul nuw nsw i64 %polly.indvar412, 9600
  %scevgep421 = getelementptr i8, i8* %call, i64 %158
  %min.iters.check1297 = icmp ult i64 %157, 4
  br i1 %min.iters.check1297, label %polly.loop_header415.preheader, label %vector.ph1298

vector.ph1298:                                    ; preds = %polly.loop_header409
  %n.vec1300 = and i64 %157, -4
  br label %vector.body1294

vector.body1294:                                  ; preds = %vector.body1294, %vector.ph1298
  %index1301 = phi i64 [ 0, %vector.ph1298 ], [ %index.next1302, %vector.body1294 ]
  %159 = shl nuw nsw i64 %index1301, 3
  %160 = getelementptr i8, i8* %scevgep421, i64 %159
  %161 = bitcast i8* %160 to <4 x double>*
  %wide.load1305 = load <4 x double>, <4 x double>* %161, align 8, !alias.scope !85, !noalias !87
  %162 = fmul fast <4 x double> %wide.load1305, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %163 = bitcast i8* %160 to <4 x double>*
  store <4 x double> %162, <4 x double>* %163, align 8, !alias.scope !85, !noalias !87
  %index.next1302 = add i64 %index1301, 4
  %164 = icmp eq i64 %index.next1302, %n.vec1300
  br i1 %164, label %middle.block1292, label %vector.body1294, !llvm.loop !92

middle.block1292:                                 ; preds = %vector.body1294
  %cmp.n1304 = icmp eq i64 %157, %n.vec1300
  br i1 %cmp.n1304, label %polly.loop_exit417, label %polly.loop_header415.preheader

polly.loop_header415.preheader:                   ; preds = %polly.loop_header409, %middle.block1292
  %polly.indvar418.ph = phi i64 [ 0, %polly.loop_header409 ], [ %n.vec1300, %middle.block1292 ]
  br label %polly.loop_header415

polly.loop_exit417:                               ; preds = %polly.loop_header415, %middle.block1292
  %polly.indvar_next413 = add nuw nsw i64 %polly.indvar412, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar_next413, 1200
  %indvar.next1296 = add i64 %indvar1295, 1
  br i1 %exitcond1085.not, label %polly.loop_header425.preheader, label %polly.loop_header409

polly.loop_header425.preheader:                   ; preds = %polly.loop_exit417
  %Packed_MemRef_call1324 = bitcast i8* %malloccall323 to double*
  %Packed_MemRef_call2326 = bitcast i8* %malloccall325 to double*
  br label %polly.loop_header425

polly.loop_header415:                             ; preds = %polly.loop_header415.preheader, %polly.loop_header415
  %polly.indvar418 = phi i64 [ %polly.indvar_next419, %polly.loop_header415 ], [ %polly.indvar418.ph, %polly.loop_header415.preheader ]
  %165 = shl nuw nsw i64 %polly.indvar418, 3
  %scevgep422 = getelementptr i8, i8* %scevgep421, i64 %165
  %scevgep422423 = bitcast i8* %scevgep422 to double*
  %_p_scalar_424 = load double, double* %scevgep422423, align 8, !alias.scope !85, !noalias !87
  %p_mul.i57 = fmul fast double %_p_scalar_424, 1.200000e+00
  store double %p_mul.i57, double* %scevgep422423, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next419 = add nuw nsw i64 %polly.indvar418, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar_next419, %polly.indvar412
  br i1 %exitcond1084.not, label %polly.loop_exit417, label %polly.loop_header415, !llvm.loop !93

polly.loop_header425:                             ; preds = %polly.loop_header425.preheader, %polly.loop_exit433
  %polly.indvar428 = phi i64 [ %polly.indvar_next429, %polly.loop_exit433 ], [ 0, %polly.loop_header425.preheader ]
  %166 = mul nuw nsw i64 %polly.indvar428, 100
  br label %polly.loop_header431

polly.loop_exit433:                               ; preds = %polly.loop_exit455
  %polly.indvar_next429 = add nuw nsw i64 %polly.indvar428, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next429, 10
  br i1 %exitcond1083.not, label %polly.exiting322, label %polly.loop_header425

polly.loop_header431:                             ; preds = %polly.loop_exit455, %polly.loop_header425
  %indvars.iv1072 = phi i64 [ %indvars.iv.next1073, %polly.loop_exit455 ], [ 0, %polly.loop_header425 ]
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit455 ], [ 0, %polly.loop_header425 ]
  %indvars.iv1061 = phi i64 [ %indvars.iv.next1062, %polly.loop_exit455 ], [ 96, %polly.loop_header425 ]
  %indvars.iv1057 = phi i64 [ %indvars.iv.next1058, %polly.loop_exit455 ], [ 1200, %polly.loop_header425 ]
  %polly.indvar434 = phi i64 [ %171, %polly.loop_exit455 ], [ 0, %polly.loop_header425 ]
  %167 = shl nuw nsw i64 %polly.indvar434, 2
  %168 = mul nsw i64 %polly.indvar434, -4
  %169 = mul nsw i64 %polly.indvar434, -100
  %170 = mul nuw nsw i64 %polly.indvar434, 100
  br label %polly.loop_header437

polly.loop_exit455:                               ; preds = %polly.loop_exit511
  %171 = add nuw nsw i64 %polly.indvar434, 1
  %indvars.iv.next1058 = add nsw i64 %indvars.iv1057, -100
  %indvars.iv.next1062 = add nsw i64 %indvars.iv1061, -4
  %indvars.iv.next1068 = add nuw nsw i64 %indvars.iv1067, 4
  %indvars.iv.next1073 = add nsw i64 %indvars.iv1072, -4
  %exitcond1082.not = icmp eq i64 %171, 12
  br i1 %exitcond1082.not, label %polly.loop_exit433, label %polly.loop_header431

polly.loop_header437:                             ; preds = %polly.loop_exit445, %polly.loop_header431
  %polly.indvar440 = phi i64 [ 0, %polly.loop_header431 ], [ %polly.indvar_next441, %polly.loop_exit445 ]
  %172 = add nuw nsw i64 %polly.indvar440, %166
  %polly.access.mul.Packed_MemRef_call2326 = mul nuw nsw i64 %polly.indvar440, 1200
  br label %polly.loop_header443

polly.loop_exit445:                               ; preds = %polly.loop_header443
  %polly.indvar_next441 = add nuw nsw i64 %polly.indvar440, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar_next441, 100
  br i1 %exitcond1060.not, label %polly.loop_header453.preheader, label %polly.loop_header437

polly.loop_header453.preheader:                   ; preds = %polly.loop_exit445
  %173 = add nsw i64 %169, 1199
  br label %polly.loop_header453

polly.loop_header443:                             ; preds = %polly.loop_header443, %polly.loop_header437
  %polly.indvar446 = phi i64 [ 0, %polly.loop_header437 ], [ %polly.indvar_next447, %polly.loop_header443 ]
  %174 = add nuw nsw i64 %polly.indvar446, %170
  %polly.access.mul.call2450 = mul nuw nsw i64 %174, 1000
  %polly.access.add.call2451 = add nuw nsw i64 %172, %polly.access.mul.call2450
  %polly.access.call2452 = getelementptr double, double* %polly.access.cast.call2795, i64 %polly.access.add.call2451
  %polly.access.call2452.load = load double, double* %polly.access.call2452, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2326 = add nuw nsw i64 %polly.indvar446, %polly.access.mul.Packed_MemRef_call2326
  %polly.access.Packed_MemRef_call2326 = getelementptr double, double* %Packed_MemRef_call2326, i64 %polly.access.add.Packed_MemRef_call2326
  store double %polly.access.call2452.load, double* %polly.access.Packed_MemRef_call2326, align 8
  %polly.indvar_next447 = add nuw nsw i64 %polly.indvar446, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar_next447, %indvars.iv1057
  br i1 %exitcond1059.not, label %polly.loop_exit445, label %polly.loop_header443

polly.loop_header453:                             ; preds = %polly.loop_header453.preheader, %polly.loop_exit511
  %indvar1309 = phi i64 [ 0, %polly.loop_header453.preheader ], [ %indvar.next1310, %polly.loop_exit511 ]
  %indvars.iv1074 = phi i64 [ %indvars.iv1072, %polly.loop_header453.preheader ], [ %indvars.iv.next1075, %polly.loop_exit511 ]
  %indvars.iv1069 = phi i64 [ %indvars.iv1067, %polly.loop_header453.preheader ], [ %indvars.iv.next1070, %polly.loop_exit511 ]
  %polly.indvar456 = phi i64 [ %polly.indvar434, %polly.loop_header453.preheader ], [ %polly.indvar_next457, %polly.loop_exit511 ]
  %175 = mul nsw i64 %indvar1309, -96
  %176 = add i64 %167, %175
  %smax1311 = call i64 @llvm.smax.i64(i64 %176, i64 0)
  %177 = mul nuw nsw i64 %indvar1309, 96
  %178 = add i64 %168, %177
  %179 = add i64 %smax1311, %178
  %smax1071 = call i64 @llvm.smax.i64(i64 %indvars.iv1069, i64 0)
  %180 = add i64 %smax1071, %indvars.iv1074
  %.not.not987 = icmp ugt i64 %polly.indvar456, %polly.indvar434
  %181 = mul nuw nsw i64 %polly.indvar456, 96
  %182 = add nsw i64 %181, %169
  %183 = add nsw i64 %182, -1
  %.inv988 = icmp sgt i64 %182, 99
  %184 = select i1 %.inv988, i64 99, i64 %183
  %polly.loop_guard473 = icmp sgt i64 %184, -1
  %185 = add nsw i64 %182, 95
  %186 = icmp ult i64 %173, %185
  %187 = select i1 %186, i64 %173, i64 %185
  %polly.loop_guard485.not = icmp sgt i64 %182, %187
  br i1 %.not.not987, label %polly.loop_header459.us, label %polly.loop_header459

polly.loop_header459.us:                          ; preds = %polly.loop_header453, %polly.merge466.us
  %polly.indvar462.us = phi i64 [ %polly.indvar_next463.us, %polly.merge466.us ], [ 0, %polly.loop_header453 ]
  br i1 %polly.loop_guard473, label %polly.loop_header470.preheader.us, label %polly.loop_exit472.us

polly.loop_header470.us:                          ; preds = %polly.loop_header470.preheader.us, %polly.loop_header470.us
  %polly.indvar474.us = phi i64 [ %polly.indvar_next475.us, %polly.loop_header470.us ], [ 0, %polly.loop_header470.preheader.us ]
  %188 = add nuw nsw i64 %polly.indvar474.us, %170
  %polly.access.mul.call1478.us = mul nuw nsw i64 %188, 1000
  %polly.access.add.call1479.us = add nuw nsw i64 %191, %polly.access.mul.call1478.us
  %polly.access.call1480.us = getelementptr double, double* %polly.access.cast.call1785, i64 %polly.access.add.call1479.us
  %polly.access.call1480.load.us = load double, double* %polly.access.call1480.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1324.us = add nuw nsw i64 %polly.indvar474.us, %polly.access.mul.Packed_MemRef_call1324.us
  %polly.access.Packed_MemRef_call1324.us = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324.us
  store double %polly.access.call1480.load.us, double* %polly.access.Packed_MemRef_call1324.us, align 8
  %polly.indvar_next475.us = add nuw i64 %polly.indvar474.us, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar474.us, %184
  br i1 %exitcond1065.not, label %polly.loop_exit472.us, label %polly.loop_header470.us

polly.loop_exit472.us:                            ; preds = %polly.loop_header470.us, %polly.loop_header459.us
  br i1 %polly.loop_guard485.not, label %polly.merge466.us, label %polly.loop_header482.preheader.us

polly.loop_header482.us:                          ; preds = %polly.loop_header482.preheader.us, %polly.loop_header482.us
  %polly.indvar486.us = phi i64 [ %polly.indvar_next487.us, %polly.loop_header482.us ], [ %182, %polly.loop_header482.preheader.us ]
  %189 = add nsw i64 %polly.indvar486.us, %170
  %polly.access.mul.call1490.us = mul nuw nsw i64 %189, 1000
  %polly.access.add.call1491.us = add nuw nsw i64 %190, %polly.access.mul.call1490.us
  %polly.access.call1492.us = getelementptr double, double* %polly.access.cast.call1785, i64 %polly.access.add.call1491.us
  %polly.access.call1492.load.us = load double, double* %polly.access.call1492.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1324494.us = add nsw i64 %polly.indvar486.us, %polly.access.mul.Packed_MemRef_call1324493.us
  %polly.access.Packed_MemRef_call1324495.us = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324494.us
  store double %polly.access.call1492.load.us, double* %polly.access.Packed_MemRef_call1324495.us, align 8
  %polly.indvar_next487.us = add nsw i64 %polly.indvar486.us, 1
  %polly.loop_cond488.not.not.us = icmp slt i64 %polly.indvar486.us, %187
  br i1 %polly.loop_cond488.not.not.us, label %polly.loop_header482.us, label %polly.merge466.us

polly.merge466.us:                                ; preds = %polly.loop_header482.us, %polly.loop_exit472.us
  %polly.indvar_next463.us = add nuw nsw i64 %polly.indvar462.us, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar_next463.us, 100
  br i1 %exitcond1066.not, label %polly.loop_header509.preheader, label %polly.loop_header459.us

polly.loop_header482.preheader.us:                ; preds = %polly.loop_exit472.us
  %190 = add nuw nsw i64 %polly.indvar462.us, %166
  %polly.access.mul.Packed_MemRef_call1324493.us = mul nuw nsw i64 %polly.indvar462.us, 1200
  br label %polly.loop_header482.us

polly.loop_header470.preheader.us:                ; preds = %polly.loop_header459.us
  %191 = add nuw nsw i64 %polly.indvar462.us, %166
  %polly.access.mul.Packed_MemRef_call1324.us = mul nuw nsw i64 %polly.indvar462.us, 1200
  br label %polly.loop_header470.us

polly.loop_exit511:                               ; preds = %polly.loop_exit518, %polly.loop_header509.preheader
  %polly.indvar_next457 = add nuw nsw i64 %polly.indvar456, 1
  %indvars.iv.next1070 = add nsw i64 %indvars.iv1069, -96
  %indvars.iv.next1075 = add nsw i64 %indvars.iv1074, 96
  %exitcond1081.not = icmp eq i64 %polly.indvar_next457, 13
  %indvar.next1310 = add i64 %indvar1309, 1
  br i1 %exitcond1081.not, label %polly.loop_exit455, label %polly.loop_header453

polly.loop_header459:                             ; preds = %polly.loop_header453, %polly.merge466
  %polly.indvar462 = phi i64 [ %polly.indvar_next463, %polly.merge466 ], [ 0, %polly.loop_header453 ]
  %192 = add nuw nsw i64 %polly.indvar462, %166
  %polly.access.mul.Packed_MemRef_call1324506 = mul nuw nsw i64 %polly.indvar462, 1200
  br label %polly.loop_header496

polly.merge466:                                   ; preds = %polly.loop_header496
  %polly.indvar_next463 = add nuw nsw i64 %polly.indvar462, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar_next463, 100
  br i1 %exitcond1064.not, label %polly.loop_header509.preheader, label %polly.loop_header459

polly.loop_header509.preheader:                   ; preds = %polly.merge466, %polly.merge466.us
  %193 = sub nsw i64 %170, %181
  %194 = icmp sgt i64 %193, 0
  %195 = select i1 %194, i64 %193, i64 0
  %196 = mul nsw i64 %polly.indvar456, -96
  %197 = icmp slt i64 %196, -1104
  %198 = select i1 %197, i64 %196, i64 -1104
  %199 = add nsw i64 %198, 1199
  %polly.loop_guard519.not = icmp sgt i64 %195, %199
  br i1 %polly.loop_guard519.not, label %polly.loop_exit511, label %polly.loop_header509

polly.loop_header496:                             ; preds = %polly.loop_header496, %polly.loop_header459
  %polly.indvar499 = phi i64 [ 0, %polly.loop_header459 ], [ %polly.indvar_next500, %polly.loop_header496 ]
  %200 = add nuw nsw i64 %polly.indvar499, %170
  %polly.access.mul.call1503 = mul nuw nsw i64 %200, 1000
  %polly.access.add.call1504 = add nuw nsw i64 %192, %polly.access.mul.call1503
  %polly.access.call1505 = getelementptr double, double* %polly.access.cast.call1785, i64 %polly.access.add.call1504
  %polly.access.call1505.load = load double, double* %polly.access.call1505, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1324507 = add nuw nsw i64 %polly.indvar499, %polly.access.mul.Packed_MemRef_call1324506
  %polly.access.Packed_MemRef_call1324508 = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324507
  store double %polly.access.call1505.load, double* %polly.access.Packed_MemRef_call1324508, align 8
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar_next500, %indvars.iv1061
  br i1 %exitcond1063.not, label %polly.merge466, label %polly.loop_header496

polly.loop_header509:                             ; preds = %polly.loop_header509.preheader, %polly.loop_exit518
  %polly.indvar512 = phi i64 [ %polly.indvar_next513, %polly.loop_exit518 ], [ 0, %polly.loop_header509.preheader ]
  %polly.access.mul.Packed_MemRef_call1324531 = mul nuw nsw i64 %polly.indvar512, 1200
  br label %polly.loop_header516

polly.loop_exit518:                               ; preds = %polly.loop_exit526
  %polly.indvar_next513 = add nuw nsw i64 %polly.indvar512, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar_next513, 100
  br i1 %exitcond1080.not, label %polly.loop_exit511, label %polly.loop_header509

polly.loop_header516:                             ; preds = %polly.loop_header509, %polly.loop_exit526
  %indvar1312 = phi i64 [ 0, %polly.loop_header509 ], [ %indvar.next1313, %polly.loop_exit526 ]
  %indvars.iv1076 = phi i64 [ %180, %polly.loop_header509 ], [ %indvars.iv.next1077, %polly.loop_exit526 ]
  %polly.indvar520 = phi i64 [ %195, %polly.loop_header509 ], [ %polly.indvar_next521, %polly.loop_exit526 ]
  %201 = add i64 %179, %indvar1312
  %smin1314 = call i64 @llvm.smin.i64(i64 %201, i64 99)
  %202 = add nsw i64 %smin1314, 1
  %smin1078 = call i64 @llvm.smin.i64(i64 %indvars.iv1076, i64 99)
  %203 = add nuw i64 %polly.indvar520, %181
  %204 = add i64 %203, %169
  %polly.loop_guard5271153 = icmp sgt i64 %204, -1
  br i1 %polly.loop_guard5271153, label %polly.loop_header524.preheader, label %polly.loop_exit526

polly.loop_header524.preheader:                   ; preds = %polly.loop_header516
  %polly.access.add.Packed_MemRef_call2326536 = add nsw i64 %polly.access.mul.Packed_MemRef_call1324531, %204
  %polly.access.Packed_MemRef_call2326537 = getelementptr double, double* %Packed_MemRef_call2326, i64 %polly.access.add.Packed_MemRef_call2326536
  %_p_scalar_538 = load double, double* %polly.access.Packed_MemRef_call2326537, align 8
  %polly.access.Packed_MemRef_call1324545 = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call2326536
  %_p_scalar_546 = load double, double* %polly.access.Packed_MemRef_call1324545, align 8
  %205 = mul i64 %203, 9600
  %min.iters.check1315 = icmp ult i64 %202, 4
  br i1 %min.iters.check1315, label %polly.loop_header524.preheader1384, label %vector.ph1316

vector.ph1316:                                    ; preds = %polly.loop_header524.preheader
  %n.vec1318 = and i64 %202, -4
  %broadcast.splatinsert1324 = insertelement <4 x double> poison, double %_p_scalar_538, i32 0
  %broadcast.splat1325 = shufflevector <4 x double> %broadcast.splatinsert1324, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1327 = insertelement <4 x double> poison, double %_p_scalar_546, i32 0
  %broadcast.splat1328 = shufflevector <4 x double> %broadcast.splatinsert1327, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1308

vector.body1308:                                  ; preds = %vector.body1308, %vector.ph1316
  %index1319 = phi i64 [ 0, %vector.ph1316 ], [ %index.next1320, %vector.body1308 ]
  %206 = add nuw nsw i64 %index1319, %170
  %207 = add nuw nsw i64 %index1319, %polly.access.mul.Packed_MemRef_call1324531
  %208 = getelementptr double, double* %Packed_MemRef_call1324, i64 %207
  %209 = bitcast double* %208 to <4 x double>*
  %wide.load1323 = load <4 x double>, <4 x double>* %209, align 8
  %210 = fmul fast <4 x double> %broadcast.splat1325, %wide.load1323
  %211 = getelementptr double, double* %Packed_MemRef_call2326, i64 %207
  %212 = bitcast double* %211 to <4 x double>*
  %wide.load1326 = load <4 x double>, <4 x double>* %212, align 8
  %213 = fmul fast <4 x double> %broadcast.splat1328, %wide.load1326
  %214 = shl i64 %206, 3
  %215 = add i64 %214, %205
  %216 = getelementptr i8, i8* %call, i64 %215
  %217 = bitcast i8* %216 to <4 x double>*
  %wide.load1329 = load <4 x double>, <4 x double>* %217, align 8, !alias.scope !85, !noalias !87
  %218 = fadd fast <4 x double> %213, %210
  %219 = fmul fast <4 x double> %218, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %220 = fadd fast <4 x double> %219, %wide.load1329
  %221 = bitcast i8* %216 to <4 x double>*
  store <4 x double> %220, <4 x double>* %221, align 8, !alias.scope !85, !noalias !87
  %index.next1320 = add i64 %index1319, 4
  %222 = icmp eq i64 %index.next1320, %n.vec1318
  br i1 %222, label %middle.block1306, label %vector.body1308, !llvm.loop !96

middle.block1306:                                 ; preds = %vector.body1308
  %cmp.n1322 = icmp eq i64 %202, %n.vec1318
  br i1 %cmp.n1322, label %polly.loop_exit526, label %polly.loop_header524.preheader1384

polly.loop_header524.preheader1384:               ; preds = %polly.loop_header524.preheader, %middle.block1306
  %polly.indvar528.ph = phi i64 [ 0, %polly.loop_header524.preheader ], [ %n.vec1318, %middle.block1306 ]
  br label %polly.loop_header524

polly.loop_exit526:                               ; preds = %polly.loop_header524, %middle.block1306, %polly.loop_header516
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %polly.loop_cond522.not.not = icmp slt i64 %polly.indvar520, %199
  %indvars.iv.next1077 = add i64 %indvars.iv1076, 1
  %indvar.next1313 = add i64 %indvar1312, 1
  br i1 %polly.loop_cond522.not.not, label %polly.loop_header516, label %polly.loop_exit518

polly.loop_header524:                             ; preds = %polly.loop_header524.preheader1384, %polly.loop_header524
  %polly.indvar528 = phi i64 [ %polly.indvar_next529, %polly.loop_header524 ], [ %polly.indvar528.ph, %polly.loop_header524.preheader1384 ]
  %223 = add nuw nsw i64 %polly.indvar528, %170
  %polly.access.add.Packed_MemRef_call1324532 = add nuw nsw i64 %polly.indvar528, %polly.access.mul.Packed_MemRef_call1324531
  %polly.access.Packed_MemRef_call1324533 = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324532
  %_p_scalar_534 = load double, double* %polly.access.Packed_MemRef_call1324533, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_538, %_p_scalar_534
  %polly.access.Packed_MemRef_call2326541 = getelementptr double, double* %Packed_MemRef_call2326, i64 %polly.access.add.Packed_MemRef_call1324532
  %_p_scalar_542 = load double, double* %polly.access.Packed_MemRef_call2326541, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_546, %_p_scalar_542
  %224 = shl i64 %223, 3
  %225 = add i64 %224, %205
  %scevgep547 = getelementptr i8, i8* %call, i64 %225
  %scevgep547548 = bitcast i8* %scevgep547 to double*
  %_p_scalar_549 = load double, double* %scevgep547548, align 8, !alias.scope !85, !noalias !87
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_549
  store double %p_add42.i79, double* %scevgep547548, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next529 = add nuw nsw i64 %polly.indvar528, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar528, %smin1078
  br i1 %exitcond1079.not, label %polly.loop_exit526, label %polly.loop_header524, !llvm.loop !97

polly.start552:                                   ; preds = %init_array.exit
  %malloccall554 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  %malloccall556 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header640

polly.exiting553:                                 ; preds = %polly.loop_exit664
  tail call void @free(i8* %malloccall554)
  tail call void @free(i8* %malloccall556)
  br label %kernel_syr2k.exit

polly.loop_header640:                             ; preds = %polly.loop_exit648, %polly.start552
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit648 ], [ 0, %polly.start552 ]
  %polly.indvar643 = phi i64 [ %polly.indvar_next644, %polly.loop_exit648 ], [ 1, %polly.start552 ]
  %226 = add i64 %indvar, 1
  %227 = mul nuw nsw i64 %polly.indvar643, 9600
  %scevgep652 = getelementptr i8, i8* %call, i64 %227
  %min.iters.check1247 = icmp ult i64 %226, 4
  br i1 %min.iters.check1247, label %polly.loop_header646.preheader, label %vector.ph1248

vector.ph1248:                                    ; preds = %polly.loop_header640
  %n.vec1250 = and i64 %226, -4
  br label %vector.body1246

vector.body1246:                                  ; preds = %vector.body1246, %vector.ph1248
  %index1251 = phi i64 [ 0, %vector.ph1248 ], [ %index.next1252, %vector.body1246 ]
  %228 = shl nuw nsw i64 %index1251, 3
  %229 = getelementptr i8, i8* %scevgep652, i64 %228
  %230 = bitcast i8* %229 to <4 x double>*
  %wide.load1255 = load <4 x double>, <4 x double>* %230, align 8, !alias.scope !98, !noalias !100
  %231 = fmul fast <4 x double> %wide.load1255, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %232 = bitcast i8* %229 to <4 x double>*
  store <4 x double> %231, <4 x double>* %232, align 8, !alias.scope !98, !noalias !100
  %index.next1252 = add i64 %index1251, 4
  %233 = icmp eq i64 %index.next1252, %n.vec1250
  br i1 %233, label %middle.block1244, label %vector.body1246, !llvm.loop !105

middle.block1244:                                 ; preds = %vector.body1246
  %cmp.n1254 = icmp eq i64 %226, %n.vec1250
  br i1 %cmp.n1254, label %polly.loop_exit648, label %polly.loop_header646.preheader

polly.loop_header646.preheader:                   ; preds = %polly.loop_header640, %middle.block1244
  %polly.indvar649.ph = phi i64 [ 0, %polly.loop_header640 ], [ %n.vec1250, %middle.block1244 ]
  br label %polly.loop_header646

polly.loop_exit648:                               ; preds = %polly.loop_header646, %middle.block1244
  %polly.indvar_next644 = add nuw nsw i64 %polly.indvar643, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar_next644, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1114.not, label %polly.loop_header656.preheader, label %polly.loop_header640

polly.loop_header656.preheader:                   ; preds = %polly.loop_exit648
  %Packed_MemRef_call1555 = bitcast i8* %malloccall554 to double*
  %Packed_MemRef_call2557 = bitcast i8* %malloccall556 to double*
  br label %polly.loop_header656

polly.loop_header646:                             ; preds = %polly.loop_header646.preheader, %polly.loop_header646
  %polly.indvar649 = phi i64 [ %polly.indvar_next650, %polly.loop_header646 ], [ %polly.indvar649.ph, %polly.loop_header646.preheader ]
  %234 = shl nuw nsw i64 %polly.indvar649, 3
  %scevgep653 = getelementptr i8, i8* %scevgep652, i64 %234
  %scevgep653654 = bitcast i8* %scevgep653 to double*
  %_p_scalar_655 = load double, double* %scevgep653654, align 8, !alias.scope !98, !noalias !100
  %p_mul.i = fmul fast double %_p_scalar_655, 1.200000e+00
  store double %p_mul.i, double* %scevgep653654, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next650 = add nuw nsw i64 %polly.indvar649, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar_next650, %polly.indvar643
  br i1 %exitcond1113.not, label %polly.loop_exit648, label %polly.loop_header646, !llvm.loop !106

polly.loop_header656:                             ; preds = %polly.loop_header656.preheader, %polly.loop_exit664
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit664 ], [ 0, %polly.loop_header656.preheader ]
  %235 = mul nuw nsw i64 %polly.indvar659, 100
  br label %polly.loop_header662

polly.loop_exit664:                               ; preds = %polly.loop_exit686
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar_next660, 10
  br i1 %exitcond1112.not, label %polly.exiting553, label %polly.loop_header656

polly.loop_header662:                             ; preds = %polly.loop_exit686, %polly.loop_header656
  %indvars.iv1101 = phi i64 [ %indvars.iv.next1102, %polly.loop_exit686 ], [ 0, %polly.loop_header656 ]
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %polly.loop_exit686 ], [ 0, %polly.loop_header656 ]
  %indvars.iv1090 = phi i64 [ %indvars.iv.next1091, %polly.loop_exit686 ], [ 96, %polly.loop_header656 ]
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087, %polly.loop_exit686 ], [ 1200, %polly.loop_header656 ]
  %polly.indvar665 = phi i64 [ %240, %polly.loop_exit686 ], [ 0, %polly.loop_header656 ]
  %236 = shl nuw nsw i64 %polly.indvar665, 2
  %237 = mul nsw i64 %polly.indvar665, -4
  %238 = mul nsw i64 %polly.indvar665, -100
  %239 = mul nuw nsw i64 %polly.indvar665, 100
  br label %polly.loop_header668

polly.loop_exit686:                               ; preds = %polly.loop_exit742
  %240 = add nuw nsw i64 %polly.indvar665, 1
  %indvars.iv.next1087 = add nsw i64 %indvars.iv1086, -100
  %indvars.iv.next1091 = add nsw i64 %indvars.iv1090, -4
  %indvars.iv.next1097 = add nuw nsw i64 %indvars.iv1096, 4
  %indvars.iv.next1102 = add nsw i64 %indvars.iv1101, -4
  %exitcond1111.not = icmp eq i64 %240, 12
  br i1 %exitcond1111.not, label %polly.loop_exit664, label %polly.loop_header662

polly.loop_header668:                             ; preds = %polly.loop_exit676, %polly.loop_header662
  %polly.indvar671 = phi i64 [ 0, %polly.loop_header662 ], [ %polly.indvar_next672, %polly.loop_exit676 ]
  %241 = add nuw nsw i64 %polly.indvar671, %235
  %polly.access.mul.Packed_MemRef_call2557 = mul nuw nsw i64 %polly.indvar671, 1200
  br label %polly.loop_header674

polly.loop_exit676:                               ; preds = %polly.loop_header674
  %polly.indvar_next672 = add nuw nsw i64 %polly.indvar671, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next672, 100
  br i1 %exitcond1089.not, label %polly.loop_header684.preheader, label %polly.loop_header668

polly.loop_header684.preheader:                   ; preds = %polly.loop_exit676
  %242 = add nsw i64 %238, 1199
  br label %polly.loop_header684

polly.loop_header674:                             ; preds = %polly.loop_header674, %polly.loop_header668
  %polly.indvar677 = phi i64 [ 0, %polly.loop_header668 ], [ %polly.indvar_next678, %polly.loop_header674 ]
  %243 = add nuw nsw i64 %polly.indvar677, %239
  %polly.access.mul.call2681 = mul nuw nsw i64 %243, 1000
  %polly.access.add.call2682 = add nuw nsw i64 %241, %polly.access.mul.call2681
  %polly.access.call2683 = getelementptr double, double* %polly.access.cast.call2795, i64 %polly.access.add.call2682
  %polly.access.call2683.load = load double, double* %polly.access.call2683, align 8, !alias.scope !102, !noalias !107
  %polly.access.add.Packed_MemRef_call2557 = add nuw nsw i64 %polly.indvar677, %polly.access.mul.Packed_MemRef_call2557
  %polly.access.Packed_MemRef_call2557 = getelementptr double, double* %Packed_MemRef_call2557, i64 %polly.access.add.Packed_MemRef_call2557
  store double %polly.access.call2683.load, double* %polly.access.Packed_MemRef_call2557, align 8
  %polly.indvar_next678 = add nuw nsw i64 %polly.indvar677, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next678, %indvars.iv1086
  br i1 %exitcond1088.not, label %polly.loop_exit676, label %polly.loop_header674

polly.loop_header684:                             ; preds = %polly.loop_header684.preheader, %polly.loop_exit742
  %indvar1259 = phi i64 [ 0, %polly.loop_header684.preheader ], [ %indvar.next1260, %polly.loop_exit742 ]
  %indvars.iv1103 = phi i64 [ %indvars.iv1101, %polly.loop_header684.preheader ], [ %indvars.iv.next1104, %polly.loop_exit742 ]
  %indvars.iv1098 = phi i64 [ %indvars.iv1096, %polly.loop_header684.preheader ], [ %indvars.iv.next1099, %polly.loop_exit742 ]
  %polly.indvar687 = phi i64 [ %polly.indvar665, %polly.loop_header684.preheader ], [ %polly.indvar_next688, %polly.loop_exit742 ]
  %244 = mul nsw i64 %indvar1259, -96
  %245 = add i64 %236, %244
  %smax1261 = call i64 @llvm.smax.i64(i64 %245, i64 0)
  %246 = mul nuw nsw i64 %indvar1259, 96
  %247 = add i64 %237, %246
  %248 = add i64 %smax1261, %247
  %smax1100 = call i64 @llvm.smax.i64(i64 %indvars.iv1098, i64 0)
  %249 = add i64 %smax1100, %indvars.iv1103
  %.not.not989 = icmp ugt i64 %polly.indvar687, %polly.indvar665
  %250 = mul nuw nsw i64 %polly.indvar687, 96
  %251 = add nsw i64 %250, %238
  %252 = add nsw i64 %251, -1
  %.inv990 = icmp sgt i64 %251, 99
  %253 = select i1 %.inv990, i64 99, i64 %252
  %polly.loop_guard704 = icmp sgt i64 %253, -1
  %254 = add nsw i64 %251, 95
  %255 = icmp ult i64 %242, %254
  %256 = select i1 %255, i64 %242, i64 %254
  %polly.loop_guard716.not = icmp sgt i64 %251, %256
  br i1 %.not.not989, label %polly.loop_header690.us, label %polly.loop_header690

polly.loop_header690.us:                          ; preds = %polly.loop_header684, %polly.merge697.us
  %polly.indvar693.us = phi i64 [ %polly.indvar_next694.us, %polly.merge697.us ], [ 0, %polly.loop_header684 ]
  br i1 %polly.loop_guard704, label %polly.loop_header701.preheader.us, label %polly.loop_exit703.us

polly.loop_header701.us:                          ; preds = %polly.loop_header701.preheader.us, %polly.loop_header701.us
  %polly.indvar705.us = phi i64 [ %polly.indvar_next706.us, %polly.loop_header701.us ], [ 0, %polly.loop_header701.preheader.us ]
  %257 = add nuw nsw i64 %polly.indvar705.us, %239
  %polly.access.mul.call1709.us = mul nuw nsw i64 %257, 1000
  %polly.access.add.call1710.us = add nuw nsw i64 %260, %polly.access.mul.call1709.us
  %polly.access.call1711.us = getelementptr double, double* %polly.access.cast.call1785, i64 %polly.access.add.call1710.us
  %polly.access.call1711.load.us = load double, double* %polly.access.call1711.us, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1555.us = add nuw nsw i64 %polly.indvar705.us, %polly.access.mul.Packed_MemRef_call1555.us
  %polly.access.Packed_MemRef_call1555.us = getelementptr double, double* %Packed_MemRef_call1555, i64 %polly.access.add.Packed_MemRef_call1555.us
  store double %polly.access.call1711.load.us, double* %polly.access.Packed_MemRef_call1555.us, align 8
  %polly.indvar_next706.us = add nuw i64 %polly.indvar705.us, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar705.us, %253
  br i1 %exitcond1094.not, label %polly.loop_exit703.us, label %polly.loop_header701.us

polly.loop_exit703.us:                            ; preds = %polly.loop_header701.us, %polly.loop_header690.us
  br i1 %polly.loop_guard716.not, label %polly.merge697.us, label %polly.loop_header713.preheader.us

polly.loop_header713.us:                          ; preds = %polly.loop_header713.preheader.us, %polly.loop_header713.us
  %polly.indvar717.us = phi i64 [ %polly.indvar_next718.us, %polly.loop_header713.us ], [ %251, %polly.loop_header713.preheader.us ]
  %258 = add nsw i64 %polly.indvar717.us, %239
  %polly.access.mul.call1721.us = mul nuw nsw i64 %258, 1000
  %polly.access.add.call1722.us = add nuw nsw i64 %259, %polly.access.mul.call1721.us
  %polly.access.call1723.us = getelementptr double, double* %polly.access.cast.call1785, i64 %polly.access.add.call1722.us
  %polly.access.call1723.load.us = load double, double* %polly.access.call1723.us, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1555725.us = add nsw i64 %polly.indvar717.us, %polly.access.mul.Packed_MemRef_call1555724.us
  %polly.access.Packed_MemRef_call1555726.us = getelementptr double, double* %Packed_MemRef_call1555, i64 %polly.access.add.Packed_MemRef_call1555725.us
  store double %polly.access.call1723.load.us, double* %polly.access.Packed_MemRef_call1555726.us, align 8
  %polly.indvar_next718.us = add nsw i64 %polly.indvar717.us, 1
  %polly.loop_cond719.not.not.us = icmp slt i64 %polly.indvar717.us, %256
  br i1 %polly.loop_cond719.not.not.us, label %polly.loop_header713.us, label %polly.merge697.us

polly.merge697.us:                                ; preds = %polly.loop_header713.us, %polly.loop_exit703.us
  %polly.indvar_next694.us = add nuw nsw i64 %polly.indvar693.us, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar_next694.us, 100
  br i1 %exitcond1095.not, label %polly.loop_header740.preheader, label %polly.loop_header690.us

polly.loop_header713.preheader.us:                ; preds = %polly.loop_exit703.us
  %259 = add nuw nsw i64 %polly.indvar693.us, %235
  %polly.access.mul.Packed_MemRef_call1555724.us = mul nuw nsw i64 %polly.indvar693.us, 1200
  br label %polly.loop_header713.us

polly.loop_header701.preheader.us:                ; preds = %polly.loop_header690.us
  %260 = add nuw nsw i64 %polly.indvar693.us, %235
  %polly.access.mul.Packed_MemRef_call1555.us = mul nuw nsw i64 %polly.indvar693.us, 1200
  br label %polly.loop_header701.us

polly.loop_exit742:                               ; preds = %polly.loop_exit749, %polly.loop_header740.preheader
  %polly.indvar_next688 = add nuw nsw i64 %polly.indvar687, 1
  %indvars.iv.next1099 = add nsw i64 %indvars.iv1098, -96
  %indvars.iv.next1104 = add nsw i64 %indvars.iv1103, 96
  %exitcond1110.not = icmp eq i64 %polly.indvar_next688, 13
  %indvar.next1260 = add i64 %indvar1259, 1
  br i1 %exitcond1110.not, label %polly.loop_exit686, label %polly.loop_header684

polly.loop_header690:                             ; preds = %polly.loop_header684, %polly.merge697
  %polly.indvar693 = phi i64 [ %polly.indvar_next694, %polly.merge697 ], [ 0, %polly.loop_header684 ]
  %261 = add nuw nsw i64 %polly.indvar693, %235
  %polly.access.mul.Packed_MemRef_call1555737 = mul nuw nsw i64 %polly.indvar693, 1200
  br label %polly.loop_header727

polly.merge697:                                   ; preds = %polly.loop_header727
  %polly.indvar_next694 = add nuw nsw i64 %polly.indvar693, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar_next694, 100
  br i1 %exitcond1093.not, label %polly.loop_header740.preheader, label %polly.loop_header690

polly.loop_header740.preheader:                   ; preds = %polly.merge697, %polly.merge697.us
  %262 = sub nsw i64 %239, %250
  %263 = icmp sgt i64 %262, 0
  %264 = select i1 %263, i64 %262, i64 0
  %265 = mul nsw i64 %polly.indvar687, -96
  %266 = icmp slt i64 %265, -1104
  %267 = select i1 %266, i64 %265, i64 -1104
  %268 = add nsw i64 %267, 1199
  %polly.loop_guard750.not = icmp sgt i64 %264, %268
  br i1 %polly.loop_guard750.not, label %polly.loop_exit742, label %polly.loop_header740

polly.loop_header727:                             ; preds = %polly.loop_header727, %polly.loop_header690
  %polly.indvar730 = phi i64 [ 0, %polly.loop_header690 ], [ %polly.indvar_next731, %polly.loop_header727 ]
  %269 = add nuw nsw i64 %polly.indvar730, %239
  %polly.access.mul.call1734 = mul nuw nsw i64 %269, 1000
  %polly.access.add.call1735 = add nuw nsw i64 %261, %polly.access.mul.call1734
  %polly.access.call1736 = getelementptr double, double* %polly.access.cast.call1785, i64 %polly.access.add.call1735
  %polly.access.call1736.load = load double, double* %polly.access.call1736, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1555738 = add nuw nsw i64 %polly.indvar730, %polly.access.mul.Packed_MemRef_call1555737
  %polly.access.Packed_MemRef_call1555739 = getelementptr double, double* %Packed_MemRef_call1555, i64 %polly.access.add.Packed_MemRef_call1555738
  store double %polly.access.call1736.load, double* %polly.access.Packed_MemRef_call1555739, align 8
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar_next731, %indvars.iv1090
  br i1 %exitcond1092.not, label %polly.merge697, label %polly.loop_header727

polly.loop_header740:                             ; preds = %polly.loop_header740.preheader, %polly.loop_exit749
  %polly.indvar743 = phi i64 [ %polly.indvar_next744, %polly.loop_exit749 ], [ 0, %polly.loop_header740.preheader ]
  %polly.access.mul.Packed_MemRef_call1555762 = mul nuw nsw i64 %polly.indvar743, 1200
  br label %polly.loop_header747

polly.loop_exit749:                               ; preds = %polly.loop_exit757
  %polly.indvar_next744 = add nuw nsw i64 %polly.indvar743, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar_next744, 100
  br i1 %exitcond1109.not, label %polly.loop_exit742, label %polly.loop_header740

polly.loop_header747:                             ; preds = %polly.loop_header740, %polly.loop_exit757
  %indvar1262 = phi i64 [ 0, %polly.loop_header740 ], [ %indvar.next1263, %polly.loop_exit757 ]
  %indvars.iv1105 = phi i64 [ %249, %polly.loop_header740 ], [ %indvars.iv.next1106, %polly.loop_exit757 ]
  %polly.indvar751 = phi i64 [ %264, %polly.loop_header740 ], [ %polly.indvar_next752, %polly.loop_exit757 ]
  %270 = add i64 %248, %indvar1262
  %smin1264 = call i64 @llvm.smin.i64(i64 %270, i64 99)
  %271 = add nsw i64 %smin1264, 1
  %smin1107 = call i64 @llvm.smin.i64(i64 %indvars.iv1105, i64 99)
  %272 = add nuw i64 %polly.indvar751, %250
  %273 = add i64 %272, %238
  %polly.loop_guard7581154 = icmp sgt i64 %273, -1
  br i1 %polly.loop_guard7581154, label %polly.loop_header755.preheader, label %polly.loop_exit757

polly.loop_header755.preheader:                   ; preds = %polly.loop_header747
  %polly.access.add.Packed_MemRef_call2557767 = add nsw i64 %polly.access.mul.Packed_MemRef_call1555762, %273
  %polly.access.Packed_MemRef_call2557768 = getelementptr double, double* %Packed_MemRef_call2557, i64 %polly.access.add.Packed_MemRef_call2557767
  %_p_scalar_769 = load double, double* %polly.access.Packed_MemRef_call2557768, align 8
  %polly.access.Packed_MemRef_call1555776 = getelementptr double, double* %Packed_MemRef_call1555, i64 %polly.access.add.Packed_MemRef_call2557767
  %_p_scalar_777 = load double, double* %polly.access.Packed_MemRef_call1555776, align 8
  %274 = mul i64 %272, 9600
  %min.iters.check1265 = icmp ult i64 %271, 4
  br i1 %min.iters.check1265, label %polly.loop_header755.preheader1388, label %vector.ph1266

vector.ph1266:                                    ; preds = %polly.loop_header755.preheader
  %n.vec1268 = and i64 %271, -4
  %broadcast.splatinsert1274 = insertelement <4 x double> poison, double %_p_scalar_769, i32 0
  %broadcast.splat1275 = shufflevector <4 x double> %broadcast.splatinsert1274, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1277 = insertelement <4 x double> poison, double %_p_scalar_777, i32 0
  %broadcast.splat1278 = shufflevector <4 x double> %broadcast.splatinsert1277, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1258

vector.body1258:                                  ; preds = %vector.body1258, %vector.ph1266
  %index1269 = phi i64 [ 0, %vector.ph1266 ], [ %index.next1270, %vector.body1258 ]
  %275 = add nuw nsw i64 %index1269, %239
  %276 = add nuw nsw i64 %index1269, %polly.access.mul.Packed_MemRef_call1555762
  %277 = getelementptr double, double* %Packed_MemRef_call1555, i64 %276
  %278 = bitcast double* %277 to <4 x double>*
  %wide.load1273 = load <4 x double>, <4 x double>* %278, align 8
  %279 = fmul fast <4 x double> %broadcast.splat1275, %wide.load1273
  %280 = getelementptr double, double* %Packed_MemRef_call2557, i64 %276
  %281 = bitcast double* %280 to <4 x double>*
  %wide.load1276 = load <4 x double>, <4 x double>* %281, align 8
  %282 = fmul fast <4 x double> %broadcast.splat1278, %wide.load1276
  %283 = shl i64 %275, 3
  %284 = add i64 %283, %274
  %285 = getelementptr i8, i8* %call, i64 %284
  %286 = bitcast i8* %285 to <4 x double>*
  %wide.load1279 = load <4 x double>, <4 x double>* %286, align 8, !alias.scope !98, !noalias !100
  %287 = fadd fast <4 x double> %282, %279
  %288 = fmul fast <4 x double> %287, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %289 = fadd fast <4 x double> %288, %wide.load1279
  %290 = bitcast i8* %285 to <4 x double>*
  store <4 x double> %289, <4 x double>* %290, align 8, !alias.scope !98, !noalias !100
  %index.next1270 = add i64 %index1269, 4
  %291 = icmp eq i64 %index.next1270, %n.vec1268
  br i1 %291, label %middle.block1256, label %vector.body1258, !llvm.loop !109

middle.block1256:                                 ; preds = %vector.body1258
  %cmp.n1272 = icmp eq i64 %271, %n.vec1268
  br i1 %cmp.n1272, label %polly.loop_exit757, label %polly.loop_header755.preheader1388

polly.loop_header755.preheader1388:               ; preds = %polly.loop_header755.preheader, %middle.block1256
  %polly.indvar759.ph = phi i64 [ 0, %polly.loop_header755.preheader ], [ %n.vec1268, %middle.block1256 ]
  br label %polly.loop_header755

polly.loop_exit757:                               ; preds = %polly.loop_header755, %middle.block1256, %polly.loop_header747
  %polly.indvar_next752 = add nuw nsw i64 %polly.indvar751, 1
  %polly.loop_cond753.not.not = icmp slt i64 %polly.indvar751, %268
  %indvars.iv.next1106 = add i64 %indvars.iv1105, 1
  %indvar.next1263 = add i64 %indvar1262, 1
  br i1 %polly.loop_cond753.not.not, label %polly.loop_header747, label %polly.loop_exit749

polly.loop_header755:                             ; preds = %polly.loop_header755.preheader1388, %polly.loop_header755
  %polly.indvar759 = phi i64 [ %polly.indvar_next760, %polly.loop_header755 ], [ %polly.indvar759.ph, %polly.loop_header755.preheader1388 ]
  %292 = add nuw nsw i64 %polly.indvar759, %239
  %polly.access.add.Packed_MemRef_call1555763 = add nuw nsw i64 %polly.indvar759, %polly.access.mul.Packed_MemRef_call1555762
  %polly.access.Packed_MemRef_call1555764 = getelementptr double, double* %Packed_MemRef_call1555, i64 %polly.access.add.Packed_MemRef_call1555763
  %_p_scalar_765 = load double, double* %polly.access.Packed_MemRef_call1555764, align 8
  %p_mul27.i = fmul fast double %_p_scalar_769, %_p_scalar_765
  %polly.access.Packed_MemRef_call2557772 = getelementptr double, double* %Packed_MemRef_call2557, i64 %polly.access.add.Packed_MemRef_call1555763
  %_p_scalar_773 = load double, double* %polly.access.Packed_MemRef_call2557772, align 8
  %p_mul37.i = fmul fast double %_p_scalar_777, %_p_scalar_773
  %293 = shl i64 %292, 3
  %294 = add i64 %293, %274
  %scevgep778 = getelementptr i8, i8* %call, i64 %294
  %scevgep778779 = bitcast i8* %scevgep778 to double*
  %_p_scalar_780 = load double, double* %scevgep778779, align 8, !alias.scope !98, !noalias !100
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_780
  store double %p_add42.i, double* %scevgep778779, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next760 = add nuw nsw i64 %polly.indvar759, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar759, %smin1107
  br i1 %exitcond1108.not, label %polly.loop_exit757, label %polly.loop_header755, !llvm.loop !110

polly.loop_header907:                             ; preds = %entry, %polly.loop_exit915
  %indvars.iv1139 = phi i64 [ %indvars.iv.next1140, %polly.loop_exit915 ], [ 0, %entry ]
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_exit915 ], [ 0, %entry ]
  %smin1141 = call i64 @llvm.smin.i64(i64 %indvars.iv1139, i64 -1168)
  %295 = shl nsw i64 %polly.indvar910, 5
  %296 = add nsw i64 %smin1141, 1199
  br label %polly.loop_header913

polly.loop_exit915:                               ; preds = %polly.loop_exit921
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %indvars.iv.next1140 = add nsw i64 %indvars.iv1139, -32
  %exitcond1144.not = icmp eq i64 %polly.indvar_next911, 38
  br i1 %exitcond1144.not, label %polly.loop_header934, label %polly.loop_header907

polly.loop_header913:                             ; preds = %polly.loop_exit921, %polly.loop_header907
  %indvars.iv1135 = phi i64 [ %indvars.iv.next1136, %polly.loop_exit921 ], [ 0, %polly.loop_header907 ]
  %polly.indvar916 = phi i64 [ %polly.indvar_next917, %polly.loop_exit921 ], [ 0, %polly.loop_header907 ]
  %297 = mul nsw i64 %polly.indvar916, -32
  %smin1185 = call i64 @llvm.smin.i64(i64 %297, i64 -1168)
  %298 = add nsw i64 %smin1185, 1200
  %smin1137 = call i64 @llvm.smin.i64(i64 %indvars.iv1135, i64 -1168)
  %299 = shl nsw i64 %polly.indvar916, 5
  %300 = add nsw i64 %smin1137, 1199
  br label %polly.loop_header919

polly.loop_exit921:                               ; preds = %polly.loop_exit927
  %polly.indvar_next917 = add nuw nsw i64 %polly.indvar916, 1
  %indvars.iv.next1136 = add nsw i64 %indvars.iv1135, -32
  %exitcond1143.not = icmp eq i64 %polly.indvar_next917, 38
  br i1 %exitcond1143.not, label %polly.loop_exit915, label %polly.loop_header913

polly.loop_header919:                             ; preds = %polly.loop_exit927, %polly.loop_header913
  %polly.indvar922 = phi i64 [ 0, %polly.loop_header913 ], [ %polly.indvar_next923, %polly.loop_exit927 ]
  %301 = add nuw nsw i64 %polly.indvar922, %295
  %302 = trunc i64 %301 to i32
  %303 = mul nuw nsw i64 %301, 9600
  %min.iters.check = icmp eq i64 %298, 0
  br i1 %min.iters.check, label %polly.loop_header925, label %vector.ph1186

vector.ph1186:                                    ; preds = %polly.loop_header919
  %broadcast.splatinsert1193 = insertelement <4 x i64> poison, i64 %299, i32 0
  %broadcast.splat1194 = shufflevector <4 x i64> %broadcast.splatinsert1193, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1195 = insertelement <4 x i32> poison, i32 %302, i32 0
  %broadcast.splat1196 = shufflevector <4 x i32> %broadcast.splatinsert1195, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1184

vector.body1184:                                  ; preds = %vector.body1184, %vector.ph1186
  %index1187 = phi i64 [ 0, %vector.ph1186 ], [ %index.next1188, %vector.body1184 ]
  %vec.ind1191 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1186 ], [ %vec.ind.next1192, %vector.body1184 ]
  %304 = add nuw nsw <4 x i64> %vec.ind1191, %broadcast.splat1194
  %305 = trunc <4 x i64> %304 to <4 x i32>
  %306 = mul <4 x i32> %broadcast.splat1196, %305
  %307 = add <4 x i32> %306, <i32 3, i32 3, i32 3, i32 3>
  %308 = urem <4 x i32> %307, <i32 1200, i32 1200, i32 1200, i32 1200>
  %309 = sitofp <4 x i32> %308 to <4 x double>
  %310 = fmul fast <4 x double> %309, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %311 = extractelement <4 x i64> %304, i32 0
  %312 = shl i64 %311, 3
  %313 = add nuw nsw i64 %312, %303
  %314 = getelementptr i8, i8* %call, i64 %313
  %315 = bitcast i8* %314 to <4 x double>*
  store <4 x double> %310, <4 x double>* %315, align 8, !alias.scope !111, !noalias !113
  %index.next1188 = add i64 %index1187, 4
  %vec.ind.next1192 = add <4 x i64> %vec.ind1191, <i64 4, i64 4, i64 4, i64 4>
  %316 = icmp eq i64 %index.next1188, %298
  br i1 %316, label %polly.loop_exit927, label %vector.body1184, !llvm.loop !116

polly.loop_exit927:                               ; preds = %vector.body1184, %polly.loop_header925
  %polly.indvar_next923 = add nuw nsw i64 %polly.indvar922, 1
  %exitcond1142.not = icmp eq i64 %polly.indvar922, %296
  br i1 %exitcond1142.not, label %polly.loop_exit921, label %polly.loop_header919

polly.loop_header925:                             ; preds = %polly.loop_header919, %polly.loop_header925
  %polly.indvar928 = phi i64 [ %polly.indvar_next929, %polly.loop_header925 ], [ 0, %polly.loop_header919 ]
  %317 = add nuw nsw i64 %polly.indvar928, %299
  %318 = trunc i64 %317 to i32
  %319 = mul i32 %318, %302
  %320 = add i32 %319, 3
  %321 = urem i32 %320, 1200
  %p_conv31.i = sitofp i32 %321 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %322 = shl i64 %317, 3
  %323 = add nuw nsw i64 %322, %303
  %scevgep931 = getelementptr i8, i8* %call, i64 %323
  %scevgep931932 = bitcast i8* %scevgep931 to double*
  store double %p_div33.i, double* %scevgep931932, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next929 = add nuw nsw i64 %polly.indvar928, 1
  %exitcond1138.not = icmp eq i64 %polly.indvar928, %300
  br i1 %exitcond1138.not, label %polly.loop_exit927, label %polly.loop_header925, !llvm.loop !117

polly.loop_header934:                             ; preds = %polly.loop_exit915, %polly.loop_exit942
  %indvars.iv1129 = phi i64 [ %indvars.iv.next1130, %polly.loop_exit942 ], [ 0, %polly.loop_exit915 ]
  %polly.indvar937 = phi i64 [ %polly.indvar_next938, %polly.loop_exit942 ], [ 0, %polly.loop_exit915 ]
  %smin1131 = call i64 @llvm.smin.i64(i64 %indvars.iv1129, i64 -1168)
  %324 = shl nsw i64 %polly.indvar937, 5
  %325 = add nsw i64 %smin1131, 1199
  br label %polly.loop_header940

polly.loop_exit942:                               ; preds = %polly.loop_exit948
  %polly.indvar_next938 = add nuw nsw i64 %polly.indvar937, 1
  %indvars.iv.next1130 = add nsw i64 %indvars.iv1129, -32
  %exitcond1134.not = icmp eq i64 %polly.indvar_next938, 38
  br i1 %exitcond1134.not, label %polly.loop_header960, label %polly.loop_header934

polly.loop_header940:                             ; preds = %polly.loop_exit948, %polly.loop_header934
  %indvars.iv1125 = phi i64 [ %indvars.iv.next1126, %polly.loop_exit948 ], [ 0, %polly.loop_header934 ]
  %polly.indvar943 = phi i64 [ %polly.indvar_next944, %polly.loop_exit948 ], [ 0, %polly.loop_header934 ]
  %326 = mul nsw i64 %polly.indvar943, -32
  %smin1200 = call i64 @llvm.smin.i64(i64 %326, i64 -968)
  %327 = add nsw i64 %smin1200, 1000
  %smin1127 = call i64 @llvm.smin.i64(i64 %indvars.iv1125, i64 -968)
  %328 = shl nsw i64 %polly.indvar943, 5
  %329 = add nsw i64 %smin1127, 999
  br label %polly.loop_header946

polly.loop_exit948:                               ; preds = %polly.loop_exit954
  %polly.indvar_next944 = add nuw nsw i64 %polly.indvar943, 1
  %indvars.iv.next1126 = add nsw i64 %indvars.iv1125, -32
  %exitcond1133.not = icmp eq i64 %polly.indvar_next944, 32
  br i1 %exitcond1133.not, label %polly.loop_exit942, label %polly.loop_header940

polly.loop_header946:                             ; preds = %polly.loop_exit954, %polly.loop_header940
  %polly.indvar949 = phi i64 [ 0, %polly.loop_header940 ], [ %polly.indvar_next950, %polly.loop_exit954 ]
  %330 = add nuw nsw i64 %polly.indvar949, %324
  %331 = trunc i64 %330 to i32
  %332 = mul nuw nsw i64 %330, 8000
  %min.iters.check1201 = icmp eq i64 %327, 0
  br i1 %min.iters.check1201, label %polly.loop_header952, label %vector.ph1202

vector.ph1202:                                    ; preds = %polly.loop_header946
  %broadcast.splatinsert1211 = insertelement <4 x i64> poison, i64 %328, i32 0
  %broadcast.splat1212 = shufflevector <4 x i64> %broadcast.splatinsert1211, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1213 = insertelement <4 x i32> poison, i32 %331, i32 0
  %broadcast.splat1214 = shufflevector <4 x i32> %broadcast.splatinsert1213, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1199

vector.body1199:                                  ; preds = %vector.body1199, %vector.ph1202
  %index1205 = phi i64 [ 0, %vector.ph1202 ], [ %index.next1206, %vector.body1199 ]
  %vec.ind1209 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1202 ], [ %vec.ind.next1210, %vector.body1199 ]
  %333 = add nuw nsw <4 x i64> %vec.ind1209, %broadcast.splat1212
  %334 = trunc <4 x i64> %333 to <4 x i32>
  %335 = mul <4 x i32> %broadcast.splat1214, %334
  %336 = add <4 x i32> %335, <i32 2, i32 2, i32 2, i32 2>
  %337 = urem <4 x i32> %336, <i32 1000, i32 1000, i32 1000, i32 1000>
  %338 = sitofp <4 x i32> %337 to <4 x double>
  %339 = fmul fast <4 x double> %338, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %340 = extractelement <4 x i64> %333, i32 0
  %341 = shl i64 %340, 3
  %342 = add nuw nsw i64 %341, %332
  %343 = getelementptr i8, i8* %call2, i64 %342
  %344 = bitcast i8* %343 to <4 x double>*
  store <4 x double> %339, <4 x double>* %344, align 8, !alias.scope !115, !noalias !118
  %index.next1206 = add i64 %index1205, 4
  %vec.ind.next1210 = add <4 x i64> %vec.ind1209, <i64 4, i64 4, i64 4, i64 4>
  %345 = icmp eq i64 %index.next1206, %327
  br i1 %345, label %polly.loop_exit954, label %vector.body1199, !llvm.loop !119

polly.loop_exit954:                               ; preds = %vector.body1199, %polly.loop_header952
  %polly.indvar_next950 = add nuw nsw i64 %polly.indvar949, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar949, %325
  br i1 %exitcond1132.not, label %polly.loop_exit948, label %polly.loop_header946

polly.loop_header952:                             ; preds = %polly.loop_header946, %polly.loop_header952
  %polly.indvar955 = phi i64 [ %polly.indvar_next956, %polly.loop_header952 ], [ 0, %polly.loop_header946 ]
  %346 = add nuw nsw i64 %polly.indvar955, %328
  %347 = trunc i64 %346 to i32
  %348 = mul i32 %347, %331
  %349 = add i32 %348, 2
  %350 = urem i32 %349, 1000
  %p_conv10.i = sitofp i32 %350 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %351 = shl i64 %346, 3
  %352 = add nuw nsw i64 %351, %332
  %scevgep958 = getelementptr i8, i8* %call2, i64 %352
  %scevgep958959 = bitcast i8* %scevgep958 to double*
  store double %p_div12.i, double* %scevgep958959, align 8, !alias.scope !115, !noalias !118
  %polly.indvar_next956 = add nuw nsw i64 %polly.indvar955, 1
  %exitcond1128.not = icmp eq i64 %polly.indvar955, %329
  br i1 %exitcond1128.not, label %polly.loop_exit954, label %polly.loop_header952, !llvm.loop !120

polly.loop_header960:                             ; preds = %polly.loop_exit942, %polly.loop_exit968
  %indvars.iv1119 = phi i64 [ %indvars.iv.next1120, %polly.loop_exit968 ], [ 0, %polly.loop_exit942 ]
  %polly.indvar963 = phi i64 [ %polly.indvar_next964, %polly.loop_exit968 ], [ 0, %polly.loop_exit942 ]
  %smin1121 = call i64 @llvm.smin.i64(i64 %indvars.iv1119, i64 -1168)
  %353 = shl nsw i64 %polly.indvar963, 5
  %354 = add nsw i64 %smin1121, 1199
  br label %polly.loop_header966

polly.loop_exit968:                               ; preds = %polly.loop_exit974
  %polly.indvar_next964 = add nuw nsw i64 %polly.indvar963, 1
  %indvars.iv.next1120 = add nsw i64 %indvars.iv1119, -32
  %exitcond1124.not = icmp eq i64 %polly.indvar_next964, 38
  br i1 %exitcond1124.not, label %init_array.exit, label %polly.loop_header960

polly.loop_header966:                             ; preds = %polly.loop_exit974, %polly.loop_header960
  %indvars.iv1115 = phi i64 [ %indvars.iv.next1116, %polly.loop_exit974 ], [ 0, %polly.loop_header960 ]
  %polly.indvar969 = phi i64 [ %polly.indvar_next970, %polly.loop_exit974 ], [ 0, %polly.loop_header960 ]
  %355 = mul nsw i64 %polly.indvar969, -32
  %smin1218 = call i64 @llvm.smin.i64(i64 %355, i64 -968)
  %356 = add nsw i64 %smin1218, 1000
  %smin1117 = call i64 @llvm.smin.i64(i64 %indvars.iv1115, i64 -968)
  %357 = shl nsw i64 %polly.indvar969, 5
  %358 = add nsw i64 %smin1117, 999
  br label %polly.loop_header972

polly.loop_exit974:                               ; preds = %polly.loop_exit980
  %polly.indvar_next970 = add nuw nsw i64 %polly.indvar969, 1
  %indvars.iv.next1116 = add nsw i64 %indvars.iv1115, -32
  %exitcond1123.not = icmp eq i64 %polly.indvar_next970, 32
  br i1 %exitcond1123.not, label %polly.loop_exit968, label %polly.loop_header966

polly.loop_header972:                             ; preds = %polly.loop_exit980, %polly.loop_header966
  %polly.indvar975 = phi i64 [ 0, %polly.loop_header966 ], [ %polly.indvar_next976, %polly.loop_exit980 ]
  %359 = add nuw nsw i64 %polly.indvar975, %353
  %360 = trunc i64 %359 to i32
  %361 = mul nuw nsw i64 %359, 8000
  %min.iters.check1219 = icmp eq i64 %356, 0
  br i1 %min.iters.check1219, label %polly.loop_header978, label %vector.ph1220

vector.ph1220:                                    ; preds = %polly.loop_header972
  %broadcast.splatinsert1229 = insertelement <4 x i64> poison, i64 %357, i32 0
  %broadcast.splat1230 = shufflevector <4 x i64> %broadcast.splatinsert1229, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1231 = insertelement <4 x i32> poison, i32 %360, i32 0
  %broadcast.splat1232 = shufflevector <4 x i32> %broadcast.splatinsert1231, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1217

vector.body1217:                                  ; preds = %vector.body1217, %vector.ph1220
  %index1223 = phi i64 [ 0, %vector.ph1220 ], [ %index.next1224, %vector.body1217 ]
  %vec.ind1227 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1220 ], [ %vec.ind.next1228, %vector.body1217 ]
  %362 = add nuw nsw <4 x i64> %vec.ind1227, %broadcast.splat1230
  %363 = trunc <4 x i64> %362 to <4 x i32>
  %364 = mul <4 x i32> %broadcast.splat1232, %363
  %365 = add <4 x i32> %364, <i32 1, i32 1, i32 1, i32 1>
  %366 = urem <4 x i32> %365, <i32 1200, i32 1200, i32 1200, i32 1200>
  %367 = sitofp <4 x i32> %366 to <4 x double>
  %368 = fmul fast <4 x double> %367, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %369 = extractelement <4 x i64> %362, i32 0
  %370 = shl i64 %369, 3
  %371 = add nuw nsw i64 %370, %361
  %372 = getelementptr i8, i8* %call1, i64 %371
  %373 = bitcast i8* %372 to <4 x double>*
  store <4 x double> %368, <4 x double>* %373, align 8, !alias.scope !114, !noalias !121
  %index.next1224 = add i64 %index1223, 4
  %vec.ind.next1228 = add <4 x i64> %vec.ind1227, <i64 4, i64 4, i64 4, i64 4>
  %374 = icmp eq i64 %index.next1224, %356
  br i1 %374, label %polly.loop_exit980, label %vector.body1217, !llvm.loop !122

polly.loop_exit980:                               ; preds = %vector.body1217, %polly.loop_header978
  %polly.indvar_next976 = add nuw nsw i64 %polly.indvar975, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar975, %354
  br i1 %exitcond1122.not, label %polly.loop_exit974, label %polly.loop_header972

polly.loop_header978:                             ; preds = %polly.loop_header972, %polly.loop_header978
  %polly.indvar981 = phi i64 [ %polly.indvar_next982, %polly.loop_header978 ], [ 0, %polly.loop_header972 ]
  %375 = add nuw nsw i64 %polly.indvar981, %357
  %376 = trunc i64 %375 to i32
  %377 = mul i32 %376, %360
  %378 = add i32 %377, 1
  %379 = urem i32 %378, 1200
  %p_conv.i = sitofp i32 %379 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %380 = shl i64 %375, 3
  %381 = add nuw nsw i64 %380, %361
  %scevgep985 = getelementptr i8, i8* %call1, i64 %381
  %scevgep985986 = bitcast i8* %scevgep985 to double*
  store double %p_div.i, double* %scevgep985986, align 8, !alias.scope !114, !noalias !121
  %polly.indvar_next982 = add nuw nsw i64 %polly.indvar981, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar981, %358
  br i1 %exitcond1118.not, label %polly.loop_exit980, label %polly.loop_header978, !llvm.loop !123
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
!22 = distinct !{!"B"}
!23 = distinct !{!23, !12, !24, !25, !26, !27, !30}
!24 = !{!"llvm.loop.disable_nonforced"}
!25 = !{!"llvm.loop.id", !"k"}
!26 = !{!"llvm.loop.tile.size", i32 100}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !26, !35, !38}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !24, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !24, !40, !41}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.loop.interchange.followup_interchanged", !42}
!42 = distinct !{!42, !12, !24, !40, !43, !44, !45}
!43 = !{!"llvm.data.pack.enable", i1 true}
!44 = !{!"llvm.data.pack.array", !21}
!45 = !{!"llvm.data.pack.allocate", !"malloc"}
!46 = distinct !{!46, !12, !24, !47, !48, !49, !50, !51, !60}
!47 = !{!"llvm.loop.id", !"i"}
!48 = !{!"llvm.loop.tile.enable", i1 true}
!49 = !{!"llvm.loop.tile.depth", i32 3}
!50 = !{!"llvm.loop.tile.size", i32 96}
!51 = !{!"llvm.loop.tile.followup_floor", !52}
!52 = distinct !{!52, !12, !24, !53, !54, !55, !56, !57}
!53 = !{!"llvm.loop.id", !"i1"}
!54 = !{!"llvm.loop.interchange.enable", i1 true}
!55 = !{!"llvm.loop.interchange.depth", i32 5}
!56 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!57 = !{!"llvm.loop.interchange.followup_interchanged", !58}
!58 = distinct !{!58, !12, !24, !53, !43, !59, !45}
!59 = !{!"llvm.data.pack.array", !22}
!60 = !{!"llvm.loop.tile.followup_tile", !61}
!61 = distinct !{!61, !12, !24, !62}
!62 = !{!"llvm.loop.id", !"i2"}
!63 = distinct !{!63, !12, !13}
!64 = distinct !{!64, !12, !13}
!65 = distinct !{!65, !12, !13}
!66 = distinct !{!66, !12, !13}
!67 = !{!68, !68, i64 0}
!68 = !{!"any pointer", !4, i64 0}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !72, !"polly.alias.scope.MemRef_call"}
!72 = distinct !{!72, !"polly.alias.scope.domain"}
!73 = !{!74, !75, !76, !77}
!74 = distinct !{!74, !72, !"polly.alias.scope.MemRef_call1"}
!75 = distinct !{!75, !72, !"polly.alias.scope.MemRef_call2"}
!76 = distinct !{!76, !72, !"polly.alias.scope.Packed_MemRef_call1"}
!77 = distinct !{!77, !72, !"polly.alias.scope.Packed_MemRef_call2"}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !80, !13}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = !{!71, !74, !76, !77}
!82 = !{!71, !75, !76, !77}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !80, !13}
!85 = distinct !{!85, !86, !"polly.alias.scope.MemRef_call"}
!86 = distinct !{!86, !"polly.alias.scope.domain"}
!87 = !{!88, !89, !90, !91}
!88 = distinct !{!88, !86, !"polly.alias.scope.MemRef_call1"}
!89 = distinct !{!89, !86, !"polly.alias.scope.MemRef_call2"}
!90 = distinct !{!90, !86, !"polly.alias.scope.Packed_MemRef_call1"}
!91 = distinct !{!91, !86, !"polly.alias.scope.Packed_MemRef_call2"}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !80, !13}
!94 = !{!85, !88, !90, !91}
!95 = !{!85, !89, !90, !91}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !80, !13}
!98 = distinct !{!98, !99, !"polly.alias.scope.MemRef_call"}
!99 = distinct !{!99, !"polly.alias.scope.domain"}
!100 = !{!101, !102, !103, !104}
!101 = distinct !{!101, !99, !"polly.alias.scope.MemRef_call1"}
!102 = distinct !{!102, !99, !"polly.alias.scope.MemRef_call2"}
!103 = distinct !{!103, !99, !"polly.alias.scope.Packed_MemRef_call1"}
!104 = distinct !{!104, !99, !"polly.alias.scope.Packed_MemRef_call2"}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !80, !13}
!107 = !{!98, !101, !103, !104}
!108 = !{!98, !102, !103, !104}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !80, !13}
!111 = distinct !{!111, !112, !"polly.alias.scope.MemRef_call"}
!112 = distinct !{!112, !"polly.alias.scope.domain"}
!113 = !{!114, !115}
!114 = distinct !{!114, !112, !"polly.alias.scope.MemRef_call1"}
!115 = distinct !{!115, !112, !"polly.alias.scope.MemRef_call2"}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !80, !13}
!118 = !{!114, !111}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !80, !13}
!121 = !{!115, !111}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !80, !13}
