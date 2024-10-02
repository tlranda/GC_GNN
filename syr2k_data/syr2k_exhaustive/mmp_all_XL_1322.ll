; ModuleID = 'syr2k_exhaustive/mmp_all_XL_1322.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_1322.c"
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
  %call872 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1724 = bitcast i8* %call1 to double*
  %polly.access.call1733 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2734 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1733, %call2
  %polly.access.call2753 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2753, %call1
  %2 = or i1 %0, %1
  %polly.access.call773 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call773, %call2
  %4 = icmp ule i8* %polly.access.call2753, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call773, %call1
  %8 = icmp ule i8* %polly.access.call1733, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header846, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1196 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1195 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1194 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1193 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1193, %scevgep1196
  %bound1 = icmp ult i8* %scevgep1195, %scevgep1194
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
  br i1 %exitcond18.not.i, label %vector.ph1200, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1200:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1207 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1208 = shufflevector <4 x i64> %broadcast.splatinsert1207, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1199

vector.body1199:                                  ; preds = %vector.body1199, %vector.ph1200
  %index1201 = phi i64 [ 0, %vector.ph1200 ], [ %index.next1202, %vector.body1199 ]
  %vec.ind1205 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1200 ], [ %vec.ind.next1206, %vector.body1199 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1205, %broadcast.splat1208
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv7.i, i64 %index1201
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1202 = add i64 %index1201, 4
  %vec.ind.next1206 = add <4 x i64> %vec.ind1205, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1202, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1199, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1199
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1200, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit907
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start511, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1263 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1263, label %for.body3.i46.preheader1418, label %vector.ph1264

vector.ph1264:                                    ; preds = %for.body3.i46.preheader
  %n.vec1266 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1262

vector.body1262:                                  ; preds = %vector.body1262, %vector.ph1264
  %index1267 = phi i64 [ 0, %vector.ph1264 ], [ %index.next1268, %vector.body1262 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i, i64 %index1267
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1268 = add i64 %index1267, 4
  %46 = icmp eq i64 %index.next1268, %n.vec1266
  br i1 %46, label %middle.block1260, label %vector.body1262, !llvm.loop !18

middle.block1260:                                 ; preds = %vector.body1262
  %cmp.n1270 = icmp eq i64 %indvars.iv21.i, %n.vec1266
  br i1 %cmp.n1270, label %for.inc6.i, label %for.body3.i46.preheader1418

for.body3.i46.preheader1418:                      ; preds = %for.body3.i46.preheader, %middle.block1260
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1266, %middle.block1260 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1418, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1418 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1260, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting512
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start300, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1310 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1310, label %for.body3.i60.preheader1414, label %vector.ph1311

vector.ph1311:                                    ; preds = %for.body3.i60.preheader
  %n.vec1313 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1309

vector.body1309:                                  ; preds = %vector.body1309, %vector.ph1311
  %index1314 = phi i64 [ 0, %vector.ph1311 ], [ %index.next1315, %vector.body1309 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i52, i64 %index1314
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1318 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1318, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1315 = add i64 %index1314, 4
  %57 = icmp eq i64 %index.next1315, %n.vec1313
  br i1 %57, label %middle.block1307, label %vector.body1309, !llvm.loop !64

middle.block1307:                                 ; preds = %vector.body1309
  %cmp.n1317 = icmp eq i64 %indvars.iv21.i52, %n.vec1313
  br i1 %cmp.n1317, label %for.inc6.i63, label %for.body3.i60.preheader1414

for.body3.i60.preheader1414:                      ; preds = %for.body3.i60.preheader, %middle.block1307
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1313, %middle.block1307 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1414, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1414 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1307, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1360 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1360, label %for.body3.i99.preheader1410, label %vector.ph1361

vector.ph1361:                                    ; preds = %for.body3.i99.preheader
  %n.vec1363 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1359

vector.body1359:                                  ; preds = %vector.body1359, %vector.ph1361
  %index1364 = phi i64 [ 0, %vector.ph1361 ], [ %index.next1365, %vector.body1359 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i91, i64 %index1364
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1368 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1368, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1365 = add i64 %index1364, 4
  %68 = icmp eq i64 %index.next1365, %n.vec1363
  br i1 %68, label %middle.block1357, label %vector.body1359, !llvm.loop !66

middle.block1357:                                 ; preds = %vector.body1359
  %cmp.n1367 = icmp eq i64 %indvars.iv21.i91, %n.vec1363
  br i1 %cmp.n1367, label %for.inc6.i102, label %for.body3.i99.preheader1410

for.body3.i99.preheader1410:                      ; preds = %for.body3.i99.preheader, %middle.block1357
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1363, %middle.block1357 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1410, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1410 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1357, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1372 = phi i64 [ %indvar.next1373, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1372, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1374 = icmp ult i64 %88, 4
  br i1 %min.iters.check1374, label %polly.loop_header192.preheader, label %vector.ph1375

vector.ph1375:                                    ; preds = %polly.loop_header
  %n.vec1377 = and i64 %88, -4
  br label %vector.body1371

vector.body1371:                                  ; preds = %vector.body1371, %vector.ph1375
  %index1378 = phi i64 [ 0, %vector.ph1375 ], [ %index.next1379, %vector.body1371 ]
  %90 = shl nuw nsw i64 %index1378, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1382 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1382, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1379 = add i64 %index1378, 4
  %95 = icmp eq i64 %index.next1379, %n.vec1377
  br i1 %95, label %middle.block1369, label %vector.body1371, !llvm.loop !79

middle.block1369:                                 ; preds = %vector.body1371
  %cmp.n1381 = icmp eq i64 %88, %n.vec1377
  br i1 %cmp.n1381, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1369
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1377, %middle.block1369 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1369
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1373 = add i64 %indvar1372, 1
  br i1 %exitcond1091.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1090.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1090.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit224
  %indvars.iv1080 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1081, %polly.loop_exit224 ]
  %indvars.iv1076 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1077, %polly.loop_exit224 ]
  %indvars.iv = phi i64 [ 1200, %polly.loop_header200.preheader ], [ %indvars.iv.next, %polly.loop_exit224 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %125, %polly.loop_exit224 ]
  %97 = shl nuw nsw i64 %polly.indvar203, 4
  %98 = shl nuw nsw i64 %polly.indvar203, 4
  %99 = and i64 %98, 9223372036854775680
  %100 = sub nsw i64 %97, %99
  %101 = mul nsw i64 %polly.indvar203, -16
  %102 = add i64 %101, %99
  %103 = lshr i64 %polly.indvar203, 3
  %104 = shl nuw nsw i64 %103, 7
  %105 = sub nsw i64 %indvars.iv1076, %104
  %106 = add i64 %indvars.iv1080, %104
  %107 = mul nsw i64 %polly.indvar203, -16
  %108 = shl nsw i64 %polly.indvar203, 4
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit214
  %109 = add nsw i64 %107, 1199
  %polly.access.mul.call1241.us = mul nsw i64 %polly.indvar203, 16000
  %110 = or i64 %108, 1
  %polly.access.mul.call1241.us.1 = mul nuw nsw i64 %110, 1000
  %111 = or i64 %108, 2
  %polly.access.mul.call1241.us.2 = mul nuw nsw i64 %111, 1000
  %112 = or i64 %108, 3
  %polly.access.mul.call1241.us.3 = mul nuw nsw i64 %112, 1000
  %113 = or i64 %108, 4
  %polly.access.mul.call1241.us.4 = mul nuw nsw i64 %113, 1000
  %114 = or i64 %108, 5
  %polly.access.mul.call1241.us.5 = mul nuw nsw i64 %114, 1000
  %115 = or i64 %108, 6
  %polly.access.mul.call1241.us.6 = mul nuw nsw i64 %115, 1000
  %116 = or i64 %108, 7
  %polly.access.mul.call1241.us.7 = mul nuw nsw i64 %116, 1000
  %117 = or i64 %108, 8
  %polly.access.mul.call1241.us.8 = mul nuw nsw i64 %117, 1000
  %118 = or i64 %108, 9
  %polly.access.mul.call1241.us.9 = mul nuw nsw i64 %118, 1000
  %119 = or i64 %108, 10
  %polly.access.mul.call1241.us.10 = mul nuw nsw i64 %119, 1000
  %120 = or i64 %108, 11
  %polly.access.mul.call1241.us.11 = mul nuw nsw i64 %120, 1000
  %121 = or i64 %108, 12
  %polly.access.mul.call1241.us.12 = mul nuw nsw i64 %121, 1000
  %122 = or i64 %108, 13
  %polly.access.mul.call1241.us.13 = mul nuw nsw i64 %122, 1000
  %123 = or i64 %108, 14
  %polly.access.mul.call1241.us.14 = mul nuw nsw i64 %123, 1000
  %124 = or i64 %108, 15
  %polly.access.mul.call1241.us.15 = mul nuw nsw i64 %124, 1000
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit259
  %125 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -16
  %indvars.iv.next1077 = add nuw nsw i64 %indvars.iv1076, 16
  %indvars.iv.next1081 = add nsw i64 %indvars.iv1080, -16
  %exitcond1089.not = icmp eq i64 %125, 75
  br i1 %exitcond1089.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit214, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_exit214 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar209, 1200
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_header212
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar_next210, 1000
  br i1 %exitcond1072.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_header212, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_header212 ]
  %126 = add nuw nsw i64 %polly.indvar215, %108
  %polly.access.mul.call2219 = mul nuw nsw i64 %126, 1000
  %polly.access.add.call2220 = add nuw nsw i64 %polly.access.mul.call2219, %polly.indvar209
  %polly.access.call2221 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2220
  %polly.access.call2221.load = load double, double* %polly.access.call2221, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar215, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2221.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next216, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header222:                             ; preds = %polly.loop_exit259, %polly.loop_exit208
  %indvar1386 = phi i64 [ %indvar.next1387, %polly.loop_exit259 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv1082 = phi i64 [ %indvars.iv.next1083, %polly.loop_exit259 ], [ %106, %polly.loop_exit208 ]
  %indvars.iv1078 = phi i64 [ %indvars.iv.next1079, %polly.loop_exit259 ], [ %105, %polly.loop_exit208 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit259 ], [ %103, %polly.loop_exit208 ]
  %127 = mul nsw i64 %indvar1386, -128
  %128 = add i64 %100, %127
  %smax1388 = call i64 @llvm.smax.i64(i64 %128, i64 0)
  %129 = shl nuw nsw i64 %indvar1386, 7
  %130 = add i64 %102, %129
  %131 = add i64 %smax1388, %130
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1078, i64 0)
  %132 = add i64 %smax, %indvars.iv1082
  %133 = shl nsw i64 %polly.indvar225, 3
  %.not.not = icmp ugt i64 %133, %polly.indvar203
  %134 = shl nsw i64 %polly.indvar225, 7
  %135 = add nsw i64 %134, %107
  %136 = icmp sgt i64 %135, 0
  %137 = select i1 %136, i64 %135, i64 0
  %138 = add nsw i64 %135, 127
  %139 = icmp slt i64 %109, %138
  %140 = select i1 %139, i64 %109, i64 %138
  %polly.loop_guard.not = icmp sgt i64 %137, %140
  br i1 %.not.not, label %polly.loop_header228.us, label %polly.loop_header222.split

polly.loop_header228.us:                          ; preds = %polly.loop_header222, %polly.loop_exit246.us
  %polly.indvar231.us = phi i64 [ %polly.indvar_next232.us, %polly.loop_exit246.us ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar231.us, 1200
  %polly.access.add.call1242.us = add nuw nsw i64 %polly.access.mul.call1241.us, %polly.indvar231.us
  %polly.access.call1243.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1242.us
  %polly.access.call1243.load.us = load double, double* %polly.access.call1243.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us
  store double %polly.access.call1243.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.access.add.call1242.us.1 = add nuw nsw i64 %polly.access.mul.call1241.us.1, %polly.indvar231.us
  %polly.access.call1243.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1242.us.1
  %polly.access.call1243.load.us.1 = load double, double* %polly.access.call1243.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1243.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.access.add.call1242.us.2 = add nuw nsw i64 %polly.access.mul.call1241.us.2, %polly.indvar231.us
  %polly.access.call1243.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1242.us.2
  %polly.access.call1243.load.us.2 = load double, double* %polly.access.call1243.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 2
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1243.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.access.add.call1242.us.3 = add nuw nsw i64 %polly.access.mul.call1241.us.3, %polly.indvar231.us
  %polly.access.call1243.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1242.us.3
  %polly.access.call1243.load.us.3 = load double, double* %polly.access.call1243.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 3
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1243.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.access.add.call1242.us.4 = add nuw nsw i64 %polly.access.mul.call1241.us.4, %polly.indvar231.us
  %polly.access.call1243.us.4 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1242.us.4
  %polly.access.call1243.load.us.4 = load double, double* %polly.access.call1243.us.4, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 4
  %polly.access.Packed_MemRef_call1.us.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.4
  store double %polly.access.call1243.load.us.4, double* %polly.access.Packed_MemRef_call1.us.4, align 8
  %polly.access.add.call1242.us.5 = add nuw nsw i64 %polly.access.mul.call1241.us.5, %polly.indvar231.us
  %polly.access.call1243.us.5 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1242.us.5
  %polly.access.call1243.load.us.5 = load double, double* %polly.access.call1243.us.5, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 5
  %polly.access.Packed_MemRef_call1.us.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.5
  store double %polly.access.call1243.load.us.5, double* %polly.access.Packed_MemRef_call1.us.5, align 8
  %polly.access.add.call1242.us.6 = add nuw nsw i64 %polly.access.mul.call1241.us.6, %polly.indvar231.us
  %polly.access.call1243.us.6 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1242.us.6
  %polly.access.call1243.load.us.6 = load double, double* %polly.access.call1243.us.6, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 6
  %polly.access.Packed_MemRef_call1.us.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.6
  store double %polly.access.call1243.load.us.6, double* %polly.access.Packed_MemRef_call1.us.6, align 8
  %polly.access.add.call1242.us.7 = add nuw nsw i64 %polly.access.mul.call1241.us.7, %polly.indvar231.us
  %polly.access.call1243.us.7 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1242.us.7
  %polly.access.call1243.load.us.7 = load double, double* %polly.access.call1243.us.7, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 7
  %polly.access.Packed_MemRef_call1.us.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.7
  store double %polly.access.call1243.load.us.7, double* %polly.access.Packed_MemRef_call1.us.7, align 8
  %polly.access.add.call1242.us.8 = add nuw nsw i64 %polly.access.mul.call1241.us.8, %polly.indvar231.us
  %polly.access.call1243.us.8 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1242.us.8
  %polly.access.call1243.load.us.8 = load double, double* %polly.access.call1243.us.8, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.8 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 8
  %polly.access.Packed_MemRef_call1.us.8 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.8
  store double %polly.access.call1243.load.us.8, double* %polly.access.Packed_MemRef_call1.us.8, align 8
  %polly.access.add.call1242.us.9 = add nuw nsw i64 %polly.access.mul.call1241.us.9, %polly.indvar231.us
  %polly.access.call1243.us.9 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1242.us.9
  %polly.access.call1243.load.us.9 = load double, double* %polly.access.call1243.us.9, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.9 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 9
  %polly.access.Packed_MemRef_call1.us.9 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.9
  store double %polly.access.call1243.load.us.9, double* %polly.access.Packed_MemRef_call1.us.9, align 8
  %polly.access.add.call1242.us.10 = add nuw nsw i64 %polly.access.mul.call1241.us.10, %polly.indvar231.us
  %polly.access.call1243.us.10 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1242.us.10
  %polly.access.call1243.load.us.10 = load double, double* %polly.access.call1243.us.10, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.10 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 10
  %polly.access.Packed_MemRef_call1.us.10 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.10
  store double %polly.access.call1243.load.us.10, double* %polly.access.Packed_MemRef_call1.us.10, align 8
  %polly.access.add.call1242.us.11 = add nuw nsw i64 %polly.access.mul.call1241.us.11, %polly.indvar231.us
  %polly.access.call1243.us.11 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1242.us.11
  %polly.access.call1243.load.us.11 = load double, double* %polly.access.call1243.us.11, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.11 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 11
  %polly.access.Packed_MemRef_call1.us.11 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.11
  store double %polly.access.call1243.load.us.11, double* %polly.access.Packed_MemRef_call1.us.11, align 8
  %polly.access.add.call1242.us.12 = add nuw nsw i64 %polly.access.mul.call1241.us.12, %polly.indvar231.us
  %polly.access.call1243.us.12 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1242.us.12
  %polly.access.call1243.load.us.12 = load double, double* %polly.access.call1243.us.12, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.12 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 12
  %polly.access.Packed_MemRef_call1.us.12 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.12
  store double %polly.access.call1243.load.us.12, double* %polly.access.Packed_MemRef_call1.us.12, align 8
  %polly.access.add.call1242.us.13 = add nuw nsw i64 %polly.access.mul.call1241.us.13, %polly.indvar231.us
  %polly.access.call1243.us.13 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1242.us.13
  %polly.access.call1243.load.us.13 = load double, double* %polly.access.call1243.us.13, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.13 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 13
  %polly.access.Packed_MemRef_call1.us.13 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.13
  store double %polly.access.call1243.load.us.13, double* %polly.access.Packed_MemRef_call1.us.13, align 8
  %polly.access.add.call1242.us.14 = add nuw nsw i64 %polly.access.mul.call1241.us.14, %polly.indvar231.us
  %polly.access.call1243.us.14 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1242.us.14
  %polly.access.call1243.load.us.14 = load double, double* %polly.access.call1243.us.14, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.14 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 14
  %polly.access.Packed_MemRef_call1.us.14 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.14
  store double %polly.access.call1243.load.us.14, double* %polly.access.Packed_MemRef_call1.us.14, align 8
  %polly.access.add.call1242.us.15 = add nuw nsw i64 %polly.access.mul.call1241.us.15, %polly.indvar231.us
  %polly.access.call1243.us.15 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1242.us.15
  %polly.access.call1243.load.us.15 = load double, double* %polly.access.call1243.us.15, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.15 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 15
  %polly.access.Packed_MemRef_call1.us.15 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.15
  store double %polly.access.call1243.load.us.15, double* %polly.access.Packed_MemRef_call1.us.15, align 8
  br i1 %polly.loop_guard.not, label %polly.loop_exit246.us, label %polly.loop_header244.us

polly.loop_header244.us:                          ; preds = %polly.loop_header228.us, %polly.loop_header244.us
  %polly.indvar247.us = phi i64 [ %polly.indvar_next248.us, %polly.loop_header244.us ], [ %137, %polly.loop_header228.us ]
  %141 = add nuw nsw i64 %polly.indvar247.us, %108
  %polly.access.mul.call1251.us = mul nsw i64 %141, 1000
  %polly.access.add.call1252.us = add nuw nsw i64 %polly.access.mul.call1251.us, %polly.indvar231.us
  %polly.access.call1253.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1252.us
  %polly.access.call1253.load.us = load double, double* %polly.access.call1253.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1255.us = add nuw nsw i64 %polly.indvar247.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1256.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255.us
  store double %polly.access.call1253.load.us, double* %polly.access.Packed_MemRef_call1256.us, align 8
  %polly.indvar_next248.us = add nuw nsw i64 %polly.indvar247.us, 1
  %polly.loop_cond249.not.not.us = icmp slt i64 %polly.indvar247.us, %140
  br i1 %polly.loop_cond249.not.not.us, label %polly.loop_header244.us, label %polly.loop_exit246.us

polly.loop_exit246.us:                            ; preds = %polly.loop_header244.us, %polly.loop_header228.us
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %exitcond1075.not = icmp eq i64 %polly.indvar_next232.us, 1000
  br i1 %exitcond1075.not, label %polly.loop_header257.preheader, label %polly.loop_header228.us

polly.loop_header222.split:                       ; preds = %polly.loop_header222
  br i1 %polly.loop_guard.not, label %polly.loop_header257.preheader, label %polly.loop_header228

polly.loop_exit259:                               ; preds = %polly.loop_exit266, %polly.loop_header257.preheader
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next1079 = add i64 %indvars.iv1078, -128
  %indvars.iv.next1083 = add i64 %indvars.iv1082, 128
  %exitcond1088.not = icmp eq i64 %polly.indvar_next226, 10
  %indvar.next1387 = add i64 %indvar1386, 1
  br i1 %exitcond1088.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header222.split, %polly.loop_exit246
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit246 ], [ 0, %polly.loop_header222.split ]
  %polly.access.mul.Packed_MemRef_call1254 = mul nuw nsw i64 %polly.indvar231, 1200
  br label %polly.loop_header244

polly.loop_exit246:                               ; preds = %polly.loop_header244
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond1073.not = icmp eq i64 %polly.indvar_next232, 1000
  br i1 %exitcond1073.not, label %polly.loop_header257.preheader, label %polly.loop_header228

polly.loop_header257.preheader:                   ; preds = %polly.loop_exit246, %polly.loop_exit246.us, %polly.loop_header222.split
  %142 = sub nsw i64 %108, %134
  %143 = icmp sgt i64 %142, 0
  %144 = select i1 %143, i64 %142, i64 0
  %145 = mul nsw i64 %polly.indvar225, -128
  %146 = icmp slt i64 %145, -1072
  %147 = select i1 %146, i64 %145, i64 -1072
  %148 = add nsw i64 %147, 1199
  %polly.loop_guard267.not = icmp sgt i64 %144, %148
  br i1 %polly.loop_guard267.not, label %polly.loop_exit259, label %polly.loop_header257

polly.loop_header244:                             ; preds = %polly.loop_header228, %polly.loop_header244
  %polly.indvar247 = phi i64 [ %polly.indvar_next248, %polly.loop_header244 ], [ %137, %polly.loop_header228 ]
  %149 = add nuw nsw i64 %polly.indvar247, %108
  %polly.access.mul.call1251 = mul nsw i64 %149, 1000
  %polly.access.add.call1252 = add nuw nsw i64 %polly.access.mul.call1251, %polly.indvar231
  %polly.access.call1253 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1252
  %polly.access.call1253.load = load double, double* %polly.access.call1253, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1255 = add nuw nsw i64 %polly.indvar247, %polly.access.mul.Packed_MemRef_call1254
  %polly.access.Packed_MemRef_call1256 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255
  store double %polly.access.call1253.load, double* %polly.access.Packed_MemRef_call1256, align 8
  %polly.indvar_next248 = add nuw nsw i64 %polly.indvar247, 1
  %polly.loop_cond249.not.not = icmp slt i64 %polly.indvar247, %140
  br i1 %polly.loop_cond249.not.not, label %polly.loop_header244, label %polly.loop_exit246

polly.loop_header257:                             ; preds = %polly.loop_header257.preheader, %polly.loop_exit266
  %polly.indvar260 = phi i64 [ %polly.indvar_next261, %polly.loop_exit266 ], [ 0, %polly.loop_header257.preheader ]
  %polly.access.mul.Packed_MemRef_call1279 = mul nuw nsw i64 %polly.indvar260, 1200
  br label %polly.loop_header264

polly.loop_exit266:                               ; preds = %polly.loop_exit274
  %polly.indvar_next261 = add nuw nsw i64 %polly.indvar260, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar_next261, 1000
  br i1 %exitcond1087.not, label %polly.loop_exit259, label %polly.loop_header257

polly.loop_header264:                             ; preds = %polly.loop_header257, %polly.loop_exit274
  %indvar1389 = phi i64 [ 0, %polly.loop_header257 ], [ %indvar.next1390, %polly.loop_exit274 ]
  %indvars.iv1084 = phi i64 [ %132, %polly.loop_header257 ], [ %indvars.iv.next1085, %polly.loop_exit274 ]
  %polly.indvar268 = phi i64 [ %144, %polly.loop_header257 ], [ %polly.indvar_next269, %polly.loop_exit274 ]
  %150 = add i64 %131, %indvar1389
  %smin1391 = call i64 @llvm.smin.i64(i64 %150, i64 15)
  %151 = add nsw i64 %smin1391, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1084, i64 15)
  %152 = add nsw i64 %polly.indvar268, %135
  %polly.loop_guard2751179 = icmp sgt i64 %152, -1
  br i1 %polly.loop_guard2751179, label %polly.loop_header272.preheader, label %polly.loop_exit274

polly.loop_header272.preheader:                   ; preds = %polly.loop_header264
  %153 = add nuw nsw i64 %polly.indvar268, %134
  %polly.access.add.Packed_MemRef_call2284 = add nsw i64 %152, %polly.access.mul.Packed_MemRef_call1279
  %polly.access.Packed_MemRef_call2285 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284
  %_p_scalar_286 = load double, double* %polly.access.Packed_MemRef_call2285, align 8
  %polly.access.Packed_MemRef_call1293 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2284
  %_p_scalar_294 = load double, double* %polly.access.Packed_MemRef_call1293, align 8
  %154 = mul i64 %153, 9600
  %min.iters.check1392 = icmp ult i64 %151, 4
  br i1 %min.iters.check1392, label %polly.loop_header272.preheader1407, label %vector.ph1393

vector.ph1393:                                    ; preds = %polly.loop_header272.preheader
  %n.vec1395 = and i64 %151, -4
  %broadcast.splatinsert1401 = insertelement <4 x double> poison, double %_p_scalar_286, i32 0
  %broadcast.splat1402 = shufflevector <4 x double> %broadcast.splatinsert1401, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1404 = insertelement <4 x double> poison, double %_p_scalar_294, i32 0
  %broadcast.splat1405 = shufflevector <4 x double> %broadcast.splatinsert1404, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1385

vector.body1385:                                  ; preds = %vector.body1385, %vector.ph1393
  %index1396 = phi i64 [ 0, %vector.ph1393 ], [ %index.next1397, %vector.body1385 ]
  %155 = add nuw nsw i64 %index1396, %108
  %156 = add nuw nsw i64 %index1396, %polly.access.mul.Packed_MemRef_call1279
  %157 = getelementptr double, double* %Packed_MemRef_call1, i64 %156
  %158 = bitcast double* %157 to <4 x double>*
  %wide.load1400 = load <4 x double>, <4 x double>* %158, align 8
  %159 = fmul fast <4 x double> %broadcast.splat1402, %wide.load1400
  %160 = getelementptr double, double* %Packed_MemRef_call2, i64 %156
  %161 = bitcast double* %160 to <4 x double>*
  %wide.load1403 = load <4 x double>, <4 x double>* %161, align 8
  %162 = fmul fast <4 x double> %broadcast.splat1405, %wide.load1403
  %163 = shl i64 %155, 3
  %164 = add i64 %163, %154
  %165 = getelementptr i8, i8* %call, i64 %164
  %166 = bitcast i8* %165 to <4 x double>*
  %wide.load1406 = load <4 x double>, <4 x double>* %166, align 8, !alias.scope !72, !noalias !74
  %167 = fadd fast <4 x double> %162, %159
  %168 = fmul fast <4 x double> %167, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %169 = fadd fast <4 x double> %168, %wide.load1406
  %170 = bitcast i8* %165 to <4 x double>*
  store <4 x double> %169, <4 x double>* %170, align 8, !alias.scope !72, !noalias !74
  %index.next1397 = add i64 %index1396, 4
  %171 = icmp eq i64 %index.next1397, %n.vec1395
  br i1 %171, label %middle.block1383, label %vector.body1385, !llvm.loop !84

middle.block1383:                                 ; preds = %vector.body1385
  %cmp.n1399 = icmp eq i64 %151, %n.vec1395
  br i1 %cmp.n1399, label %polly.loop_exit274, label %polly.loop_header272.preheader1407

polly.loop_header272.preheader1407:               ; preds = %polly.loop_header272.preheader, %middle.block1383
  %polly.indvar276.ph = phi i64 [ 0, %polly.loop_header272.preheader ], [ %n.vec1395, %middle.block1383 ]
  br label %polly.loop_header272

polly.loop_exit274:                               ; preds = %polly.loop_header272, %middle.block1383, %polly.loop_header264
  %polly.indvar_next269 = add nuw nsw i64 %polly.indvar268, 1
  %polly.loop_cond270.not.not = icmp slt i64 %polly.indvar268, %148
  %indvars.iv.next1085 = add i64 %indvars.iv1084, 1
  %indvar.next1390 = add i64 %indvar1389, 1
  br i1 %polly.loop_cond270.not.not, label %polly.loop_header264, label %polly.loop_exit266

polly.loop_header272:                             ; preds = %polly.loop_header272.preheader1407, %polly.loop_header272
  %polly.indvar276 = phi i64 [ %polly.indvar_next277, %polly.loop_header272 ], [ %polly.indvar276.ph, %polly.loop_header272.preheader1407 ]
  %172 = add nuw nsw i64 %polly.indvar276, %108
  %polly.access.add.Packed_MemRef_call1280 = add nuw nsw i64 %polly.indvar276, %polly.access.mul.Packed_MemRef_call1279
  %polly.access.Packed_MemRef_call1281 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280
  %_p_scalar_282 = load double, double* %polly.access.Packed_MemRef_call1281, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_286, %_p_scalar_282
  %polly.access.Packed_MemRef_call2289 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1280
  %_p_scalar_290 = load double, double* %polly.access.Packed_MemRef_call2289, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_294, %_p_scalar_290
  %173 = shl i64 %172, 3
  %174 = add i64 %173, %154
  %scevgep295 = getelementptr i8, i8* %call, i64 %174
  %scevgep295296 = bitcast i8* %scevgep295 to double*
  %_p_scalar_297 = load double, double* %scevgep295296, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_297
  store double %p_add42.i118, double* %scevgep295296, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next277 = add nuw nsw i64 %polly.indvar276, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar276, %smin
  br i1 %exitcond1086.not, label %polly.loop_exit274, label %polly.loop_header272, !llvm.loop !85

polly.start300:                                   ; preds = %kernel_syr2k.exit
  %malloccall302 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall304 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header388

polly.exiting301:                                 ; preds = %polly.loop_exit429
  tail call void @free(i8* %malloccall302)
  tail call void @free(i8* %malloccall304)
  br label %kernel_syr2k.exit90

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.start300
  %indvar1322 = phi i64 [ %indvar.next1323, %polly.loop_exit396 ], [ 0, %polly.start300 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start300 ]
  %175 = add i64 %indvar1322, 1
  %176 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %176
  %min.iters.check1324 = icmp ult i64 %175, 4
  br i1 %min.iters.check1324, label %polly.loop_header394.preheader, label %vector.ph1325

vector.ph1325:                                    ; preds = %polly.loop_header388
  %n.vec1327 = and i64 %175, -4
  br label %vector.body1321

vector.body1321:                                  ; preds = %vector.body1321, %vector.ph1325
  %index1328 = phi i64 [ 0, %vector.ph1325 ], [ %index.next1329, %vector.body1321 ]
  %177 = shl nuw nsw i64 %index1328, 3
  %178 = getelementptr i8, i8* %scevgep400, i64 %177
  %179 = bitcast i8* %178 to <4 x double>*
  %wide.load1332 = load <4 x double>, <4 x double>* %179, align 8, !alias.scope !86, !noalias !88
  %180 = fmul fast <4 x double> %wide.load1332, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %181 = bitcast i8* %178 to <4 x double>*
  store <4 x double> %180, <4 x double>* %181, align 8, !alias.scope !86, !noalias !88
  %index.next1329 = add i64 %index1328, 4
  %182 = icmp eq i64 %index.next1329, %n.vec1327
  br i1 %182, label %middle.block1319, label %vector.body1321, !llvm.loop !93

middle.block1319:                                 ; preds = %vector.body1321
  %cmp.n1331 = icmp eq i64 %175, %n.vec1327
  br i1 %cmp.n1331, label %polly.loop_exit396, label %polly.loop_header394.preheader

polly.loop_header394.preheader:                   ; preds = %polly.loop_header388, %middle.block1319
  %polly.indvar397.ph = phi i64 [ 0, %polly.loop_header388 ], [ %n.vec1327, %middle.block1319 ]
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394, %middle.block1319
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar_next392, 1200
  %indvar.next1323 = add i64 %indvar1322, 1
  br i1 %exitcond1116.not, label %polly.loop_header404.preheader, label %polly.loop_header388

polly.loop_header404.preheader:                   ; preds = %polly.loop_exit396
  %Packed_MemRef_call1303 = bitcast i8* %malloccall302 to double*
  %Packed_MemRef_call2305 = bitcast i8* %malloccall304 to double*
  br label %polly.loop_header404

polly.loop_header394:                             ; preds = %polly.loop_header394.preheader, %polly.loop_header394
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_header394 ], [ %polly.indvar397.ph, %polly.loop_header394.preheader ]
  %183 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %183
  %scevgep401402 = bitcast i8* %scevgep401 to double*
  %_p_scalar_403 = load double, double* %scevgep401402, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_403, 1.200000e+00
  store double %p_mul.i57, double* %scevgep401402, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond1115.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !94

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_exit429
  %indvars.iv1104 = phi i64 [ 0, %polly.loop_header404.preheader ], [ %indvars.iv.next1105, %polly.loop_exit429 ]
  %indvars.iv1099 = phi i64 [ 0, %polly.loop_header404.preheader ], [ %indvars.iv.next1100, %polly.loop_exit429 ]
  %indvars.iv1092 = phi i64 [ 1200, %polly.loop_header404.preheader ], [ %indvars.iv.next1093, %polly.loop_exit429 ]
  %polly.indvar407 = phi i64 [ 0, %polly.loop_header404.preheader ], [ %212, %polly.loop_exit429 ]
  %184 = shl nuw nsw i64 %polly.indvar407, 4
  %185 = shl nuw nsw i64 %polly.indvar407, 4
  %186 = and i64 %185, 9223372036854775680
  %187 = sub nsw i64 %184, %186
  %188 = mul nsw i64 %polly.indvar407, -16
  %189 = add i64 %188, %186
  %190 = lshr i64 %polly.indvar407, 3
  %191 = shl nuw nsw i64 %190, 7
  %192 = sub nsw i64 %indvars.iv1099, %191
  %193 = add i64 %indvars.iv1104, %191
  %194 = mul nsw i64 %polly.indvar407, -16
  %195 = shl nsw i64 %polly.indvar407, 4
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_exit418
  %196 = add nsw i64 %194, 1199
  %polly.access.mul.call1450.us = mul nsw i64 %polly.indvar407, 16000
  %197 = or i64 %195, 1
  %polly.access.mul.call1450.us.1 = mul nuw nsw i64 %197, 1000
  %198 = or i64 %195, 2
  %polly.access.mul.call1450.us.2 = mul nuw nsw i64 %198, 1000
  %199 = or i64 %195, 3
  %polly.access.mul.call1450.us.3 = mul nuw nsw i64 %199, 1000
  %200 = or i64 %195, 4
  %polly.access.mul.call1450.us.4 = mul nuw nsw i64 %200, 1000
  %201 = or i64 %195, 5
  %polly.access.mul.call1450.us.5 = mul nuw nsw i64 %201, 1000
  %202 = or i64 %195, 6
  %polly.access.mul.call1450.us.6 = mul nuw nsw i64 %202, 1000
  %203 = or i64 %195, 7
  %polly.access.mul.call1450.us.7 = mul nuw nsw i64 %203, 1000
  %204 = or i64 %195, 8
  %polly.access.mul.call1450.us.8 = mul nuw nsw i64 %204, 1000
  %205 = or i64 %195, 9
  %polly.access.mul.call1450.us.9 = mul nuw nsw i64 %205, 1000
  %206 = or i64 %195, 10
  %polly.access.mul.call1450.us.10 = mul nuw nsw i64 %206, 1000
  %207 = or i64 %195, 11
  %polly.access.mul.call1450.us.11 = mul nuw nsw i64 %207, 1000
  %208 = or i64 %195, 12
  %polly.access.mul.call1450.us.12 = mul nuw nsw i64 %208, 1000
  %209 = or i64 %195, 13
  %polly.access.mul.call1450.us.13 = mul nuw nsw i64 %209, 1000
  %210 = or i64 %195, 14
  %polly.access.mul.call1450.us.14 = mul nuw nsw i64 %210, 1000
  %211 = or i64 %195, 15
  %polly.access.mul.call1450.us.15 = mul nuw nsw i64 %211, 1000
  br label %polly.loop_header427

