; ModuleID = 'syr2k_exhaustive/mmp_all_SM_601.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_601.c"
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
  %call870 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1722 = bitcast i8* %call1 to double*
  %polly.access.call1731 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2732 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1731, %call2
  %polly.access.call2751 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2751, %call1
  %2 = or i1 %0, %1
  %polly.access.call771 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call771, %call2
  %4 = icmp ule i8* %polly.access.call2751, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call771, %call1
  %8 = icmp ule i8* %polly.access.call1731, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header844, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1191 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1190 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1189 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1188 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1188, %scevgep1191
  %bound1 = icmp ult i8* %scevgep1190, %scevgep1189
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
  br i1 %exitcond18.not.i, label %vector.ph1195, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1195:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1202 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1203 = shufflevector <4 x i64> %broadcast.splatinsert1202, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1194

vector.body1194:                                  ; preds = %vector.body1194, %vector.ph1195
  %index1196 = phi i64 [ 0, %vector.ph1195 ], [ %index.next1197, %vector.body1194 ]
  %vec.ind1200 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1195 ], [ %vec.ind.next1201, %vector.body1194 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1200, %broadcast.splat1203
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv7.i, i64 %index1196
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1197 = add i64 %index1196, 4
  %vec.ind.next1201 = add <4 x i64> %vec.ind1200, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1197, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1194, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1194
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1195, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit905
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start511, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1258 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1258, label %for.body3.i46.preheader1413, label %vector.ph1259

vector.ph1259:                                    ; preds = %for.body3.i46.preheader
  %n.vec1261 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1257

vector.body1257:                                  ; preds = %vector.body1257, %vector.ph1259
  %index1262 = phi i64 [ 0, %vector.ph1259 ], [ %index.next1263, %vector.body1257 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i, i64 %index1262
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1263 = add i64 %index1262, 4
  %46 = icmp eq i64 %index.next1263, %n.vec1261
  br i1 %46, label %middle.block1255, label %vector.body1257, !llvm.loop !18

middle.block1255:                                 ; preds = %vector.body1257
  %cmp.n1265 = icmp eq i64 %indvars.iv21.i, %n.vec1261
  br i1 %cmp.n1265, label %for.inc6.i, label %for.body3.i46.preheader1413

for.body3.i46.preheader1413:                      ; preds = %for.body3.i46.preheader, %middle.block1255
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1261, %middle.block1255 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1413, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1413 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1255, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %41, label %polly.start302, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1305 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1305, label %for.body3.i60.preheader1409, label %vector.ph1306

vector.ph1306:                                    ; preds = %for.body3.i60.preheader
  %n.vec1308 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1304

vector.body1304:                                  ; preds = %vector.body1304, %vector.ph1306
  %index1309 = phi i64 [ 0, %vector.ph1306 ], [ %index.next1310, %vector.body1304 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i52, i64 %index1309
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1313 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1313, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1310 = add i64 %index1309, 4
  %57 = icmp eq i64 %index.next1310, %n.vec1308
  br i1 %57, label %middle.block1302, label %vector.body1304, !llvm.loop !64

middle.block1302:                                 ; preds = %vector.body1304
  %cmp.n1312 = icmp eq i64 %indvars.iv21.i52, %n.vec1308
  br i1 %cmp.n1312, label %for.inc6.i63, label %for.body3.i60.preheader1409

for.body3.i60.preheader1409:                      ; preds = %for.body3.i60.preheader, %middle.block1302
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1308, %middle.block1302 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1409, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1409 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1302, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting303
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1355 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1355, label %for.body3.i99.preheader1405, label %vector.ph1356

vector.ph1356:                                    ; preds = %for.body3.i99.preheader
  %n.vec1358 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1354

vector.body1354:                                  ; preds = %vector.body1354, %vector.ph1356
  %index1359 = phi i64 [ 0, %vector.ph1356 ], [ %index.next1360, %vector.body1354 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i91, i64 %index1359
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1363 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1363, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1360 = add i64 %index1359, 4
  %68 = icmp eq i64 %index.next1360, %n.vec1358
  br i1 %68, label %middle.block1352, label %vector.body1354, !llvm.loop !66

middle.block1352:                                 ; preds = %vector.body1354
  %cmp.n1362 = icmp eq i64 %indvars.iv21.i91, %n.vec1358
  br i1 %cmp.n1362, label %for.inc6.i102, label %for.body3.i99.preheader1405

for.body3.i99.preheader1405:                      ; preds = %for.body3.i99.preheader, %middle.block1352
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1358, %middle.block1352 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1405, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1405 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1352, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1367 = phi i64 [ %indvar.next1368, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1367, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1369 = icmp ult i64 %88, 4
  br i1 %min.iters.check1369, label %polly.loop_header192.preheader, label %vector.ph1370

vector.ph1370:                                    ; preds = %polly.loop_header
  %n.vec1372 = and i64 %88, -4
  br label %vector.body1366

vector.body1366:                                  ; preds = %vector.body1366, %vector.ph1370
  %index1373 = phi i64 [ 0, %vector.ph1370 ], [ %index.next1374, %vector.body1366 ]
  %90 = shl nuw nsw i64 %index1373, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1377 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1377, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1374 = add i64 %index1373, 4
  %95 = icmp eq i64 %index.next1374, %n.vec1372
  br i1 %95, label %middle.block1364, label %vector.body1366, !llvm.loop !79

middle.block1364:                                 ; preds = %vector.body1366
  %cmp.n1376 = icmp eq i64 %88, %n.vec1372
  br i1 %cmp.n1376, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1364
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1372, %middle.block1364 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1364
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1368 = add i64 %indvar1367, 1
  br i1 %exitcond1084.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1083.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1083.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit224
  %indvars.iv1074 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1075, %polly.loop_exit224 ]
  %indvars.iv1070 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1071, %polly.loop_exit224 ]
  %indvars.iv1068 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1069, %polly.loop_exit224 ]
  %indvars.iv = phi i64 [ 1200, %polly.loop_header200.preheader ], [ %indvars.iv.next, %polly.loop_exit224 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit224 ]
  %97 = mul nuw nsw i64 %polly.indvar203, 80
  %98 = shl nuw nsw i64 %polly.indvar203, 1
  %99 = lshr i64 %polly.indvar203, 1
  %100 = add nuw i64 %98, %99
  %101 = shl nuw nsw i64 %100, 5
  %102 = sub i64 %97, %101
  %103 = mul nsw i64 %polly.indvar203, -80
  %104 = add i64 %103, %101
  %105 = lshr i64 %polly.indvar203, 1
  %106 = add nuw i64 %indvars.iv1070, %105
  %107 = shl nuw nsw i64 %106, 5
  %108 = sub i64 %indvars.iv1068, %107
  %109 = add i64 %indvars.iv1074, %107
  %110 = mul nsw i64 %polly.indvar203, -80
  %111 = mul nuw nsw i64 %polly.indvar203, 80
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit214
  %112 = add nsw i64 %110, 1199
  %113 = shl nuw nsw i64 %polly.indvar203, 1
  %114 = add nuw nsw i64 %113, %105
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit261
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -80
  %indvars.iv.next1069 = add nuw nsw i64 %indvars.iv1068, 80
  %indvars.iv.next1071 = add nuw nsw i64 %indvars.iv1070, 2
  %indvars.iv.next1075 = add nsw i64 %indvars.iv1074, -80
  %exitcond1082.not = icmp eq i64 %polly.indvar_next204, 15
  br i1 %exitcond1082.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit214, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_exit214 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar209, 1200
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_header212
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar_next210, 1000
  br i1 %exitcond1064.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_header212, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_header212 ]
  %115 = add nuw nsw i64 %polly.indvar215, %111
  %polly.access.mul.call2219 = mul nuw nsw i64 %115, 1000
  %polly.access.add.call2220 = add nuw nsw i64 %polly.access.mul.call2219, %polly.indvar209
  %polly.access.call2221 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2220
  %polly.access.call2221.load = load double, double* %polly.access.call2221, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar215, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2221.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next216, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header222:                             ; preds = %polly.loop_exit261, %polly.loop_exit208
  %indvar1381 = phi i64 [ %indvar.next1382, %polly.loop_exit261 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv1076 = phi i64 [ %indvars.iv.next1077, %polly.loop_exit261 ], [ %109, %polly.loop_exit208 ]
  %indvars.iv1072 = phi i64 [ %indvars.iv.next1073, %polly.loop_exit261 ], [ %108, %polly.loop_exit208 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit261 ], [ %114, %polly.loop_exit208 ]
  %116 = mul nsw i64 %indvar1381, -32
  %117 = add i64 %102, %116
  %smax1383 = call i64 @llvm.smax.i64(i64 %117, i64 0)
  %118 = shl nuw nsw i64 %indvar1381, 5
  %119 = add i64 %104, %118
  %120 = add i64 %smax1383, %119
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1072, i64 0)
  %121 = add i64 %smax, %indvars.iv1076
  %122 = shl nsw i64 %polly.indvar225, 5
  %123 = add nsw i64 %122, %110
  %124 = add nsw i64 %123, -1
  %.inv = icmp sgt i64 %123, 79
  %125 = select i1 %.inv, i64 79, i64 %124
  %polly.loop_guard = icmp sgt i64 %125, -1
  %126 = icmp sgt i64 %123, 0
  %127 = select i1 %126, i64 %123, i64 0
  %128 = add nsw i64 %123, 31
  %129 = icmp slt i64 %112, %128
  %130 = select i1 %129, i64 %112, i64 %128
  %polly.loop_guard248.not = icmp sgt i64 %127, %130
  br i1 %polly.loop_guard, label %polly.loop_header228.us, label %polly.loop_header222.split

polly.loop_header228.us:                          ; preds = %polly.loop_header222, %polly.loop_exit247.us
  %polly.indvar231.us = phi i64 [ %polly.indvar_next232.us, %polly.loop_exit247.us ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar231.us, 1200
  br label %polly.loop_header234.us

polly.loop_header234.us:                          ; preds = %polly.loop_header228.us, %polly.loop_header234.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_header234.us ], [ 0, %polly.loop_header228.us ]
  %131 = add nuw nsw i64 %polly.indvar237.us, %111
  %polly.access.mul.call1241.us = mul nuw nsw i64 %131, 1000
  %polly.access.add.call1242.us = add nuw nsw i64 %polly.access.mul.call1241.us, %polly.indvar231.us
  %polly.access.call1243.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1242.us
  %polly.access.call1243.load.us = load double, double* %polly.access.call1243.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1243.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next238.us = add nuw i64 %polly.indvar237.us, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar237.us, %125
  br i1 %exitcond1066.not, label %polly.loop_exit236.loopexit.us, label %polly.loop_header234.us

polly.loop_header245.us:                          ; preds = %polly.loop_exit236.loopexit.us, %polly.loop_header245.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_header245.us ], [ %127, %polly.loop_exit236.loopexit.us ]
  %132 = add nuw nsw i64 %polly.indvar249.us, %111
  %polly.access.mul.call1253.us = mul nsw i64 %132, 1000
  %polly.access.add.call1254.us = add nuw nsw i64 %polly.access.mul.call1253.us, %polly.indvar231.us
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257.us = add nuw nsw i64 %polly.indvar249.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1258.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1258.us, align 8
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %polly.loop_cond251.not.not.us = icmp slt i64 %polly.indvar249.us, %130
  br i1 %polly.loop_cond251.not.not.us, label %polly.loop_header245.us, label %polly.loop_exit247.us

