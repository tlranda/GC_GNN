; ModuleID = 'syr2k_exhaustive/mmp_all_SM_1867.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_1867.c"
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
  %scevgep1177 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1176 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1175 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1174 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1174, %scevgep1177
  %bound1 = icmp ult i8* %scevgep1176, %scevgep1175
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
  br i1 %exitcond18.not.i, label %vector.ph1181, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1181:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1188 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1189 = shufflevector <4 x i64> %broadcast.splatinsert1188, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1180

vector.body1180:                                  ; preds = %vector.body1180, %vector.ph1181
  %index1182 = phi i64 [ 0, %vector.ph1181 ], [ %index.next1183, %vector.body1180 ]
  %vec.ind1186 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1181 ], [ %vec.ind.next1187, %vector.body1180 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1186, %broadcast.splat1189
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv7.i, i64 %index1182
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1183 = add i64 %index1182, 4
  %vec.ind.next1187 = add <4 x i64> %vec.ind1186, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1183, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1180, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1180
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1181, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit907
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start511, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1243 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1243, label %for.body3.i46.preheader1386, label %vector.ph1244

vector.ph1244:                                    ; preds = %for.body3.i46.preheader
  %n.vec1246 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1242

vector.body1242:                                  ; preds = %vector.body1242, %vector.ph1244
  %index1247 = phi i64 [ 0, %vector.ph1244 ], [ %index.next1248, %vector.body1242 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i, i64 %index1247
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1248 = add i64 %index1247, 4
  %46 = icmp eq i64 %index.next1248, %n.vec1246
  br i1 %46, label %middle.block1240, label %vector.body1242, !llvm.loop !18

middle.block1240:                                 ; preds = %vector.body1242
  %cmp.n1250 = icmp eq i64 %indvars.iv21.i, %n.vec1246
  br i1 %cmp.n1250, label %for.inc6.i, label %for.body3.i46.preheader1386

for.body3.i46.preheader1386:                      ; preds = %for.body3.i46.preheader, %middle.block1240
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1246, %middle.block1240 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1386, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1386 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1240, %for.cond1.preheader.i45
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !45

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
  %min.iters.check1288 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1288, label %for.body3.i60.preheader1384, label %vector.ph1289

vector.ph1289:                                    ; preds = %for.body3.i60.preheader
  %n.vec1291 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1287

vector.body1287:                                  ; preds = %vector.body1287, %vector.ph1289
  %index1292 = phi i64 [ 0, %vector.ph1289 ], [ %index.next1293, %vector.body1287 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i52, i64 %index1292
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1296 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1296, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1293 = add i64 %index1292, 4
  %57 = icmp eq i64 %index.next1293, %n.vec1291
  br i1 %57, label %middle.block1285, label %vector.body1287, !llvm.loop !56

middle.block1285:                                 ; preds = %vector.body1287
  %cmp.n1295 = icmp eq i64 %indvars.iv21.i52, %n.vec1291
  br i1 %cmp.n1295, label %for.inc6.i63, label %for.body3.i60.preheader1384

for.body3.i60.preheader1384:                      ; preds = %for.body3.i60.preheader, %middle.block1285
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1291, %middle.block1285 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1384, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1384 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !57

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1285, %for.cond1.preheader.i54
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !45

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
  %min.iters.check1336 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1336, label %for.body3.i99.preheader1382, label %vector.ph1337

vector.ph1337:                                    ; preds = %for.body3.i99.preheader
  %n.vec1339 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1335

vector.body1335:                                  ; preds = %vector.body1335, %vector.ph1337
  %index1340 = phi i64 [ 0, %vector.ph1337 ], [ %index.next1341, %vector.body1335 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i91, i64 %index1340
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1344 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1344, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1341 = add i64 %index1340, 4
  %68 = icmp eq i64 %index.next1341, %n.vec1339
  br i1 %68, label %middle.block1333, label %vector.body1335, !llvm.loop !58

middle.block1333:                                 ; preds = %vector.body1335
  %cmp.n1343 = icmp eq i64 %indvars.iv21.i91, %n.vec1339
  br i1 %cmp.n1343, label %for.inc6.i102, label %for.body3.i99.preheader1382

for.body3.i99.preheader1382:                      ; preds = %for.body3.i99.preheader, %middle.block1333
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1339, %middle.block1333 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1382, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1382 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !59

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1333, %for.cond1.preheader.i93
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1348 = phi i64 [ %indvar.next1349, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1348, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1350 = icmp ult i64 %88, 4
  br i1 %min.iters.check1350, label %polly.loop_header192.preheader, label %vector.ph1351

vector.ph1351:                                    ; preds = %polly.loop_header
  %n.vec1353 = and i64 %88, -4
  br label %vector.body1347

vector.body1347:                                  ; preds = %vector.body1347, %vector.ph1351
  %index1354 = phi i64 [ 0, %vector.ph1351 ], [ %index.next1355, %vector.body1347 ]
  %90 = shl nuw nsw i64 %index1354, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1358 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !64, !noalias !66
  %93 = fmul fast <4 x double> %wide.load1358, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !64, !noalias !66
  %index.next1355 = add i64 %index1354, 4
  %95 = icmp eq i64 %index.next1355, %n.vec1353
  br i1 %95, label %middle.block1345, label %vector.body1347, !llvm.loop !71

middle.block1345:                                 ; preds = %vector.body1347
  %cmp.n1357 = icmp eq i64 %88, %n.vec1353
  br i1 %cmp.n1357, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1345
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1353, %middle.block1345 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1345
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1349 = add i64 %indvar1348, 1
  br i1 %exitcond1062.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1061.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1061.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !72

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1060.not, label %polly.loop_header216, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 1000
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !68, !noalias !74
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1059.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055, %polly.loop_exit224 ], [ 7, %polly.loop_exit208 ]
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = mul nsw i64 %polly.indvar219, -32
  %98 = shl nuw nsw i64 %polly.indvar219, 5
  %99 = udiv i64 %indvars.iv1054, 25
  %umin = call i64 @llvm.umin.i64(i64 %99, i64 11)
  %100 = mul nsw i64 %polly.indvar219, -32
  %101 = icmp slt i64 %100, -1168
  %102 = select i1 %101, i64 %100, i64 -1168
  %103 = add nsw i64 %102, 1199
  %104 = shl nsw i64 %polly.indvar219, 5
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, -32
  %indvars.iv.next1041 = add nuw nsw i64 %indvars.iv1040, 32
  %indvars.iv.next1055 = add nuw nsw i64 %indvars.iv1054, 8
  %exitcond1058.not = icmp eq i64 %polly.indvar_next220, 38
  br i1 %exitcond1058.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 0, %polly.loop_header216 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit230 ], [ 0, %polly.loop_header216 ]
  %smin1052 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -968)
  %105 = add nsw i64 %smin1052, 1000
  %106 = shl nsw i64 %polly.indvar225, 5
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %exitcond1057.not = icmp eq i64 %polly.indvar_next226, 32
  br i1 %exitcond1057.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %polly.loop_exit236 ], [ %indvars.iv1040, %polly.loop_header222 ]
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit236 ], [ %indvars.iv1036, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %107 = mul nuw nsw i64 %polly.indvar231, 100
  %108 = add i64 %97, %107
  %smax1362 = call i64 @llvm.smax.i64(i64 %108, i64 0)
  %109 = mul nsw i64 %polly.indvar231, -100
  %110 = add i64 %98, %109
  %111 = add i64 %smax1362, %110
  %112 = mul nuw nsw i64 %polly.indvar231, 100
  %113 = add nsw i64 %112, %100
  %114 = icmp sgt i64 %113, 0
  %115 = select i1 %114, i64 %113, i64 0
  %polly.loop_guard.not = icmp sgt i64 %115, %103
  br i1 %polly.loop_guard.not, label %polly.loop_exit236, label %polly.loop_header234.preheader

polly.loop_header234.preheader:                   ; preds = %polly.loop_header228
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1038, i64 0)
  %116 = add i64 %smax, %indvars.iv1042
  %117 = sub nsw i64 %104, %112
  %118 = add nuw nsw i64 %112, 100
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit267, %polly.loop_header228
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1039 = add nsw i64 %indvars.iv1038, 100
  %indvars.iv.next1043 = add nsw i64 %indvars.iv1042, -100
  %exitcond1056.not = icmp eq i64 %polly.indvar231, %umin
  br i1 %exitcond1056.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234.preheader, %polly.loop_exit267
  %indvar1363 = phi i64 [ 0, %polly.loop_header234.preheader ], [ %indvar.next1364, %polly.loop_exit267 ]
  %indvars.iv1044 = phi i64 [ %116, %polly.loop_header234.preheader ], [ %indvars.iv.next1045, %polly.loop_exit267 ]
  %polly.indvar237 = phi i64 [ %115, %polly.loop_header234.preheader ], [ %polly.indvar_next238, %polly.loop_exit267 ]
  %119 = add i64 %111, %indvar1363
  %smin1365 = call i64 @llvm.smin.i64(i64 %119, i64 99)
  %120 = add nsw i64 %smin1365, 1
  %smin1050 = call i64 @llvm.smin.i64(i64 %indvars.iv1044, i64 99)
  %121 = add nsw i64 %polly.indvar237, %117
  %polly.loop_guard2501163 = icmp sgt i64 %121, -1
  %122 = add nuw nsw i64 %polly.indvar237, %104
  %.not = icmp ult i64 %122, %118
  %polly.access.mul.call1259 = mul nsw i64 %122, 1000
  %123 = add nuw i64 %polly.access.mul.call1259, %106
  br i1 %polly.loop_guard2501163, label %polly.loop_header240.us, label %polly.loop_header234.split

polly.loop_header240.us:                          ; preds = %polly.loop_header234, %polly.merge.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.merge.us ], [ 0, %polly.loop_header234 ]
  %124 = add nuw nsw i64 %polly.indvar243.us, %106
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar243.us, 1200
  br label %polly.loop_header247.us