polly.loop_exit429:                               ; preds = %polly.loop_exit470
  %212 = add nuw nsw i64 %polly.indvar407, 1
  %indvars.iv.next1093 = add nsw i64 %indvars.iv1092, -16
  %indvars.iv.next1100 = add nuw nsw i64 %indvars.iv1099, 16
  %indvars.iv.next1105 = add nsw i64 %indvars.iv1104, -16
  %exitcond1114.not = icmp eq i64 %212, 75
  br i1 %exitcond1114.not, label %polly.exiting301, label %polly.loop_header404

polly.loop_header410:                             ; preds = %polly.loop_exit418, %polly.loop_header404
  %polly.indvar413 = phi i64 [ 0, %polly.loop_header404 ], [ %polly.indvar_next414, %polly.loop_exit418 ]
  %polly.access.mul.Packed_MemRef_call2305 = mul nuw nsw i64 %polly.indvar413, 1200
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_header416
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar_next414, 1000
  br i1 %exitcond1095.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header416:                             ; preds = %polly.loop_header416, %polly.loop_header410
  %polly.indvar419 = phi i64 [ 0, %polly.loop_header410 ], [ %polly.indvar_next420, %polly.loop_header416 ]
  %213 = add nuw nsw i64 %polly.indvar419, %195
  %polly.access.mul.call2423 = mul nuw nsw i64 %213, 1000
  %polly.access.add.call2424 = add nuw nsw i64 %polly.access.mul.call2423, %polly.indvar413
  %polly.access.call2425 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2424
  %polly.access.call2425.load = load double, double* %polly.access.call2425, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2305 = add nuw nsw i64 %polly.indvar419, %polly.access.mul.Packed_MemRef_call2305
  %polly.access.Packed_MemRef_call2305 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305
  store double %polly.access.call2425.load, double* %polly.access.Packed_MemRef_call2305, align 8
  %polly.indvar_next420 = add nuw nsw i64 %polly.indvar419, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar_next420, %indvars.iv1092
  br i1 %exitcond1094.not, label %polly.loop_exit418, label %polly.loop_header416