polly.loop_exit247.us:                            ; preds = %polly.loop_header245.us, %polly.loop_exit236.loopexit.us
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar_next232.us, 1000
  br i1 %exitcond1067.not, label %polly.loop_header259.preheader, label %polly.loop_header228.us

polly.loop_exit236.loopexit.us:                   ; preds = %polly.loop_header234.us
  br i1 %polly.loop_guard248.not, label %polly.loop_exit247.us, label %polly.loop_header245.us

polly.loop_header222.split:                       ; preds = %polly.loop_header222
  br i1 %polly.loop_guard248.not, label %polly.loop_header259.preheader, label %polly.loop_header228

polly.loop_exit261:                               ; preds = %polly.loop_exit268, %polly.loop_header259.preheader
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %polly.loop_cond227 = icmp ult i64 %polly.indvar225, 37
  %indvars.iv.next1073 = add i64 %indvars.iv1072, -32
  %indvars.iv.next1077 = add i64 %indvars.iv1076, 32
  %indvar.next1382 = add i64 %indvar1381, 1
  br i1 %polly.loop_cond227, label %polly.loop_header222, label %polly.loop_exit224

polly.loop_header228:                             ; preds = %polly.loop_header222.split, %polly.loop_exit247
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit247 ], [ 0, %polly.loop_header222.split ]
  %polly.access.mul.Packed_MemRef_call1256 = mul nuw nsw i64 %polly.indvar231, 1200
  br label %polly.loop_header245

polly.loop_exit247:                               ; preds = %polly.loop_header245
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next232, 1000
  br i1 %exitcond1065.not, label %polly.loop_header259.preheader, label %polly.loop_header228

polly.loop_header259.preheader:                   ; preds = %polly.loop_exit247, %polly.loop_exit247.us, %polly.loop_header222.split
  %133 = sub nsw i64 %111, %122
  %134 = icmp sgt i64 %133, 0
  %135 = select i1 %134, i64 %133, i64 0
  %136 = mul nsw i64 %polly.indvar225, -32
  %137 = icmp slt i64 %136, -1168
  %138 = select i1 %137, i64 %136, i64 -1168
  %139 = add nsw i64 %138, 1199
  %polly.loop_guard269.not = icmp sgt i64 %135, %139
  br i1 %polly.loop_guard269.not, label %polly.loop_exit261, label %polly.loop_header259

polly.loop_header245:                             ; preds = %polly.loop_header228, %polly.loop_header245
  %polly.indvar249 = phi i64 [ %polly.indvar_next250, %polly.loop_header245 ], [ %127, %polly.loop_header228 ]
  %140 = add nuw nsw i64 %polly.indvar249, %111
  %polly.access.mul.call1253 = mul nsw i64 %140, 1000
  %polly.access.add.call1254 = add nuw nsw i64 %polly.access.mul.call1253, %polly.indvar231
  %polly.access.call1255 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1254
  %polly.access.call1255.load = load double, double* %polly.access.call1255, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257 = add nuw nsw i64 %polly.indvar249, %polly.access.mul.Packed_MemRef_call1256
  %polly.access.Packed_MemRef_call1258 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257
  store double %polly.access.call1255.load, double* %polly.access.Packed_MemRef_call1258, align 8
  %polly.indvar_next250 = add nuw nsw i64 %polly.indvar249, 1
  %polly.loop_cond251.not.not = icmp slt i64 %polly.indvar249, %130
  br i1 %polly.loop_cond251.not.not, label %polly.loop_header245, label %polly.loop_exit247

polly.loop_header259:                             ; preds = %polly.loop_header259.preheader, %polly.loop_exit268
  %polly.indvar262 = phi i64 [ %polly.indvar_next263, %polly.loop_exit268 ], [ 0, %polly.loop_header259.preheader ]
  %polly.access.mul.Packed_MemRef_call1281 = mul nuw nsw i64 %polly.indvar262, 1200
  br label %polly.loop_header266

polly.loop_exit268:                               ; preds = %polly.loop_exit276
  %polly.indvar_next263 = add nuw nsw i64 %polly.indvar262, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar_next263, 1000
  br i1 %exitcond1081.not, label %polly.loop_exit261, label %polly.loop_header259

polly.loop_header266:                             ; preds = %polly.loop_header259, %polly.loop_exit276
  %indvar1384 = phi i64 [ 0, %polly.loop_header259 ], [ %indvar.next1385, %polly.loop_exit276 ]
  %indvars.iv1078 = phi i64 [ %121, %polly.loop_header259 ], [ %indvars.iv.next1079, %polly.loop_exit276 ]
  %polly.indvar270 = phi i64 [ %135, %polly.loop_header259 ], [ %polly.indvar_next271, %polly.loop_exit276 ]
  %141 = add i64 %120, %indvar1384
  %smin1386 = call i64 @llvm.smin.i64(i64 %141, i64 79)
  %142 = add nsw i64 %smin1386, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1078, i64 79)
  %143 = add nsw i64 %polly.indvar270, %123
  %polly.loop_guard2771174 = icmp sgt i64 %143, -1
  br i1 %polly.loop_guard2771174, label %polly.loop_header274.preheader, label %polly.loop_exit276

polly.loop_header274.preheader:                   ; preds = %polly.loop_header266
  %144 = add nuw nsw i64 %polly.indvar270, %122
  %polly.access.add.Packed_MemRef_call2286 = add nsw i64 %143, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call2287 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286
  %_p_scalar_288 = load double, double* %polly.access.Packed_MemRef_call2287, align 8
  %polly.access.Packed_MemRef_call1295 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2286
  %_p_scalar_296 = load double, double* %polly.access.Packed_MemRef_call1295, align 8
  %145 = mul i64 %144, 9600
  %min.iters.check1387 = icmp ult i64 %142, 4
  br i1 %min.iters.check1387, label %polly.loop_header274.preheader1402, label %vector.ph1388

vector.ph1388:                                    ; preds = %polly.loop_header274.preheader
  %n.vec1390 = and i64 %142, -4
  %broadcast.splatinsert1396 = insertelement <4 x double> poison, double %_p_scalar_288, i32 0
  %broadcast.splat1397 = shufflevector <4 x double> %broadcast.splatinsert1396, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1399 = insertelement <4 x double> poison, double %_p_scalar_296, i32 0
  %broadcast.splat1400 = shufflevector <4 x double> %broadcast.splatinsert1399, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1380

vector.body1380:                                  ; preds = %vector.body1380, %vector.ph1388
  %index1391 = phi i64 [ 0, %vector.ph1388 ], [ %index.next1392, %vector.body1380 ]
  %146 = add nuw nsw i64 %index1391, %111
  %147 = add nuw nsw i64 %index1391, %polly.access.mul.Packed_MemRef_call1281
  %148 = getelementptr double, double* %Packed_MemRef_call1, i64 %147
  %149 = bitcast double* %148 to <4 x double>*
  %wide.load1395 = load <4 x double>, <4 x double>* %149, align 8
  %150 = fmul fast <4 x double> %broadcast.splat1397, %wide.load1395
  %151 = getelementptr double, double* %Packed_MemRef_call2, i64 %147
  %152 = bitcast double* %151 to <4 x double>*
  %wide.load1398 = load <4 x double>, <4 x double>* %152, align 8
  %153 = fmul fast <4 x double> %broadcast.splat1400, %wide.load1398
  %154 = shl i64 %146, 3
  %155 = add i64 %154, %145
  %156 = getelementptr i8, i8* %call, i64 %155
  %157 = bitcast i8* %156 to <4 x double>*
  %wide.load1401 = load <4 x double>, <4 x double>* %157, align 8, !alias.scope !72, !noalias !74
  %158 = fadd fast <4 x double> %153, %150
  %159 = fmul fast <4 x double> %158, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %160 = fadd fast <4 x double> %159, %wide.load1401
  %161 = bitcast i8* %156 to <4 x double>*
  store <4 x double> %160, <4 x double>* %161, align 8, !alias.scope !72, !noalias !74
  %index.next1392 = add i64 %index1391, 4
  %162 = icmp eq i64 %index.next1392, %n.vec1390
  br i1 %162, label %middle.block1378, label %vector.body1380, !llvm.loop !84

middle.block1378:                                 ; preds = %vector.body1380
  %cmp.n1394 = icmp eq i64 %142, %n.vec1390
  br i1 %cmp.n1394, label %polly.loop_exit276, label %polly.loop_header274.preheader1402

polly.loop_header274.preheader1402:               ; preds = %polly.loop_header274.preheader, %middle.block1378
  %polly.indvar278.ph = phi i64 [ 0, %polly.loop_header274.preheader ], [ %n.vec1390, %middle.block1378 ]
  br label %polly.loop_header274

polly.loop_exit276:                               ; preds = %polly.loop_header274, %middle.block1378, %polly.loop_header266
  %polly.indvar_next271 = add nuw nsw i64 %polly.indvar270, 1
  %polly.loop_cond272.not.not = icmp slt i64 %polly.indvar270, %139
  %indvars.iv.next1079 = add i64 %indvars.iv1078, 1
  %indvar.next1385 = add i64 %indvar1384, 1
  br i1 %polly.loop_cond272.not.not, label %polly.loop_header266, label %polly.loop_exit268

polly.loop_header274:                             ; preds = %polly.loop_header274.preheader1402, %polly.loop_header274
  %polly.indvar278 = phi i64 [ %polly.indvar_next279, %polly.loop_header274 ], [ %polly.indvar278.ph, %polly.loop_header274.preheader1402 ]
  %163 = add nuw nsw i64 %polly.indvar278, %111
  %polly.access.add.Packed_MemRef_call1282 = add nuw nsw i64 %polly.indvar278, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1283 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282
  %_p_scalar_284 = load double, double* %polly.access.Packed_MemRef_call1283, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_288, %_p_scalar_284
  %polly.access.Packed_MemRef_call2291 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1282
  %_p_scalar_292 = load double, double* %polly.access.Packed_MemRef_call2291, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_296, %_p_scalar_292
  %164 = shl i64 %163, 3
  %165 = add i64 %164, %145
  %scevgep297 = getelementptr i8, i8* %call, i64 %165
  %scevgep297298 = bitcast i8* %scevgep297 to double*
  %_p_scalar_299 = load double, double* %scevgep297298, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_299
  store double %p_add42.i118, double* %scevgep297298, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next279 = add nuw nsw i64 %polly.indvar278, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar278, %smin
  br i1 %exitcond1080.not, label %polly.loop_exit276, label %polly.loop_header274, !llvm.loop !85