polly.loop_header247.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header247.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_header247.us ], [ 0, %polly.loop_header240.us ]
  %125 = add nuw nsw i64 %polly.indvar251.us, %112
  %polly.access.mul.call1255.us = mul nuw nsw i64 %125, 1000
  %polly.access.add.call1256.us = add nuw nsw i64 %124, %polly.access.mul.call1255.us
  %polly.access.call1257.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1256.us
  %polly.access.call1257.load.us = load double, double* %polly.access.call1257.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar251.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1257.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar251.us, %smin1050
  br i1 %exitcond1047.not, label %polly.cond.loopexit.us, label %polly.loop_header247.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1260.us = add nuw nsw i64 %123, %polly.indvar243.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1263.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %121
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar_next244.us, %105
  br i1 %exitcond1049.not, label %polly.loop_header265.preheader, label %polly.loop_header240.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header247.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit267, label %polly.loop_header240

polly.loop_exit267:                               ; preds = %polly.loop_exit274.loopexit.us, %polly.loop_header234.split, %polly.loop_header265.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %polly.loop_cond239.not.not = icmp ult i64 %polly.indvar237, %103
  %indvars.iv.next1045 = add i64 %indvars.iv1044, 1
  %indvar.next1364 = add i64 %indvar1363, 1
  br i1 %polly.loop_cond239.not.not, label %polly.loop_header234, label %polly.loop_exit236

polly.loop_header240:                             ; preds = %polly.loop_header234.split, %polly.loop_header240
  %polly.indvar243 = phi i64 [ %polly.indvar_next244, %polly.loop_header240 ], [ 0, %polly.loop_header234.split ]
  %polly.access.add.call1260 = add nuw nsw i64 %123, %polly.indvar243
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !67, !noalias !75
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar243, 1200
  %polly.access.add.Packed_MemRef_call1263 = add nsw i64 %polly.access.mul.Packed_MemRef_call1262, %121
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next244 = add nuw nsw i64 %polly.indvar243, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next244, %105
  br i1 %exitcond.not, label %polly.loop_header265.preheader, label %polly.loop_header240

polly.loop_header265.preheader:                   ; preds = %polly.loop_header240, %polly.merge.us
  %126 = mul i64 %122, 9600
  br i1 %polly.loop_guard2501163, label %polly.loop_header265.us, label %polly.loop_exit267

polly.loop_header265.us:                          ; preds = %polly.loop_header265.preheader, %polly.loop_exit274.loopexit.us
  %polly.indvar268.us = phi i64 [ %polly.indvar_next269.us, %polly.loop_exit274.loopexit.us ], [ 0, %polly.loop_header265.preheader ]
  %polly.access.mul.Packed_MemRef_call1279.us = mul nuw nsw i64 %polly.indvar268.us, 1200
  %127 = add nuw nsw i64 %polly.indvar268.us, %106
  %polly.access.mul.Packed_MemRef_call2283.us = mul nuw nsw i64 %127, 1200
  %polly.access.add.Packed_MemRef_call2284.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us, %122
  %polly.access.Packed_MemRef_call2285.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call2285.us, align 8
  %polly.access.add.Packed_MemRef_call1292.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1279.us, %121
  %polly.access.Packed_MemRef_call1293.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call1293.us, align 8
  %min.iters.check1366 = icmp ult i64 %120, 4
  br i1 %min.iters.check1366, label %polly.loop_header272.us.preheader, label %vector.ph1367

vector.ph1367:                                    ; preds = %polly.loop_header265.us
  %n.vec1369 = and i64 %120, -4
  %broadcast.splatinsert1375 = insertelement <4 x double> poison, double %_p_scalar_286.us, i32 0
  %broadcast.splat1376 = shufflevector <4 x double> %broadcast.splatinsert1375, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1378 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1379 = shufflevector <4 x double> %broadcast.splatinsert1378, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1361

vector.body1361:                                  ; preds = %vector.body1361, %vector.ph1367
  %index1370 = phi i64 [ 0, %vector.ph1367 ], [ %index.next1371, %vector.body1361 ]
  %128 = add nuw nsw i64 %index1370, %112
  %129 = add nuw nsw i64 %index1370, %polly.access.mul.Packed_MemRef_call1279.us
  %130 = getelementptr double, double* %Packed_MemRef_call1, i64 %129
  %131 = bitcast double* %130 to <4 x double>*
  %wide.load1374 = load <4 x double>, <4 x double>* %131, align 8
  %132 = fmul fast <4 x double> %broadcast.splat1376, %wide.load1374
  %133 = add nuw nsw i64 %128, %polly.access.mul.Packed_MemRef_call2283.us
  %134 = getelementptr double, double* %Packed_MemRef_call2, i64 %133
  %135 = bitcast double* %134 to <4 x double>*
  %wide.load1377 = load <4 x double>, <4 x double>* %135, align 8
  %136 = fmul fast <4 x double> %broadcast.splat1379, %wide.load1377
  %137 = shl i64 %128, 3
  %138 = add i64 %137, %126
  %139 = getelementptr i8, i8* %call, i64 %138
  %140 = bitcast i8* %139 to <4 x double>*
  %wide.load1380 = load <4 x double>, <4 x double>* %140, align 8, !alias.scope !64, !noalias !66
  %141 = fadd fast <4 x double> %136, %132
  %142 = fmul fast <4 x double> %141, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %143 = fadd fast <4 x double> %142, %wide.load1380
  %144 = bitcast i8* %139 to <4 x double>*
  store <4 x double> %143, <4 x double>* %144, align 8, !alias.scope !64, !noalias !66
  %index.next1371 = add i64 %index1370, 4
  %145 = icmp eq i64 %index.next1371, %n.vec1369
  br i1 %145, label %middle.block1359, label %vector.body1361, !llvm.loop !76

middle.block1359:                                 ; preds = %vector.body1361
  %cmp.n1373 = icmp eq i64 %120, %n.vec1369
  br i1 %cmp.n1373, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us.preheader

polly.loop_header272.us.preheader:                ; preds = %polly.loop_header265.us, %middle.block1359
  %polly.indvar276.us.ph = phi i64 [ 0, %polly.loop_header265.us ], [ %n.vec1369, %middle.block1359 ]
  br label %polly.loop_header272.us

polly.loop_header272.us:                          ; preds = %polly.loop_header272.us.preheader, %polly.loop_header272.us
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_header272.us ], [ %polly.indvar276.us.ph, %polly.loop_header272.us.preheader ]
  %146 = add nuw nsw i64 %polly.indvar276.us, %112
  %polly.access.add.Packed_MemRef_call1280.us = add nuw nsw i64 %polly.indvar276.us, %polly.access.mul.Packed_MemRef_call1279.us
  %polly.access.Packed_MemRef_call1281.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call1281.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %polly.access.add.Packed_MemRef_call2288.us = add nuw nsw i64 %146, %polly.access.mul.Packed_MemRef_call2283.us
  %polly.access.Packed_MemRef_call2289.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call2289.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %147 = shl i64 %146, 3
  %148 = add i64 %147, %126
  %scevgep295.us = getelementptr i8, i8* %call, i64 %148
  %scevgep295296.us = bitcast i8* %scevgep295.us to double*
  %_p_scalar_297.us = load double, double* %scevgep295296.us, align 8, !alias.scope !64, !noalias !66
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_297.us
  store double %p_add42.i118.us, double* %scevgep295296.us, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar276.us, %smin1050
  br i1 %exitcond1051.not, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us, !llvm.loop !77

polly.loop_exit274.loopexit.us:                   ; preds = %polly.loop_header272.us, %middle.block1359
  %polly.indvar_next269.us = add nuw nsw i64 %polly.indvar268.us, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar_next269.us, %105
  br i1 %exitcond1053.not, label %polly.loop_exit267, label %polly.loop_header265.us

polly.start300:                                   ; preds = %kernel_syr2k.exit
  %malloccall302 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  %malloccall304 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header388

polly.exiting301:                                 ; preds = %polly.loop_exit428
  tail call void @free(i8* %malloccall302)
  tail call void @free(i8* %malloccall304)
  br label %kernel_syr2k.exit90

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.start300
  %indvar1300 = phi i64 [ %indvar.next1301, %polly.loop_exit396 ], [ 0, %polly.start300 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start300 ]
  %149 = add i64 %indvar1300, 1
  %150 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %150
  %min.iters.check1302 = icmp ult i64 %149, 4
  br i1 %min.iters.check1302, label %polly.loop_header394.preheader, label %vector.ph1303

vector.ph1303:                                    ; preds = %polly.loop_header388
  %n.vec1305 = and i64 %149, -4
  br label %vector.body1299

vector.body1299:                                  ; preds = %vector.body1299, %vector.ph1303
  %index1306 = phi i64 [ 0, %vector.ph1303 ], [ %index.next1307, %vector.body1299 ]
  %151 = shl nuw nsw i64 %index1306, 3
  %152 = getelementptr i8, i8* %scevgep400, i64 %151
  %153 = bitcast i8* %152 to <4 x double>*
  %wide.load1310 = load <4 x double>, <4 x double>* %153, align 8, !alias.scope !78, !noalias !80
  %154 = fmul fast <4 x double> %wide.load1310, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %155 = bitcast i8* %152 to <4 x double>*
  store <4 x double> %154, <4 x double>* %155, align 8, !alias.scope !78, !noalias !80
  %index.next1307 = add i64 %index1306, 4
  %156 = icmp eq i64 %index.next1307, %n.vec1305
  br i1 %156, label %middle.block1297, label %vector.body1299, !llvm.loop !85

middle.block1297:                                 ; preds = %vector.body1299
  %cmp.n1309 = icmp eq i64 %149, %n.vec1305
  br i1 %cmp.n1309, label %polly.loop_exit396, label %polly.loop_header394.preheader