polly.loop_header427:                             ; preds = %polly.loop_exit470, %polly.loop_exit412
  %indvar1336 = phi i64 [ %indvar.next1337, %polly.loop_exit470 ], [ 0, %polly.loop_exit412 ]
  %indvars.iv1106 = phi i64 [ %indvars.iv.next1107, %polly.loop_exit470 ], [ %193, %polly.loop_exit412 ]
  %indvars.iv1101 = phi i64 [ %indvars.iv.next1102, %polly.loop_exit470 ], [ %192, %polly.loop_exit412 ]
  %polly.indvar430 = phi i64 [ %polly.indvar_next431, %polly.loop_exit470 ], [ %190, %polly.loop_exit412 ]
  %214 = mul nsw i64 %indvar1336, -128
  %215 = add i64 %187, %214
  %smax1338 = call i64 @llvm.smax.i64(i64 %215, i64 0)
  %216 = shl nuw nsw i64 %indvar1336, 7
  %217 = add i64 %189, %216
  %218 = add i64 %smax1338, %217
  %smax1103 = call i64 @llvm.smax.i64(i64 %indvars.iv1101, i64 0)
  %219 = add i64 %smax1103, %indvars.iv1106
  %220 = shl nsw i64 %polly.indvar430, 3
  %.not.not926 = icmp ugt i64 %220, %polly.indvar407
  %221 = shl nsw i64 %polly.indvar430, 7
  %222 = add nsw i64 %221, %194
  %223 = icmp sgt i64 %222, 0
  %224 = select i1 %223, i64 %222, i64 0
  %225 = add nsw i64 %222, 127
  %226 = icmp slt i64 %196, %225
  %227 = select i1 %226, i64 %196, i64 %225
  %polly.loop_guard457.not = icmp sgt i64 %224, %227
  br i1 %.not.not926, label %polly.loop_header433.us, label %polly.loop_header427.split