polly.start302:                                   ; preds = %kernel_syr2k.exit
  %malloccall304 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall306 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header390

polly.exiting303:                                 ; preds = %polly.loop_exit431
  tail call void @free(i8* %malloccall304)
  tail call void @free(i8* %malloccall306)
  br label %kernel_syr2k.exit90

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.start302
  %indvar1317 = phi i64 [ %indvar.next1318, %polly.loop_exit398 ], [ 0, %polly.start302 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 1, %polly.start302 ]
  %166 = add i64 %indvar1317, 1
  %167 = mul nuw nsw i64 %polly.indvar393, 9600
  %scevgep402 = getelementptr i8, i8* %call, i64 %167
  %min.iters.check1319 = icmp ult i64 %166, 4
  br i1 %min.iters.check1319, label %polly.loop_header396.preheader, label %vector.ph1320

vector.ph1320:                                    ; preds = %polly.loop_header390
  %n.vec1322 = and i64 %166, -4
  br label %vector.body1316

vector.body1316:                                  ; preds = %vector.body1316, %vector.ph1320
  %index1323 = phi i64 [ 0, %vector.ph1320 ], [ %index.next1324, %vector.body1316 ]
  %168 = shl nuw nsw i64 %index1323, 3
  %169 = getelementptr i8, i8* %scevgep402, i64 %168
  %170 = bitcast i8* %169 to <4 x double>*
  %wide.load1327 = load <4 x double>, <4 x double>* %170, align 8, !alias.scope !86, !noalias !88
  %171 = fmul fast <4 x double> %wide.load1327, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %172 = bitcast i8* %169 to <4 x double>*
  store <4 x double> %171, <4 x double>* %172, align 8, !alias.scope !86, !noalias !88
  %index.next1324 = add i64 %index1323, 4
  %173 = icmp eq i64 %index.next1324, %n.vec1322
  br i1 %173, label %middle.block1314, label %vector.body1316, !llvm.loop !93

middle.block1314:                                 ; preds = %vector.body1316
  %cmp.n1326 = icmp eq i64 %166, %n.vec1322
  br i1 %cmp.n1326, label %polly.loop_exit398, label %polly.loop_header396.preheader

polly.loop_header396.preheader:                   ; preds = %polly.loop_header390, %middle.block1314
  %polly.indvar399.ph = phi i64 [ 0, %polly.loop_header390 ], [ %n.vec1322, %middle.block1314 ]
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396, %middle.block1314
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar_next394, 1200
  %indvar.next1318 = add i64 %indvar1317, 1
  br i1 %exitcond1110.not, label %polly.loop_header406.preheader, label %polly.loop_header390

polly.loop_header406.preheader:                   ; preds = %polly.loop_exit398
  %Packed_MemRef_call1305 = bitcast i8* %malloccall304 to double*
  %Packed_MemRef_call2307 = bitcast i8* %malloccall306 to double*
  br label %polly.loop_header406

polly.loop_header396:                             ; preds = %polly.loop_header396.preheader, %polly.loop_header396
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_header396 ], [ %polly.indvar399.ph, %polly.loop_header396.preheader ]
  %174 = shl nuw nsw i64 %polly.indvar399, 3
  %scevgep403 = getelementptr i8, i8* %scevgep402, i64 %174
  %scevgep403404 = bitcast i8* %scevgep403 to double*
  %_p_scalar_405 = load double, double* %scevgep403404, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_405, 1.200000e+00
  store double %p_mul.i57, double* %scevgep403404, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar_next400, %polly.indvar393
  br i1 %exitcond1109.not, label %polly.loop_exit398, label %polly.loop_header396, !llvm.loop !94

polly.loop_header406:                             ; preds = %polly.loop_header406.preheader, %polly.loop_exit431
  %indvars.iv1099 = phi i64 [ 0, %polly.loop_header406.preheader ], [ %indvars.iv.next1100, %polly.loop_exit431 ]
  %indvars.iv1094 = phi i64 [ 0, %polly.loop_header406.preheader ], [ %indvars.iv.next1095, %polly.loop_exit431 ]
  %indvars.iv1092 = phi i64 [ 0, %polly.loop_header406.preheader ], [ %indvars.iv.next1093, %polly.loop_exit431 ]
  %indvars.iv1085 = phi i64 [ 1200, %polly.loop_header406.preheader ], [ %indvars.iv.next1086, %polly.loop_exit431 ]
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header406.preheader ], [ %polly.indvar_next410, %polly.loop_exit431 ]
  %175 = mul nuw nsw i64 %polly.indvar409, 80
  %176 = shl nuw nsw i64 %polly.indvar409, 1
  %177 = lshr i64 %polly.indvar409, 1
  %178 = add nuw i64 %176, %177
  %179 = shl nuw nsw i64 %178, 5
  %180 = sub i64 %175, %179
  %181 = mul nsw i64 %polly.indvar409, -80
  %182 = add i64 %181, %179
  %183 = lshr i64 %polly.indvar409, 1
  %184 = add nuw i64 %indvars.iv1094, %183
  %185 = shl nuw nsw i64 %184, 5
  %186 = sub i64 %indvars.iv1092, %185
  %187 = add i64 %indvars.iv1099, %185
  %188 = mul nsw i64 %polly.indvar409, -80
  %189 = mul nuw nsw i64 %polly.indvar409, 80
  br label %polly.loop_header412

polly.loop_exit414:                               ; preds = %polly.loop_exit420
  %190 = add nsw i64 %188, 1199
  %191 = shl nuw nsw i64 %polly.indvar409, 1
  %192 = add nuw nsw i64 %191, %183
  br label %polly.loop_header429

polly.loop_exit431:                               ; preds = %polly.loop_exit470
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %indvars.iv.next1086 = add nsw i64 %indvars.iv1085, -80
  %indvars.iv.next1093 = add nuw nsw i64 %indvars.iv1092, 80
  %indvars.iv.next1095 = add nuw nsw i64 %indvars.iv1094, 2
  %indvars.iv.next1100 = add nsw i64 %indvars.iv1099, -80
  %exitcond1108.not = icmp eq i64 %polly.indvar_next410, 15
  br i1 %exitcond1108.not, label %polly.exiting303, label %polly.loop_header406

polly.loop_header412:                             ; preds = %polly.loop_exit420, %polly.loop_header406
  %polly.indvar415 = phi i64 [ 0, %polly.loop_header406 ], [ %polly.indvar_next416, %polly.loop_exit420 ]
  %polly.access.mul.Packed_MemRef_call2307 = mul nuw nsw i64 %polly.indvar415, 1200
  br label %polly.loop_header418

polly.loop_exit420:                               ; preds = %polly.loop_header418
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next416, 1000
  br i1 %exitcond1088.not, label %polly.loop_exit414, label %polly.loop_header412

polly.loop_header418:                             ; preds = %polly.loop_header418, %polly.loop_header412
  %polly.indvar421 = phi i64 [ 0, %polly.loop_header412 ], [ %polly.indvar_next422, %polly.loop_header418 ]
  %193 = add nuw nsw i64 %polly.indvar421, %189
  %polly.access.mul.call2425 = mul nuw nsw i64 %193, 1000
  %polly.access.add.call2426 = add nuw nsw i64 %polly.access.mul.call2425, %polly.indvar415
  %polly.access.call2427 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2426
  %polly.access.call2427.load = load double, double* %polly.access.call2427, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2307 = add nuw nsw i64 %polly.indvar421, %polly.access.mul.Packed_MemRef_call2307
  %polly.access.Packed_MemRef_call2307 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307
  store double %polly.access.call2427.load, double* %polly.access.Packed_MemRef_call2307, align 8
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar_next422, %indvars.iv1085
  br i1 %exitcond1087.not, label %polly.loop_exit420, label %polly.loop_header418

polly.loop_header429:                             ; preds = %polly.loop_exit470, %polly.loop_exit414
  %indvar1331 = phi i64 [ %indvar.next1332, %polly.loop_exit470 ], [ 0, %polly.loop_exit414 ]
  %indvars.iv1101 = phi i64 [ %indvars.iv.next1102, %polly.loop_exit470 ], [ %187, %polly.loop_exit414 ]
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %polly.loop_exit470 ], [ %186, %polly.loop_exit414 ]
  %polly.indvar432 = phi i64 [ %polly.indvar_next433, %polly.loop_exit470 ], [ %192, %polly.loop_exit414 ]
  %194 = mul nsw i64 %indvar1331, -32
  %195 = add i64 %180, %194
  %smax1333 = call i64 @llvm.smax.i64(i64 %195, i64 0)
  %196 = shl nuw nsw i64 %indvar1331, 5
  %197 = add i64 %182, %196
  %198 = add i64 %smax1333, %197
  %smax1098 = call i64 @llvm.smax.i64(i64 %indvars.iv1096, i64 0)
  %199 = add i64 %smax1098, %indvars.iv1101
  %200 = shl nsw i64 %polly.indvar432, 5
  %201 = add nsw i64 %200, %188
  %202 = add nsw i64 %201, -1
  %.inv924 = icmp sgt i64 %201, 79
  %203 = select i1 %.inv924, i64 79, i64 %202
  %polly.loop_guard445 = icmp sgt i64 %203, -1
  %204 = icmp sgt i64 %201, 0
  %205 = select i1 %204, i64 %201, i64 0
  %206 = add nsw i64 %201, 31
  %207 = icmp slt i64 %190, %206
  %208 = select i1 %207, i64 %190, i64 %206
  %polly.loop_guard457.not = icmp sgt i64 %205, %208
  br i1 %polly.loop_guard445, label %polly.loop_header435.us, label %polly.loop_header429.split

polly.loop_header435.us:                          ; preds = %polly.loop_header429, %polly.loop_exit456.us
  %polly.indvar438.us = phi i64 [ %polly.indvar_next439.us, %polly.loop_exit456.us ], [ 0, %polly.loop_header429 ]
  %polly.access.mul.Packed_MemRef_call1305.us = mul nuw nsw i64 %polly.indvar438.us, 1200
  br label %polly.loop_header442.us