polly.loop_header394.preheader:                   ; preds = %polly.loop_header388, %middle.block1297
  %polly.indvar397.ph = phi i64 [ 0, %polly.loop_header388 ], [ %n.vec1305, %middle.block1297 ]
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394, %middle.block1297
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar_next392, 1200
  %indvar.next1301 = add i64 %indvar1300, 1
  br i1 %exitcond1095.not, label %polly.loop_header404.preheader, label %polly.loop_header388

polly.loop_header404.preheader:                   ; preds = %polly.loop_exit396
  %Packed_MemRef_call1303 = bitcast i8* %malloccall302 to double*
  %Packed_MemRef_call2305 = bitcast i8* %malloccall304 to double*
  br label %polly.loop_header404

polly.loop_header394:                             ; preds = %polly.loop_header394.preheader, %polly.loop_header394
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_header394 ], [ %polly.indvar397.ph, %polly.loop_header394.preheader ]
  %157 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %157
  %scevgep401402 = bitcast i8* %scevgep401 to double*
  %_p_scalar_403 = load double, double* %scevgep401402, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_403, 1.200000e+00
  store double %p_mul.i57, double* %scevgep401402, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond1094.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !86

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_exit412
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_exit412 ], [ 0, %polly.loop_header404.preheader ]
  %polly.access.mul.Packed_MemRef_call2305 = mul nuw nsw i64 %polly.indvar407, 1200
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_header410
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar_next408, 1000
  br i1 %exitcond1093.not, label %polly.loop_header420, label %polly.loop_header404

polly.loop_header410:                             ; preds = %polly.loop_header410, %polly.loop_header404
  %polly.indvar413 = phi i64 [ 0, %polly.loop_header404 ], [ %polly.indvar_next414, %polly.loop_header410 ]
  %polly.access.mul.call2417 = mul nuw nsw i64 %polly.indvar413, 1000
  %polly.access.add.call2418 = add nuw nsw i64 %polly.access.mul.call2417, %polly.indvar407
  %polly.access.call2419 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2418
  %polly.access.call2419.load = load double, double* %polly.access.call2419, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call2305 = add nuw nsw i64 %polly.indvar413, %polly.access.mul.Packed_MemRef_call2305
  %polly.access.Packed_MemRef_call2305 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305
  store double %polly.access.call2419.load, double* %polly.access.Packed_MemRef_call2305, align 8
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar_next414, 1200
  br i1 %exitcond1092.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header420:                             ; preds = %polly.loop_exit412, %polly.loop_exit428
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087, %polly.loop_exit428 ], [ 7, %polly.loop_exit412 ]
  %indvars.iv1072 = phi i64 [ %indvars.iv.next1073, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %158 = mul nsw i64 %polly.indvar423, -32
  %159 = shl nuw nsw i64 %polly.indvar423, 5
  %160 = udiv i64 %indvars.iv1086, 25
  %umin1088 = call i64 @llvm.umin.i64(i64 %160, i64 11)
  %161 = mul nsw i64 %polly.indvar423, -32
  %162 = icmp slt i64 %161, -1168
  %163 = select i1 %162, i64 %161, i64 -1168
  %164 = add nsw i64 %163, 1199
  %165 = shl nsw i64 %polly.indvar423, 5
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_exit435
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1068 = add nsw i64 %indvars.iv1067, -32
  %indvars.iv.next1073 = add nuw nsw i64 %indvars.iv1072, 32
  %indvars.iv.next1087 = add nuw nsw i64 %indvars.iv1086, 8
  %exitcond1091.not = icmp eq i64 %polly.indvar_next424, 38
  br i1 %exitcond1091.not, label %polly.exiting301, label %polly.loop_header420

polly.loop_header426:                             ; preds = %polly.loop_exit435, %polly.loop_header420
  %indvars.iv1063 = phi i64 [ %indvars.iv.next1064, %polly.loop_exit435 ], [ 0, %polly.loop_header420 ]
  %polly.indvar429 = phi i64 [ %polly.indvar_next430, %polly.loop_exit435 ], [ 0, %polly.loop_header420 ]
  %smin1084 = call i64 @llvm.smin.i64(i64 %indvars.iv1063, i64 -968)
  %166 = add nsw i64 %smin1084, 1000
  %167 = shl nsw i64 %polly.indvar429, 5
  br label %polly.loop_header433

polly.loop_exit435:                               ; preds = %polly.loop_exit442
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %indvars.iv.next1064 = add nsw i64 %indvars.iv1063, -32
  %exitcond1090.not = icmp eq i64 %polly.indvar_next430, 32
  br i1 %exitcond1090.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header433:                             ; preds = %polly.loop_exit442, %polly.loop_header426
  %indvars.iv1074 = phi i64 [ %indvars.iv.next1075, %polly.loop_exit442 ], [ %indvars.iv1072, %polly.loop_header426 ]
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit442 ], [ %indvars.iv1067, %polly.loop_header426 ]
  %polly.indvar436 = phi i64 [ %polly.indvar_next437, %polly.loop_exit442 ], [ 0, %polly.loop_header426 ]
  %168 = mul nuw nsw i64 %polly.indvar436, 100
  %169 = add i64 %158, %168
  %smax1314 = call i64 @llvm.smax.i64(i64 %169, i64 0)
  %170 = mul nsw i64 %polly.indvar436, -100
  %171 = add i64 %159, %170
  %172 = add i64 %smax1314, %171
  %173 = mul nuw nsw i64 %polly.indvar436, 100
  %174 = add nsw i64 %173, %161
  %175 = icmp sgt i64 %174, 0
  %176 = select i1 %175, i64 %174, i64 0
  %polly.loop_guard443.not = icmp sgt i64 %176, %164
  br i1 %polly.loop_guard443.not, label %polly.loop_exit442, label %polly.loop_header440.preheader

polly.loop_header440.preheader:                   ; preds = %polly.loop_header433
  %smax1071 = call i64 @llvm.smax.i64(i64 %indvars.iv1069, i64 0)
  %177 = add i64 %smax1071, %indvars.iv1074
  %178 = sub nsw i64 %165, %173
  %179 = add nuw nsw i64 %173, 100
  br label %polly.loop_header440

polly.loop_exit442:                               ; preds = %polly.loop_exit478, %polly.loop_header433
  %polly.indvar_next437 = add nuw nsw i64 %polly.indvar436, 1
  %indvars.iv.next1070 = add nsw i64 %indvars.iv1069, 100
  %indvars.iv.next1075 = add nsw i64 %indvars.iv1074, -100
  %exitcond1089.not = icmp eq i64 %polly.indvar436, %umin1088
  br i1 %exitcond1089.not, label %polly.loop_exit435, label %polly.loop_header433

polly.loop_header440:                             ; preds = %polly.loop_header440.preheader, %polly.loop_exit478
  %indvar1315 = phi i64 [ 0, %polly.loop_header440.preheader ], [ %indvar.next1316, %polly.loop_exit478 ]
  %indvars.iv1076 = phi i64 [ %177, %polly.loop_header440.preheader ], [ %indvars.iv.next1077, %polly.loop_exit478 ]
  %polly.indvar444 = phi i64 [ %176, %polly.loop_header440.preheader ], [ %polly.indvar_next445, %polly.loop_exit478 ]
  %180 = add i64 %172, %indvar1315
  %smin1317 = call i64 @llvm.smin.i64(i64 %180, i64 99)
  %181 = add nsw i64 %smin1317, 1
  %smin1082 = call i64 @llvm.smin.i64(i64 %indvars.iv1076, i64 99)
  %182 = add nsw i64 %polly.indvar444, %178
  %polly.loop_guard4571164 = icmp sgt i64 %182, -1
  %183 = add nuw nsw i64 %polly.indvar444, %165
  %.not926 = icmp ult i64 %183, %179
  %polly.access.mul.call1470 = mul nsw i64 %183, 1000
  %184 = add nuw i64 %polly.access.mul.call1470, %167
  br i1 %polly.loop_guard4571164, label %polly.loop_header447.us, label %polly.loop_header440.split

polly.loop_header447.us:                          ; preds = %polly.loop_header440, %polly.merge466.us
  %polly.indvar450.us = phi i64 [ %polly.indvar_next451.us, %polly.merge466.us ], [ 0, %polly.loop_header440 ]
  %185 = add nuw nsw i64 %polly.indvar450.us, %167
  %polly.access.mul.Packed_MemRef_call1303.us = mul nuw nsw i64 %polly.indvar450.us, 1200
  br label %polly.loop_header454.us

polly.loop_header454.us:                          ; preds = %polly.loop_header447.us, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ 0, %polly.loop_header447.us ]
  %186 = add nuw nsw i64 %polly.indvar458.us, %173
  %polly.access.mul.call1462.us = mul nuw nsw i64 %186, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %185, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1303.us = add nuw nsw i64 %polly.indvar458.us, %polly.access.mul.Packed_MemRef_call1303.us
  %polly.access.Packed_MemRef_call1303.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1303.us, align 8
  %polly.indvar_next459.us = add nuw nsw i64 %polly.indvar458.us, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar458.us, %smin1082
  br i1 %exitcond1079.not, label %polly.cond465.loopexit.us, label %polly.loop_header454.us

polly.then467.us:                                 ; preds = %polly.cond465.loopexit.us
  %polly.access.add.call1471.us = add nuw nsw i64 %184, %polly.indvar450.us
  %polly.access.call1472.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.us
  %polly.access.call1472.load.us = load double, double* %polly.access.call1472.us, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1303474.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1303.us, %182
  %polly.access.Packed_MemRef_call1303475.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.us
  store double %polly.access.call1472.load.us, double* %polly.access.Packed_MemRef_call1303475.us, align 8
  br label %polly.merge466.us