polly.loop_header433.us:                          ; preds = %polly.loop_header427, %polly.loop_exit456.us
  %polly.indvar436.us = phi i64 [ %polly.indvar_next437.us, %polly.loop_exit456.us ], [ 0, %polly.loop_header427 ]
  %polly.access.mul.Packed_MemRef_call1303.us = mul nuw nsw i64 %polly.indvar436.us, 1200
  %polly.access.add.call1451.us = add nuw nsw i64 %polly.access.mul.call1450.us, %polly.indvar436.us
  %polly.access.call1452.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1451.us
  %polly.access.call1452.load.us = load double, double* %polly.access.call1452.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.Packed_MemRef_call1303.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.mul.Packed_MemRef_call1303.us
  store double %polly.access.call1452.load.us, double* %polly.access.Packed_MemRef_call1303.us, align 8
  %polly.access.add.call1451.us.1 = add nuw nsw i64 %polly.access.mul.call1450.us.1, %polly.indvar436.us
  %polly.access.call1452.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1451.us.1
  %polly.access.call1452.load.us.1 = load double, double* %polly.access.call1452.us.1, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1303.us, 1
  %polly.access.Packed_MemRef_call1303.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.1
  store double %polly.access.call1452.load.us.1, double* %polly.access.Packed_MemRef_call1303.us.1, align 8
  %polly.access.add.call1451.us.2 = add nuw nsw i64 %polly.access.mul.call1450.us.2, %polly.indvar436.us
  %polly.access.call1452.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1451.us.2
  %polly.access.call1452.load.us.2 = load double, double* %polly.access.call1452.us.2, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1303.us, 2
  %polly.access.Packed_MemRef_call1303.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.2
  store double %polly.access.call1452.load.us.2, double* %polly.access.Packed_MemRef_call1303.us.2, align 8
  %polly.access.add.call1451.us.3 = add nuw nsw i64 %polly.access.mul.call1450.us.3, %polly.indvar436.us
  %polly.access.call1452.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1451.us.3
  %polly.access.call1452.load.us.3 = load double, double* %polly.access.call1452.us.3, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1303.us, 3
  %polly.access.Packed_MemRef_call1303.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.3
  store double %polly.access.call1452.load.us.3, double* %polly.access.Packed_MemRef_call1303.us.3, align 8
  %polly.access.add.call1451.us.4 = add nuw nsw i64 %polly.access.mul.call1450.us.4, %polly.indvar436.us
  %polly.access.call1452.us.4 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1451.us.4
  %polly.access.call1452.load.us.4 = load double, double* %polly.access.call1452.us.4, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1303.us, 4
  %polly.access.Packed_MemRef_call1303.us.4 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.4
  store double %polly.access.call1452.load.us.4, double* %polly.access.Packed_MemRef_call1303.us.4, align 8
  %polly.access.add.call1451.us.5 = add nuw nsw i64 %polly.access.mul.call1450.us.5, %polly.indvar436.us
  %polly.access.call1452.us.5 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1451.us.5
  %polly.access.call1452.load.us.5 = load double, double* %polly.access.call1452.us.5, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1303.us, 5
  %polly.access.Packed_MemRef_call1303.us.5 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.5
  store double %polly.access.call1452.load.us.5, double* %polly.access.Packed_MemRef_call1303.us.5, align 8
  %polly.access.add.call1451.us.6 = add nuw nsw i64 %polly.access.mul.call1450.us.6, %polly.indvar436.us
  %polly.access.call1452.us.6 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1451.us.6
  %polly.access.call1452.load.us.6 = load double, double* %polly.access.call1452.us.6, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1303.us, 6
  %polly.access.Packed_MemRef_call1303.us.6 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.6
  store double %polly.access.call1452.load.us.6, double* %polly.access.Packed_MemRef_call1303.us.6, align 8
  %polly.access.add.call1451.us.7 = add nuw nsw i64 %polly.access.mul.call1450.us.7, %polly.indvar436.us
  %polly.access.call1452.us.7 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1451.us.7
  %polly.access.call1452.load.us.7 = load double, double* %polly.access.call1452.us.7, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1303.us, 7
  %polly.access.Packed_MemRef_call1303.us.7 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.7
  store double %polly.access.call1452.load.us.7, double* %polly.access.Packed_MemRef_call1303.us.7, align 8
  %polly.access.add.call1451.us.8 = add nuw nsw i64 %polly.access.mul.call1450.us.8, %polly.indvar436.us
  %polly.access.call1452.us.8 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1451.us.8
  %polly.access.call1452.load.us.8 = load double, double* %polly.access.call1452.us.8, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303.us.8 = or i64 %polly.access.mul.Packed_MemRef_call1303.us, 8
  %polly.access.Packed_MemRef_call1303.us.8 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.8
  store double %polly.access.call1452.load.us.8, double* %polly.access.Packed_MemRef_call1303.us.8, align 8
  %polly.access.add.call1451.us.9 = add nuw nsw i64 %polly.access.mul.call1450.us.9, %polly.indvar436.us
  %polly.access.call1452.us.9 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1451.us.9
  %polly.access.call1452.load.us.9 = load double, double* %polly.access.call1452.us.9, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303.us.9 = or i64 %polly.access.mul.Packed_MemRef_call1303.us, 9
  %polly.access.Packed_MemRef_call1303.us.9 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.9
  store double %polly.access.call1452.load.us.9, double* %polly.access.Packed_MemRef_call1303.us.9, align 8
  %polly.access.add.call1451.us.10 = add nuw nsw i64 %polly.access.mul.call1450.us.10, %polly.indvar436.us
  %polly.access.call1452.us.10 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1451.us.10
  %polly.access.call1452.load.us.10 = load double, double* %polly.access.call1452.us.10, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303.us.10 = or i64 %polly.access.mul.Packed_MemRef_call1303.us, 10
  %polly.access.Packed_MemRef_call1303.us.10 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.10
  store double %polly.access.call1452.load.us.10, double* %polly.access.Packed_MemRef_call1303.us.10, align 8
  %polly.access.add.call1451.us.11 = add nuw nsw i64 %polly.access.mul.call1450.us.11, %polly.indvar436.us
  %polly.access.call1452.us.11 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1451.us.11
  %polly.access.call1452.load.us.11 = load double, double* %polly.access.call1452.us.11, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303.us.11 = or i64 %polly.access.mul.Packed_MemRef_call1303.us, 11
  %polly.access.Packed_MemRef_call1303.us.11 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.11
  store double %polly.access.call1452.load.us.11, double* %polly.access.Packed_MemRef_call1303.us.11, align 8
  %polly.access.add.call1451.us.12 = add nuw nsw i64 %polly.access.mul.call1450.us.12, %polly.indvar436.us
  %polly.access.call1452.us.12 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1451.us.12
  %polly.access.call1452.load.us.12 = load double, double* %polly.access.call1452.us.12, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303.us.12 = or i64 %polly.access.mul.Packed_MemRef_call1303.us, 12
  %polly.access.Packed_MemRef_call1303.us.12 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.12
  store double %polly.access.call1452.load.us.12, double* %polly.access.Packed_MemRef_call1303.us.12, align 8
  %polly.access.add.call1451.us.13 = add nuw nsw i64 %polly.access.mul.call1450.us.13, %polly.indvar436.us
  %polly.access.call1452.us.13 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1451.us.13
  %polly.access.call1452.load.us.13 = load double, double* %polly.access.call1452.us.13, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303.us.13 = or i64 %polly.access.mul.Packed_MemRef_call1303.us, 13
  %polly.access.Packed_MemRef_call1303.us.13 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.13
  store double %polly.access.call1452.load.us.13, double* %polly.access.Packed_MemRef_call1303.us.13, align 8
  %polly.access.add.call1451.us.14 = add nuw nsw i64 %polly.access.mul.call1450.us.14, %polly.indvar436.us
  %polly.access.call1452.us.14 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1451.us.14
  %polly.access.call1452.load.us.14 = load double, double* %polly.access.call1452.us.14, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303.us.14 = or i64 %polly.access.mul.Packed_MemRef_call1303.us, 14
  %polly.access.Packed_MemRef_call1303.us.14 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.14
  store double %polly.access.call1452.load.us.14, double* %polly.access.Packed_MemRef_call1303.us.14, align 8
  %polly.access.add.call1451.us.15 = add nuw nsw i64 %polly.access.mul.call1450.us.15, %polly.indvar436.us
  %polly.access.call1452.us.15 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1451.us.15
  %polly.access.call1452.load.us.15 = load double, double* %polly.access.call1452.us.15, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303.us.15 = or i64 %polly.access.mul.Packed_MemRef_call1303.us, 15
  %polly.access.Packed_MemRef_call1303.us.15 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.15
  store double %polly.access.call1452.load.us.15, double* %polly.access.Packed_MemRef_call1303.us.15, align 8
  br i1 %polly.loop_guard457.not, label %polly.loop_exit456.us, label %polly.loop_header454.us

polly.loop_header454.us:                          ; preds = %polly.loop_header433.us, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ %224, %polly.loop_header433.us ]
  %228 = add nuw nsw i64 %polly.indvar458.us, %195
  %polly.access.mul.call1462.us = mul nsw i64 %228, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %polly.access.mul.call1462.us, %polly.indvar436.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303466.us = add nuw nsw i64 %polly.indvar458.us, %polly.access.mul.Packed_MemRef_call1303.us
  %polly.access.Packed_MemRef_call1303467.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303466.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1303467.us, align 8
  %polly.indvar_next459.us = add nuw nsw i64 %polly.indvar458.us, 1
  %polly.loop_cond460.not.not.us = icmp slt i64 %polly.indvar458.us, %227
  br i1 %polly.loop_cond460.not.not.us, label %polly.loop_header454.us, label %polly.loop_exit456.us

polly.loop_exit456.us:                            ; preds = %polly.loop_header454.us, %polly.loop_header433.us
  %polly.indvar_next437.us = add nuw nsw i64 %polly.indvar436.us, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar_next437.us, 1000
  br i1 %exitcond1098.not, label %polly.loop_header468.preheader, label %polly.loop_header433.us

polly.loop_header427.split:                       ; preds = %polly.loop_header427
  br i1 %polly.loop_guard457.not, label %polly.loop_header468.preheader, label %polly.loop_header433

polly.loop_exit470:                               ; preds = %polly.loop_exit477, %polly.loop_header468.preheader
  %polly.indvar_next431 = add nuw nsw i64 %polly.indvar430, 1
  %indvars.iv.next1102 = add i64 %indvars.iv1101, -128
  %indvars.iv.next1107 = add i64 %indvars.iv1106, 128
  %exitcond1113.not = icmp eq i64 %polly.indvar_next431, 10
  %indvar.next1337 = add i64 %indvar1336, 1
  br i1 %exitcond1113.not, label %polly.loop_exit429, label %polly.loop_header427

polly.loop_header433:                             ; preds = %polly.loop_header427.split, %polly.loop_exit456
  %polly.indvar436 = phi i64 [ %polly.indvar_next437, %polly.loop_exit456 ], [ 0, %polly.loop_header427.split ]
  %polly.access.mul.Packed_MemRef_call1303465 = mul nuw nsw i64 %polly.indvar436, 1200
  br label %polly.loop_header454

polly.loop_exit456:                               ; preds = %polly.loop_header454
  %polly.indvar_next437 = add nuw nsw i64 %polly.indvar436, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar_next437, 1000
  br i1 %exitcond1096.not, label %polly.loop_header468.preheader, label %polly.loop_header433

polly.loop_header468.preheader:                   ; preds = %polly.loop_exit456, %polly.loop_exit456.us, %polly.loop_header427.split
  %229 = sub nsw i64 %195, %221
  %230 = icmp sgt i64 %229, 0
  %231 = select i1 %230, i64 %229, i64 0
  %232 = mul nsw i64 %polly.indvar430, -128
  %233 = icmp slt i64 %232, -1072
  %234 = select i1 %233, i64 %232, i64 -1072
  %235 = add nsw i64 %234, 1199
  %polly.loop_guard478.not = icmp sgt i64 %231, %235
  br i1 %polly.loop_guard478.not, label %polly.loop_exit470, label %polly.loop_header468

polly.loop_header454:                             ; preds = %polly.loop_header433, %polly.loop_header454
  %polly.indvar458 = phi i64 [ %polly.indvar_next459, %polly.loop_header454 ], [ %224, %polly.loop_header433 ]
  %236 = add nuw nsw i64 %polly.indvar458, %195
  %polly.access.mul.call1462 = mul nsw i64 %236, 1000
  %polly.access.add.call1463 = add nuw nsw i64 %polly.access.mul.call1462, %polly.indvar436
  %polly.access.call1464 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1463
  %polly.access.call1464.load = load double, double* %polly.access.call1464, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303466 = add nuw nsw i64 %polly.indvar458, %polly.access.mul.Packed_MemRef_call1303465
  %polly.access.Packed_MemRef_call1303467 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303466
  store double %polly.access.call1464.load, double* %polly.access.Packed_MemRef_call1303467, align 8
  %polly.indvar_next459 = add nuw nsw i64 %polly.indvar458, 1
  %polly.loop_cond460.not.not = icmp slt i64 %polly.indvar458, %227
  br i1 %polly.loop_cond460.not.not, label %polly.loop_header454, label %polly.loop_exit456

polly.loop_header468:                             ; preds = %polly.loop_header468.preheader, %polly.loop_exit477
  %polly.indvar471 = phi i64 [ %polly.indvar_next472, %polly.loop_exit477 ], [ 0, %polly.loop_header468.preheader ]
  %polly.access.mul.Packed_MemRef_call1303490 = mul nuw nsw i64 %polly.indvar471, 1200
  br label %polly.loop_header475

polly.loop_exit477:                               ; preds = %polly.loop_exit485
  %polly.indvar_next472 = add nuw nsw i64 %polly.indvar471, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar_next472, 1000
  br i1 %exitcond1112.not, label %polly.loop_exit470, label %polly.loop_header468