polly.loop_header442.us:                          ; preds = %polly.loop_header435.us, %polly.loop_header442.us
  %polly.indvar446.us = phi i64 [ %polly.indvar_next447.us, %polly.loop_header442.us ], [ 0, %polly.loop_header435.us ]
  %209 = add nuw nsw i64 %polly.indvar446.us, %189
  %polly.access.mul.call1450.us = mul nuw nsw i64 %209, 1000
  %polly.access.add.call1451.us = add nuw nsw i64 %polly.access.mul.call1450.us, %polly.indvar438.us
  %polly.access.call1452.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1451.us
  %polly.access.call1452.load.us = load double, double* %polly.access.call1452.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1305.us = add nuw nsw i64 %polly.indvar446.us, %polly.access.mul.Packed_MemRef_call1305.us
  %polly.access.Packed_MemRef_call1305.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us
  store double %polly.access.call1452.load.us, double* %polly.access.Packed_MemRef_call1305.us, align 8
  %polly.indvar_next447.us = add nuw i64 %polly.indvar446.us, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar446.us, %203
  br i1 %exitcond1090.not, label %polly.loop_exit444.loopexit.us, label %polly.loop_header442.us

polly.loop_header454.us:                          ; preds = %polly.loop_exit444.loopexit.us, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ %205, %polly.loop_exit444.loopexit.us ]
  %210 = add nuw nsw i64 %polly.indvar458.us, %189
  %polly.access.mul.call1462.us = mul nsw i64 %210, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %polly.access.mul.call1462.us, %polly.indvar438.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1305466.us = add nuw nsw i64 %polly.indvar458.us, %polly.access.mul.Packed_MemRef_call1305.us
  %polly.access.Packed_MemRef_call1305467.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305466.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1305467.us, align 8
  %polly.indvar_next459.us = add nuw nsw i64 %polly.indvar458.us, 1
  %polly.loop_cond460.not.not.us = icmp slt i64 %polly.indvar458.us, %208
  br i1 %polly.loop_cond460.not.not.us, label %polly.loop_header454.us, label %polly.loop_exit456.us

polly.loop_exit456.us:                            ; preds = %polly.loop_header454.us, %polly.loop_exit444.loopexit.us
  %polly.indvar_next439.us = add nuw nsw i64 %polly.indvar438.us, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar_next439.us, 1000
  br i1 %exitcond1091.not, label %polly.loop_header468.preheader, label %polly.loop_header435.us

polly.loop_exit444.loopexit.us:                   ; preds = %polly.loop_header442.us
  br i1 %polly.loop_guard457.not, label %polly.loop_exit456.us, label %polly.loop_header454.us

polly.loop_header429.split:                       ; preds = %polly.loop_header429
  br i1 %polly.loop_guard457.not, label %polly.loop_header468.preheader, label %polly.loop_header435

polly.loop_exit470:                               ; preds = %polly.loop_exit477, %polly.loop_header468.preheader
  %polly.indvar_next433 = add nuw nsw i64 %polly.indvar432, 1
  %polly.loop_cond434 = icmp ult i64 %polly.indvar432, 37
  %indvars.iv.next1097 = add i64 %indvars.iv1096, -32
  %indvars.iv.next1102 = add i64 %indvars.iv1101, 32
  %indvar.next1332 = add i64 %indvar1331, 1
  br i1 %polly.loop_cond434, label %polly.loop_header429, label %polly.loop_exit431

polly.loop_header435:                             ; preds = %polly.loop_header429.split, %polly.loop_exit456
  %polly.indvar438 = phi i64 [ %polly.indvar_next439, %polly.loop_exit456 ], [ 0, %polly.loop_header429.split ]
  %polly.access.mul.Packed_MemRef_call1305465 = mul nuw nsw i64 %polly.indvar438, 1200
  br label %polly.loop_header454

polly.loop_exit456:                               ; preds = %polly.loop_header454
  %polly.indvar_next439 = add nuw nsw i64 %polly.indvar438, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next439, 1000
  br i1 %exitcond1089.not, label %polly.loop_header468.preheader, label %polly.loop_header435

polly.loop_header468.preheader:                   ; preds = %polly.loop_exit456, %polly.loop_exit456.us, %polly.loop_header429.split
  %211 = sub nsw i64 %189, %200
  %212 = icmp sgt i64 %211, 0
  %213 = select i1 %212, i64 %211, i64 0
  %214 = mul nsw i64 %polly.indvar432, -32
  %215 = icmp slt i64 %214, -1168
  %216 = select i1 %215, i64 %214, i64 -1168
  %217 = add nsw i64 %216, 1199
  %polly.loop_guard478.not = icmp sgt i64 %213, %217
  br i1 %polly.loop_guard478.not, label %polly.loop_exit470, label %polly.loop_header468

polly.loop_header454:                             ; preds = %polly.loop_header435, %polly.loop_header454
  %polly.indvar458 = phi i64 [ %polly.indvar_next459, %polly.loop_header454 ], [ %205, %polly.loop_header435 ]
  %218 = add nuw nsw i64 %polly.indvar458, %189
  %polly.access.mul.call1462 = mul nsw i64 %218, 1000
  %polly.access.add.call1463 = add nuw nsw i64 %polly.access.mul.call1462, %polly.indvar438
  %polly.access.call1464 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1463
  %polly.access.call1464.load = load double, double* %polly.access.call1464, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1305466 = add nuw nsw i64 %polly.indvar458, %polly.access.mul.Packed_MemRef_call1305465
  %polly.access.Packed_MemRef_call1305467 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305466
  store double %polly.access.call1464.load, double* %polly.access.Packed_MemRef_call1305467, align 8
  %polly.indvar_next459 = add nuw nsw i64 %polly.indvar458, 1
  %polly.loop_cond460.not.not = icmp slt i64 %polly.indvar458, %208
  br i1 %polly.loop_cond460.not.not, label %polly.loop_header454, label %polly.loop_exit456

polly.loop_header468:                             ; preds = %polly.loop_header468.preheader, %polly.loop_exit477
  %polly.indvar471 = phi i64 [ %polly.indvar_next472, %polly.loop_exit477 ], [ 0, %polly.loop_header468.preheader ]
  %polly.access.mul.Packed_MemRef_call1305490 = mul nuw nsw i64 %polly.indvar471, 1200
  br label %polly.loop_header475

polly.loop_exit477:                               ; preds = %polly.loop_exit485
  %polly.indvar_next472 = add nuw nsw i64 %polly.indvar471, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next472, 1000
  br i1 %exitcond1107.not, label %polly.loop_exit470, label %polly.loop_header468

polly.loop_header475:                             ; preds = %polly.loop_header468, %polly.loop_exit485
  %indvar1334 = phi i64 [ 0, %polly.loop_header468 ], [ %indvar.next1335, %polly.loop_exit485 ]
  %indvars.iv1103 = phi i64 [ %199, %polly.loop_header468 ], [ %indvars.iv.next1104, %polly.loop_exit485 ]
  %polly.indvar479 = phi i64 [ %213, %polly.loop_header468 ], [ %polly.indvar_next480, %polly.loop_exit485 ]
  %219 = add i64 %198, %indvar1334
  %smin1336 = call i64 @llvm.smin.i64(i64 %219, i64 79)
  %220 = add nsw i64 %smin1336, 1
  %smin1105 = call i64 @llvm.smin.i64(i64 %indvars.iv1103, i64 79)
  %221 = add nsw i64 %polly.indvar479, %201
  %polly.loop_guard4861175 = icmp sgt i64 %221, -1
  br i1 %polly.loop_guard4861175, label %polly.loop_header483.preheader, label %polly.loop_exit485

polly.loop_header483.preheader:                   ; preds = %polly.loop_header475
  %222 = add nuw nsw i64 %polly.indvar479, %200
  %polly.access.add.Packed_MemRef_call2307495 = add nsw i64 %221, %polly.access.mul.Packed_MemRef_call1305490
  %polly.access.Packed_MemRef_call2307496 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307495
  %_p_scalar_497 = load double, double* %polly.access.Packed_MemRef_call2307496, align 8
  %polly.access.Packed_MemRef_call1305504 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call2307495
  %_p_scalar_505 = load double, double* %polly.access.Packed_MemRef_call1305504, align 8
  %223 = mul i64 %222, 9600
  %min.iters.check1337 = icmp ult i64 %220, 4
  br i1 %min.iters.check1337, label %polly.loop_header483.preheader1406, label %vector.ph1338

vector.ph1338:                                    ; preds = %polly.loop_header483.preheader
  %n.vec1340 = and i64 %220, -4
  %broadcast.splatinsert1346 = insertelement <4 x double> poison, double %_p_scalar_497, i32 0
  %broadcast.splat1347 = shufflevector <4 x double> %broadcast.splatinsert1346, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1349 = insertelement <4 x double> poison, double %_p_scalar_505, i32 0
  %broadcast.splat1350 = shufflevector <4 x double> %broadcast.splatinsert1349, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1330

vector.body1330:                                  ; preds = %vector.body1330, %vector.ph1338
  %index1341 = phi i64 [ 0, %vector.ph1338 ], [ %index.next1342, %vector.body1330 ]
  %224 = add nuw nsw i64 %index1341, %189
  %225 = add nuw nsw i64 %index1341, %polly.access.mul.Packed_MemRef_call1305490
  %226 = getelementptr double, double* %Packed_MemRef_call1305, i64 %225
  %227 = bitcast double* %226 to <4 x double>*
  %wide.load1345 = load <4 x double>, <4 x double>* %227, align 8
  %228 = fmul fast <4 x double> %broadcast.splat1347, %wide.load1345
  %229 = getelementptr double, double* %Packed_MemRef_call2307, i64 %225
  %230 = bitcast double* %229 to <4 x double>*
  %wide.load1348 = load <4 x double>, <4 x double>* %230, align 8
  %231 = fmul fast <4 x double> %broadcast.splat1350, %wide.load1348
  %232 = shl i64 %224, 3
  %233 = add i64 %232, %223
  %234 = getelementptr i8, i8* %call, i64 %233
  %235 = bitcast i8* %234 to <4 x double>*
  %wide.load1351 = load <4 x double>, <4 x double>* %235, align 8, !alias.scope !86, !noalias !88
  %236 = fadd fast <4 x double> %231, %228
  %237 = fmul fast <4 x double> %236, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %238 = fadd fast <4 x double> %237, %wide.load1351
  %239 = bitcast i8* %234 to <4 x double>*
  store <4 x double> %238, <4 x double>* %239, align 8, !alias.scope !86, !noalias !88
  %index.next1342 = add i64 %index1341, 4
  %240 = icmp eq i64 %index.next1342, %n.vec1340
  br i1 %240, label %middle.block1328, label %vector.body1330, !llvm.loop !97