polly.merge466.us:                                ; preds = %polly.then467.us, %polly.cond465.loopexit.us
  %polly.indvar_next451.us = add nuw nsw i64 %polly.indvar450.us, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar_next451.us, %166
  br i1 %exitcond1081.not, label %polly.loop_header476.preheader, label %polly.loop_header447.us

polly.cond465.loopexit.us:                        ; preds = %polly.loop_header454.us
  br i1 %.not926, label %polly.merge466.us, label %polly.then467.us

polly.loop_header440.split:                       ; preds = %polly.loop_header440
  br i1 %.not926, label %polly.loop_exit478, label %polly.loop_header447

polly.loop_exit478:                               ; preds = %polly.loop_exit485.loopexit.us, %polly.loop_header440.split, %polly.loop_header476.preheader
  %polly.indvar_next445 = add nuw nsw i64 %polly.indvar444, 1
  %polly.loop_cond446.not.not = icmp ult i64 %polly.indvar444, %164
  %indvars.iv.next1077 = add i64 %indvars.iv1076, 1
  %indvar.next1316 = add i64 %indvar1315, 1
  br i1 %polly.loop_cond446.not.not, label %polly.loop_header440, label %polly.loop_exit442

polly.loop_header447:                             ; preds = %polly.loop_header440.split, %polly.loop_header447
  %polly.indvar450 = phi i64 [ %polly.indvar_next451, %polly.loop_header447 ], [ 0, %polly.loop_header440.split ]
  %polly.access.add.call1471 = add nuw nsw i64 %184, %polly.indvar450
  %polly.access.call1472 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471
  %polly.access.call1472.load = load double, double* %polly.access.call1472, align 8, !alias.scope !81, !noalias !88
  %polly.access.mul.Packed_MemRef_call1303473 = mul nuw nsw i64 %polly.indvar450, 1200
  %polly.access.add.Packed_MemRef_call1303474 = add nsw i64 %polly.access.mul.Packed_MemRef_call1303473, %182
  %polly.access.Packed_MemRef_call1303475 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474
  store double %polly.access.call1472.load, double* %polly.access.Packed_MemRef_call1303475, align 8
  %polly.indvar_next451 = add nuw nsw i64 %polly.indvar450, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar_next451, %166
  br i1 %exitcond1066.not, label %polly.loop_header476.preheader, label %polly.loop_header447

polly.loop_header476.preheader:                   ; preds = %polly.loop_header447, %polly.merge466.us
  %187 = mul i64 %183, 9600
  br i1 %polly.loop_guard4571164, label %polly.loop_header476.us, label %polly.loop_exit478

polly.loop_header476.us:                          ; preds = %polly.loop_header476.preheader, %polly.loop_exit485.loopexit.us
  %polly.indvar479.us = phi i64 [ %polly.indvar_next480.us, %polly.loop_exit485.loopexit.us ], [ 0, %polly.loop_header476.preheader ]
  %polly.access.mul.Packed_MemRef_call1303490.us = mul nuw nsw i64 %polly.indvar479.us, 1200
  %188 = add nuw nsw i64 %polly.indvar479.us, %167
  %polly.access.mul.Packed_MemRef_call2305494.us = mul nuw nsw i64 %188, 1200
  %polly.access.add.Packed_MemRef_call2305495.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us, %183
  %polly.access.Packed_MemRef_call2305496.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call2305496.us, align 8
  %polly.access.add.Packed_MemRef_call1303503.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1303490.us, %182
  %polly.access.Packed_MemRef_call1303504.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303503.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call1303504.us, align 8
  %min.iters.check1318 = icmp ult i64 %181, 4
  br i1 %min.iters.check1318, label %polly.loop_header483.us.preheader, label %vector.ph1319

vector.ph1319:                                    ; preds = %polly.loop_header476.us
  %n.vec1321 = and i64 %181, -4
  %broadcast.splatinsert1327 = insertelement <4 x double> poison, double %_p_scalar_497.us, i32 0
  %broadcast.splat1328 = shufflevector <4 x double> %broadcast.splatinsert1327, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1330 = insertelement <4 x double> poison, double %_p_scalar_505.us, i32 0
  %broadcast.splat1331 = shufflevector <4 x double> %broadcast.splatinsert1330, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1313

vector.body1313:                                  ; preds = %vector.body1313, %vector.ph1319
  %index1322 = phi i64 [ 0, %vector.ph1319 ], [ %index.next1323, %vector.body1313 ]
  %189 = add nuw nsw i64 %index1322, %173
  %190 = add nuw nsw i64 %index1322, %polly.access.mul.Packed_MemRef_call1303490.us
  %191 = getelementptr double, double* %Packed_MemRef_call1303, i64 %190
  %192 = bitcast double* %191 to <4 x double>*
  %wide.load1326 = load <4 x double>, <4 x double>* %192, align 8
  %193 = fmul fast <4 x double> %broadcast.splat1328, %wide.load1326
  %194 = add nuw nsw i64 %189, %polly.access.mul.Packed_MemRef_call2305494.us
  %195 = getelementptr double, double* %Packed_MemRef_call2305, i64 %194
  %196 = bitcast double* %195 to <4 x double>*
  %wide.load1329 = load <4 x double>, <4 x double>* %196, align 8
  %197 = fmul fast <4 x double> %broadcast.splat1331, %wide.load1329
  %198 = shl i64 %189, 3
  %199 = add i64 %198, %187
  %200 = getelementptr i8, i8* %call, i64 %199
  %201 = bitcast i8* %200 to <4 x double>*
  %wide.load1332 = load <4 x double>, <4 x double>* %201, align 8, !alias.scope !78, !noalias !80
  %202 = fadd fast <4 x double> %197, %193
  %203 = fmul fast <4 x double> %202, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %204 = fadd fast <4 x double> %203, %wide.load1332
  %205 = bitcast i8* %200 to <4 x double>*
  store <4 x double> %204, <4 x double>* %205, align 8, !alias.scope !78, !noalias !80
  %index.next1323 = add i64 %index1322, 4
  %206 = icmp eq i64 %index.next1323, %n.vec1321
  br i1 %206, label %middle.block1311, label %vector.body1313, !llvm.loop !89

middle.block1311:                                 ; preds = %vector.body1313
  %cmp.n1325 = icmp eq i64 %181, %n.vec1321
  br i1 %cmp.n1325, label %polly.loop_exit485.loopexit.us, label %polly.loop_header483.us.preheader

polly.loop_header483.us.preheader:                ; preds = %polly.loop_header476.us, %middle.block1311
  %polly.indvar487.us.ph = phi i64 [ 0, %polly.loop_header476.us ], [ %n.vec1321, %middle.block1311 ]
  br label %polly.loop_header483.us

polly.loop_header483.us:                          ; preds = %polly.loop_header483.us.preheader, %polly.loop_header483.us
  %polly.indvar487.us = phi i64 [ %polly.indvar_next488.us, %polly.loop_header483.us ], [ %polly.indvar487.us.ph, %polly.loop_header483.us.preheader ]
  %207 = add nuw nsw i64 %polly.indvar487.us, %173
  %polly.access.add.Packed_MemRef_call1303491.us = add nuw nsw i64 %polly.indvar487.us, %polly.access.mul.Packed_MemRef_call1303490.us
  %polly.access.Packed_MemRef_call1303492.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303491.us
  %_p_scalar_493.us = load double, double* %polly.access.Packed_MemRef_call1303492.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_497.us, %_p_scalar_493.us
  %polly.access.add.Packed_MemRef_call2305499.us = add nuw nsw i64 %207, %polly.access.mul.Packed_MemRef_call2305494.us
  %polly.access.Packed_MemRef_call2305500.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call2305500.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_505.us, %_p_scalar_501.us
  %208 = shl i64 %207, 3
  %209 = add i64 %208, %187
  %scevgep506.us = getelementptr i8, i8* %call, i64 %209
  %scevgep506507.us = bitcast i8* %scevgep506.us to double*
  %_p_scalar_508.us = load double, double* %scevgep506507.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_508.us
  store double %p_add42.i79.us, double* %scevgep506507.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next488.us = add nuw nsw i64 %polly.indvar487.us, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar487.us, %smin1082
  br i1 %exitcond1083.not, label %polly.loop_exit485.loopexit.us, label %polly.loop_header483.us, !llvm.loop !90

polly.loop_exit485.loopexit.us:                   ; preds = %polly.loop_header483.us, %middle.block1311
  %polly.indvar_next480.us = add nuw nsw i64 %polly.indvar479.us, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar_next480.us, %166
  br i1 %exitcond1085.not, label %polly.loop_exit478, label %polly.loop_header476.us

polly.start511:                                   ; preds = %init_array.exit
  %malloccall513 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  %malloccall515 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header599

polly.exiting512:                                 ; preds = %polly.loop_exit639
  tail call void @free(i8* %malloccall513)
  tail call void @free(i8* %malloccall515)
  br label %kernel_syr2k.exit

polly.loop_header599:                             ; preds = %polly.loop_exit607, %polly.start511
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit607 ], [ 0, %polly.start511 ]
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit607 ], [ 1, %polly.start511 ]
  %210 = add i64 %indvar, 1
  %211 = mul nuw nsw i64 %polly.indvar602, 9600
  %scevgep611 = getelementptr i8, i8* %call, i64 %211
  %min.iters.check1254 = icmp ult i64 %210, 4
  br i1 %min.iters.check1254, label %polly.loop_header605.preheader, label %vector.ph1255

vector.ph1255:                                    ; preds = %polly.loop_header599
  %n.vec1257 = and i64 %210, -4
  br label %vector.body1253