polly.loop_header475:                             ; preds = %polly.loop_header468, %polly.loop_exit485
  %indvar1339 = phi i64 [ 0, %polly.loop_header468 ], [ %indvar.next1340, %polly.loop_exit485 ]
  %indvars.iv1108 = phi i64 [ %219, %polly.loop_header468 ], [ %indvars.iv.next1109, %polly.loop_exit485 ]
  %polly.indvar479 = phi i64 [ %231, %polly.loop_header468 ], [ %polly.indvar_next480, %polly.loop_exit485 ]
  %237 = add i64 %218, %indvar1339
  %smin1341 = call i64 @llvm.smin.i64(i64 %237, i64 15)
  %238 = add nsw i64 %smin1341, 1
  %smin1110 = call i64 @llvm.smin.i64(i64 %indvars.iv1108, i64 15)
  %239 = add nsw i64 %polly.indvar479, %222
  %polly.loop_guard4861180 = icmp sgt i64 %239, -1
  br i1 %polly.loop_guard4861180, label %polly.loop_header483.preheader, label %polly.loop_exit485

polly.loop_header483.preheader:                   ; preds = %polly.loop_header475
  %240 = add nuw nsw i64 %polly.indvar479, %221
  %polly.access.add.Packed_MemRef_call2305495 = add nsw i64 %239, %polly.access.mul.Packed_MemRef_call1303490
  %polly.access.Packed_MemRef_call2305496 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495
  %_p_scalar_497 = load double, double* %polly.access.Packed_MemRef_call2305496, align 8
  %polly.access.Packed_MemRef_call1303504 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call2305495
  %_p_scalar_505 = load double, double* %polly.access.Packed_MemRef_call1303504, align 8
  %241 = mul i64 %240, 9600
  %min.iters.check1342 = icmp ult i64 %238, 4
  br i1 %min.iters.check1342, label %polly.loop_header483.preheader1411, label %vector.ph1343

vector.ph1343:                                    ; preds = %polly.loop_header483.preheader
  %n.vec1345 = and i64 %238, -4
  %broadcast.splatinsert1351 = insertelement <4 x double> poison, double %_p_scalar_497, i32 0
  %broadcast.splat1352 = shufflevector <4 x double> %broadcast.splatinsert1351, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1354 = insertelement <4 x double> poison, double %_p_scalar_505, i32 0
  %broadcast.splat1355 = shufflevector <4 x double> %broadcast.splatinsert1354, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1335

vector.body1335:                                  ; preds = %vector.body1335, %vector.ph1343
  %index1346 = phi i64 [ 0, %vector.ph1343 ], [ %index.next1347, %vector.body1335 ]
  %242 = add nuw nsw i64 %index1346, %195
  %243 = add nuw nsw i64 %index1346, %polly.access.mul.Packed_MemRef_call1303490
  %244 = getelementptr double, double* %Packed_MemRef_call1303, i64 %243
  %245 = bitcast double* %244 to <4 x double>*
  %wide.load1350 = load <4 x double>, <4 x double>* %245, align 8
  %246 = fmul fast <4 x double> %broadcast.splat1352, %wide.load1350
  %247 = getelementptr double, double* %Packed_MemRef_call2305, i64 %243
  %248 = bitcast double* %247 to <4 x double>*
  %wide.load1353 = load <4 x double>, <4 x double>* %248, align 8
  %249 = fmul fast <4 x double> %broadcast.splat1355, %wide.load1353
  %250 = shl i64 %242, 3
  %251 = add i64 %250, %241
  %252 = getelementptr i8, i8* %call, i64 %251
  %253 = bitcast i8* %252 to <4 x double>*
  %wide.load1356 = load <4 x double>, <4 x double>* %253, align 8, !alias.scope !86, !noalias !88
  %254 = fadd fast <4 x double> %249, %246
  %255 = fmul fast <4 x double> %254, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %256 = fadd fast <4 x double> %255, %wide.load1356
  %257 = bitcast i8* %252 to <4 x double>*
  store <4 x double> %256, <4 x double>* %257, align 8, !alias.scope !86, !noalias !88
  %index.next1347 = add i64 %index1346, 4
  %258 = icmp eq i64 %index.next1347, %n.vec1345
  br i1 %258, label %middle.block1333, label %vector.body1335, !llvm.loop !97

middle.block1333:                                 ; preds = %vector.body1335
  %cmp.n1349 = icmp eq i64 %238, %n.vec1345
  br i1 %cmp.n1349, label %polly.loop_exit485, label %polly.loop_header483.preheader1411

polly.loop_header483.preheader1411:               ; preds = %polly.loop_header483.preheader, %middle.block1333
  %polly.indvar487.ph = phi i64 [ 0, %polly.loop_header483.preheader ], [ %n.vec1345, %middle.block1333 ]
  br label %polly.loop_header483

polly.loop_exit485:                               ; preds = %polly.loop_header483, %middle.block1333, %polly.loop_header475
  %polly.indvar_next480 = add nuw nsw i64 %polly.indvar479, 1
  %polly.loop_cond481.not.not = icmp slt i64 %polly.indvar479, %235
  %indvars.iv.next1109 = add i64 %indvars.iv1108, 1
  %indvar.next1340 = add i64 %indvar1339, 1
  br i1 %polly.loop_cond481.not.not, label %polly.loop_header475, label %polly.loop_exit477

polly.loop_header483:                             ; preds = %polly.loop_header483.preheader1411, %polly.loop_header483
  %polly.indvar487 = phi i64 [ %polly.indvar_next488, %polly.loop_header483 ], [ %polly.indvar487.ph, %polly.loop_header483.preheader1411 ]
  %259 = add nuw nsw i64 %polly.indvar487, %195
  %polly.access.add.Packed_MemRef_call1303491 = add nuw nsw i64 %polly.indvar487, %polly.access.mul.Packed_MemRef_call1303490
  %polly.access.Packed_MemRef_call1303492 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303491
  %_p_scalar_493 = load double, double* %polly.access.Packed_MemRef_call1303492, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_497, %_p_scalar_493
  %polly.access.Packed_MemRef_call2305500 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call1303491
  %_p_scalar_501 = load double, double* %polly.access.Packed_MemRef_call2305500, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_505, %_p_scalar_501
  %260 = shl i64 %259, 3
  %261 = add i64 %260, %241
  %scevgep506 = getelementptr i8, i8* %call, i64 %261
  %scevgep506507 = bitcast i8* %scevgep506 to double*
  %_p_scalar_508 = load double, double* %scevgep506507, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_508
  store double %p_add42.i79, double* %scevgep506507, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next488 = add nuw nsw i64 %polly.indvar487, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar487, %smin1110
  br i1 %exitcond1111.not, label %polly.loop_exit485, label %polly.loop_header483, !llvm.loop !98

polly.start511:                                   ; preds = %init_array.exit
  %malloccall513 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall515 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header599

polly.exiting512:                                 ; preds = %polly.loop_exit640
  tail call void @free(i8* %malloccall513)
  tail call void @free(i8* %malloccall515)
  br label %kernel_syr2k.exit

polly.loop_header599:                             ; preds = %polly.loop_exit607, %polly.start511
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit607 ], [ 0, %polly.start511 ]
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit607 ], [ 1, %polly.start511 ]
  %262 = add i64 %indvar, 1
  %263 = mul nuw nsw i64 %polly.indvar602, 9600
  %scevgep611 = getelementptr i8, i8* %call, i64 %263
  %min.iters.check1274 = icmp ult i64 %262, 4
  br i1 %min.iters.check1274, label %polly.loop_header605.preheader, label %vector.ph1275

vector.ph1275:                                    ; preds = %polly.loop_header599
  %n.vec1277 = and i64 %262, -4
  br label %vector.body1273

vector.body1273:                                  ; preds = %vector.body1273, %vector.ph1275
  %index1278 = phi i64 [ 0, %vector.ph1275 ], [ %index.next1279, %vector.body1273 ]
  %264 = shl nuw nsw i64 %index1278, 3
  %265 = getelementptr i8, i8* %scevgep611, i64 %264
  %266 = bitcast i8* %265 to <4 x double>*
  %wide.load1282 = load <4 x double>, <4 x double>* %266, align 8, !alias.scope !99, !noalias !101
  %267 = fmul fast <4 x double> %wide.load1282, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %268 = bitcast i8* %265 to <4 x double>*
  store <4 x double> %267, <4 x double>* %268, align 8, !alias.scope !99, !noalias !101
  %index.next1279 = add i64 %index1278, 4
  %269 = icmp eq i64 %index.next1279, %n.vec1277
  br i1 %269, label %middle.block1271, label %vector.body1273, !llvm.loop !106

middle.block1271:                                 ; preds = %vector.body1273
  %cmp.n1281 = icmp eq i64 %262, %n.vec1277
  br i1 %cmp.n1281, label %polly.loop_exit607, label %polly.loop_header605.preheader

polly.loop_header605.preheader:                   ; preds = %polly.loop_header599, %middle.block1271
  %polly.indvar608.ph = phi i64 [ 0, %polly.loop_header599 ], [ %n.vec1277, %middle.block1271 ]
  br label %polly.loop_header605

polly.loop_exit607:                               ; preds = %polly.loop_header605, %middle.block1271
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1141.not = icmp eq i64 %polly.indvar_next603, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1141.not, label %polly.loop_header615.preheader, label %polly.loop_header599

polly.loop_header615.preheader:                   ; preds = %polly.loop_exit607
  %Packed_MemRef_call1514 = bitcast i8* %malloccall513 to double*
  %Packed_MemRef_call2516 = bitcast i8* %malloccall515 to double*
  br label %polly.loop_header615

polly.loop_header605:                             ; preds = %polly.loop_header605.preheader, %polly.loop_header605
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_header605 ], [ %polly.indvar608.ph, %polly.loop_header605.preheader ]
  %270 = shl nuw nsw i64 %polly.indvar608, 3
  %scevgep612 = getelementptr i8, i8* %scevgep611, i64 %270
  %scevgep612613 = bitcast i8* %scevgep612 to double*
  %_p_scalar_614 = load double, double* %scevgep612613, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_614, 1.200000e+00
  store double %p_mul.i, double* %scevgep612613, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1140.not = icmp eq i64 %polly.indvar_next609, %polly.indvar602
  br i1 %exitcond1140.not, label %polly.loop_exit607, label %polly.loop_header605, !llvm.loop !107

polly.loop_header615:                             ; preds = %polly.loop_header615.preheader, %polly.loop_exit640
  %indvars.iv1129 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %indvars.iv.next1130, %polly.loop_exit640 ]
  %indvars.iv1124 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %indvars.iv.next1125, %polly.loop_exit640 ]
  %indvars.iv1117 = phi i64 [ 1200, %polly.loop_header615.preheader ], [ %indvars.iv.next1118, %polly.loop_exit640 ]
  %polly.indvar618 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %299, %polly.loop_exit640 ]
  %271 = shl nuw nsw i64 %polly.indvar618, 4
  %272 = shl nuw nsw i64 %polly.indvar618, 4
  %273 = and i64 %272, 9223372036854775680
  %274 = sub nsw i64 %271, %273
  %275 = mul nsw i64 %polly.indvar618, -16
  %276 = add i64 %275, %273
  %277 = lshr i64 %polly.indvar618, 3
  %278 = shl nuw nsw i64 %277, 7
  %279 = sub nsw i64 %indvars.iv1124, %278
  %280 = add i64 %indvars.iv1129, %278
  %281 = mul nsw i64 %polly.indvar618, -16
  %282 = shl nsw i64 %polly.indvar618, 4
  br label %polly.loop_header621

polly.loop_exit623:                               ; preds = %polly.loop_exit629
  %283 = add nsw i64 %281, 1199
  %polly.access.mul.call1661.us = mul nsw i64 %polly.indvar618, 16000
  %284 = or i64 %282, 1
  %polly.access.mul.call1661.us.1 = mul nuw nsw i64 %284, 1000
  %285 = or i64 %282, 2
  %polly.access.mul.call1661.us.2 = mul nuw nsw i64 %285, 1000
  %286 = or i64 %282, 3
  %polly.access.mul.call1661.us.3 = mul nuw nsw i64 %286, 1000
  %287 = or i64 %282, 4
  %polly.access.mul.call1661.us.4 = mul nuw nsw i64 %287, 1000
  %288 = or i64 %282, 5
  %polly.access.mul.call1661.us.5 = mul nuw nsw i64 %288, 1000
  %289 = or i64 %282, 6
  %polly.access.mul.call1661.us.6 = mul nuw nsw i64 %289, 1000
  %290 = or i64 %282, 7
  %polly.access.mul.call1661.us.7 = mul nuw nsw i64 %290, 1000
  %291 = or i64 %282, 8
  %polly.access.mul.call1661.us.8 = mul nuw nsw i64 %291, 1000
  %292 = or i64 %282, 9
  %polly.access.mul.call1661.us.9 = mul nuw nsw i64 %292, 1000
  %293 = or i64 %282, 10
  %polly.access.mul.call1661.us.10 = mul nuw nsw i64 %293, 1000
  %294 = or i64 %282, 11
  %polly.access.mul.call1661.us.11 = mul nuw nsw i64 %294, 1000
  %295 = or i64 %282, 12
  %polly.access.mul.call1661.us.12 = mul nuw nsw i64 %295, 1000
  %296 = or i64 %282, 13
  %polly.access.mul.call1661.us.13 = mul nuw nsw i64 %296, 1000
  %297 = or i64 %282, 14
  %polly.access.mul.call1661.us.14 = mul nuw nsw i64 %297, 1000
  %298 = or i64 %282, 15
  %polly.access.mul.call1661.us.15 = mul nuw nsw i64 %298, 1000
  br label %polly.loop_header638