middle.block1328:                                 ; preds = %vector.body1330
  %cmp.n1344 = icmp eq i64 %220, %n.vec1340
  br i1 %cmp.n1344, label %polly.loop_exit485, label %polly.loop_header483.preheader1406

polly.loop_header483.preheader1406:               ; preds = %polly.loop_header483.preheader, %middle.block1328
  %polly.indvar487.ph = phi i64 [ 0, %polly.loop_header483.preheader ], [ %n.vec1340, %middle.block1328 ]
  br label %polly.loop_header483

polly.loop_exit485:                               ; preds = %polly.loop_header483, %middle.block1328, %polly.loop_header475
  %polly.indvar_next480 = add nuw nsw i64 %polly.indvar479, 1
  %polly.loop_cond481.not.not = icmp slt i64 %polly.indvar479, %217
  %indvars.iv.next1104 = add i64 %indvars.iv1103, 1
  %indvar.next1335 = add i64 %indvar1334, 1
  br i1 %polly.loop_cond481.not.not, label %polly.loop_header475, label %polly.loop_exit477

polly.loop_header483:                             ; preds = %polly.loop_header483.preheader1406, %polly.loop_header483
  %polly.indvar487 = phi i64 [ %polly.indvar_next488, %polly.loop_header483 ], [ %polly.indvar487.ph, %polly.loop_header483.preheader1406 ]
  %241 = add nuw nsw i64 %polly.indvar487, %189
  %polly.access.add.Packed_MemRef_call1305491 = add nuw nsw i64 %polly.indvar487, %polly.access.mul.Packed_MemRef_call1305490
  %polly.access.Packed_MemRef_call1305492 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305491
  %_p_scalar_493 = load double, double* %polly.access.Packed_MemRef_call1305492, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_497, %_p_scalar_493
  %polly.access.Packed_MemRef_call2307500 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call1305491
  %_p_scalar_501 = load double, double* %polly.access.Packed_MemRef_call2307500, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_505, %_p_scalar_501
  %242 = shl i64 %241, 3
  %243 = add i64 %242, %223
  %scevgep506 = getelementptr i8, i8* %call, i64 %243
  %scevgep506507 = bitcast i8* %scevgep506 to double*
  %_p_scalar_508 = load double, double* %scevgep506507, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_508
  store double %p_add42.i79, double* %scevgep506507, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next488 = add nuw nsw i64 %polly.indvar487, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar487, %smin1105
  br i1 %exitcond1106.not, label %polly.loop_exit485, label %polly.loop_header483, !llvm.loop !98

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
  %244 = add i64 %indvar, 1
  %245 = mul nuw nsw i64 %polly.indvar602, 9600
  %scevgep611 = getelementptr i8, i8* %call, i64 %245
  %min.iters.check1269 = icmp ult i64 %244, 4
  br i1 %min.iters.check1269, label %polly.loop_header605.preheader, label %vector.ph1270

vector.ph1270:                                    ; preds = %polly.loop_header599
  %n.vec1272 = and i64 %244, -4
  br label %vector.body1268

vector.body1268:                                  ; preds = %vector.body1268, %vector.ph1270
  %index1273 = phi i64 [ 0, %vector.ph1270 ], [ %index.next1274, %vector.body1268 ]
  %246 = shl nuw nsw i64 %index1273, 3
  %247 = getelementptr i8, i8* %scevgep611, i64 %246
  %248 = bitcast i8* %247 to <4 x double>*
  %wide.load1277 = load <4 x double>, <4 x double>* %248, align 8, !alias.scope !99, !noalias !101
  %249 = fmul fast <4 x double> %wide.load1277, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %250 = bitcast i8* %247 to <4 x double>*
  store <4 x double> %249, <4 x double>* %250, align 8, !alias.scope !99, !noalias !101
  %index.next1274 = add i64 %index1273, 4
  %251 = icmp eq i64 %index.next1274, %n.vec1272
  br i1 %251, label %middle.block1266, label %vector.body1268, !llvm.loop !106

middle.block1266:                                 ; preds = %vector.body1268
  %cmp.n1276 = icmp eq i64 %244, %n.vec1272
  br i1 %cmp.n1276, label %polly.loop_exit607, label %polly.loop_header605.preheader

polly.loop_header605.preheader:                   ; preds = %polly.loop_header599, %middle.block1266
  %polly.indvar608.ph = phi i64 [ 0, %polly.loop_header599 ], [ %n.vec1272, %middle.block1266 ]
  br label %polly.loop_header605

polly.loop_exit607:                               ; preds = %polly.loop_header605, %middle.block1266
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1136.not = icmp eq i64 %polly.indvar_next603, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1136.not, label %polly.loop_header615.preheader, label %polly.loop_header599

polly.loop_header615.preheader:                   ; preds = %polly.loop_exit607
  %Packed_MemRef_call1514 = bitcast i8* %malloccall513 to double*
  %Packed_MemRef_call2516 = bitcast i8* %malloccall515 to double*
  br label %polly.loop_header615

polly.loop_header605:                             ; preds = %polly.loop_header605.preheader, %polly.loop_header605
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_header605 ], [ %polly.indvar608.ph, %polly.loop_header605.preheader ]
  %252 = shl nuw nsw i64 %polly.indvar608, 3
  %scevgep612 = getelementptr i8, i8* %scevgep611, i64 %252
  %scevgep612613 = bitcast i8* %scevgep612 to double*
  %_p_scalar_614 = load double, double* %scevgep612613, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_614, 1.200000e+00
  store double %p_mul.i, double* %scevgep612613, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar_next609, %polly.indvar602
  br i1 %exitcond1135.not, label %polly.loop_exit607, label %polly.loop_header605, !llvm.loop !107

polly.loop_header615:                             ; preds = %polly.loop_header615.preheader, %polly.loop_exit640
  %indvars.iv1125 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %indvars.iv.next1126, %polly.loop_exit640 ]
  %indvars.iv1120 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %indvars.iv.next1121, %polly.loop_exit640 ]
  %indvars.iv1118 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %indvars.iv.next1119, %polly.loop_exit640 ]
  %indvars.iv1111 = phi i64 [ 1200, %polly.loop_header615.preheader ], [ %indvars.iv.next1112, %polly.loop_exit640 ]
  %polly.indvar618 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %polly.indvar_next619, %polly.loop_exit640 ]
  %253 = mul nuw nsw i64 %polly.indvar618, 80
  %254 = shl nuw nsw i64 %polly.indvar618, 1
  %255 = lshr i64 %polly.indvar618, 1
  %256 = add nuw i64 %254, %255
  %257 = shl nuw nsw i64 %256, 5
  %258 = sub i64 %253, %257
  %259 = mul nsw i64 %polly.indvar618, -80
  %260 = add i64 %259, %257
  %261 = lshr i64 %polly.indvar618, 1
  %262 = add nuw i64 %indvars.iv1120, %261
  %263 = shl nuw nsw i64 %262, 5
  %264 = sub i64 %indvars.iv1118, %263
  %265 = add i64 %indvars.iv1125, %263
  %266 = mul nsw i64 %polly.indvar618, -80
  %267 = mul nuw nsw i64 %polly.indvar618, 80
  br label %polly.loop_header621

polly.loop_exit623:                               ; preds = %polly.loop_exit629
  %268 = add nsw i64 %266, 1199
  %269 = shl nuw nsw i64 %polly.indvar618, 1
  %270 = add nuw nsw i64 %269, %261
  br label %polly.loop_header638

polly.loop_exit640:                               ; preds = %polly.loop_exit679
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %indvars.iv.next1112 = add nsw i64 %indvars.iv1111, -80
  %indvars.iv.next1119 = add nuw nsw i64 %indvars.iv1118, 80
  %indvars.iv.next1121 = add nuw nsw i64 %indvars.iv1120, 2
  %indvars.iv.next1126 = add nsw i64 %indvars.iv1125, -80
  %exitcond1134.not = icmp eq i64 %polly.indvar_next619, 15
  br i1 %exitcond1134.not, label %polly.exiting512, label %polly.loop_header615

polly.loop_header621:                             ; preds = %polly.loop_exit629, %polly.loop_header615
  %polly.indvar624 = phi i64 [ 0, %polly.loop_header615 ], [ %polly.indvar_next625, %polly.loop_exit629 ]
  %polly.access.mul.Packed_MemRef_call2516 = mul nuw nsw i64 %polly.indvar624, 1200
  br label %polly.loop_header627

polly.loop_exit629:                               ; preds = %polly.loop_header627
  %polly.indvar_next625 = add nuw nsw i64 %polly.indvar624, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar_next625, 1000
  br i1 %exitcond1114.not, label %polly.loop_exit623, label %polly.loop_header621

polly.loop_header627:                             ; preds = %polly.loop_header627, %polly.loop_header621
  %polly.indvar630 = phi i64 [ 0, %polly.loop_header621 ], [ %polly.indvar_next631, %polly.loop_header627 ]
  %271 = add nuw nsw i64 %polly.indvar630, %267
  %polly.access.mul.call2634 = mul nuw nsw i64 %271, 1000
  %polly.access.add.call2635 = add nuw nsw i64 %polly.access.mul.call2634, %polly.indvar624
  %polly.access.call2636 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2635
  %polly.access.call2636.load = load double, double* %polly.access.call2636, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2516 = add nuw nsw i64 %polly.indvar630, %polly.access.mul.Packed_MemRef_call2516
  %polly.access.Packed_MemRef_call2516 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516
  store double %polly.access.call2636.load, double* %polly.access.Packed_MemRef_call2516, align 8
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar_next631, %indvars.iv1111
  br i1 %exitcond1113.not, label %polly.loop_exit629, label %polly.loop_header627