vector.body1253:                                  ; preds = %vector.body1253, %vector.ph1255
  %index1258 = phi i64 [ 0, %vector.ph1255 ], [ %index.next1259, %vector.body1253 ]
  %212 = shl nuw nsw i64 %index1258, 3
  %213 = getelementptr i8, i8* %scevgep611, i64 %212
  %214 = bitcast i8* %213 to <4 x double>*
  %wide.load1262 = load <4 x double>, <4 x double>* %214, align 8, !alias.scope !91, !noalias !93
  %215 = fmul fast <4 x double> %wide.load1262, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %216 = bitcast i8* %213 to <4 x double>*
  store <4 x double> %215, <4 x double>* %216, align 8, !alias.scope !91, !noalias !93
  %index.next1259 = add i64 %index1258, 4
  %217 = icmp eq i64 %index.next1259, %n.vec1257
  br i1 %217, label %middle.block1251, label %vector.body1253, !llvm.loop !98

middle.block1251:                                 ; preds = %vector.body1253
  %cmp.n1261 = icmp eq i64 %210, %n.vec1257
  br i1 %cmp.n1261, label %polly.loop_exit607, label %polly.loop_header605.preheader

polly.loop_header605.preheader:                   ; preds = %polly.loop_header599, %middle.block1251
  %polly.indvar608.ph = phi i64 [ 0, %polly.loop_header599 ], [ %n.vec1257, %middle.block1251 ]
  br label %polly.loop_header605

polly.loop_exit607:                               ; preds = %polly.loop_header605, %middle.block1251
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1128.not = icmp eq i64 %polly.indvar_next603, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1128.not, label %polly.loop_header615.preheader, label %polly.loop_header599

polly.loop_header615.preheader:                   ; preds = %polly.loop_exit607
  %Packed_MemRef_call1514 = bitcast i8* %malloccall513 to double*
  %Packed_MemRef_call2516 = bitcast i8* %malloccall515 to double*
  br label %polly.loop_header615

polly.loop_header605:                             ; preds = %polly.loop_header605.preheader, %polly.loop_header605
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_header605 ], [ %polly.indvar608.ph, %polly.loop_header605.preheader ]
  %218 = shl nuw nsw i64 %polly.indvar608, 3
  %scevgep612 = getelementptr i8, i8* %scevgep611, i64 %218
  %scevgep612613 = bitcast i8* %scevgep612 to double*
  %_p_scalar_614 = load double, double* %scevgep612613, align 8, !alias.scope !91, !noalias !93
  %p_mul.i = fmul fast double %_p_scalar_614, 1.200000e+00
  store double %p_mul.i, double* %scevgep612613, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar_next609, %polly.indvar602
  br i1 %exitcond1127.not, label %polly.loop_exit607, label %polly.loop_header605, !llvm.loop !99

polly.loop_header615:                             ; preds = %polly.loop_header615.preheader, %polly.loop_exit623
  %polly.indvar618 = phi i64 [ %polly.indvar_next619, %polly.loop_exit623 ], [ 0, %polly.loop_header615.preheader ]
  %polly.access.mul.Packed_MemRef_call2516 = mul nuw nsw i64 %polly.indvar618, 1200
  br label %polly.loop_header621

polly.loop_exit623:                               ; preds = %polly.loop_header621
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %exitcond1126.not = icmp eq i64 %polly.indvar_next619, 1000
  br i1 %exitcond1126.not, label %polly.loop_header631, label %polly.loop_header615

polly.loop_header621:                             ; preds = %polly.loop_header621, %polly.loop_header615
  %polly.indvar624 = phi i64 [ 0, %polly.loop_header615 ], [ %polly.indvar_next625, %polly.loop_header621 ]
  %polly.access.mul.call2628 = mul nuw nsw i64 %polly.indvar624, 1000
  %polly.access.add.call2629 = add nuw nsw i64 %polly.access.mul.call2628, %polly.indvar618
  %polly.access.call2630 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2629
  %polly.access.call2630.load = load double, double* %polly.access.call2630, align 8, !alias.scope !95, !noalias !100
  %polly.access.add.Packed_MemRef_call2516 = add nuw nsw i64 %polly.indvar624, %polly.access.mul.Packed_MemRef_call2516
  %polly.access.Packed_MemRef_call2516 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516
  store double %polly.access.call2630.load, double* %polly.access.Packed_MemRef_call2516, align 8
  %polly.indvar_next625 = add nuw nsw i64 %polly.indvar624, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar_next625, 1200
  br i1 %exitcond1125.not, label %polly.loop_exit623, label %polly.loop_header621

polly.loop_header631:                             ; preds = %polly.loop_exit623, %polly.loop_exit639
  %indvars.iv1119 = phi i64 [ %indvars.iv.next1120, %polly.loop_exit639 ], [ 7, %polly.loop_exit623 ]
  %indvars.iv1105 = phi i64 [ %indvars.iv.next1106, %polly.loop_exit639 ], [ 0, %polly.loop_exit623 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit639 ], [ 0, %polly.loop_exit623 ]
  %polly.indvar634 = phi i64 [ %polly.indvar_next635, %polly.loop_exit639 ], [ 0, %polly.loop_exit623 ]
  %219 = mul nsw i64 %polly.indvar634, -32
  %220 = shl nuw nsw i64 %polly.indvar634, 5
  %221 = udiv i64 %indvars.iv1119, 25
  %umin1121 = call i64 @llvm.umin.i64(i64 %221, i64 11)
  %222 = mul nsw i64 %polly.indvar634, -32
  %223 = icmp slt i64 %222, -1168
  %224 = select i1 %223, i64 %222, i64 -1168
  %225 = add nsw i64 %224, 1199
  %226 = shl nsw i64 %polly.indvar634, 5
  br label %polly.loop_header637

polly.loop_exit639:                               ; preds = %polly.loop_exit646
  %polly.indvar_next635 = add nuw nsw i64 %polly.indvar634, 1
  %indvars.iv.next1101 = add nsw i64 %indvars.iv1100, -32
  %indvars.iv.next1106 = add nuw nsw i64 %indvars.iv1105, 32
  %indvars.iv.next1120 = add nuw nsw i64 %indvars.iv1119, 8
  %exitcond1124.not = icmp eq i64 %polly.indvar_next635, 38
  br i1 %exitcond1124.not, label %polly.exiting512, label %polly.loop_header631

polly.loop_header637:                             ; preds = %polly.loop_exit646, %polly.loop_header631
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %polly.loop_exit646 ], [ 0, %polly.loop_header631 ]
  %polly.indvar640 = phi i64 [ %polly.indvar_next641, %polly.loop_exit646 ], [ 0, %polly.loop_header631 ]
  %smin1117 = call i64 @llvm.smin.i64(i64 %indvars.iv1096, i64 -968)
  %227 = add nsw i64 %smin1117, 1000
  %228 = shl nsw i64 %polly.indvar640, 5
  br label %polly.loop_header644

polly.loop_exit646:                               ; preds = %polly.loop_exit653
  %polly.indvar_next641 = add nuw nsw i64 %polly.indvar640, 1
  %indvars.iv.next1097 = add nsw i64 %indvars.iv1096, -32
  %exitcond1123.not = icmp eq i64 %polly.indvar_next641, 32
  br i1 %exitcond1123.not, label %polly.loop_exit639, label %polly.loop_header637

polly.loop_header644:                             ; preds = %polly.loop_exit653, %polly.loop_header637
  %indvars.iv1107 = phi i64 [ %indvars.iv.next1108, %polly.loop_exit653 ], [ %indvars.iv1105, %polly.loop_header637 ]
  %indvars.iv1102 = phi i64 [ %indvars.iv.next1103, %polly.loop_exit653 ], [ %indvars.iv1100, %polly.loop_header637 ]
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit653 ], [ 0, %polly.loop_header637 ]
  %229 = mul nuw nsw i64 %polly.indvar647, 100
  %230 = add i64 %219, %229
  %smax1266 = call i64 @llvm.smax.i64(i64 %230, i64 0)
  %231 = mul nsw i64 %polly.indvar647, -100
  %232 = add i64 %220, %231
  %233 = add i64 %smax1266, %232
  %234 = mul nuw nsw i64 %polly.indvar647, 100
  %235 = add nsw i64 %234, %222
  %236 = icmp sgt i64 %235, 0
  %237 = select i1 %236, i64 %235, i64 0
  %polly.loop_guard654.not = icmp sgt i64 %237, %225
  br i1 %polly.loop_guard654.not, label %polly.loop_exit653, label %polly.loop_header651.preheader

polly.loop_header651.preheader:                   ; preds = %polly.loop_header644
  %smax1104 = call i64 @llvm.smax.i64(i64 %indvars.iv1102, i64 0)
  %238 = add i64 %smax1104, %indvars.iv1107
  %239 = sub nsw i64 %226, %234
  %240 = add nuw nsw i64 %234, 100
  br label %polly.loop_header651

polly.loop_exit653:                               ; preds = %polly.loop_exit689, %polly.loop_header644
  %polly.indvar_next648 = add nuw nsw i64 %polly.indvar647, 1
  %indvars.iv.next1103 = add nsw i64 %indvars.iv1102, 100
  %indvars.iv.next1108 = add nsw i64 %indvars.iv1107, -100
  %exitcond1122.not = icmp eq i64 %polly.indvar647, %umin1121
  br i1 %exitcond1122.not, label %polly.loop_exit646, label %polly.loop_header644