polly.loop_exit640:                               ; preds = %polly.loop_exit681
  %299 = add nuw nsw i64 %polly.indvar618, 1
  %indvars.iv.next1118 = add nsw i64 %indvars.iv1117, -16
  %indvars.iv.next1125 = add nuw nsw i64 %indvars.iv1124, 16
  %indvars.iv.next1130 = add nsw i64 %indvars.iv1129, -16
  %exitcond1139.not = icmp eq i64 %299, 75
  br i1 %exitcond1139.not, label %polly.exiting512, label %polly.loop_header615

polly.loop_header621:                             ; preds = %polly.loop_exit629, %polly.loop_header615
  %polly.indvar624 = phi i64 [ 0, %polly.loop_header615 ], [ %polly.indvar_next625, %polly.loop_exit629 ]
  %polly.access.mul.Packed_MemRef_call2516 = mul nuw nsw i64 %polly.indvar624, 1200
  br label %polly.loop_header627

polly.loop_exit629:                               ; preds = %polly.loop_header627
  %polly.indvar_next625 = add nuw nsw i64 %polly.indvar624, 1
  %exitcond1120.not = icmp eq i64 %polly.indvar_next625, 1000
  br i1 %exitcond1120.not, label %polly.loop_exit623, label %polly.loop_header621

polly.loop_header627:                             ; preds = %polly.loop_header627, %polly.loop_header621
  %polly.indvar630 = phi i64 [ 0, %polly.loop_header621 ], [ %polly.indvar_next631, %polly.loop_header627 ]
  %300 = add nuw nsw i64 %polly.indvar630, %282
  %polly.access.mul.call2634 = mul nuw nsw i64 %300, 1000
  %polly.access.add.call2635 = add nuw nsw i64 %polly.access.mul.call2634, %polly.indvar624
  %polly.access.call2636 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2635
  %polly.access.call2636.load = load double, double* %polly.access.call2636, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2516 = add nuw nsw i64 %polly.indvar630, %polly.access.mul.Packed_MemRef_call2516
  %polly.access.Packed_MemRef_call2516 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516
  store double %polly.access.call2636.load, double* %polly.access.Packed_MemRef_call2516, align 8
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %exitcond1119.not = icmp eq i64 %polly.indvar_next631, %indvars.iv1117
  br i1 %exitcond1119.not, label %polly.loop_exit629, label %polly.loop_header627

polly.loop_header638:                             ; preds = %polly.loop_exit681, %polly.loop_exit623
  %indvar1286 = phi i64 [ %indvar.next1287, %polly.loop_exit681 ], [ 0, %polly.loop_exit623 ]
  %indvars.iv1131 = phi i64 [ %indvars.iv.next1132, %polly.loop_exit681 ], [ %280, %polly.loop_exit623 ]
  %indvars.iv1126 = phi i64 [ %indvars.iv.next1127, %polly.loop_exit681 ], [ %279, %polly.loop_exit623 ]
  %polly.indvar641 = phi i64 [ %polly.indvar_next642, %polly.loop_exit681 ], [ %277, %polly.loop_exit623 ]
  %301 = mul nsw i64 %indvar1286, -128
  %302 = add i64 %274, %301
  %smax1288 = call i64 @llvm.smax.i64(i64 %302, i64 0)
  %303 = shl nuw nsw i64 %indvar1286, 7
  %304 = add i64 %276, %303
  %305 = add i64 %smax1288, %304
  %smax1128 = call i64 @llvm.smax.i64(i64 %indvars.iv1126, i64 0)
  %306 = add i64 %smax1128, %indvars.iv1131
  %307 = shl nsw i64 %polly.indvar641, 3
  %.not.not927 = icmp ugt i64 %307, %polly.indvar618
  %308 = shl nsw i64 %polly.indvar641, 7
  %309 = add nsw i64 %308, %281
  %310 = icmp sgt i64 %309, 0
  %311 = select i1 %310, i64 %309, i64 0
  %312 = add nsw i64 %309, 127
  %313 = icmp slt i64 %283, %312
  %314 = select i1 %313, i64 %283, i64 %312
  %polly.loop_guard668.not = icmp sgt i64 %311, %314
  br i1 %.not.not927, label %polly.loop_header644.us, label %polly.loop_header638.split

polly.loop_header644.us:                          ; preds = %polly.loop_header638, %polly.loop_exit667.us
  %polly.indvar647.us = phi i64 [ %polly.indvar_next648.us, %polly.loop_exit667.us ], [ 0, %polly.loop_header638 ]
  %polly.access.mul.Packed_MemRef_call1514.us = mul nuw nsw i64 %polly.indvar647.us, 1200
  %polly.access.add.call1662.us = add nuw nsw i64 %polly.access.mul.call1661.us, %polly.indvar647.us
  %polly.access.call1663.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1662.us
  %polly.access.call1663.load.us = load double, double* %polly.access.call1663.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.Packed_MemRef_call1514.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.mul.Packed_MemRef_call1514.us
  store double %polly.access.call1663.load.us, double* %polly.access.Packed_MemRef_call1514.us, align 8
  %polly.access.add.call1662.us.1 = add nuw nsw i64 %polly.access.mul.call1661.us.1, %polly.indvar647.us
  %polly.access.call1663.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1662.us.1
  %polly.access.call1663.load.us.1 = load double, double* %polly.access.call1663.us.1, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1514.us, 1
  %polly.access.Packed_MemRef_call1514.us.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.1
  store double %polly.access.call1663.load.us.1, double* %polly.access.Packed_MemRef_call1514.us.1, align 8
  %polly.access.add.call1662.us.2 = add nuw nsw i64 %polly.access.mul.call1661.us.2, %polly.indvar647.us
  %polly.access.call1663.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1662.us.2
  %polly.access.call1663.load.us.2 = load double, double* %polly.access.call1663.us.2, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1514.us, 2
  %polly.access.Packed_MemRef_call1514.us.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.2
  store double %polly.access.call1663.load.us.2, double* %polly.access.Packed_MemRef_call1514.us.2, align 8
  %polly.access.add.call1662.us.3 = add nuw nsw i64 %polly.access.mul.call1661.us.3, %polly.indvar647.us
  %polly.access.call1663.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1662.us.3
  %polly.access.call1663.load.us.3 = load double, double* %polly.access.call1663.us.3, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1514.us, 3
  %polly.access.Packed_MemRef_call1514.us.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.3
  store double %polly.access.call1663.load.us.3, double* %polly.access.Packed_MemRef_call1514.us.3, align 8
  %polly.access.add.call1662.us.4 = add nuw nsw i64 %polly.access.mul.call1661.us.4, %polly.indvar647.us
  %polly.access.call1663.us.4 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1662.us.4
  %polly.access.call1663.load.us.4 = load double, double* %polly.access.call1663.us.4, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1514.us, 4
  %polly.access.Packed_MemRef_call1514.us.4 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.4
  store double %polly.access.call1663.load.us.4, double* %polly.access.Packed_MemRef_call1514.us.4, align 8
  %polly.access.add.call1662.us.5 = add nuw nsw i64 %polly.access.mul.call1661.us.5, %polly.indvar647.us
  %polly.access.call1663.us.5 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1662.us.5
  %polly.access.call1663.load.us.5 = load double, double* %polly.access.call1663.us.5, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1514.us, 5
  %polly.access.Packed_MemRef_call1514.us.5 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.5
  store double %polly.access.call1663.load.us.5, double* %polly.access.Packed_MemRef_call1514.us.5, align 8
  %polly.access.add.call1662.us.6 = add nuw nsw i64 %polly.access.mul.call1661.us.6, %polly.indvar647.us
  %polly.access.call1663.us.6 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1662.us.6
  %polly.access.call1663.load.us.6 = load double, double* %polly.access.call1663.us.6, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1514.us, 6
  %polly.access.Packed_MemRef_call1514.us.6 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.6
  store double %polly.access.call1663.load.us.6, double* %polly.access.Packed_MemRef_call1514.us.6, align 8
  %polly.access.add.call1662.us.7 = add nuw nsw i64 %polly.access.mul.call1661.us.7, %polly.indvar647.us
  %polly.access.call1663.us.7 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1662.us.7
  %polly.access.call1663.load.us.7 = load double, double* %polly.access.call1663.us.7, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1514.us, 7
  %polly.access.Packed_MemRef_call1514.us.7 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.7
  store double %polly.access.call1663.load.us.7, double* %polly.access.Packed_MemRef_call1514.us.7, align 8
  %polly.access.add.call1662.us.8 = add nuw nsw i64 %polly.access.mul.call1661.us.8, %polly.indvar647.us
  %polly.access.call1663.us.8 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1662.us.8
  %polly.access.call1663.load.us.8 = load double, double* %polly.access.call1663.us.8, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514.us.8 = or i64 %polly.access.mul.Packed_MemRef_call1514.us, 8
  %polly.access.Packed_MemRef_call1514.us.8 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.8
  store double %polly.access.call1663.load.us.8, double* %polly.access.Packed_MemRef_call1514.us.8, align 8
  %polly.access.add.call1662.us.9 = add nuw nsw i64 %polly.access.mul.call1661.us.9, %polly.indvar647.us
  %polly.access.call1663.us.9 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1662.us.9
  %polly.access.call1663.load.us.9 = load double, double* %polly.access.call1663.us.9, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514.us.9 = or i64 %polly.access.mul.Packed_MemRef_call1514.us, 9
  %polly.access.Packed_MemRef_call1514.us.9 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.9
  store double %polly.access.call1663.load.us.9, double* %polly.access.Packed_MemRef_call1514.us.9, align 8
  %polly.access.add.call1662.us.10 = add nuw nsw i64 %polly.access.mul.call1661.us.10, %polly.indvar647.us
  %polly.access.call1663.us.10 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1662.us.10
  %polly.access.call1663.load.us.10 = load double, double* %polly.access.call1663.us.10, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514.us.10 = or i64 %polly.access.mul.Packed_MemRef_call1514.us, 10
  %polly.access.Packed_MemRef_call1514.us.10 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.10
  store double %polly.access.call1663.load.us.10, double* %polly.access.Packed_MemRef_call1514.us.10, align 8
  %polly.access.add.call1662.us.11 = add nuw nsw i64 %polly.access.mul.call1661.us.11, %polly.indvar647.us
  %polly.access.call1663.us.11 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1662.us.11
  %polly.access.call1663.load.us.11 = load double, double* %polly.access.call1663.us.11, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514.us.11 = or i64 %polly.access.mul.Packed_MemRef_call1514.us, 11
  %polly.access.Packed_MemRef_call1514.us.11 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.11
  store double %polly.access.call1663.load.us.11, double* %polly.access.Packed_MemRef_call1514.us.11, align 8
  %polly.access.add.call1662.us.12 = add nuw nsw i64 %polly.access.mul.call1661.us.12, %polly.indvar647.us
  %polly.access.call1663.us.12 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1662.us.12
  %polly.access.call1663.load.us.12 = load double, double* %polly.access.call1663.us.12, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514.us.12 = or i64 %polly.access.mul.Packed_MemRef_call1514.us, 12
  %polly.access.Packed_MemRef_call1514.us.12 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.12
  store double %polly.access.call1663.load.us.12, double* %polly.access.Packed_MemRef_call1514.us.12, align 8
  %polly.access.add.call1662.us.13 = add nuw nsw i64 %polly.access.mul.call1661.us.13, %polly.indvar647.us
  %polly.access.call1663.us.13 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1662.us.13
  %polly.access.call1663.load.us.13 = load double, double* %polly.access.call1663.us.13, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514.us.13 = or i64 %polly.access.mul.Packed_MemRef_call1514.us, 13
  %polly.access.Packed_MemRef_call1514.us.13 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.13
  store double %polly.access.call1663.load.us.13, double* %polly.access.Packed_MemRef_call1514.us.13, align 8
  %polly.access.add.call1662.us.14 = add nuw nsw i64 %polly.access.mul.call1661.us.14, %polly.indvar647.us
  %polly.access.call1663.us.14 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1662.us.14
  %polly.access.call1663.load.us.14 = load double, double* %polly.access.call1663.us.14, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514.us.14 = or i64 %polly.access.mul.Packed_MemRef_call1514.us, 14
  %polly.access.Packed_MemRef_call1514.us.14 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.14
  store double %polly.access.call1663.load.us.14, double* %polly.access.Packed_MemRef_call1514.us.14, align 8
  %polly.access.add.call1662.us.15 = add nuw nsw i64 %polly.access.mul.call1661.us.15, %polly.indvar647.us
  %polly.access.call1663.us.15 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1662.us.15
  %polly.access.call1663.load.us.15 = load double, double* %polly.access.call1663.us.15, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514.us.15 = or i64 %polly.access.mul.Packed_MemRef_call1514.us, 15
  %polly.access.Packed_MemRef_call1514.us.15 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.15
  store double %polly.access.call1663.load.us.15, double* %polly.access.Packed_MemRef_call1514.us.15, align 8
  br i1 %polly.loop_guard668.not, label %polly.loop_exit667.us, label %polly.loop_header665.us

polly.loop_header665.us:                          ; preds = %polly.loop_header644.us, %polly.loop_header665.us
  %polly.indvar669.us = phi i64 [ %polly.indvar_next670.us, %polly.loop_header665.us ], [ %311, %polly.loop_header644.us ]
  %315 = add nuw nsw i64 %polly.indvar669.us, %282
  %polly.access.mul.call1673.us = mul nsw i64 %315, 1000
  %polly.access.add.call1674.us = add nuw nsw i64 %polly.access.mul.call1673.us, %polly.indvar647.us
  %polly.access.call1675.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674.us
  %polly.access.call1675.load.us = load double, double* %polly.access.call1675.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514677.us = add nuw nsw i64 %polly.indvar669.us, %polly.access.mul.Packed_MemRef_call1514.us
  %polly.access.Packed_MemRef_call1514678.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514677.us
  store double %polly.access.call1675.load.us, double* %polly.access.Packed_MemRef_call1514678.us, align 8
  %polly.indvar_next670.us = add nuw nsw i64 %polly.indvar669.us, 1
  %polly.loop_cond671.not.not.us = icmp slt i64 %polly.indvar669.us, %314
  br i1 %polly.loop_cond671.not.not.us, label %polly.loop_header665.us, label %polly.loop_exit667.us