polly.loop_header638:                             ; preds = %polly.loop_exit679, %polly.loop_exit623
  %indvar1281 = phi i64 [ %indvar.next1282, %polly.loop_exit679 ], [ 0, %polly.loop_exit623 ]
  %indvars.iv1127 = phi i64 [ %indvars.iv.next1128, %polly.loop_exit679 ], [ %265, %polly.loop_exit623 ]
  %indvars.iv1122 = phi i64 [ %indvars.iv.next1123, %polly.loop_exit679 ], [ %264, %polly.loop_exit623 ]
  %polly.indvar641 = phi i64 [ %polly.indvar_next642, %polly.loop_exit679 ], [ %270, %polly.loop_exit623 ]
  %272 = mul nsw i64 %indvar1281, -32
  %273 = add i64 %258, %272
  %smax1283 = call i64 @llvm.smax.i64(i64 %273, i64 0)
  %274 = shl nuw nsw i64 %indvar1281, 5
  %275 = add i64 %260, %274
  %276 = add i64 %smax1283, %275
  %smax1124 = call i64 @llvm.smax.i64(i64 %indvars.iv1122, i64 0)
  %277 = add i64 %smax1124, %indvars.iv1127
  %278 = shl nsw i64 %polly.indvar641, 5
  %279 = add nsw i64 %278, %266
  %280 = add nsw i64 %279, -1
  %.inv925 = icmp sgt i64 %279, 79
  %281 = select i1 %.inv925, i64 79, i64 %280
  %polly.loop_guard654 = icmp sgt i64 %281, -1
  %282 = icmp sgt i64 %279, 0
  %283 = select i1 %282, i64 %279, i64 0
  %284 = add nsw i64 %279, 31
  %285 = icmp slt i64 %268, %284
  %286 = select i1 %285, i64 %268, i64 %284
  %polly.loop_guard666.not = icmp sgt i64 %283, %286
  br i1 %polly.loop_guard654, label %polly.loop_header644.us, label %polly.loop_header638.split

polly.loop_header644.us:                          ; preds = %polly.loop_header638, %polly.loop_exit665.us
  %polly.indvar647.us = phi i64 [ %polly.indvar_next648.us, %polly.loop_exit665.us ], [ 0, %polly.loop_header638 ]
  %polly.access.mul.Packed_MemRef_call1514.us = mul nuw nsw i64 %polly.indvar647.us, 1200
  br label %polly.loop_header651.us

polly.loop_header651.us:                          ; preds = %polly.loop_header644.us, %polly.loop_header651.us
  %polly.indvar655.us = phi i64 [ %polly.indvar_next656.us, %polly.loop_header651.us ], [ 0, %polly.loop_header644.us ]
  %287 = add nuw nsw i64 %polly.indvar655.us, %267
  %polly.access.mul.call1659.us = mul nuw nsw i64 %287, 1000
  %polly.access.add.call1660.us = add nuw nsw i64 %polly.access.mul.call1659.us, %polly.indvar647.us
  %polly.access.call1661.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1660.us
  %polly.access.call1661.load.us = load double, double* %polly.access.call1661.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514.us = add nuw nsw i64 %polly.indvar655.us, %polly.access.mul.Packed_MemRef_call1514.us
  %polly.access.Packed_MemRef_call1514.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us
  store double %polly.access.call1661.load.us, double* %polly.access.Packed_MemRef_call1514.us, align 8
  %polly.indvar_next656.us = add nuw i64 %polly.indvar655.us, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar655.us, %281
  br i1 %exitcond1116.not, label %polly.loop_exit653.loopexit.us, label %polly.loop_header651.us

polly.loop_header663.us:                          ; preds = %polly.loop_exit653.loopexit.us, %polly.loop_header663.us
  %polly.indvar667.us = phi i64 [ %polly.indvar_next668.us, %polly.loop_header663.us ], [ %283, %polly.loop_exit653.loopexit.us ]
  %288 = add nuw nsw i64 %polly.indvar667.us, %267
  %polly.access.mul.call1671.us = mul nsw i64 %288, 1000
  %polly.access.add.call1672.us = add nuw nsw i64 %polly.access.mul.call1671.us, %polly.indvar647.us
  %polly.access.call1673.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1672.us
  %polly.access.call1673.load.us = load double, double* %polly.access.call1673.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514675.us = add nuw nsw i64 %polly.indvar667.us, %polly.access.mul.Packed_MemRef_call1514.us
  %polly.access.Packed_MemRef_call1514676.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514675.us
  store double %polly.access.call1673.load.us, double* %polly.access.Packed_MemRef_call1514676.us, align 8
  %polly.indvar_next668.us = add nuw nsw i64 %polly.indvar667.us, 1
  %polly.loop_cond669.not.not.us = icmp slt i64 %polly.indvar667.us, %286
  br i1 %polly.loop_cond669.not.not.us, label %polly.loop_header663.us, label %polly.loop_exit665.us

polly.loop_exit665.us:                            ; preds = %polly.loop_header663.us, %polly.loop_exit653.loopexit.us
  %polly.indvar_next648.us = add nuw nsw i64 %polly.indvar647.us, 1
  %exitcond1117.not = icmp eq i64 %polly.indvar_next648.us, 1000
  br i1 %exitcond1117.not, label %polly.loop_header677.preheader, label %polly.loop_header644.us

polly.loop_exit653.loopexit.us:                   ; preds = %polly.loop_header651.us
  br i1 %polly.loop_guard666.not, label %polly.loop_exit665.us, label %polly.loop_header663.us

polly.loop_header638.split:                       ; preds = %polly.loop_header638
  br i1 %polly.loop_guard666.not, label %polly.loop_header677.preheader, label %polly.loop_header644

polly.loop_exit679:                               ; preds = %polly.loop_exit686, %polly.loop_header677.preheader
  %polly.indvar_next642 = add nuw nsw i64 %polly.indvar641, 1
  %polly.loop_cond643 = icmp ult i64 %polly.indvar641, 37
  %indvars.iv.next1123 = add i64 %indvars.iv1122, -32
  %indvars.iv.next1128 = add i64 %indvars.iv1127, 32
  %indvar.next1282 = add i64 %indvar1281, 1
  br i1 %polly.loop_cond643, label %polly.loop_header638, label %polly.loop_exit640

polly.loop_header644:                             ; preds = %polly.loop_header638.split, %polly.loop_exit665
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit665 ], [ 0, %polly.loop_header638.split ]
  %polly.access.mul.Packed_MemRef_call1514674 = mul nuw nsw i64 %polly.indvar647, 1200
  br label %polly.loop_header663

polly.loop_exit665:                               ; preds = %polly.loop_header663
  %polly.indvar_next648 = add nuw nsw i64 %polly.indvar647, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar_next648, 1000
  br i1 %exitcond1115.not, label %polly.loop_header677.preheader, label %polly.loop_header644

polly.loop_header677.preheader:                   ; preds = %polly.loop_exit665, %polly.loop_exit665.us, %polly.loop_header638.split
  %289 = sub nsw i64 %267, %278
  %290 = icmp sgt i64 %289, 0
  %291 = select i1 %290, i64 %289, i64 0
  %292 = mul nsw i64 %polly.indvar641, -32
  %293 = icmp slt i64 %292, -1168
  %294 = select i1 %293, i64 %292, i64 -1168
  %295 = add nsw i64 %294, 1199
  %polly.loop_guard687.not = icmp sgt i64 %291, %295
  br i1 %polly.loop_guard687.not, label %polly.loop_exit679, label %polly.loop_header677

polly.loop_header663:                             ; preds = %polly.loop_header644, %polly.loop_header663
  %polly.indvar667 = phi i64 [ %polly.indvar_next668, %polly.loop_header663 ], [ %283, %polly.loop_header644 ]
  %296 = add nuw nsw i64 %polly.indvar667, %267
  %polly.access.mul.call1671 = mul nsw i64 %296, 1000
  %polly.access.add.call1672 = add nuw nsw i64 %polly.access.mul.call1671, %polly.indvar647
  %polly.access.call1673 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1672
  %polly.access.call1673.load = load double, double* %polly.access.call1673, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514675 = add nuw nsw i64 %polly.indvar667, %polly.access.mul.Packed_MemRef_call1514674
  %polly.access.Packed_MemRef_call1514676 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514675
  store double %polly.access.call1673.load, double* %polly.access.Packed_MemRef_call1514676, align 8
  %polly.indvar_next668 = add nuw nsw i64 %polly.indvar667, 1
  %polly.loop_cond669.not.not = icmp slt i64 %polly.indvar667, %286
  br i1 %polly.loop_cond669.not.not, label %polly.loop_header663, label %polly.loop_exit665

polly.loop_header677:                             ; preds = %polly.loop_header677.preheader, %polly.loop_exit686
  %polly.indvar680 = phi i64 [ %polly.indvar_next681, %polly.loop_exit686 ], [ 0, %polly.loop_header677.preheader ]
  %polly.access.mul.Packed_MemRef_call1514699 = mul nuw nsw i64 %polly.indvar680, 1200
  br label %polly.loop_header684

polly.loop_exit686:                               ; preds = %polly.loop_exit694
  %polly.indvar_next681 = add nuw nsw i64 %polly.indvar680, 1
  %exitcond1133.not = icmp eq i64 %polly.indvar_next681, 1000
  br i1 %exitcond1133.not, label %polly.loop_exit679, label %polly.loop_header677

polly.loop_header684:                             ; preds = %polly.loop_header677, %polly.loop_exit694
  %indvar1284 = phi i64 [ 0, %polly.loop_header677 ], [ %indvar.next1285, %polly.loop_exit694 ]
  %indvars.iv1129 = phi i64 [ %277, %polly.loop_header677 ], [ %indvars.iv.next1130, %polly.loop_exit694 ]
  %polly.indvar688 = phi i64 [ %291, %polly.loop_header677 ], [ %polly.indvar_next689, %polly.loop_exit694 ]
  %297 = add i64 %276, %indvar1284
  %smin1286 = call i64 @llvm.smin.i64(i64 %297, i64 79)
  %298 = add nsw i64 %smin1286, 1
  %smin1131 = call i64 @llvm.smin.i64(i64 %indvars.iv1129, i64 79)
  %299 = add nsw i64 %polly.indvar688, %279
  %polly.loop_guard6951176 = icmp sgt i64 %299, -1
  br i1 %polly.loop_guard6951176, label %polly.loop_header692.preheader, label %polly.loop_exit694

polly.loop_header692.preheader:                   ; preds = %polly.loop_header684
  %300 = add nuw nsw i64 %polly.indvar688, %278
  %polly.access.add.Packed_MemRef_call2516704 = add nsw i64 %299, %polly.access.mul.Packed_MemRef_call1514699
  %polly.access.Packed_MemRef_call2516705 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516704
  %_p_scalar_706 = load double, double* %polly.access.Packed_MemRef_call2516705, align 8
  %polly.access.Packed_MemRef_call1514713 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call2516704
  %_p_scalar_714 = load double, double* %polly.access.Packed_MemRef_call1514713, align 8
  %301 = mul i64 %300, 9600
  %min.iters.check1287 = icmp ult i64 %298, 4
  br i1 %min.iters.check1287, label %polly.loop_header692.preheader1410, label %vector.ph1288

vector.ph1288:                                    ; preds = %polly.loop_header692.preheader
  %n.vec1290 = and i64 %298, -4
  %broadcast.splatinsert1296 = insertelement <4 x double> poison, double %_p_scalar_706, i32 0
  %broadcast.splat1297 = shufflevector <4 x double> %broadcast.splatinsert1296, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1299 = insertelement <4 x double> poison, double %_p_scalar_714, i32 0
  %broadcast.splat1300 = shufflevector <4 x double> %broadcast.splatinsert1299, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1280