polly.loop_header651:                             ; preds = %polly.loop_header651.preheader, %polly.loop_exit689
  %indvar1267 = phi i64 [ 0, %polly.loop_header651.preheader ], [ %indvar.next1268, %polly.loop_exit689 ]
  %indvars.iv1109 = phi i64 [ %238, %polly.loop_header651.preheader ], [ %indvars.iv.next1110, %polly.loop_exit689 ]
  %polly.indvar655 = phi i64 [ %237, %polly.loop_header651.preheader ], [ %polly.indvar_next656, %polly.loop_exit689 ]
  %241 = add i64 %233, %indvar1267
  %smin1269 = call i64 @llvm.smin.i64(i64 %241, i64 99)
  %242 = add nsw i64 %smin1269, 1
  %smin1115 = call i64 @llvm.smin.i64(i64 %indvars.iv1109, i64 99)
  %243 = add nsw i64 %polly.indvar655, %239
  %polly.loop_guard6681165 = icmp sgt i64 %243, -1
  %244 = add nuw nsw i64 %polly.indvar655, %226
  %.not927 = icmp ult i64 %244, %240
  %polly.access.mul.call1681 = mul nsw i64 %244, 1000
  %245 = add nuw i64 %polly.access.mul.call1681, %228
  br i1 %polly.loop_guard6681165, label %polly.loop_header658.us, label %polly.loop_header651.split

polly.loop_header658.us:                          ; preds = %polly.loop_header651, %polly.merge677.us
  %polly.indvar661.us = phi i64 [ %polly.indvar_next662.us, %polly.merge677.us ], [ 0, %polly.loop_header651 ]
  %246 = add nuw nsw i64 %polly.indvar661.us, %228
  %polly.access.mul.Packed_MemRef_call1514.us = mul nuw nsw i64 %polly.indvar661.us, 1200
  br label %polly.loop_header665.us

polly.loop_header665.us:                          ; preds = %polly.loop_header658.us, %polly.loop_header665.us
  %polly.indvar669.us = phi i64 [ %polly.indvar_next670.us, %polly.loop_header665.us ], [ 0, %polly.loop_header658.us ]
  %247 = add nuw nsw i64 %polly.indvar669.us, %234
  %polly.access.mul.call1673.us = mul nuw nsw i64 %247, 1000
  %polly.access.add.call1674.us = add nuw nsw i64 %246, %polly.access.mul.call1673.us
  %polly.access.call1675.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674.us
  %polly.access.call1675.load.us = load double, double* %polly.access.call1675.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1514.us = add nuw nsw i64 %polly.indvar669.us, %polly.access.mul.Packed_MemRef_call1514.us
  %polly.access.Packed_MemRef_call1514.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us
  store double %polly.access.call1675.load.us, double* %polly.access.Packed_MemRef_call1514.us, align 8
  %polly.indvar_next670.us = add nuw nsw i64 %polly.indvar669.us, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar669.us, %smin1115
  br i1 %exitcond1112.not, label %polly.cond676.loopexit.us, label %polly.loop_header665.us

polly.then678.us:                                 ; preds = %polly.cond676.loopexit.us
  %polly.access.add.call1682.us = add nuw nsw i64 %245, %polly.indvar661.us
  %polly.access.call1683.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.us
  %polly.access.call1683.load.us = load double, double* %polly.access.call1683.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1514685.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1514.us, %243
  %polly.access.Packed_MemRef_call1514686.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.us
  store double %polly.access.call1683.load.us, double* %polly.access.Packed_MemRef_call1514686.us, align 8
  br label %polly.merge677.us

polly.merge677.us:                                ; preds = %polly.then678.us, %polly.cond676.loopexit.us
  %polly.indvar_next662.us = add nuw nsw i64 %polly.indvar661.us, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar_next662.us, %227
  br i1 %exitcond1114.not, label %polly.loop_header687.preheader, label %polly.loop_header658.us

polly.cond676.loopexit.us:                        ; preds = %polly.loop_header665.us
  br i1 %.not927, label %polly.merge677.us, label %polly.then678.us

polly.loop_header651.split:                       ; preds = %polly.loop_header651
  br i1 %.not927, label %polly.loop_exit689, label %polly.loop_header658

polly.loop_exit689:                               ; preds = %polly.loop_exit696.loopexit.us, %polly.loop_header651.split, %polly.loop_header687.preheader
  %polly.indvar_next656 = add nuw nsw i64 %polly.indvar655, 1
  %polly.loop_cond657.not.not = icmp ult i64 %polly.indvar655, %225
  %indvars.iv.next1110 = add i64 %indvars.iv1109, 1
  %indvar.next1268 = add i64 %indvar1267, 1
  br i1 %polly.loop_cond657.not.not, label %polly.loop_header651, label %polly.loop_exit653

polly.loop_header658:                             ; preds = %polly.loop_header651.split, %polly.loop_header658
  %polly.indvar661 = phi i64 [ %polly.indvar_next662, %polly.loop_header658 ], [ 0, %polly.loop_header651.split ]
  %polly.access.add.call1682 = add nuw nsw i64 %245, %polly.indvar661
  %polly.access.call1683 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682
  %polly.access.call1683.load = load double, double* %polly.access.call1683, align 8, !alias.scope !94, !noalias !101
  %polly.access.mul.Packed_MemRef_call1514684 = mul nuw nsw i64 %polly.indvar661, 1200
  %polly.access.add.Packed_MemRef_call1514685 = add nsw i64 %polly.access.mul.Packed_MemRef_call1514684, %243
  %polly.access.Packed_MemRef_call1514686 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685
  store double %polly.access.call1683.load, double* %polly.access.Packed_MemRef_call1514686, align 8
  %polly.indvar_next662 = add nuw nsw i64 %polly.indvar661, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar_next662, %227
  br i1 %exitcond1099.not, label %polly.loop_header687.preheader, label %polly.loop_header658

polly.loop_header687.preheader:                   ; preds = %polly.loop_header658, %polly.merge677.us
  %248 = mul i64 %244, 9600
  br i1 %polly.loop_guard6681165, label %polly.loop_header687.us, label %polly.loop_exit689

polly.loop_header687.us:                          ; preds = %polly.loop_header687.preheader, %polly.loop_exit696.loopexit.us
  %polly.indvar690.us = phi i64 [ %polly.indvar_next691.us, %polly.loop_exit696.loopexit.us ], [ 0, %polly.loop_header687.preheader ]
  %polly.access.mul.Packed_MemRef_call1514701.us = mul nuw nsw i64 %polly.indvar690.us, 1200
  %249 = add nuw nsw i64 %polly.indvar690.us, %228
  %polly.access.mul.Packed_MemRef_call2516705.us = mul nuw nsw i64 %249, 1200
  %polly.access.add.Packed_MemRef_call2516706.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us, %244
  %polly.access.Packed_MemRef_call2516707.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us
  %_p_scalar_708.us = load double, double* %polly.access.Packed_MemRef_call2516707.us, align 8
  %polly.access.add.Packed_MemRef_call1514714.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1514701.us, %243
  %polly.access.Packed_MemRef_call1514715.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514714.us
  %_p_scalar_716.us = load double, double* %polly.access.Packed_MemRef_call1514715.us, align 8
  %min.iters.check1270 = icmp ult i64 %242, 4
  br i1 %min.iters.check1270, label %polly.loop_header694.us.preheader, label %vector.ph1271

vector.ph1271:                                    ; preds = %polly.loop_header687.us
  %n.vec1273 = and i64 %242, -4
  %broadcast.splatinsert1279 = insertelement <4 x double> poison, double %_p_scalar_708.us, i32 0
  %broadcast.splat1280 = shufflevector <4 x double> %broadcast.splatinsert1279, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1282 = insertelement <4 x double> poison, double %_p_scalar_716.us, i32 0
  %broadcast.splat1283 = shufflevector <4 x double> %broadcast.splatinsert1282, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1265

vector.body1265:                                  ; preds = %vector.body1265, %vector.ph1271
  %index1274 = phi i64 [ 0, %vector.ph1271 ], [ %index.next1275, %vector.body1265 ]
  %250 = add nuw nsw i64 %index1274, %234
  %251 = add nuw nsw i64 %index1274, %polly.access.mul.Packed_MemRef_call1514701.us
  %252 = getelementptr double, double* %Packed_MemRef_call1514, i64 %251
  %253 = bitcast double* %252 to <4 x double>*
  %wide.load1278 = load <4 x double>, <4 x double>* %253, align 8
  %254 = fmul fast <4 x double> %broadcast.splat1280, %wide.load1278
  %255 = add nuw nsw i64 %250, %polly.access.mul.Packed_MemRef_call2516705.us
  %256 = getelementptr double, double* %Packed_MemRef_call2516, i64 %255
  %257 = bitcast double* %256 to <4 x double>*
  %wide.load1281 = load <4 x double>, <4 x double>* %257, align 8
  %258 = fmul fast <4 x double> %broadcast.splat1283, %wide.load1281
  %259 = shl i64 %250, 3
  %260 = add i64 %259, %248
  %261 = getelementptr i8, i8* %call, i64 %260
  %262 = bitcast i8* %261 to <4 x double>*
  %wide.load1284 = load <4 x double>, <4 x double>* %262, align 8, !alias.scope !91, !noalias !93
  %263 = fadd fast <4 x double> %258, %254
  %264 = fmul fast <4 x double> %263, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %265 = fadd fast <4 x double> %264, %wide.load1284
  %266 = bitcast i8* %261 to <4 x double>*
  store <4 x double> %265, <4 x double>* %266, align 8, !alias.scope !91, !noalias !93
  %index.next1275 = add i64 %index1274, 4
  %267 = icmp eq i64 %index.next1275, %n.vec1273
  br i1 %267, label %middle.block1263, label %vector.body1265, !llvm.loop !102

middle.block1263:                                 ; preds = %vector.body1265
  %cmp.n1277 = icmp eq i64 %242, %n.vec1273
  br i1 %cmp.n1277, label %polly.loop_exit696.loopexit.us, label %polly.loop_header694.us.preheader

polly.loop_header694.us.preheader:                ; preds = %polly.loop_header687.us, %middle.block1263
  %polly.indvar698.us.ph = phi i64 [ 0, %polly.loop_header687.us ], [ %n.vec1273, %middle.block1263 ]
  br label %polly.loop_header694.us