polly.loop_exit667.us:                            ; preds = %polly.loop_header665.us, %polly.loop_header644.us
  %polly.indvar_next648.us = add nuw nsw i64 %polly.indvar647.us, 1
  %exitcond1123.not = icmp eq i64 %polly.indvar_next648.us, 1000
  br i1 %exitcond1123.not, label %polly.loop_header679.preheader, label %polly.loop_header644.us

polly.loop_header638.split:                       ; preds = %polly.loop_header638
  br i1 %polly.loop_guard668.not, label %polly.loop_header679.preheader, label %polly.loop_header644

polly.loop_exit681:                               ; preds = %polly.loop_exit688, %polly.loop_header679.preheader
  %polly.indvar_next642 = add nuw nsw i64 %polly.indvar641, 1
  %indvars.iv.next1127 = add i64 %indvars.iv1126, -128
  %indvars.iv.next1132 = add i64 %indvars.iv1131, 128
  %exitcond1138.not = icmp eq i64 %polly.indvar_next642, 10
  %indvar.next1287 = add i64 %indvar1286, 1
  br i1 %exitcond1138.not, label %polly.loop_exit640, label %polly.loop_header638

polly.loop_header644:                             ; preds = %polly.loop_header638.split, %polly.loop_exit667
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit667 ], [ 0, %polly.loop_header638.split ]
  %polly.access.mul.Packed_MemRef_call1514676 = mul nuw nsw i64 %polly.indvar647, 1200
  br label %polly.loop_header665

polly.loop_exit667:                               ; preds = %polly.loop_header665
  %polly.indvar_next648 = add nuw nsw i64 %polly.indvar647, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar_next648, 1000
  br i1 %exitcond1121.not, label %polly.loop_header679.preheader, label %polly.loop_header644

polly.loop_header679.preheader:                   ; preds = %polly.loop_exit667, %polly.loop_exit667.us, %polly.loop_header638.split
  %316 = sub nsw i64 %282, %308
  %317 = icmp sgt i64 %316, 0
  %318 = select i1 %317, i64 %316, i64 0
  %319 = mul nsw i64 %polly.indvar641, -128
  %320 = icmp slt i64 %319, -1072
  %321 = select i1 %320, i64 %319, i64 -1072
  %322 = add nsw i64 %321, 1199
  %polly.loop_guard689.not = icmp sgt i64 %318, %322
  br i1 %polly.loop_guard689.not, label %polly.loop_exit681, label %polly.loop_header679

polly.loop_header665:                             ; preds = %polly.loop_header644, %polly.loop_header665
  %polly.indvar669 = phi i64 [ %polly.indvar_next670, %polly.loop_header665 ], [ %311, %polly.loop_header644 ]
  %323 = add nuw nsw i64 %polly.indvar669, %282
  %polly.access.mul.call1673 = mul nsw i64 %323, 1000
  %polly.access.add.call1674 = add nuw nsw i64 %polly.access.mul.call1673, %polly.indvar647
  %polly.access.call1675 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674
  %polly.access.call1675.load = load double, double* %polly.access.call1675, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514677 = add nuw nsw i64 %polly.indvar669, %polly.access.mul.Packed_MemRef_call1514676
  %polly.access.Packed_MemRef_call1514678 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514677
  store double %polly.access.call1675.load, double* %polly.access.Packed_MemRef_call1514678, align 8
  %polly.indvar_next670 = add nuw nsw i64 %polly.indvar669, 1
  %polly.loop_cond671.not.not = icmp slt i64 %polly.indvar669, %314
  br i1 %polly.loop_cond671.not.not, label %polly.loop_header665, label %polly.loop_exit667

polly.loop_header679:                             ; preds = %polly.loop_header679.preheader, %polly.loop_exit688
  %polly.indvar682 = phi i64 [ %polly.indvar_next683, %polly.loop_exit688 ], [ 0, %polly.loop_header679.preheader ]
  %polly.access.mul.Packed_MemRef_call1514701 = mul nuw nsw i64 %polly.indvar682, 1200
  br label %polly.loop_header686

polly.loop_exit688:                               ; preds = %polly.loop_exit696
  %polly.indvar_next683 = add nuw nsw i64 %polly.indvar682, 1
  %exitcond1137.not = icmp eq i64 %polly.indvar_next683, 1000
  br i1 %exitcond1137.not, label %polly.loop_exit681, label %polly.loop_header679

polly.loop_header686:                             ; preds = %polly.loop_header679, %polly.loop_exit696
  %indvar1289 = phi i64 [ 0, %polly.loop_header679 ], [ %indvar.next1290, %polly.loop_exit696 ]
  %indvars.iv1133 = phi i64 [ %306, %polly.loop_header679 ], [ %indvars.iv.next1134, %polly.loop_exit696 ]
  %polly.indvar690 = phi i64 [ %318, %polly.loop_header679 ], [ %polly.indvar_next691, %polly.loop_exit696 ]
  %324 = add i64 %305, %indvar1289
  %smin1291 = call i64 @llvm.smin.i64(i64 %324, i64 15)
  %325 = add nsw i64 %smin1291, 1
  %smin1135 = call i64 @llvm.smin.i64(i64 %indvars.iv1133, i64 15)
  %326 = add nsw i64 %polly.indvar690, %309
  %polly.loop_guard6971181 = icmp sgt i64 %326, -1
  br i1 %polly.loop_guard6971181, label %polly.loop_header694.preheader, label %polly.loop_exit696

polly.loop_header694.preheader:                   ; preds = %polly.loop_header686
  %327 = add nuw nsw i64 %polly.indvar690, %308
  %polly.access.add.Packed_MemRef_call2516706 = add nsw i64 %326, %polly.access.mul.Packed_MemRef_call1514701
  %polly.access.Packed_MemRef_call2516707 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706
  %_p_scalar_708 = load double, double* %polly.access.Packed_MemRef_call2516707, align 8
  %polly.access.Packed_MemRef_call1514715 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call2516706
  %_p_scalar_716 = load double, double* %polly.access.Packed_MemRef_call1514715, align 8
  %328 = mul i64 %327, 9600
  %min.iters.check1292 = icmp ult i64 %325, 4
  br i1 %min.iters.check1292, label %polly.loop_header694.preheader1415, label %vector.ph1293

vector.ph1293:                                    ; preds = %polly.loop_header694.preheader
  %n.vec1295 = and i64 %325, -4
  %broadcast.splatinsert1301 = insertelement <4 x double> poison, double %_p_scalar_708, i32 0
  %broadcast.splat1302 = shufflevector <4 x double> %broadcast.splatinsert1301, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1304 = insertelement <4 x double> poison, double %_p_scalar_716, i32 0
  %broadcast.splat1305 = shufflevector <4 x double> %broadcast.splatinsert1304, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1285

vector.body1285:                                  ; preds = %vector.body1285, %vector.ph1293
  %index1296 = phi i64 [ 0, %vector.ph1293 ], [ %index.next1297, %vector.body1285 ]
  %329 = add nuw nsw i64 %index1296, %282
  %330 = add nuw nsw i64 %index1296, %polly.access.mul.Packed_MemRef_call1514701
  %331 = getelementptr double, double* %Packed_MemRef_call1514, i64 %330
  %332 = bitcast double* %331 to <4 x double>*
  %wide.load1300 = load <4 x double>, <4 x double>* %332, align 8
  %333 = fmul fast <4 x double> %broadcast.splat1302, %wide.load1300
  %334 = getelementptr double, double* %Packed_MemRef_call2516, i64 %330
  %335 = bitcast double* %334 to <4 x double>*
  %wide.load1303 = load <4 x double>, <4 x double>* %335, align 8
  %336 = fmul fast <4 x double> %broadcast.splat1305, %wide.load1303
  %337 = shl i64 %329, 3
  %338 = add i64 %337, %328
  %339 = getelementptr i8, i8* %call, i64 %338
  %340 = bitcast i8* %339 to <4 x double>*
  %wide.load1306 = load <4 x double>, <4 x double>* %340, align 8, !alias.scope !99, !noalias !101
  %341 = fadd fast <4 x double> %336, %333
  %342 = fmul fast <4 x double> %341, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %343 = fadd fast <4 x double> %342, %wide.load1306
  %344 = bitcast i8* %339 to <4 x double>*
  store <4 x double> %343, <4 x double>* %344, align 8, !alias.scope !99, !noalias !101
  %index.next1297 = add i64 %index1296, 4
  %345 = icmp eq i64 %index.next1297, %n.vec1295
  br i1 %345, label %middle.block1283, label %vector.body1285, !llvm.loop !110

middle.block1283:                                 ; preds = %vector.body1285
  %cmp.n1299 = icmp eq i64 %325, %n.vec1295
  br i1 %cmp.n1299, label %polly.loop_exit696, label %polly.loop_header694.preheader1415

polly.loop_header694.preheader1415:               ; preds = %polly.loop_header694.preheader, %middle.block1283
  %polly.indvar698.ph = phi i64 [ 0, %polly.loop_header694.preheader ], [ %n.vec1295, %middle.block1283 ]
  br label %polly.loop_header694

polly.loop_exit696:                               ; preds = %polly.loop_header694, %middle.block1283, %polly.loop_header686
  %polly.indvar_next691 = add nuw nsw i64 %polly.indvar690, 1
  %polly.loop_cond692.not.not = icmp slt i64 %polly.indvar690, %322
  %indvars.iv.next1134 = add i64 %indvars.iv1133, 1
  %indvar.next1290 = add i64 %indvar1289, 1
  br i1 %polly.loop_cond692.not.not, label %polly.loop_header686, label %polly.loop_exit688

polly.loop_header694:                             ; preds = %polly.loop_header694.preheader1415, %polly.loop_header694
  %polly.indvar698 = phi i64 [ %polly.indvar_next699, %polly.loop_header694 ], [ %polly.indvar698.ph, %polly.loop_header694.preheader1415 ]
  %346 = add nuw nsw i64 %polly.indvar698, %282
  %polly.access.add.Packed_MemRef_call1514702 = add nuw nsw i64 %polly.indvar698, %polly.access.mul.Packed_MemRef_call1514701
  %polly.access.Packed_MemRef_call1514703 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514702
  %_p_scalar_704 = load double, double* %polly.access.Packed_MemRef_call1514703, align 8
  %p_mul27.i = fmul fast double %_p_scalar_708, %_p_scalar_704
  %polly.access.Packed_MemRef_call2516711 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call1514702
  %_p_scalar_712 = load double, double* %polly.access.Packed_MemRef_call2516711, align 8
  %p_mul37.i = fmul fast double %_p_scalar_716, %_p_scalar_712
  %347 = shl i64 %346, 3
  %348 = add i64 %347, %328
  %scevgep717 = getelementptr i8, i8* %call, i64 %348
  %scevgep717718 = bitcast i8* %scevgep717 to double*
  %_p_scalar_719 = load double, double* %scevgep717718, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_719
  store double %p_add42.i, double* %scevgep717718, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next699 = add nuw nsw i64 %polly.indvar698, 1
  %exitcond1136.not = icmp eq i64 %polly.indvar698, %smin1135
  br i1 %exitcond1136.not, label %polly.loop_exit696, label %polly.loop_header694, !llvm.loop !111

polly.loop_header846:                             ; preds = %entry, %polly.loop_exit854
  %indvars.iv1166 = phi i64 [ %indvars.iv.next1167, %polly.loop_exit854 ], [ 0, %entry ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %entry ]
  %smin1168 = call i64 @llvm.smin.i64(i64 %indvars.iv1166, i64 -1168)
  %349 = shl nsw i64 %polly.indvar849, 5
  %350 = add nsw i64 %smin1168, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1167 = add nsw i64 %indvars.iv1166, -32
  %exitcond1171.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1171.not, label %polly.loop_header873, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %indvars.iv1162 = phi i64 [ %indvars.iv.next1163, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %351 = mul nsw i64 %polly.indvar855, -32
  %smin1212 = call i64 @llvm.smin.i64(i64 %351, i64 -1168)
  %352 = add nsw i64 %smin1212, 1200
  %smin1164 = call i64 @llvm.smin.i64(i64 %indvars.iv1162, i64 -1168)
  %353 = shl nsw i64 %polly.indvar855, 5
  %354 = add nsw i64 %smin1164, 1199
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1163 = add nsw i64 %indvars.iv1162, -32
  %exitcond1170.not = icmp eq i64 %polly.indvar_next856, 38
  br i1 %exitcond1170.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %polly.indvar861 = phi i64 [ 0, %polly.loop_header852 ], [ %polly.indvar_next862, %polly.loop_exit866 ]
  %355 = add nuw nsw i64 %polly.indvar861, %349
  %356 = trunc i64 %355 to i32
  %357 = mul nuw nsw i64 %355, 9600
  %min.iters.check = icmp eq i64 %352, 0
  br i1 %min.iters.check, label %polly.loop_header864, label %vector.ph1213

vector.ph1213:                                    ; preds = %polly.loop_header858
  %broadcast.splatinsert1220 = insertelement <4 x i64> poison, i64 %353, i32 0
  %broadcast.splat1221 = shufflevector <4 x i64> %broadcast.splatinsert1220, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1222 = insertelement <4 x i32> poison, i32 %356, i32 0
  %broadcast.splat1223 = shufflevector <4 x i32> %broadcast.splatinsert1222, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1211

vector.body1211:                                  ; preds = %vector.body1211, %vector.ph1213
  %index1214 = phi i64 [ 0, %vector.ph1213 ], [ %index.next1215, %vector.body1211 ]
  %vec.ind1218 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1213 ], [ %vec.ind.next1219, %vector.body1211 ]
  %358 = add nuw nsw <4 x i64> %vec.ind1218, %broadcast.splat1221
  %359 = trunc <4 x i64> %358 to <4 x i32>
  %360 = mul <4 x i32> %broadcast.splat1223, %359
  %361 = add <4 x i32> %360, <i32 3, i32 3, i32 3, i32 3>
  %362 = urem <4 x i32> %361, <i32 1200, i32 1200, i32 1200, i32 1200>
  %363 = sitofp <4 x i32> %362 to <4 x double>
  %364 = fmul fast <4 x double> %363, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %365 = extractelement <4 x i64> %358, i32 0
  %366 = shl i64 %365, 3
  %367 = add nuw nsw i64 %366, %357
  %368 = getelementptr i8, i8* %call, i64 %367
  %369 = bitcast i8* %368 to <4 x double>*
  store <4 x double> %364, <4 x double>* %369, align 8, !alias.scope !112, !noalias !114
  %index.next1215 = add i64 %index1214, 4
  %vec.ind.next1219 = add <4 x i64> %vec.ind1218, <i64 4, i64 4, i64 4, i64 4>
  %370 = icmp eq i64 %index.next1215, %352
  br i1 %370, label %polly.loop_exit866, label %vector.body1211, !llvm.loop !117