vector.body1280:                                  ; preds = %vector.body1280, %vector.ph1288
  %index1291 = phi i64 [ 0, %vector.ph1288 ], [ %index.next1292, %vector.body1280 ]
  %302 = add nuw nsw i64 %index1291, %267
  %303 = add nuw nsw i64 %index1291, %polly.access.mul.Packed_MemRef_call1514699
  %304 = getelementptr double, double* %Packed_MemRef_call1514, i64 %303
  %305 = bitcast double* %304 to <4 x double>*
  %wide.load1295 = load <4 x double>, <4 x double>* %305, align 8
  %306 = fmul fast <4 x double> %broadcast.splat1297, %wide.load1295
  %307 = getelementptr double, double* %Packed_MemRef_call2516, i64 %303
  %308 = bitcast double* %307 to <4 x double>*
  %wide.load1298 = load <4 x double>, <4 x double>* %308, align 8
  %309 = fmul fast <4 x double> %broadcast.splat1300, %wide.load1298
  %310 = shl i64 %302, 3
  %311 = add i64 %310, %301
  %312 = getelementptr i8, i8* %call, i64 %311
  %313 = bitcast i8* %312 to <4 x double>*
  %wide.load1301 = load <4 x double>, <4 x double>* %313, align 8, !alias.scope !99, !noalias !101
  %314 = fadd fast <4 x double> %309, %306
  %315 = fmul fast <4 x double> %314, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %316 = fadd fast <4 x double> %315, %wide.load1301
  %317 = bitcast i8* %312 to <4 x double>*
  store <4 x double> %316, <4 x double>* %317, align 8, !alias.scope !99, !noalias !101
  %index.next1292 = add i64 %index1291, 4
  %318 = icmp eq i64 %index.next1292, %n.vec1290
  br i1 %318, label %middle.block1278, label %vector.body1280, !llvm.loop !110

middle.block1278:                                 ; preds = %vector.body1280
  %cmp.n1294 = icmp eq i64 %298, %n.vec1290
  br i1 %cmp.n1294, label %polly.loop_exit694, label %polly.loop_header692.preheader1410

polly.loop_header692.preheader1410:               ; preds = %polly.loop_header692.preheader, %middle.block1278
  %polly.indvar696.ph = phi i64 [ 0, %polly.loop_header692.preheader ], [ %n.vec1290, %middle.block1278 ]
  br label %polly.loop_header692

polly.loop_exit694:                               ; preds = %polly.loop_header692, %middle.block1278, %polly.loop_header684
  %polly.indvar_next689 = add nuw nsw i64 %polly.indvar688, 1
  %polly.loop_cond690.not.not = icmp slt i64 %polly.indvar688, %295
  %indvars.iv.next1130 = add i64 %indvars.iv1129, 1
  %indvar.next1285 = add i64 %indvar1284, 1
  br i1 %polly.loop_cond690.not.not, label %polly.loop_header684, label %polly.loop_exit686

polly.loop_header692:                             ; preds = %polly.loop_header692.preheader1410, %polly.loop_header692
  %polly.indvar696 = phi i64 [ %polly.indvar_next697, %polly.loop_header692 ], [ %polly.indvar696.ph, %polly.loop_header692.preheader1410 ]
  %319 = add nuw nsw i64 %polly.indvar696, %267
  %polly.access.add.Packed_MemRef_call1514700 = add nuw nsw i64 %polly.indvar696, %polly.access.mul.Packed_MemRef_call1514699
  %polly.access.Packed_MemRef_call1514701 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514700
  %_p_scalar_702 = load double, double* %polly.access.Packed_MemRef_call1514701, align 8
  %p_mul27.i = fmul fast double %_p_scalar_706, %_p_scalar_702
  %polly.access.Packed_MemRef_call2516709 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call1514700
  %_p_scalar_710 = load double, double* %polly.access.Packed_MemRef_call2516709, align 8
  %p_mul37.i = fmul fast double %_p_scalar_714, %_p_scalar_710
  %320 = shl i64 %319, 3
  %321 = add i64 %320, %301
  %scevgep715 = getelementptr i8, i8* %call, i64 %321
  %scevgep715716 = bitcast i8* %scevgep715 to double*
  %_p_scalar_717 = load double, double* %scevgep715716, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_717
  store double %p_add42.i, double* %scevgep715716, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next697 = add nuw nsw i64 %polly.indvar696, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar696, %smin1131
  br i1 %exitcond1132.not, label %polly.loop_exit694, label %polly.loop_header692, !llvm.loop !111

polly.loop_header844:                             ; preds = %entry, %polly.loop_exit852
  %indvars.iv1161 = phi i64 [ %indvars.iv.next1162, %polly.loop_exit852 ], [ 0, %entry ]
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %entry ]
  %smin1163 = call i64 @llvm.smin.i64(i64 %indvars.iv1161, i64 -1168)
  %322 = shl nsw i64 %polly.indvar847, 5
  %323 = add nsw i64 %smin1163, 1199
  br label %polly.loop_header850

polly.loop_exit852:                               ; preds = %polly.loop_exit858
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %indvars.iv.next1162 = add nsw i64 %indvars.iv1161, -32
  %exitcond1166.not = icmp eq i64 %polly.indvar_next848, 38
  br i1 %exitcond1166.not, label %polly.loop_header871, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_exit858, %polly.loop_header844
  %indvars.iv1157 = phi i64 [ %indvars.iv.next1158, %polly.loop_exit858 ], [ 0, %polly.loop_header844 ]
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_exit858 ], [ 0, %polly.loop_header844 ]
  %324 = mul nsw i64 %polly.indvar853, -32
  %smin1207 = call i64 @llvm.smin.i64(i64 %324, i64 -1168)
  %325 = add nsw i64 %smin1207, 1200
  %smin1159 = call i64 @llvm.smin.i64(i64 %indvars.iv1157, i64 -1168)
  %326 = shl nsw i64 %polly.indvar853, 5
  %327 = add nsw i64 %smin1159, 1199
  br label %polly.loop_header856

polly.loop_exit858:                               ; preds = %polly.loop_exit864
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %indvars.iv.next1158 = add nsw i64 %indvars.iv1157, -32
  %exitcond1165.not = icmp eq i64 %polly.indvar_next854, 38
  br i1 %exitcond1165.not, label %polly.loop_exit852, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_exit864, %polly.loop_header850
  %polly.indvar859 = phi i64 [ 0, %polly.loop_header850 ], [ %polly.indvar_next860, %polly.loop_exit864 ]
  %328 = add nuw nsw i64 %polly.indvar859, %322
  %329 = trunc i64 %328 to i32
  %330 = mul nuw nsw i64 %328, 9600
  %min.iters.check = icmp eq i64 %325, 0
  br i1 %min.iters.check, label %polly.loop_header862, label %vector.ph1208

vector.ph1208:                                    ; preds = %polly.loop_header856
  %broadcast.splatinsert1215 = insertelement <4 x i64> poison, i64 %326, i32 0
  %broadcast.splat1216 = shufflevector <4 x i64> %broadcast.splatinsert1215, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1217 = insertelement <4 x i32> poison, i32 %329, i32 0
  %broadcast.splat1218 = shufflevector <4 x i32> %broadcast.splatinsert1217, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1206

vector.body1206:                                  ; preds = %vector.body1206, %vector.ph1208
  %index1209 = phi i64 [ 0, %vector.ph1208 ], [ %index.next1210, %vector.body1206 ]
  %vec.ind1213 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1208 ], [ %vec.ind.next1214, %vector.body1206 ]
  %331 = add nuw nsw <4 x i64> %vec.ind1213, %broadcast.splat1216
  %332 = trunc <4 x i64> %331 to <4 x i32>
  %333 = mul <4 x i32> %broadcast.splat1218, %332
  %334 = add <4 x i32> %333, <i32 3, i32 3, i32 3, i32 3>
  %335 = urem <4 x i32> %334, <i32 1200, i32 1200, i32 1200, i32 1200>
  %336 = sitofp <4 x i32> %335 to <4 x double>
  %337 = fmul fast <4 x double> %336, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %338 = extractelement <4 x i64> %331, i32 0
  %339 = shl i64 %338, 3
  %340 = add nuw nsw i64 %339, %330
  %341 = getelementptr i8, i8* %call, i64 %340
  %342 = bitcast i8* %341 to <4 x double>*
  store <4 x double> %337, <4 x double>* %342, align 8, !alias.scope !112, !noalias !114
  %index.next1210 = add i64 %index1209, 4
  %vec.ind.next1214 = add <4 x i64> %vec.ind1213, <i64 4, i64 4, i64 4, i64 4>
  %343 = icmp eq i64 %index.next1210, %325
  br i1 %343, label %polly.loop_exit864, label %vector.body1206, !llvm.loop !117

polly.loop_exit864:                               ; preds = %vector.body1206, %polly.loop_header862
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1164.not = icmp eq i64 %polly.indvar859, %323
  br i1 %exitcond1164.not, label %polly.loop_exit858, label %polly.loop_header856

polly.loop_header862:                             ; preds = %polly.loop_header856, %polly.loop_header862
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_header862 ], [ 0, %polly.loop_header856 ]
  %344 = add nuw nsw i64 %polly.indvar865, %326
  %345 = trunc i64 %344 to i32
  %346 = mul i32 %345, %329
  %347 = add i32 %346, 3
  %348 = urem i32 %347, 1200
  %p_conv31.i = sitofp i32 %348 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %349 = shl i64 %344, 3
  %350 = add nuw nsw i64 %349, %330
  %scevgep868 = getelementptr i8, i8* %call, i64 %350
  %scevgep868869 = bitcast i8* %scevgep868 to double*
  store double %p_div33.i, double* %scevgep868869, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %exitcond1160.not = icmp eq i64 %polly.indvar865, %327
  br i1 %exitcond1160.not, label %polly.loop_exit864, label %polly.loop_header862, !llvm.loop !118

polly.loop_header871:                             ; preds = %polly.loop_exit852, %polly.loop_exit879
  %indvars.iv1151 = phi i64 [ %indvars.iv.next1152, %polly.loop_exit879 ], [ 0, %polly.loop_exit852 ]
  %polly.indvar874 = phi i64 [ %polly.indvar_next875, %polly.loop_exit879 ], [ 0, %polly.loop_exit852 ]
  %smin1153 = call i64 @llvm.smin.i64(i64 %indvars.iv1151, i64 -1168)
  %351 = shl nsw i64 %polly.indvar874, 5
  %352 = add nsw i64 %smin1153, 1199
  br label %polly.loop_header877