polly.loop_header694.us:                          ; preds = %polly.loop_header694.us.preheader, %polly.loop_header694.us
  %polly.indvar698.us = phi i64 [ %polly.indvar_next699.us, %polly.loop_header694.us ], [ %polly.indvar698.us.ph, %polly.loop_header694.us.preheader ]
  %268 = add nuw nsw i64 %polly.indvar698.us, %234
  %polly.access.add.Packed_MemRef_call1514702.us = add nuw nsw i64 %polly.indvar698.us, %polly.access.mul.Packed_MemRef_call1514701.us
  %polly.access.Packed_MemRef_call1514703.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514702.us
  %_p_scalar_704.us = load double, double* %polly.access.Packed_MemRef_call1514703.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_708.us, %_p_scalar_704.us
  %polly.access.add.Packed_MemRef_call2516710.us = add nuw nsw i64 %268, %polly.access.mul.Packed_MemRef_call2516705.us
  %polly.access.Packed_MemRef_call2516711.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us
  %_p_scalar_712.us = load double, double* %polly.access.Packed_MemRef_call2516711.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_716.us, %_p_scalar_712.us
  %269 = shl i64 %268, 3
  %270 = add i64 %269, %248
  %scevgep717.us = getelementptr i8, i8* %call, i64 %270
  %scevgep717718.us = bitcast i8* %scevgep717.us to double*
  %_p_scalar_719.us = load double, double* %scevgep717718.us, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_719.us
  store double %p_add42.i.us, double* %scevgep717718.us, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next699.us = add nuw nsw i64 %polly.indvar698.us, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar698.us, %smin1115
  br i1 %exitcond1116.not, label %polly.loop_exit696.loopexit.us, label %polly.loop_header694.us, !llvm.loop !103

polly.loop_exit696.loopexit.us:                   ; preds = %polly.loop_header694.us, %middle.block1263
  %polly.indvar_next691.us = add nuw nsw i64 %polly.indvar690.us, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar_next691.us, %227
  br i1 %exitcond1118.not, label %polly.loop_exit689, label %polly.loop_header687.us

polly.loop_header846:                             ; preds = %entry, %polly.loop_exit854
  %indvars.iv1153 = phi i64 [ %indvars.iv.next1154, %polly.loop_exit854 ], [ 0, %entry ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %entry ]
  %smin1155 = call i64 @llvm.smin.i64(i64 %indvars.iv1153, i64 -1168)
  %271 = shl nsw i64 %polly.indvar849, 5
  %272 = add nsw i64 %smin1155, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1154 = add nsw i64 %indvars.iv1153, -32
  %exitcond1158.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1158.not, label %polly.loop_header873, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %indvars.iv1149 = phi i64 [ %indvars.iv.next1150, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %273 = mul nsw i64 %polly.indvar855, -32
  %smin = call i64 @llvm.smin.i64(i64 %273, i64 -1168)
  %274 = add nsw i64 %smin, 1200
  %smin1151 = call i64 @llvm.smin.i64(i64 %indvars.iv1149, i64 -1168)
  %275 = shl nsw i64 %polly.indvar855, 5
  %276 = add nsw i64 %smin1151, 1199
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1150 = add nsw i64 %indvars.iv1149, -32
  %exitcond1157.not = icmp eq i64 %polly.indvar_next856, 38
  br i1 %exitcond1157.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %polly.indvar861 = phi i64 [ 0, %polly.loop_header852 ], [ %polly.indvar_next862, %polly.loop_exit866 ]
  %277 = add nuw nsw i64 %polly.indvar861, %271
  %278 = trunc i64 %277 to i32
  %279 = mul nuw nsw i64 %277, 9600
  %min.iters.check = icmp eq i64 %274, 0
  br i1 %min.iters.check, label %polly.loop_header864, label %vector.ph1193

vector.ph1193:                                    ; preds = %polly.loop_header858
  %broadcast.splatinsert1200 = insertelement <4 x i64> poison, i64 %275, i32 0
  %broadcast.splat1201 = shufflevector <4 x i64> %broadcast.splatinsert1200, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1202 = insertelement <4 x i32> poison, i32 %278, i32 0
  %broadcast.splat1203 = shufflevector <4 x i32> %broadcast.splatinsert1202, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1192

vector.body1192:                                  ; preds = %vector.body1192, %vector.ph1193
  %index1194 = phi i64 [ 0, %vector.ph1193 ], [ %index.next1195, %vector.body1192 ]
  %vec.ind1198 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1193 ], [ %vec.ind.next1199, %vector.body1192 ]
  %280 = add nuw nsw <4 x i64> %vec.ind1198, %broadcast.splat1201
  %281 = trunc <4 x i64> %280 to <4 x i32>
  %282 = mul <4 x i32> %broadcast.splat1203, %281
  %283 = add <4 x i32> %282, <i32 3, i32 3, i32 3, i32 3>
  %284 = urem <4 x i32> %283, <i32 1200, i32 1200, i32 1200, i32 1200>
  %285 = sitofp <4 x i32> %284 to <4 x double>
  %286 = fmul fast <4 x double> %285, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %287 = extractelement <4 x i64> %280, i32 0
  %288 = shl i64 %287, 3
  %289 = add nuw nsw i64 %288, %279
  %290 = getelementptr i8, i8* %call, i64 %289
  %291 = bitcast i8* %290 to <4 x double>*
  store <4 x double> %286, <4 x double>* %291, align 8, !alias.scope !104, !noalias !106
  %index.next1195 = add i64 %index1194, 4
  %vec.ind.next1199 = add <4 x i64> %vec.ind1198, <i64 4, i64 4, i64 4, i64 4>
  %292 = icmp eq i64 %index.next1195, %274
  br i1 %292, label %polly.loop_exit866, label %vector.body1192, !llvm.loop !109

polly.loop_exit866:                               ; preds = %vector.body1192, %polly.loop_header864
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1156.not = icmp eq i64 %polly.indvar861, %272
  br i1 %exitcond1156.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_header858, %polly.loop_header864
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_header864 ], [ 0, %polly.loop_header858 ]
  %293 = add nuw nsw i64 %polly.indvar867, %275
  %294 = trunc i64 %293 to i32
  %295 = mul i32 %294, %278
  %296 = add i32 %295, 3
  %297 = urem i32 %296, 1200
  %p_conv31.i = sitofp i32 %297 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %298 = shl i64 %293, 3
  %299 = add nuw nsw i64 %298, %279
  %scevgep870 = getelementptr i8, i8* %call, i64 %299
  %scevgep870871 = bitcast i8* %scevgep870 to double*
  store double %p_div33.i, double* %scevgep870871, align 8, !alias.scope !104, !noalias !106
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1152.not = icmp eq i64 %polly.indvar867, %276
  br i1 %exitcond1152.not, label %polly.loop_exit866, label %polly.loop_header864, !llvm.loop !110