polly.loop_exit866:                               ; preds = %vector.body1211, %polly.loop_header864
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1169.not = icmp eq i64 %polly.indvar861, %350
  br i1 %exitcond1169.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_header858, %polly.loop_header864
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_header864 ], [ 0, %polly.loop_header858 ]
  %371 = add nuw nsw i64 %polly.indvar867, %353
  %372 = trunc i64 %371 to i32
  %373 = mul i32 %372, %356
  %374 = add i32 %373, 3
  %375 = urem i32 %374, 1200
  %p_conv31.i = sitofp i32 %375 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %376 = shl i64 %371, 3
  %377 = add nuw nsw i64 %376, %357
  %scevgep870 = getelementptr i8, i8* %call, i64 %377
  %scevgep870871 = bitcast i8* %scevgep870 to double*
  store double %p_div33.i, double* %scevgep870871, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1165.not = icmp eq i64 %polly.indvar867, %354
  br i1 %exitcond1165.not, label %polly.loop_exit866, label %polly.loop_header864, !llvm.loop !118

polly.loop_header873:                             ; preds = %polly.loop_exit854, %polly.loop_exit881
  %indvars.iv1156 = phi i64 [ %indvars.iv.next1157, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %polly.indvar876 = phi i64 [ %polly.indvar_next877, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %smin1158 = call i64 @llvm.smin.i64(i64 %indvars.iv1156, i64 -1168)
  %378 = shl nsw i64 %polly.indvar876, 5
  %379 = add nsw i64 %smin1158, 1199
  br label %polly.loop_header879

polly.loop_exit881:                               ; preds = %polly.loop_exit887
  %polly.indvar_next877 = add nuw nsw i64 %polly.indvar876, 1
  %indvars.iv.next1157 = add nsw i64 %indvars.iv1156, -32
  %exitcond1161.not = icmp eq i64 %polly.indvar_next877, 38
  br i1 %exitcond1161.not, label %polly.loop_header899, label %polly.loop_header873

polly.loop_header879:                             ; preds = %polly.loop_exit887, %polly.loop_header873
  %indvars.iv1152 = phi i64 [ %indvars.iv.next1153, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %380 = mul nsw i64 %polly.indvar882, -32
  %smin1227 = call i64 @llvm.smin.i64(i64 %380, i64 -968)
  %381 = add nsw i64 %smin1227, 1000
  %smin1154 = call i64 @llvm.smin.i64(i64 %indvars.iv1152, i64 -968)
  %382 = shl nsw i64 %polly.indvar882, 5
  %383 = add nsw i64 %smin1154, 999
  br label %polly.loop_header885

polly.loop_exit887:                               ; preds = %polly.loop_exit893
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %indvars.iv.next1153 = add nsw i64 %indvars.iv1152, -32
  %exitcond1160.not = icmp eq i64 %polly.indvar_next883, 32
  br i1 %exitcond1160.not, label %polly.loop_exit881, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_exit893, %polly.loop_header879
  %polly.indvar888 = phi i64 [ 0, %polly.loop_header879 ], [ %polly.indvar_next889, %polly.loop_exit893 ]
  %384 = add nuw nsw i64 %polly.indvar888, %378
  %385 = trunc i64 %384 to i32
  %386 = mul nuw nsw i64 %384, 8000
  %min.iters.check1228 = icmp eq i64 %381, 0
  br i1 %min.iters.check1228, label %polly.loop_header891, label %vector.ph1229

vector.ph1229:                                    ; preds = %polly.loop_header885
  %broadcast.splatinsert1238 = insertelement <4 x i64> poison, i64 %382, i32 0
  %broadcast.splat1239 = shufflevector <4 x i64> %broadcast.splatinsert1238, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1240 = insertelement <4 x i32> poison, i32 %385, i32 0
  %broadcast.splat1241 = shufflevector <4 x i32> %broadcast.splatinsert1240, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %vector.ph1229
  %index1232 = phi i64 [ 0, %vector.ph1229 ], [ %index.next1233, %vector.body1226 ]
  %vec.ind1236 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1229 ], [ %vec.ind.next1237, %vector.body1226 ]
  %387 = add nuw nsw <4 x i64> %vec.ind1236, %broadcast.splat1239
  %388 = trunc <4 x i64> %387 to <4 x i32>
  %389 = mul <4 x i32> %broadcast.splat1241, %388
  %390 = add <4 x i32> %389, <i32 2, i32 2, i32 2, i32 2>
  %391 = urem <4 x i32> %390, <i32 1000, i32 1000, i32 1000, i32 1000>
  %392 = sitofp <4 x i32> %391 to <4 x double>
  %393 = fmul fast <4 x double> %392, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %394 = extractelement <4 x i64> %387, i32 0
  %395 = shl i64 %394, 3
  %396 = add nuw nsw i64 %395, %386
  %397 = getelementptr i8, i8* %call2, i64 %396
  %398 = bitcast i8* %397 to <4 x double>*
  store <4 x double> %393, <4 x double>* %398, align 8, !alias.scope !116, !noalias !119
  %index.next1233 = add i64 %index1232, 4
  %vec.ind.next1237 = add <4 x i64> %vec.ind1236, <i64 4, i64 4, i64 4, i64 4>
  %399 = icmp eq i64 %index.next1233, %381
  br i1 %399, label %polly.loop_exit893, label %vector.body1226, !llvm.loop !120

polly.loop_exit893:                               ; preds = %vector.body1226, %polly.loop_header891
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %exitcond1159.not = icmp eq i64 %polly.indvar888, %379
  br i1 %exitcond1159.not, label %polly.loop_exit887, label %polly.loop_header885

polly.loop_header891:                             ; preds = %polly.loop_header885, %polly.loop_header891
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_header891 ], [ 0, %polly.loop_header885 ]
  %400 = add nuw nsw i64 %polly.indvar894, %382
  %401 = trunc i64 %400 to i32
  %402 = mul i32 %401, %385
  %403 = add i32 %402, 2
  %404 = urem i32 %403, 1000
  %p_conv10.i = sitofp i32 %404 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %405 = shl i64 %400, 3
  %406 = add nuw nsw i64 %405, %386
  %scevgep897 = getelementptr i8, i8* %call2, i64 %406
  %scevgep897898 = bitcast i8* %scevgep897 to double*
  store double %p_div12.i, double* %scevgep897898, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1155.not = icmp eq i64 %polly.indvar894, %383
  br i1 %exitcond1155.not, label %polly.loop_exit893, label %polly.loop_header891, !llvm.loop !121

polly.loop_header899:                             ; preds = %polly.loop_exit881, %polly.loop_exit907
  %indvars.iv1146 = phi i64 [ %indvars.iv.next1147, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %smin1148 = call i64 @llvm.smin.i64(i64 %indvars.iv1146, i64 -1168)
  %407 = shl nsw i64 %polly.indvar902, 5
  %408 = add nsw i64 %smin1148, 1199
  br label %polly.loop_header905

polly.loop_exit907:                               ; preds = %polly.loop_exit913
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %indvars.iv.next1147 = add nsw i64 %indvars.iv1146, -32
  %exitcond1151.not = icmp eq i64 %polly.indvar_next903, 38
  br i1 %exitcond1151.not, label %init_array.exit, label %polly.loop_header899

polly.loop_header905:                             ; preds = %polly.loop_exit913, %polly.loop_header899
  %indvars.iv1142 = phi i64 [ %indvars.iv.next1143, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %409 = mul nsw i64 %polly.indvar908, -32
  %smin1245 = call i64 @llvm.smin.i64(i64 %409, i64 -968)
  %410 = add nsw i64 %smin1245, 1000
  %smin1144 = call i64 @llvm.smin.i64(i64 %indvars.iv1142, i64 -968)
  %411 = shl nsw i64 %polly.indvar908, 5
  %412 = add nsw i64 %smin1144, 999
  br label %polly.loop_header911

polly.loop_exit913:                               ; preds = %polly.loop_exit919
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %indvars.iv.next1143 = add nsw i64 %indvars.iv1142, -32
  %exitcond1150.not = icmp eq i64 %polly.indvar_next909, 32
  br i1 %exitcond1150.not, label %polly.loop_exit907, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_exit919, %polly.loop_header905
  %polly.indvar914 = phi i64 [ 0, %polly.loop_header905 ], [ %polly.indvar_next915, %polly.loop_exit919 ]
  %413 = add nuw nsw i64 %polly.indvar914, %407
  %414 = trunc i64 %413 to i32
  %415 = mul nuw nsw i64 %413, 8000
  %min.iters.check1246 = icmp eq i64 %410, 0
  br i1 %min.iters.check1246, label %polly.loop_header917, label %vector.ph1247

vector.ph1247:                                    ; preds = %polly.loop_header911
  %broadcast.splatinsert1256 = insertelement <4 x i64> poison, i64 %411, i32 0
  %broadcast.splat1257 = shufflevector <4 x i64> %broadcast.splatinsert1256, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1258 = insertelement <4 x i32> poison, i32 %414, i32 0
  %broadcast.splat1259 = shufflevector <4 x i32> %broadcast.splatinsert1258, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1244

vector.body1244:                                  ; preds = %vector.body1244, %vector.ph1247
  %index1250 = phi i64 [ 0, %vector.ph1247 ], [ %index.next1251, %vector.body1244 ]
  %vec.ind1254 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1247 ], [ %vec.ind.next1255, %vector.body1244 ]
  %416 = add nuw nsw <4 x i64> %vec.ind1254, %broadcast.splat1257
  %417 = trunc <4 x i64> %416 to <4 x i32>
  %418 = mul <4 x i32> %broadcast.splat1259, %417
  %419 = add <4 x i32> %418, <i32 1, i32 1, i32 1, i32 1>
  %420 = urem <4 x i32> %419, <i32 1200, i32 1200, i32 1200, i32 1200>
  %421 = sitofp <4 x i32> %420 to <4 x double>
  %422 = fmul fast <4 x double> %421, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %423 = extractelement <4 x i64> %416, i32 0
  %424 = shl i64 %423, 3
  %425 = add nuw nsw i64 %424, %415
  %426 = getelementptr i8, i8* %call1, i64 %425
  %427 = bitcast i8* %426 to <4 x double>*
  store <4 x double> %422, <4 x double>* %427, align 8, !alias.scope !115, !noalias !122
  %index.next1251 = add i64 %index1250, 4
  %vec.ind.next1255 = add <4 x i64> %vec.ind1254, <i64 4, i64 4, i64 4, i64 4>
  %428 = icmp eq i64 %index.next1251, %410
  br i1 %428, label %polly.loop_exit919, label %vector.body1244, !llvm.loop !123

polly.loop_exit919:                               ; preds = %vector.body1244, %polly.loop_header917
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %exitcond1149.not = icmp eq i64 %polly.indvar914, %408
  br i1 %exitcond1149.not, label %polly.loop_exit913, label %polly.loop_header911

polly.loop_header917:                             ; preds = %polly.loop_header911, %polly.loop_header917
  %polly.indvar920 = phi i64 [ %polly.indvar_next921, %polly.loop_header917 ], [ 0, %polly.loop_header911 ]
  %429 = add nuw nsw i64 %polly.indvar920, %411
  %430 = trunc i64 %429 to i32
  %431 = mul i32 %430, %414
  %432 = add i32 %431, 1
  %433 = urem i32 %432, 1200
  %p_conv.i = sitofp i32 %433 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %434 = shl i64 %429, 3
  %435 = add nuw nsw i64 %434, %415
  %scevgep924 = getelementptr i8, i8* %call1, i64 %435
  %scevgep924925 = bitcast i8* %scevgep924 to double*
  store double %p_div.i, double* %scevgep924925, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %exitcond1145.not = icmp eq i64 %polly.indvar920, %412
  br i1 %exitcond1145.not, label %polly.loop_exit919, label %polly.loop_header917, !llvm.loop !124
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
!26 = !{!"llvm.loop.tile.size", i32 16}
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
!51 = !{!"llvm.loop.tile.size", i32 128}
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