polly.loop_exit879:                               ; preds = %polly.loop_exit885
  %polly.indvar_next875 = add nuw nsw i64 %polly.indvar874, 1
  %indvars.iv.next1152 = add nsw i64 %indvars.iv1151, -32
  %exitcond1156.not = icmp eq i64 %polly.indvar_next875, 38
  br i1 %exitcond1156.not, label %polly.loop_header897, label %polly.loop_header871

polly.loop_header877:                             ; preds = %polly.loop_exit885, %polly.loop_header871
  %indvars.iv1147 = phi i64 [ %indvars.iv.next1148, %polly.loop_exit885 ], [ 0, %polly.loop_header871 ]
  %polly.indvar880 = phi i64 [ %polly.indvar_next881, %polly.loop_exit885 ], [ 0, %polly.loop_header871 ]
  %353 = mul nsw i64 %polly.indvar880, -32
  %smin1222 = call i64 @llvm.smin.i64(i64 %353, i64 -968)
  %354 = add nsw i64 %smin1222, 1000
  %smin1149 = call i64 @llvm.smin.i64(i64 %indvars.iv1147, i64 -968)
  %355 = shl nsw i64 %polly.indvar880, 5
  %356 = add nsw i64 %smin1149, 999
  br label %polly.loop_header883

polly.loop_exit885:                               ; preds = %polly.loop_exit891
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %indvars.iv.next1148 = add nsw i64 %indvars.iv1147, -32
  %exitcond1155.not = icmp eq i64 %polly.indvar_next881, 32
  br i1 %exitcond1155.not, label %polly.loop_exit879, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_exit891, %polly.loop_header877
  %polly.indvar886 = phi i64 [ 0, %polly.loop_header877 ], [ %polly.indvar_next887, %polly.loop_exit891 ]
  %357 = add nuw nsw i64 %polly.indvar886, %351
  %358 = trunc i64 %357 to i32
  %359 = mul nuw nsw i64 %357, 8000
  %min.iters.check1223 = icmp eq i64 %354, 0
  br i1 %min.iters.check1223, label %polly.loop_header889, label %vector.ph1224

vector.ph1224:                                    ; preds = %polly.loop_header883
  %broadcast.splatinsert1233 = insertelement <4 x i64> poison, i64 %355, i32 0
  %broadcast.splat1234 = shufflevector <4 x i64> %broadcast.splatinsert1233, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1235 = insertelement <4 x i32> poison, i32 %358, i32 0
  %broadcast.splat1236 = shufflevector <4 x i32> %broadcast.splatinsert1235, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1221

vector.body1221:                                  ; preds = %vector.body1221, %vector.ph1224
  %index1227 = phi i64 [ 0, %vector.ph1224 ], [ %index.next1228, %vector.body1221 ]
  %vec.ind1231 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1224 ], [ %vec.ind.next1232, %vector.body1221 ]
  %360 = add nuw nsw <4 x i64> %vec.ind1231, %broadcast.splat1234
  %361 = trunc <4 x i64> %360 to <4 x i32>
  %362 = mul <4 x i32> %broadcast.splat1236, %361
  %363 = add <4 x i32> %362, <i32 2, i32 2, i32 2, i32 2>
  %364 = urem <4 x i32> %363, <i32 1000, i32 1000, i32 1000, i32 1000>
  %365 = sitofp <4 x i32> %364 to <4 x double>
  %366 = fmul fast <4 x double> %365, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %367 = extractelement <4 x i64> %360, i32 0
  %368 = shl i64 %367, 3
  %369 = add nuw nsw i64 %368, %359
  %370 = getelementptr i8, i8* %call2, i64 %369
  %371 = bitcast i8* %370 to <4 x double>*
  store <4 x double> %366, <4 x double>* %371, align 8, !alias.scope !116, !noalias !119
  %index.next1228 = add i64 %index1227, 4
  %vec.ind.next1232 = add <4 x i64> %vec.ind1231, <i64 4, i64 4, i64 4, i64 4>
  %372 = icmp eq i64 %index.next1228, %354
  br i1 %372, label %polly.loop_exit891, label %vector.body1221, !llvm.loop !120

polly.loop_exit891:                               ; preds = %vector.body1221, %polly.loop_header889
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %exitcond1154.not = icmp eq i64 %polly.indvar886, %352
  br i1 %exitcond1154.not, label %polly.loop_exit885, label %polly.loop_header883

polly.loop_header889:                             ; preds = %polly.loop_header883, %polly.loop_header889
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_header889 ], [ 0, %polly.loop_header883 ]
  %373 = add nuw nsw i64 %polly.indvar892, %355
  %374 = trunc i64 %373 to i32
  %375 = mul i32 %374, %358
  %376 = add i32 %375, 2
  %377 = urem i32 %376, 1000
  %p_conv10.i = sitofp i32 %377 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %378 = shl i64 %373, 3
  %379 = add nuw nsw i64 %378, %359
  %scevgep895 = getelementptr i8, i8* %call2, i64 %379
  %scevgep895896 = bitcast i8* %scevgep895 to double*
  store double %p_div12.i, double* %scevgep895896, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %exitcond1150.not = icmp eq i64 %polly.indvar892, %356
  br i1 %exitcond1150.not, label %polly.loop_exit891, label %polly.loop_header889, !llvm.loop !121

polly.loop_header897:                             ; preds = %polly.loop_exit879, %polly.loop_exit905
  %indvars.iv1141 = phi i64 [ %indvars.iv.next1142, %polly.loop_exit905 ], [ 0, %polly.loop_exit879 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_exit879 ]
  %smin1143 = call i64 @llvm.smin.i64(i64 %indvars.iv1141, i64 -1168)
  %380 = shl nsw i64 %polly.indvar900, 5
  %381 = add nsw i64 %smin1143, 1199
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1142 = add nsw i64 %indvars.iv1141, -32
  %exitcond1146.not = icmp eq i64 %polly.indvar_next901, 38
  br i1 %exitcond1146.not, label %init_array.exit, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %indvars.iv1137 = phi i64 [ %indvars.iv.next1138, %polly.loop_exit911 ], [ 0, %polly.loop_header897 ]
  %polly.indvar906 = phi i64 [ %polly.indvar_next907, %polly.loop_exit911 ], [ 0, %polly.loop_header897 ]
  %382 = mul nsw i64 %polly.indvar906, -32
  %smin1240 = call i64 @llvm.smin.i64(i64 %382, i64 -968)
  %383 = add nsw i64 %smin1240, 1000
  %smin1139 = call i64 @llvm.smin.i64(i64 %indvars.iv1137, i64 -968)
  %384 = shl nsw i64 %polly.indvar906, 5
  %385 = add nsw i64 %smin1139, 999
  br label %polly.loop_header909

polly.loop_exit911:                               ; preds = %polly.loop_exit917
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %indvars.iv.next1138 = add nsw i64 %indvars.iv1137, -32
  %exitcond1145.not = icmp eq i64 %polly.indvar_next907, 32
  br i1 %exitcond1145.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_exit917, %polly.loop_header903
  %polly.indvar912 = phi i64 [ 0, %polly.loop_header903 ], [ %polly.indvar_next913, %polly.loop_exit917 ]
  %386 = add nuw nsw i64 %polly.indvar912, %380
  %387 = trunc i64 %386 to i32
  %388 = mul nuw nsw i64 %386, 8000
  %min.iters.check1241 = icmp eq i64 %383, 0
  br i1 %min.iters.check1241, label %polly.loop_header915, label %vector.ph1242

vector.ph1242:                                    ; preds = %polly.loop_header909
  %broadcast.splatinsert1251 = insertelement <4 x i64> poison, i64 %384, i32 0
  %broadcast.splat1252 = shufflevector <4 x i64> %broadcast.splatinsert1251, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1253 = insertelement <4 x i32> poison, i32 %387, i32 0
  %broadcast.splat1254 = shufflevector <4 x i32> %broadcast.splatinsert1253, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.body1239, %vector.ph1242
  %index1245 = phi i64 [ 0, %vector.ph1242 ], [ %index.next1246, %vector.body1239 ]
  %vec.ind1249 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1242 ], [ %vec.ind.next1250, %vector.body1239 ]
  %389 = add nuw nsw <4 x i64> %vec.ind1249, %broadcast.splat1252
  %390 = trunc <4 x i64> %389 to <4 x i32>
  %391 = mul <4 x i32> %broadcast.splat1254, %390
  %392 = add <4 x i32> %391, <i32 1, i32 1, i32 1, i32 1>
  %393 = urem <4 x i32> %392, <i32 1200, i32 1200, i32 1200, i32 1200>
  %394 = sitofp <4 x i32> %393 to <4 x double>
  %395 = fmul fast <4 x double> %394, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %396 = extractelement <4 x i64> %389, i32 0
  %397 = shl i64 %396, 3
  %398 = add nuw nsw i64 %397, %388
  %399 = getelementptr i8, i8* %call1, i64 %398
  %400 = bitcast i8* %399 to <4 x double>*
  store <4 x double> %395, <4 x double>* %400, align 8, !alias.scope !115, !noalias !122
  %index.next1246 = add i64 %index1245, 4
  %vec.ind.next1250 = add <4 x i64> %vec.ind1249, <i64 4, i64 4, i64 4, i64 4>
  %401 = icmp eq i64 %index.next1246, %383
  br i1 %401, label %polly.loop_exit917, label %vector.body1239, !llvm.loop !123

polly.loop_exit917:                               ; preds = %vector.body1239, %polly.loop_header915
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1144.not = icmp eq i64 %polly.indvar912, %381
  br i1 %exitcond1144.not, label %polly.loop_exit911, label %polly.loop_header909

polly.loop_header915:                             ; preds = %polly.loop_header909, %polly.loop_header915
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_header915 ], [ 0, %polly.loop_header909 ]
  %402 = add nuw nsw i64 %polly.indvar918, %384
  %403 = trunc i64 %402 to i32
  %404 = mul i32 %403, %387
  %405 = add i32 %404, 1
  %406 = urem i32 %405, 1200
  %p_conv.i = sitofp i32 %406 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %407 = shl i64 %402, 3
  %408 = add nuw nsw i64 %407, %388
  %scevgep922 = getelementptr i8, i8* %call1, i64 %408
  %scevgep922923 = bitcast i8* %scevgep922 to double*
  store double %p_div.i, double* %scevgep922923, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %exitcond1140.not = icmp eq i64 %polly.indvar918, %385
  br i1 %exitcond1140.not, label %polly.loop_exit917, label %polly.loop_header915, !llvm.loop !124
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
!26 = !{!"llvm.loop.tile.size", i32 80}
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