polly.loop_header873:                             ; preds = %polly.loop_exit854, %polly.loop_exit881
  %indvars.iv1143 = phi i64 [ %indvars.iv.next1144, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %polly.indvar876 = phi i64 [ %polly.indvar_next877, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %smin1145 = call i64 @llvm.smin.i64(i64 %indvars.iv1143, i64 -1168)
  %300 = shl nsw i64 %polly.indvar876, 5
  %301 = add nsw i64 %smin1145, 1199
  br label %polly.loop_header879

polly.loop_exit881:                               ; preds = %polly.loop_exit887
  %polly.indvar_next877 = add nuw nsw i64 %polly.indvar876, 1
  %indvars.iv.next1144 = add nsw i64 %indvars.iv1143, -32
  %exitcond1148.not = icmp eq i64 %polly.indvar_next877, 38
  br i1 %exitcond1148.not, label %polly.loop_header899, label %polly.loop_header873

polly.loop_header879:                             ; preds = %polly.loop_exit887, %polly.loop_header873
  %indvars.iv1139 = phi i64 [ %indvars.iv.next1140, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %302 = mul nsw i64 %polly.indvar882, -32
  %smin1207 = call i64 @llvm.smin.i64(i64 %302, i64 -968)
  %303 = add nsw i64 %smin1207, 1000
  %smin1141 = call i64 @llvm.smin.i64(i64 %indvars.iv1139, i64 -968)
  %304 = shl nsw i64 %polly.indvar882, 5
  %305 = add nsw i64 %smin1141, 999
  br label %polly.loop_header885

polly.loop_exit887:                               ; preds = %polly.loop_exit893
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %indvars.iv.next1140 = add nsw i64 %indvars.iv1139, -32
  %exitcond1147.not = icmp eq i64 %polly.indvar_next883, 32
  br i1 %exitcond1147.not, label %polly.loop_exit881, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_exit893, %polly.loop_header879
  %polly.indvar888 = phi i64 [ 0, %polly.loop_header879 ], [ %polly.indvar_next889, %polly.loop_exit893 ]
  %306 = add nuw nsw i64 %polly.indvar888, %300
  %307 = trunc i64 %306 to i32
  %308 = mul nuw nsw i64 %306, 8000
  %min.iters.check1208 = icmp eq i64 %303, 0
  br i1 %min.iters.check1208, label %polly.loop_header891, label %vector.ph1209

vector.ph1209:                                    ; preds = %polly.loop_header885
  %broadcast.splatinsert1218 = insertelement <4 x i64> poison, i64 %304, i32 0
  %broadcast.splat1219 = shufflevector <4 x i64> %broadcast.splatinsert1218, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1220 = insertelement <4 x i32> poison, i32 %307, i32 0
  %broadcast.splat1221 = shufflevector <4 x i32> %broadcast.splatinsert1220, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1206

vector.body1206:                                  ; preds = %vector.body1206, %vector.ph1209
  %index1212 = phi i64 [ 0, %vector.ph1209 ], [ %index.next1213, %vector.body1206 ]
  %vec.ind1216 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1209 ], [ %vec.ind.next1217, %vector.body1206 ]
  %309 = add nuw nsw <4 x i64> %vec.ind1216, %broadcast.splat1219
  %310 = trunc <4 x i64> %309 to <4 x i32>
  %311 = mul <4 x i32> %broadcast.splat1221, %310
  %312 = add <4 x i32> %311, <i32 2, i32 2, i32 2, i32 2>
  %313 = urem <4 x i32> %312, <i32 1000, i32 1000, i32 1000, i32 1000>
  %314 = sitofp <4 x i32> %313 to <4 x double>
  %315 = fmul fast <4 x double> %314, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %316 = extractelement <4 x i64> %309, i32 0
  %317 = shl i64 %316, 3
  %318 = add nuw nsw i64 %317, %308
  %319 = getelementptr i8, i8* %call2, i64 %318
  %320 = bitcast i8* %319 to <4 x double>*
  store <4 x double> %315, <4 x double>* %320, align 8, !alias.scope !108, !noalias !111
  %index.next1213 = add i64 %index1212, 4
  %vec.ind.next1217 = add <4 x i64> %vec.ind1216, <i64 4, i64 4, i64 4, i64 4>
  %321 = icmp eq i64 %index.next1213, %303
  br i1 %321, label %polly.loop_exit893, label %vector.body1206, !llvm.loop !112

polly.loop_exit893:                               ; preds = %vector.body1206, %polly.loop_header891
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %exitcond1146.not = icmp eq i64 %polly.indvar888, %301
  br i1 %exitcond1146.not, label %polly.loop_exit887, label %polly.loop_header885

polly.loop_header891:                             ; preds = %polly.loop_header885, %polly.loop_header891
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_header891 ], [ 0, %polly.loop_header885 ]
  %322 = add nuw nsw i64 %polly.indvar894, %304
  %323 = trunc i64 %322 to i32
  %324 = mul i32 %323, %307
  %325 = add i32 %324, 2
  %326 = urem i32 %325, 1000
  %p_conv10.i = sitofp i32 %326 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %327 = shl i64 %322, 3
  %328 = add nuw nsw i64 %327, %308
  %scevgep897 = getelementptr i8, i8* %call2, i64 %328
  %scevgep897898 = bitcast i8* %scevgep897 to double*
  store double %p_div12.i, double* %scevgep897898, align 8, !alias.scope !108, !noalias !111
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1142.not = icmp eq i64 %polly.indvar894, %305
  br i1 %exitcond1142.not, label %polly.loop_exit893, label %polly.loop_header891, !llvm.loop !113

polly.loop_header899:                             ; preds = %polly.loop_exit881, %polly.loop_exit907
  %indvars.iv1133 = phi i64 [ %indvars.iv.next1134, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %smin1135 = call i64 @llvm.smin.i64(i64 %indvars.iv1133, i64 -1168)
  %329 = shl nsw i64 %polly.indvar902, 5
  %330 = add nsw i64 %smin1135, 1199
  br label %polly.loop_header905

polly.loop_exit907:                               ; preds = %polly.loop_exit913
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %indvars.iv.next1134 = add nsw i64 %indvars.iv1133, -32
  %exitcond1138.not = icmp eq i64 %polly.indvar_next903, 38
  br i1 %exitcond1138.not, label %init_array.exit, label %polly.loop_header899

polly.loop_header905:                             ; preds = %polly.loop_exit913, %polly.loop_header899
  %indvars.iv1129 = phi i64 [ %indvars.iv.next1130, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %331 = mul nsw i64 %polly.indvar908, -32
  %smin1225 = call i64 @llvm.smin.i64(i64 %331, i64 -968)
  %332 = add nsw i64 %smin1225, 1000
  %smin1131 = call i64 @llvm.smin.i64(i64 %indvars.iv1129, i64 -968)
  %333 = shl nsw i64 %polly.indvar908, 5
  %334 = add nsw i64 %smin1131, 999
  br label %polly.loop_header911

polly.loop_exit913:                               ; preds = %polly.loop_exit919
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %indvars.iv.next1130 = add nsw i64 %indvars.iv1129, -32
  %exitcond1137.not = icmp eq i64 %polly.indvar_next909, 32
  br i1 %exitcond1137.not, label %polly.loop_exit907, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_exit919, %polly.loop_header905
  %polly.indvar914 = phi i64 [ 0, %polly.loop_header905 ], [ %polly.indvar_next915, %polly.loop_exit919 ]
  %335 = add nuw nsw i64 %polly.indvar914, %329
  %336 = trunc i64 %335 to i32
  %337 = mul nuw nsw i64 %335, 8000
  %min.iters.check1226 = icmp eq i64 %332, 0
  br i1 %min.iters.check1226, label %polly.loop_header917, label %vector.ph1227

vector.ph1227:                                    ; preds = %polly.loop_header911
  %broadcast.splatinsert1236 = insertelement <4 x i64> poison, i64 %333, i32 0
  %broadcast.splat1237 = shufflevector <4 x i64> %broadcast.splatinsert1236, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1238 = insertelement <4 x i32> poison, i32 %336, i32 0
  %broadcast.splat1239 = shufflevector <4 x i32> %broadcast.splatinsert1238, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1224

vector.body1224:                                  ; preds = %vector.body1224, %vector.ph1227
  %index1230 = phi i64 [ 0, %vector.ph1227 ], [ %index.next1231, %vector.body1224 ]
  %vec.ind1234 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1227 ], [ %vec.ind.next1235, %vector.body1224 ]
  %338 = add nuw nsw <4 x i64> %vec.ind1234, %broadcast.splat1237
  %339 = trunc <4 x i64> %338 to <4 x i32>
  %340 = mul <4 x i32> %broadcast.splat1239, %339
  %341 = add <4 x i32> %340, <i32 1, i32 1, i32 1, i32 1>
  %342 = urem <4 x i32> %341, <i32 1200, i32 1200, i32 1200, i32 1200>
  %343 = sitofp <4 x i32> %342 to <4 x double>
  %344 = fmul fast <4 x double> %343, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %345 = extractelement <4 x i64> %338, i32 0
  %346 = shl i64 %345, 3
  %347 = add nuw nsw i64 %346, %337
  %348 = getelementptr i8, i8* %call1, i64 %347
  %349 = bitcast i8* %348 to <4 x double>*
  store <4 x double> %344, <4 x double>* %349, align 8, !alias.scope !107, !noalias !114
  %index.next1231 = add i64 %index1230, 4
  %vec.ind.next1235 = add <4 x i64> %vec.ind1234, <i64 4, i64 4, i64 4, i64 4>
  %350 = icmp eq i64 %index.next1231, %332
  br i1 %350, label %polly.loop_exit919, label %vector.body1224, !llvm.loop !115

polly.loop_exit919:                               ; preds = %vector.body1224, %polly.loop_header917
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %exitcond1136.not = icmp eq i64 %polly.indvar914, %330
  br i1 %exitcond1136.not, label %polly.loop_exit913, label %polly.loop_header911

polly.loop_header917:                             ; preds = %polly.loop_header911, %polly.loop_header917
  %polly.indvar920 = phi i64 [ %polly.indvar_next921, %polly.loop_header917 ], [ 0, %polly.loop_header911 ]
  %351 = add nuw nsw i64 %polly.indvar920, %333
  %352 = trunc i64 %351 to i32
  %353 = mul i32 %352, %336
  %354 = add i32 %353, 1
  %355 = urem i32 %354, 1200
  %p_conv.i = sitofp i32 %355 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %356 = shl i64 %351, 3
  %357 = add nuw nsw i64 %356, %337
  %scevgep924 = getelementptr i8, i8* %call1, i64 %357
  %scevgep924925 = bitcast i8* %scevgep924 to double*
  store double %p_div.i, double* %scevgep924925, align 8, !alias.scope !107, !noalias !114
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar920, %334
  br i1 %exitcond1132.not, label %polly.loop_exit919, label %polly.loop_header917, !llvm.loop !116
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

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
!35 = !{!"llvm.loop.tile.size", i32 32}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42, !43, !44}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.data.pack.enable", i1 true}
!43 = !{!"llvm.data.pack.array", !21}
!44 = !{!"llvm.data.pack.allocate", !"malloc"}
!45 = distinct !{!45, !12, !24, !46, !47, !48, !35, !49, !53}
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
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !73, !13}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83, !84}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call1"}
!84 = distinct !{!84, !79, !"polly.alias.scope.Packed_MemRef_call2"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !73, !13}
!87 = !{!78, !81, !83, !84}
!88 = !{!78, !82, !83, !84}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !73, !13}
!91 = distinct !{!91, !92, !"polly.alias.scope.MemRef_call"}
!92 = distinct !{!92, !"polly.alias.scope.domain"}
!93 = !{!94, !95, !96, !97}
!94 = distinct !{!94, !92, !"polly.alias.scope.MemRef_call1"}
!95 = distinct !{!95, !92, !"polly.alias.scope.MemRef_call2"}
!96 = distinct !{!96, !92, !"polly.alias.scope.Packed_MemRef_call1"}
!97 = distinct !{!97, !92, !"polly.alias.scope.Packed_MemRef_call2"}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !73, !13}
!100 = !{!91, !94, !96, !97}
!101 = !{!91, !95, !96, !97}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !73, !13}
!104 = distinct !{!104, !105, !"polly.alias.scope.MemRef_call"}
!105 = distinct !{!105, !"polly.alias.scope.domain"}
!106 = !{!107, !108}
!107 = distinct !{!107, !105, !"polly.alias.scope.MemRef_call1"}
!108 = distinct !{!108, !105, !"polly.alias.scope.MemRef_call2"}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !73, !13}
!111 = !{!107, !104}
!112 = distinct !{!112, !13}
!113 = distinct !{!113, !73, !13}
!114 = !{!108, !104}
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !73, !13}
