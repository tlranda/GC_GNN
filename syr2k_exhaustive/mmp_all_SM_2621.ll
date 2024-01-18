; ModuleID = 'syr2k_exhaustive/mmp_all_SM_2621.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_2621.c"
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
  %scevgep1183 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1182 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1181 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1180 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1180, %scevgep1183
  %bound1 = icmp ult i8* %scevgep1182, %scevgep1181
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
  br i1 %exitcond18.not.i, label %vector.ph1187, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1187:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1194 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1195 = shufflevector <4 x i64> %broadcast.splatinsert1194, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1186

vector.body1186:                                  ; preds = %vector.body1186, %vector.ph1187
  %index1188 = phi i64 [ 0, %vector.ph1187 ], [ %index.next1189, %vector.body1186 ]
  %vec.ind1192 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1187 ], [ %vec.ind.next1193, %vector.body1186 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1192, %broadcast.splat1195
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv7.i, i64 %index1188
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1189 = add i64 %index1188, 4
  %vec.ind.next1193 = add <4 x i64> %vec.ind1192, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1189, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1186, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1186
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1187, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit907
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start511, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1249 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1249, label %for.body3.i46.preheader1392, label %vector.ph1250

vector.ph1250:                                    ; preds = %for.body3.i46.preheader
  %n.vec1252 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1248

vector.body1248:                                  ; preds = %vector.body1248, %vector.ph1250
  %index1253 = phi i64 [ 0, %vector.ph1250 ], [ %index.next1254, %vector.body1248 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i, i64 %index1253
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1254 = add i64 %index1253, 4
  %46 = icmp eq i64 %index.next1254, %n.vec1252
  br i1 %46, label %middle.block1246, label %vector.body1248, !llvm.loop !18

middle.block1246:                                 ; preds = %vector.body1248
  %cmp.n1256 = icmp eq i64 %indvars.iv21.i, %n.vec1252
  br i1 %cmp.n1256, label %for.inc6.i, label %for.body3.i46.preheader1392

for.body3.i46.preheader1392:                      ; preds = %for.body3.i46.preheader, %middle.block1246
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1252, %middle.block1246 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1392, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1392 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1246, %for.cond1.preheader.i45
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
  %min.iters.check1294 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1294, label %for.body3.i60.preheader1390, label %vector.ph1295

vector.ph1295:                                    ; preds = %for.body3.i60.preheader
  %n.vec1297 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1293

vector.body1293:                                  ; preds = %vector.body1293, %vector.ph1295
  %index1298 = phi i64 [ 0, %vector.ph1295 ], [ %index.next1299, %vector.body1293 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i52, i64 %index1298
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1302 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1302, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1299 = add i64 %index1298, 4
  %57 = icmp eq i64 %index.next1299, %n.vec1297
  br i1 %57, label %middle.block1291, label %vector.body1293, !llvm.loop !57

middle.block1291:                                 ; preds = %vector.body1293
  %cmp.n1301 = icmp eq i64 %indvars.iv21.i52, %n.vec1297
  br i1 %cmp.n1301, label %for.inc6.i63, label %for.body3.i60.preheader1390

for.body3.i60.preheader1390:                      ; preds = %for.body3.i60.preheader, %middle.block1291
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1297, %middle.block1291 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1390, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1390 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1291, %for.cond1.preheader.i54
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
  %min.iters.check1342 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1342, label %for.body3.i99.preheader1388, label %vector.ph1343

vector.ph1343:                                    ; preds = %for.body3.i99.preheader
  %n.vec1345 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1341

vector.body1341:                                  ; preds = %vector.body1341, %vector.ph1343
  %index1346 = phi i64 [ 0, %vector.ph1343 ], [ %index.next1347, %vector.body1341 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i91, i64 %index1346
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1350 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1350, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1347 = add i64 %index1346, 4
  %68 = icmp eq i64 %index.next1347, %n.vec1345
  br i1 %68, label %middle.block1339, label %vector.body1341, !llvm.loop !59

middle.block1339:                                 ; preds = %vector.body1341
  %cmp.n1349 = icmp eq i64 %indvars.iv21.i91, %n.vec1345
  br i1 %cmp.n1349, label %for.inc6.i102, label %for.body3.i99.preheader1388

for.body3.i99.preheader1388:                      ; preds = %for.body3.i99.preheader, %middle.block1339
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1345, %middle.block1339 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1388, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1388 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1339, %for.cond1.preheader.i93
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(768000) i8* @malloc(i64 768000) #6
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1354 = phi i64 [ %indvar.next1355, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1354, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1356 = icmp ult i64 %88, 4
  br i1 %min.iters.check1356, label %polly.loop_header192.preheader, label %vector.ph1357

vector.ph1357:                                    ; preds = %polly.loop_header
  %n.vec1359 = and i64 %88, -4
  br label %vector.body1353

vector.body1353:                                  ; preds = %vector.body1353, %vector.ph1357
  %index1360 = phi i64 [ 0, %vector.ph1357 ], [ %index.next1361, %vector.body1353 ]
  %90 = shl nuw nsw i64 %index1360, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1364 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1364, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1361 = add i64 %index1360, 4
  %95 = icmp eq i64 %index.next1361, %n.vec1359
  br i1 %95, label %middle.block1351, label %vector.body1353, !llvm.loop !72

middle.block1351:                                 ; preds = %vector.body1353
  %cmp.n1363 = icmp eq i64 %88, %n.vec1359
  br i1 %cmp.n1363, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1351
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1359, %middle.block1351 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1351
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1355 = add i64 %indvar1354, 1
  br i1 %exitcond1064.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1063.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1063.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1062.not, label %polly.loop_header216, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 1000
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !69, !noalias !75
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1061.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv1056 = phi i64 [ %indvars.iv.next1057, %polly.loop_exit224 ], [ 1, %polly.loop_exit208 ]
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = mul nsw i64 %polly.indvar219, -128
  %98 = shl nuw nsw i64 %polly.indvar219, 7
  %99 = udiv i64 %indvars.iv1056, 5
  %100 = add nuw i64 %indvars.iv1054, %99
  %umin = call i64 @llvm.umin.i64(i64 %100, i64 53)
  %101 = mul nsw i64 %polly.indvar219, -128
  %102 = icmp slt i64 %101, -1072
  %103 = select i1 %102, i64 %101, i64 -1072
  %104 = add nsw i64 %103, 1199
  %105 = shl nsw i64 %polly.indvar219, 7
  %106 = add nuw nsw i64 %umin, 6
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, -128
  %indvars.iv.next1041 = add nuw nsw i64 %indvars.iv1040, 128
  %indvars.iv.next1055 = add nuw nsw i64 %indvars.iv1054, 6
  %indvars.iv.next1057 = add nuw nsw i64 %indvars.iv1056, 2
  %exitcond1060.not = icmp eq i64 %polly.indvar_next220, 10
  br i1 %exitcond1060.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 0, %polly.loop_header216 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit230 ], [ 0, %polly.loop_header216 ]
  %smin1052 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -920)
  %107 = add nsw i64 %smin1052, 1000
  %108 = mul nuw nsw i64 %polly.indvar225, 80
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -80
  %exitcond1059.not = icmp eq i64 %polly.indvar_next226, 13
  br i1 %exitcond1059.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %polly.loop_exit236 ], [ %indvars.iv1040, %polly.loop_header222 ]
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit236 ], [ %indvars.iv1036, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %109 = mul nuw nsw i64 %polly.indvar231, 20
  %110 = add i64 %97, %109
  %smax1368 = call i64 @llvm.smax.i64(i64 %110, i64 0)
  %111 = mul nsw i64 %polly.indvar231, -20
  %112 = add i64 %98, %111
  %113 = add i64 %smax1368, %112
  %114 = mul nuw nsw i64 %polly.indvar231, 20
  %115 = add nsw i64 %114, %101
  %116 = icmp sgt i64 %115, 0
  %117 = select i1 %116, i64 %115, i64 0
  %polly.loop_guard.not = icmp sgt i64 %117, %104
  br i1 %polly.loop_guard.not, label %polly.loop_exit236, label %polly.loop_header234.preheader

polly.loop_header234.preheader:                   ; preds = %polly.loop_header228
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1038, i64 0)
  %118 = add i64 %smax, %indvars.iv1042
  %119 = sub nsw i64 %105, %114
  %120 = add nuw nsw i64 %114, 20
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit267, %polly.loop_header228
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1039 = add nsw i64 %indvars.iv1038, 20
  %indvars.iv.next1043 = add nsw i64 %indvars.iv1042, -20
  %exitcond1058.not = icmp eq i64 %polly.indvar231, %106
  br i1 %exitcond1058.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234.preheader, %polly.loop_exit267
  %indvar1369 = phi i64 [ 0, %polly.loop_header234.preheader ], [ %indvar.next1370, %polly.loop_exit267 ]
  %indvars.iv1044 = phi i64 [ %118, %polly.loop_header234.preheader ], [ %indvars.iv.next1045, %polly.loop_exit267 ]
  %polly.indvar237 = phi i64 [ %117, %polly.loop_header234.preheader ], [ %polly.indvar_next238, %polly.loop_exit267 ]
  %121 = add i64 %113, %indvar1369
  %smin1371 = call i64 @llvm.smin.i64(i64 %121, i64 19)
  %122 = add nsw i64 %smin1371, 1
  %smin1050 = call i64 @llvm.smin.i64(i64 %indvars.iv1044, i64 19)
  %123 = add nsw i64 %polly.indvar237, %119
  %polly.loop_guard2501169 = icmp sgt i64 %123, -1
  %124 = add nuw nsw i64 %polly.indvar237, %105
  %.not = icmp ult i64 %124, %120
  %polly.access.mul.call1259 = mul nsw i64 %124, 1000
  %125 = add nuw i64 %polly.access.mul.call1259, %108
  br i1 %polly.loop_guard2501169, label %polly.loop_header240.us, label %polly.loop_header234.split

polly.loop_header240.us:                          ; preds = %polly.loop_header234, %polly.merge.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.merge.us ], [ 0, %polly.loop_header234 ]
  %126 = add nuw nsw i64 %polly.indvar243.us, %108
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar243.us, 1200
  br label %polly.loop_header247.us

polly.loop_header247.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header247.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_header247.us ], [ 0, %polly.loop_header240.us ]
  %127 = add nuw nsw i64 %polly.indvar251.us, %114
  %polly.access.mul.call1255.us = mul nuw nsw i64 %127, 1000
  %polly.access.add.call1256.us = add nuw nsw i64 %126, %polly.access.mul.call1255.us
  %polly.access.call1257.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1256.us
  %polly.access.call1257.load.us = load double, double* %polly.access.call1257.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar251.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1257.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar251.us, %smin1050
  br i1 %exitcond1047.not, label %polly.cond.loopexit.us, label %polly.loop_header247.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1260.us = add nuw nsw i64 %125, %polly.indvar243.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %123
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar_next244.us, %107
  br i1 %exitcond1049.not, label %polly.loop_header265.preheader, label %polly.loop_header240.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header247.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit267, label %polly.loop_header240

polly.loop_exit267:                               ; preds = %polly.loop_exit274.loopexit.us, %polly.loop_header234.split, %polly.loop_header265.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %polly.loop_cond239.not.not = icmp ult i64 %polly.indvar237, %104
  %indvars.iv.next1045 = add i64 %indvars.iv1044, 1
  %indvar.next1370 = add i64 %indvar1369, 1
  br i1 %polly.loop_cond239.not.not, label %polly.loop_header234, label %polly.loop_exit236

polly.loop_header240:                             ; preds = %polly.loop_header234.split, %polly.loop_header240
  %polly.indvar243 = phi i64 [ %polly.indvar_next244, %polly.loop_header240 ], [ 0, %polly.loop_header234.split ]
  %polly.access.add.call1260 = add nuw nsw i64 %125, %polly.indvar243
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !68, !noalias !76
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar243, 1200
  %polly.access.add.Packed_MemRef_call1263 = add nsw i64 %polly.access.mul.Packed_MemRef_call1262, %123
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next244 = add nuw nsw i64 %polly.indvar243, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next244, %107
  br i1 %exitcond.not, label %polly.loop_header265.preheader, label %polly.loop_header240

polly.loop_header265.preheader:                   ; preds = %polly.loop_header240, %polly.merge.us
  %128 = mul i64 %124, 9600
  br i1 %polly.loop_guard2501169, label %polly.loop_header265.us, label %polly.loop_exit267

polly.loop_header265.us:                          ; preds = %polly.loop_header265.preheader, %polly.loop_exit274.loopexit.us
  %polly.indvar268.us = phi i64 [ %polly.indvar_next269.us, %polly.loop_exit274.loopexit.us ], [ 0, %polly.loop_header265.preheader ]
  %polly.access.mul.Packed_MemRef_call1279.us = mul nuw nsw i64 %polly.indvar268.us, 1200
  %129 = add nuw nsw i64 %polly.indvar268.us, %108
  %polly.access.mul.Packed_MemRef_call2283.us = mul nuw nsw i64 %129, 1200
  %polly.access.add.Packed_MemRef_call2284.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us, %124
  %polly.access.Packed_MemRef_call2285.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call2285.us, align 8
  %polly.access.add.Packed_MemRef_call1292.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1279.us, %123
  %polly.access.Packed_MemRef_call1293.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call1293.us, align 8
  %min.iters.check1372 = icmp ult i64 %122, 4
  br i1 %min.iters.check1372, label %polly.loop_header272.us.preheader, label %vector.ph1373

vector.ph1373:                                    ; preds = %polly.loop_header265.us
  %n.vec1375 = and i64 %122, -4
  %broadcast.splatinsert1381 = insertelement <4 x double> poison, double %_p_scalar_286.us, i32 0
  %broadcast.splat1382 = shufflevector <4 x double> %broadcast.splatinsert1381, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1384 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1385 = shufflevector <4 x double> %broadcast.splatinsert1384, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1367

vector.body1367:                                  ; preds = %vector.body1367, %vector.ph1373
  %index1376 = phi i64 [ 0, %vector.ph1373 ], [ %index.next1377, %vector.body1367 ]
  %130 = add nuw nsw i64 %index1376, %114
  %131 = add nuw nsw i64 %index1376, %polly.access.mul.Packed_MemRef_call1279.us
  %132 = getelementptr double, double* %Packed_MemRef_call1, i64 %131
  %133 = bitcast double* %132 to <4 x double>*
  %wide.load1380 = load <4 x double>, <4 x double>* %133, align 8
  %134 = fmul fast <4 x double> %broadcast.splat1382, %wide.load1380
  %135 = add nuw nsw i64 %130, %polly.access.mul.Packed_MemRef_call2283.us
  %136 = getelementptr double, double* %Packed_MemRef_call2, i64 %135
  %137 = bitcast double* %136 to <4 x double>*
  %wide.load1383 = load <4 x double>, <4 x double>* %137, align 8
  %138 = fmul fast <4 x double> %broadcast.splat1385, %wide.load1383
  %139 = shl i64 %130, 3
  %140 = add i64 %139, %128
  %141 = getelementptr i8, i8* %call, i64 %140
  %142 = bitcast i8* %141 to <4 x double>*
  %wide.load1386 = load <4 x double>, <4 x double>* %142, align 8, !alias.scope !65, !noalias !67
  %143 = fadd fast <4 x double> %138, %134
  %144 = fmul fast <4 x double> %143, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %145 = fadd fast <4 x double> %144, %wide.load1386
  %146 = bitcast i8* %141 to <4 x double>*
  store <4 x double> %145, <4 x double>* %146, align 8, !alias.scope !65, !noalias !67
  %index.next1377 = add i64 %index1376, 4
  %147 = icmp eq i64 %index.next1377, %n.vec1375
  br i1 %147, label %middle.block1365, label %vector.body1367, !llvm.loop !77

middle.block1365:                                 ; preds = %vector.body1367
  %cmp.n1379 = icmp eq i64 %122, %n.vec1375
  br i1 %cmp.n1379, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us.preheader

polly.loop_header272.us.preheader:                ; preds = %polly.loop_header265.us, %middle.block1365
  %polly.indvar276.us.ph = phi i64 [ 0, %polly.loop_header265.us ], [ %n.vec1375, %middle.block1365 ]
  br label %polly.loop_header272.us

polly.loop_header272.us:                          ; preds = %polly.loop_header272.us.preheader, %polly.loop_header272.us
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_header272.us ], [ %polly.indvar276.us.ph, %polly.loop_header272.us.preheader ]
  %148 = add nuw nsw i64 %polly.indvar276.us, %114
  %polly.access.add.Packed_MemRef_call1280.us = add nuw nsw i64 %polly.indvar276.us, %polly.access.mul.Packed_MemRef_call1279.us
  %polly.access.Packed_MemRef_call1281.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call1281.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %polly.access.add.Packed_MemRef_call2288.us = add nuw nsw i64 %148, %polly.access.mul.Packed_MemRef_call2283.us
  %polly.access.Packed_MemRef_call2289.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call2289.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %149 = shl i64 %148, 3
  %150 = add i64 %149, %128
  %scevgep295.us = getelementptr i8, i8* %call, i64 %150
  %scevgep295296.us = bitcast i8* %scevgep295.us to double*
  %_p_scalar_297.us = load double, double* %scevgep295296.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_297.us
  store double %p_add42.i118.us, double* %scevgep295296.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar276.us, %smin1050
  br i1 %exitcond1051.not, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us, !llvm.loop !78

polly.loop_exit274.loopexit.us:                   ; preds = %polly.loop_header272.us, %middle.block1365
  %polly.indvar_next269.us = add nuw nsw i64 %polly.indvar268.us, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar_next269.us, %107
  br i1 %exitcond1053.not, label %polly.loop_exit267, label %polly.loop_header265.us

polly.start300:                                   ; preds = %kernel_syr2k.exit
  %malloccall302 = tail call dereferenceable_or_null(768000) i8* @malloc(i64 768000) #6
  %malloccall304 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header388

polly.exiting301:                                 ; preds = %polly.loop_exit428
  tail call void @free(i8* %malloccall302)
  tail call void @free(i8* %malloccall304)
  br label %kernel_syr2k.exit90

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.start300
  %indvar1306 = phi i64 [ %indvar.next1307, %polly.loop_exit396 ], [ 0, %polly.start300 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start300 ]
  %151 = add i64 %indvar1306, 1
  %152 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %152
  %min.iters.check1308 = icmp ult i64 %151, 4
  br i1 %min.iters.check1308, label %polly.loop_header394.preheader, label %vector.ph1309

vector.ph1309:                                    ; preds = %polly.loop_header388
  %n.vec1311 = and i64 %151, -4
  br label %vector.body1305

vector.body1305:                                  ; preds = %vector.body1305, %vector.ph1309
  %index1312 = phi i64 [ 0, %vector.ph1309 ], [ %index.next1313, %vector.body1305 ]
  %153 = shl nuw nsw i64 %index1312, 3
  %154 = getelementptr i8, i8* %scevgep400, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  %wide.load1316 = load <4 x double>, <4 x double>* %155, align 8, !alias.scope !79, !noalias !81
  %156 = fmul fast <4 x double> %wide.load1316, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %157 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %156, <4 x double>* %157, align 8, !alias.scope !79, !noalias !81
  %index.next1313 = add i64 %index1312, 4
  %158 = icmp eq i64 %index.next1313, %n.vec1311
  br i1 %158, label %middle.block1303, label %vector.body1305, !llvm.loop !86

middle.block1303:                                 ; preds = %vector.body1305
  %cmp.n1315 = icmp eq i64 %151, %n.vec1311
  br i1 %cmp.n1315, label %polly.loop_exit396, label %polly.loop_header394.preheader

polly.loop_header394.preheader:                   ; preds = %polly.loop_header388, %middle.block1303
  %polly.indvar397.ph = phi i64 [ 0, %polly.loop_header388 ], [ %n.vec1311, %middle.block1303 ]
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394, %middle.block1303
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar_next392, 1200
  %indvar.next1307 = add i64 %indvar1306, 1
  br i1 %exitcond1099.not, label %polly.loop_header404.preheader, label %polly.loop_header388

polly.loop_header404.preheader:                   ; preds = %polly.loop_exit396
  %Packed_MemRef_call1303 = bitcast i8* %malloccall302 to double*
  %Packed_MemRef_call2305 = bitcast i8* %malloccall304 to double*
  br label %polly.loop_header404

polly.loop_header394:                             ; preds = %polly.loop_header394.preheader, %polly.loop_header394
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_header394 ], [ %polly.indvar397.ph, %polly.loop_header394.preheader ]
  %159 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %159
  %scevgep401402 = bitcast i8* %scevgep401 to double*
  %_p_scalar_403 = load double, double* %scevgep401402, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_403, 1.200000e+00
  store double %p_mul.i57, double* %scevgep401402, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond1098.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !87

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_exit412
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_exit412 ], [ 0, %polly.loop_header404.preheader ]
  %polly.access.mul.Packed_MemRef_call2305 = mul nuw nsw i64 %polly.indvar407, 1200
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_header410
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar_next408, 1000
  br i1 %exitcond1097.not, label %polly.loop_header420, label %polly.loop_header404

polly.loop_header410:                             ; preds = %polly.loop_header410, %polly.loop_header404
  %polly.indvar413 = phi i64 [ 0, %polly.loop_header404 ], [ %polly.indvar_next414, %polly.loop_header410 ]
  %polly.access.mul.call2417 = mul nuw nsw i64 %polly.indvar413, 1000
  %polly.access.add.call2418 = add nuw nsw i64 %polly.access.mul.call2417, %polly.indvar407
  %polly.access.call2419 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2418
  %polly.access.call2419.load = load double, double* %polly.access.call2419, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call2305 = add nuw nsw i64 %polly.indvar413, %polly.access.mul.Packed_MemRef_call2305
  %polly.access.Packed_MemRef_call2305 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305
  store double %polly.access.call2419.load, double* %polly.access.Packed_MemRef_call2305, align 8
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar_next414, 1200
  br i1 %exitcond1096.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header420:                             ; preds = %polly.loop_exit412, %polly.loop_exit428
  %indvars.iv1090 = phi i64 [ %indvars.iv.next1091, %polly.loop_exit428 ], [ 1, %polly.loop_exit412 ]
  %indvars.iv1088 = phi i64 [ %indvars.iv.next1089, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %indvars.iv1074 = phi i64 [ %indvars.iv.next1075, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %160 = mul nsw i64 %polly.indvar423, -128
  %161 = shl nuw nsw i64 %polly.indvar423, 7
  %162 = udiv i64 %indvars.iv1090, 5
  %163 = add nuw i64 %indvars.iv1088, %162
  %umin1092 = call i64 @llvm.umin.i64(i64 %163, i64 53)
  %164 = mul nsw i64 %polly.indvar423, -128
  %165 = icmp slt i64 %164, -1072
  %166 = select i1 %165, i64 %164, i64 -1072
  %167 = add nsw i64 %166, 1199
  %168 = shl nsw i64 %polly.indvar423, 7
  %169 = add nuw nsw i64 %umin1092, 6
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_exit435
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1070 = add nsw i64 %indvars.iv1069, -128
  %indvars.iv.next1075 = add nuw nsw i64 %indvars.iv1074, 128
  %indvars.iv.next1089 = add nuw nsw i64 %indvars.iv1088, 6
  %indvars.iv.next1091 = add nuw nsw i64 %indvars.iv1090, 2
  %exitcond1095.not = icmp eq i64 %polly.indvar_next424, 10
  br i1 %exitcond1095.not, label %polly.exiting301, label %polly.loop_header420

polly.loop_header426:                             ; preds = %polly.loop_exit435, %polly.loop_header420
  %indvars.iv1065 = phi i64 [ %indvars.iv.next1066, %polly.loop_exit435 ], [ 0, %polly.loop_header420 ]
  %polly.indvar429 = phi i64 [ %polly.indvar_next430, %polly.loop_exit435 ], [ 0, %polly.loop_header420 ]
  %smin1086 = call i64 @llvm.smin.i64(i64 %indvars.iv1065, i64 -920)
  %170 = add nsw i64 %smin1086, 1000
  %171 = mul nuw nsw i64 %polly.indvar429, 80
  br label %polly.loop_header433

polly.loop_exit435:                               ; preds = %polly.loop_exit442
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %indvars.iv.next1066 = add nsw i64 %indvars.iv1065, -80
  %exitcond1094.not = icmp eq i64 %polly.indvar_next430, 13
  br i1 %exitcond1094.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header433:                             ; preds = %polly.loop_exit442, %polly.loop_header426
  %indvars.iv1076 = phi i64 [ %indvars.iv.next1077, %polly.loop_exit442 ], [ %indvars.iv1074, %polly.loop_header426 ]
  %indvars.iv1071 = phi i64 [ %indvars.iv.next1072, %polly.loop_exit442 ], [ %indvars.iv1069, %polly.loop_header426 ]
  %polly.indvar436 = phi i64 [ %polly.indvar_next437, %polly.loop_exit442 ], [ 0, %polly.loop_header426 ]
  %172 = mul nuw nsw i64 %polly.indvar436, 20
  %173 = add i64 %160, %172
  %smax1320 = call i64 @llvm.smax.i64(i64 %173, i64 0)
  %174 = mul nsw i64 %polly.indvar436, -20
  %175 = add i64 %161, %174
  %176 = add i64 %smax1320, %175
  %177 = mul nuw nsw i64 %polly.indvar436, 20
  %178 = add nsw i64 %177, %164
  %179 = icmp sgt i64 %178, 0
  %180 = select i1 %179, i64 %178, i64 0
  %polly.loop_guard443.not = icmp sgt i64 %180, %167
  br i1 %polly.loop_guard443.not, label %polly.loop_exit442, label %polly.loop_header440.preheader

polly.loop_header440.preheader:                   ; preds = %polly.loop_header433
  %smax1073 = call i64 @llvm.smax.i64(i64 %indvars.iv1071, i64 0)
  %181 = add i64 %smax1073, %indvars.iv1076
  %182 = sub nsw i64 %168, %177
  %183 = add nuw nsw i64 %177, 20
  br label %polly.loop_header440

polly.loop_exit442:                               ; preds = %polly.loop_exit478, %polly.loop_header433
  %polly.indvar_next437 = add nuw nsw i64 %polly.indvar436, 1
  %indvars.iv.next1072 = add nsw i64 %indvars.iv1071, 20
  %indvars.iv.next1077 = add nsw i64 %indvars.iv1076, -20
  %exitcond1093.not = icmp eq i64 %polly.indvar436, %169
  br i1 %exitcond1093.not, label %polly.loop_exit435, label %polly.loop_header433

polly.loop_header440:                             ; preds = %polly.loop_header440.preheader, %polly.loop_exit478
  %indvar1321 = phi i64 [ 0, %polly.loop_header440.preheader ], [ %indvar.next1322, %polly.loop_exit478 ]
  %indvars.iv1078 = phi i64 [ %181, %polly.loop_header440.preheader ], [ %indvars.iv.next1079, %polly.loop_exit478 ]
  %polly.indvar444 = phi i64 [ %180, %polly.loop_header440.preheader ], [ %polly.indvar_next445, %polly.loop_exit478 ]
  %184 = add i64 %176, %indvar1321
  %smin1323 = call i64 @llvm.smin.i64(i64 %184, i64 19)
  %185 = add nsw i64 %smin1323, 1
  %smin1084 = call i64 @llvm.smin.i64(i64 %indvars.iv1078, i64 19)
  %186 = add nsw i64 %polly.indvar444, %182
  %polly.loop_guard4571170 = icmp sgt i64 %186, -1
  %187 = add nuw nsw i64 %polly.indvar444, %168
  %.not926 = icmp ult i64 %187, %183
  %polly.access.mul.call1470 = mul nsw i64 %187, 1000
  %188 = add nuw i64 %polly.access.mul.call1470, %171
  br i1 %polly.loop_guard4571170, label %polly.loop_header447.us, label %polly.loop_header440.split

polly.loop_header447.us:                          ; preds = %polly.loop_header440, %polly.merge466.us
  %polly.indvar450.us = phi i64 [ %polly.indvar_next451.us, %polly.merge466.us ], [ 0, %polly.loop_header440 ]
  %189 = add nuw nsw i64 %polly.indvar450.us, %171
  %polly.access.mul.Packed_MemRef_call1303.us = mul nuw nsw i64 %polly.indvar450.us, 1200
  br label %polly.loop_header454.us

polly.loop_header454.us:                          ; preds = %polly.loop_header447.us, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ 0, %polly.loop_header447.us ]
  %190 = add nuw nsw i64 %polly.indvar458.us, %177
  %polly.access.mul.call1462.us = mul nuw nsw i64 %190, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %189, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1303.us = add nuw nsw i64 %polly.indvar458.us, %polly.access.mul.Packed_MemRef_call1303.us
  %polly.access.Packed_MemRef_call1303.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1303.us, align 8
  %polly.indvar_next459.us = add nuw nsw i64 %polly.indvar458.us, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar458.us, %smin1084
  br i1 %exitcond1081.not, label %polly.cond465.loopexit.us, label %polly.loop_header454.us

polly.then467.us:                                 ; preds = %polly.cond465.loopexit.us
  %polly.access.add.call1471.us = add nuw nsw i64 %188, %polly.indvar450.us
  %polly.access.call1472.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.us
  %polly.access.call1472.load.us = load double, double* %polly.access.call1472.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1303474.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1303.us, %186
  %polly.access.Packed_MemRef_call1303475.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.us
  store double %polly.access.call1472.load.us, double* %polly.access.Packed_MemRef_call1303475.us, align 8
  br label %polly.merge466.us

polly.merge466.us:                                ; preds = %polly.then467.us, %polly.cond465.loopexit.us
  %polly.indvar_next451.us = add nuw nsw i64 %polly.indvar450.us, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next451.us, %170
  br i1 %exitcond1083.not, label %polly.loop_header476.preheader, label %polly.loop_header447.us

polly.cond465.loopexit.us:                        ; preds = %polly.loop_header454.us
  br i1 %.not926, label %polly.merge466.us, label %polly.then467.us

polly.loop_header440.split:                       ; preds = %polly.loop_header440
  br i1 %.not926, label %polly.loop_exit478, label %polly.loop_header447

polly.loop_exit478:                               ; preds = %polly.loop_exit485.loopexit.us, %polly.loop_header440.split, %polly.loop_header476.preheader
  %polly.indvar_next445 = add nuw nsw i64 %polly.indvar444, 1
  %polly.loop_cond446.not.not = icmp ult i64 %polly.indvar444, %167
  %indvars.iv.next1079 = add i64 %indvars.iv1078, 1
  %indvar.next1322 = add i64 %indvar1321, 1
  br i1 %polly.loop_cond446.not.not, label %polly.loop_header440, label %polly.loop_exit442

polly.loop_header447:                             ; preds = %polly.loop_header440.split, %polly.loop_header447
  %polly.indvar450 = phi i64 [ %polly.indvar_next451, %polly.loop_header447 ], [ 0, %polly.loop_header440.split ]
  %polly.access.add.call1471 = add nuw nsw i64 %188, %polly.indvar450
  %polly.access.call1472 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471
  %polly.access.call1472.load = load double, double* %polly.access.call1472, align 8, !alias.scope !82, !noalias !89
  %polly.access.mul.Packed_MemRef_call1303473 = mul nuw nsw i64 %polly.indvar450, 1200
  %polly.access.add.Packed_MemRef_call1303474 = add nsw i64 %polly.access.mul.Packed_MemRef_call1303473, %186
  %polly.access.Packed_MemRef_call1303475 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474
  store double %polly.access.call1472.load, double* %polly.access.Packed_MemRef_call1303475, align 8
  %polly.indvar_next451 = add nuw nsw i64 %polly.indvar450, 1
  %exitcond1068.not = icmp eq i64 %polly.indvar_next451, %170
  br i1 %exitcond1068.not, label %polly.loop_header476.preheader, label %polly.loop_header447

polly.loop_header476.preheader:                   ; preds = %polly.loop_header447, %polly.merge466.us
  %191 = mul i64 %187, 9600
  br i1 %polly.loop_guard4571170, label %polly.loop_header476.us, label %polly.loop_exit478

polly.loop_header476.us:                          ; preds = %polly.loop_header476.preheader, %polly.loop_exit485.loopexit.us
  %polly.indvar479.us = phi i64 [ %polly.indvar_next480.us, %polly.loop_exit485.loopexit.us ], [ 0, %polly.loop_header476.preheader ]
  %polly.access.mul.Packed_MemRef_call1303490.us = mul nuw nsw i64 %polly.indvar479.us, 1200
  %192 = add nuw nsw i64 %polly.indvar479.us, %171
  %polly.access.mul.Packed_MemRef_call2305494.us = mul nuw nsw i64 %192, 1200
  %polly.access.add.Packed_MemRef_call2305495.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us, %187
  %polly.access.Packed_MemRef_call2305496.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call2305496.us, align 8
  %polly.access.add.Packed_MemRef_call1303503.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1303490.us, %186
  %polly.access.Packed_MemRef_call1303504.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303503.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call1303504.us, align 8
  %min.iters.check1324 = icmp ult i64 %185, 4
  br i1 %min.iters.check1324, label %polly.loop_header483.us.preheader, label %vector.ph1325

vector.ph1325:                                    ; preds = %polly.loop_header476.us
  %n.vec1327 = and i64 %185, -4
  %broadcast.splatinsert1333 = insertelement <4 x double> poison, double %_p_scalar_497.us, i32 0
  %broadcast.splat1334 = shufflevector <4 x double> %broadcast.splatinsert1333, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1336 = insertelement <4 x double> poison, double %_p_scalar_505.us, i32 0
  %broadcast.splat1337 = shufflevector <4 x double> %broadcast.splatinsert1336, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1319

vector.body1319:                                  ; preds = %vector.body1319, %vector.ph1325
  %index1328 = phi i64 [ 0, %vector.ph1325 ], [ %index.next1329, %vector.body1319 ]
  %193 = add nuw nsw i64 %index1328, %177
  %194 = add nuw nsw i64 %index1328, %polly.access.mul.Packed_MemRef_call1303490.us
  %195 = getelementptr double, double* %Packed_MemRef_call1303, i64 %194
  %196 = bitcast double* %195 to <4 x double>*
  %wide.load1332 = load <4 x double>, <4 x double>* %196, align 8
  %197 = fmul fast <4 x double> %broadcast.splat1334, %wide.load1332
  %198 = add nuw nsw i64 %193, %polly.access.mul.Packed_MemRef_call2305494.us
  %199 = getelementptr double, double* %Packed_MemRef_call2305, i64 %198
  %200 = bitcast double* %199 to <4 x double>*
  %wide.load1335 = load <4 x double>, <4 x double>* %200, align 8
  %201 = fmul fast <4 x double> %broadcast.splat1337, %wide.load1335
  %202 = shl i64 %193, 3
  %203 = add i64 %202, %191
  %204 = getelementptr i8, i8* %call, i64 %203
  %205 = bitcast i8* %204 to <4 x double>*
  %wide.load1338 = load <4 x double>, <4 x double>* %205, align 8, !alias.scope !79, !noalias !81
  %206 = fadd fast <4 x double> %201, %197
  %207 = fmul fast <4 x double> %206, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %208 = fadd fast <4 x double> %207, %wide.load1338
  %209 = bitcast i8* %204 to <4 x double>*
  store <4 x double> %208, <4 x double>* %209, align 8, !alias.scope !79, !noalias !81
  %index.next1329 = add i64 %index1328, 4
  %210 = icmp eq i64 %index.next1329, %n.vec1327
  br i1 %210, label %middle.block1317, label %vector.body1319, !llvm.loop !90

middle.block1317:                                 ; preds = %vector.body1319
  %cmp.n1331 = icmp eq i64 %185, %n.vec1327
  br i1 %cmp.n1331, label %polly.loop_exit485.loopexit.us, label %polly.loop_header483.us.preheader

polly.loop_header483.us.preheader:                ; preds = %polly.loop_header476.us, %middle.block1317
  %polly.indvar487.us.ph = phi i64 [ 0, %polly.loop_header476.us ], [ %n.vec1327, %middle.block1317 ]
  br label %polly.loop_header483.us

polly.loop_header483.us:                          ; preds = %polly.loop_header483.us.preheader, %polly.loop_header483.us
  %polly.indvar487.us = phi i64 [ %polly.indvar_next488.us, %polly.loop_header483.us ], [ %polly.indvar487.us.ph, %polly.loop_header483.us.preheader ]
  %211 = add nuw nsw i64 %polly.indvar487.us, %177
  %polly.access.add.Packed_MemRef_call1303491.us = add nuw nsw i64 %polly.indvar487.us, %polly.access.mul.Packed_MemRef_call1303490.us
  %polly.access.Packed_MemRef_call1303492.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303491.us
  %_p_scalar_493.us = load double, double* %polly.access.Packed_MemRef_call1303492.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_497.us, %_p_scalar_493.us
  %polly.access.add.Packed_MemRef_call2305499.us = add nuw nsw i64 %211, %polly.access.mul.Packed_MemRef_call2305494.us
  %polly.access.Packed_MemRef_call2305500.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call2305500.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_505.us, %_p_scalar_501.us
  %212 = shl i64 %211, 3
  %213 = add i64 %212, %191
  %scevgep506.us = getelementptr i8, i8* %call, i64 %213
  %scevgep506507.us = bitcast i8* %scevgep506.us to double*
  %_p_scalar_508.us = load double, double* %scevgep506507.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_508.us
  store double %p_add42.i79.us, double* %scevgep506507.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next488.us = add nuw nsw i64 %polly.indvar487.us, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar487.us, %smin1084
  br i1 %exitcond1085.not, label %polly.loop_exit485.loopexit.us, label %polly.loop_header483.us, !llvm.loop !91

polly.loop_exit485.loopexit.us:                   ; preds = %polly.loop_header483.us, %middle.block1317
  %polly.indvar_next480.us = add nuw nsw i64 %polly.indvar479.us, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar_next480.us, %170
  br i1 %exitcond1087.not, label %polly.loop_exit478, label %polly.loop_header476.us

polly.start511:                                   ; preds = %init_array.exit
  %malloccall513 = tail call dereferenceable_or_null(768000) i8* @malloc(i64 768000) #6
  %malloccall515 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header599

polly.exiting512:                                 ; preds = %polly.loop_exit639
  tail call void @free(i8* %malloccall513)
  tail call void @free(i8* %malloccall515)
  br label %kernel_syr2k.exit

polly.loop_header599:                             ; preds = %polly.loop_exit607, %polly.start511
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit607 ], [ 0, %polly.start511 ]
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit607 ], [ 1, %polly.start511 ]
  %214 = add i64 %indvar, 1
  %215 = mul nuw nsw i64 %polly.indvar602, 9600
  %scevgep611 = getelementptr i8, i8* %call, i64 %215
  %min.iters.check1260 = icmp ult i64 %214, 4
  br i1 %min.iters.check1260, label %polly.loop_header605.preheader, label %vector.ph1261

vector.ph1261:                                    ; preds = %polly.loop_header599
  %n.vec1263 = and i64 %214, -4
  br label %vector.body1259

vector.body1259:                                  ; preds = %vector.body1259, %vector.ph1261
  %index1264 = phi i64 [ 0, %vector.ph1261 ], [ %index.next1265, %vector.body1259 ]
  %216 = shl nuw nsw i64 %index1264, 3
  %217 = getelementptr i8, i8* %scevgep611, i64 %216
  %218 = bitcast i8* %217 to <4 x double>*
  %wide.load1268 = load <4 x double>, <4 x double>* %218, align 8, !alias.scope !92, !noalias !94
  %219 = fmul fast <4 x double> %wide.load1268, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %220 = bitcast i8* %217 to <4 x double>*
  store <4 x double> %219, <4 x double>* %220, align 8, !alias.scope !92, !noalias !94
  %index.next1265 = add i64 %index1264, 4
  %221 = icmp eq i64 %index.next1265, %n.vec1263
  br i1 %221, label %middle.block1257, label %vector.body1259, !llvm.loop !99

middle.block1257:                                 ; preds = %vector.body1259
  %cmp.n1267 = icmp eq i64 %214, %n.vec1263
  br i1 %cmp.n1267, label %polly.loop_exit607, label %polly.loop_header605.preheader

polly.loop_header605.preheader:                   ; preds = %polly.loop_header599, %middle.block1257
  %polly.indvar608.ph = phi i64 [ 0, %polly.loop_header599 ], [ %n.vec1263, %middle.block1257 ]
  br label %polly.loop_header605

polly.loop_exit607:                               ; preds = %polly.loop_header605, %middle.block1257
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1134.not = icmp eq i64 %polly.indvar_next603, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1134.not, label %polly.loop_header615.preheader, label %polly.loop_header599

polly.loop_header615.preheader:                   ; preds = %polly.loop_exit607
  %Packed_MemRef_call1514 = bitcast i8* %malloccall513 to double*
  %Packed_MemRef_call2516 = bitcast i8* %malloccall515 to double*
  br label %polly.loop_header615

polly.loop_header605:                             ; preds = %polly.loop_header605.preheader, %polly.loop_header605
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_header605 ], [ %polly.indvar608.ph, %polly.loop_header605.preheader ]
  %222 = shl nuw nsw i64 %polly.indvar608, 3
  %scevgep612 = getelementptr i8, i8* %scevgep611, i64 %222
  %scevgep612613 = bitcast i8* %scevgep612 to double*
  %_p_scalar_614 = load double, double* %scevgep612613, align 8, !alias.scope !92, !noalias !94
  %p_mul.i = fmul fast double %_p_scalar_614, 1.200000e+00
  store double %p_mul.i, double* %scevgep612613, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1133.not = icmp eq i64 %polly.indvar_next609, %polly.indvar602
  br i1 %exitcond1133.not, label %polly.loop_exit607, label %polly.loop_header605, !llvm.loop !100

polly.loop_header615:                             ; preds = %polly.loop_header615.preheader, %polly.loop_exit623
  %polly.indvar618 = phi i64 [ %polly.indvar_next619, %polly.loop_exit623 ], [ 0, %polly.loop_header615.preheader ]
  %polly.access.mul.Packed_MemRef_call2516 = mul nuw nsw i64 %polly.indvar618, 1200
  br label %polly.loop_header621

polly.loop_exit623:                               ; preds = %polly.loop_header621
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar_next619, 1000
  br i1 %exitcond1132.not, label %polly.loop_header631, label %polly.loop_header615

polly.loop_header621:                             ; preds = %polly.loop_header621, %polly.loop_header615
  %polly.indvar624 = phi i64 [ 0, %polly.loop_header615 ], [ %polly.indvar_next625, %polly.loop_header621 ]
  %polly.access.mul.call2628 = mul nuw nsw i64 %polly.indvar624, 1000
  %polly.access.add.call2629 = add nuw nsw i64 %polly.access.mul.call2628, %polly.indvar618
  %polly.access.call2630 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2629
  %polly.access.call2630.load = load double, double* %polly.access.call2630, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2516 = add nuw nsw i64 %polly.indvar624, %polly.access.mul.Packed_MemRef_call2516
  %polly.access.Packed_MemRef_call2516 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516
  store double %polly.access.call2630.load, double* %polly.access.Packed_MemRef_call2516, align 8
  %polly.indvar_next625 = add nuw nsw i64 %polly.indvar624, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar_next625, 1200
  br i1 %exitcond1131.not, label %polly.loop_exit623, label %polly.loop_header621

polly.loop_header631:                             ; preds = %polly.loop_exit623, %polly.loop_exit639
  %indvars.iv1125 = phi i64 [ %indvars.iv.next1126, %polly.loop_exit639 ], [ 1, %polly.loop_exit623 ]
  %indvars.iv1123 = phi i64 [ %indvars.iv.next1124, %polly.loop_exit639 ], [ 0, %polly.loop_exit623 ]
  %indvars.iv1109 = phi i64 [ %indvars.iv.next1110, %polly.loop_exit639 ], [ 0, %polly.loop_exit623 ]
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit639 ], [ 0, %polly.loop_exit623 ]
  %polly.indvar634 = phi i64 [ %polly.indvar_next635, %polly.loop_exit639 ], [ 0, %polly.loop_exit623 ]
  %223 = mul nsw i64 %polly.indvar634, -128
  %224 = shl nuw nsw i64 %polly.indvar634, 7
  %225 = udiv i64 %indvars.iv1125, 5
  %226 = add nuw i64 %indvars.iv1123, %225
  %umin1127 = call i64 @llvm.umin.i64(i64 %226, i64 53)
  %227 = mul nsw i64 %polly.indvar634, -128
  %228 = icmp slt i64 %227, -1072
  %229 = select i1 %228, i64 %227, i64 -1072
  %230 = add nsw i64 %229, 1199
  %231 = shl nsw i64 %polly.indvar634, 7
  %232 = add nuw nsw i64 %umin1127, 6
  br label %polly.loop_header637

polly.loop_exit639:                               ; preds = %polly.loop_exit646
  %polly.indvar_next635 = add nuw nsw i64 %polly.indvar634, 1
  %indvars.iv.next1105 = add nsw i64 %indvars.iv1104, -128
  %indvars.iv.next1110 = add nuw nsw i64 %indvars.iv1109, 128
  %indvars.iv.next1124 = add nuw nsw i64 %indvars.iv1123, 6
  %indvars.iv.next1126 = add nuw nsw i64 %indvars.iv1125, 2
  %exitcond1130.not = icmp eq i64 %polly.indvar_next635, 10
  br i1 %exitcond1130.not, label %polly.exiting512, label %polly.loop_header631

polly.loop_header637:                             ; preds = %polly.loop_exit646, %polly.loop_header631
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit646 ], [ 0, %polly.loop_header631 ]
  %polly.indvar640 = phi i64 [ %polly.indvar_next641, %polly.loop_exit646 ], [ 0, %polly.loop_header631 ]
  %smin1121 = call i64 @llvm.smin.i64(i64 %indvars.iv1100, i64 -920)
  %233 = add nsw i64 %smin1121, 1000
  %234 = mul nuw nsw i64 %polly.indvar640, 80
  br label %polly.loop_header644

polly.loop_exit646:                               ; preds = %polly.loop_exit653
  %polly.indvar_next641 = add nuw nsw i64 %polly.indvar640, 1
  %indvars.iv.next1101 = add nsw i64 %indvars.iv1100, -80
  %exitcond1129.not = icmp eq i64 %polly.indvar_next641, 13
  br i1 %exitcond1129.not, label %polly.loop_exit639, label %polly.loop_header637

polly.loop_header644:                             ; preds = %polly.loop_exit653, %polly.loop_header637
  %indvars.iv1111 = phi i64 [ %indvars.iv.next1112, %polly.loop_exit653 ], [ %indvars.iv1109, %polly.loop_header637 ]
  %indvars.iv1106 = phi i64 [ %indvars.iv.next1107, %polly.loop_exit653 ], [ %indvars.iv1104, %polly.loop_header637 ]
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit653 ], [ 0, %polly.loop_header637 ]
  %235 = mul nuw nsw i64 %polly.indvar647, 20
  %236 = add i64 %223, %235
  %smax1272 = call i64 @llvm.smax.i64(i64 %236, i64 0)
  %237 = mul nsw i64 %polly.indvar647, -20
  %238 = add i64 %224, %237
  %239 = add i64 %smax1272, %238
  %240 = mul nuw nsw i64 %polly.indvar647, 20
  %241 = add nsw i64 %240, %227
  %242 = icmp sgt i64 %241, 0
  %243 = select i1 %242, i64 %241, i64 0
  %polly.loop_guard654.not = icmp sgt i64 %243, %230
  br i1 %polly.loop_guard654.not, label %polly.loop_exit653, label %polly.loop_header651.preheader

polly.loop_header651.preheader:                   ; preds = %polly.loop_header644
  %smax1108 = call i64 @llvm.smax.i64(i64 %indvars.iv1106, i64 0)
  %244 = add i64 %smax1108, %indvars.iv1111
  %245 = sub nsw i64 %231, %240
  %246 = add nuw nsw i64 %240, 20
  br label %polly.loop_header651

polly.loop_exit653:                               ; preds = %polly.loop_exit689, %polly.loop_header644
  %polly.indvar_next648 = add nuw nsw i64 %polly.indvar647, 1
  %indvars.iv.next1107 = add nsw i64 %indvars.iv1106, 20
  %indvars.iv.next1112 = add nsw i64 %indvars.iv1111, -20
  %exitcond1128.not = icmp eq i64 %polly.indvar647, %232
  br i1 %exitcond1128.not, label %polly.loop_exit646, label %polly.loop_header644

polly.loop_header651:                             ; preds = %polly.loop_header651.preheader, %polly.loop_exit689
  %indvar1273 = phi i64 [ 0, %polly.loop_header651.preheader ], [ %indvar.next1274, %polly.loop_exit689 ]
  %indvars.iv1113 = phi i64 [ %244, %polly.loop_header651.preheader ], [ %indvars.iv.next1114, %polly.loop_exit689 ]
  %polly.indvar655 = phi i64 [ %243, %polly.loop_header651.preheader ], [ %polly.indvar_next656, %polly.loop_exit689 ]
  %247 = add i64 %239, %indvar1273
  %smin1275 = call i64 @llvm.smin.i64(i64 %247, i64 19)
  %248 = add nsw i64 %smin1275, 1
  %smin1119 = call i64 @llvm.smin.i64(i64 %indvars.iv1113, i64 19)
  %249 = add nsw i64 %polly.indvar655, %245
  %polly.loop_guard6681171 = icmp sgt i64 %249, -1
  %250 = add nuw nsw i64 %polly.indvar655, %231
  %.not927 = icmp ult i64 %250, %246
  %polly.access.mul.call1681 = mul nsw i64 %250, 1000
  %251 = add nuw i64 %polly.access.mul.call1681, %234
  br i1 %polly.loop_guard6681171, label %polly.loop_header658.us, label %polly.loop_header651.split

polly.loop_header658.us:                          ; preds = %polly.loop_header651, %polly.merge677.us
  %polly.indvar661.us = phi i64 [ %polly.indvar_next662.us, %polly.merge677.us ], [ 0, %polly.loop_header651 ]
  %252 = add nuw nsw i64 %polly.indvar661.us, %234
  %polly.access.mul.Packed_MemRef_call1514.us = mul nuw nsw i64 %polly.indvar661.us, 1200
  br label %polly.loop_header665.us

polly.loop_header665.us:                          ; preds = %polly.loop_header658.us, %polly.loop_header665.us
  %polly.indvar669.us = phi i64 [ %polly.indvar_next670.us, %polly.loop_header665.us ], [ 0, %polly.loop_header658.us ]
  %253 = add nuw nsw i64 %polly.indvar669.us, %240
  %polly.access.mul.call1673.us = mul nuw nsw i64 %253, 1000
  %polly.access.add.call1674.us = add nuw nsw i64 %252, %polly.access.mul.call1673.us
  %polly.access.call1675.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674.us
  %polly.access.call1675.load.us = load double, double* %polly.access.call1675.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1514.us = add nuw nsw i64 %polly.indvar669.us, %polly.access.mul.Packed_MemRef_call1514.us
  %polly.access.Packed_MemRef_call1514.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us
  store double %polly.access.call1675.load.us, double* %polly.access.Packed_MemRef_call1514.us, align 8
  %polly.indvar_next670.us = add nuw nsw i64 %polly.indvar669.us, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar669.us, %smin1119
  br i1 %exitcond1116.not, label %polly.cond676.loopexit.us, label %polly.loop_header665.us

polly.then678.us:                                 ; preds = %polly.cond676.loopexit.us
  %polly.access.add.call1682.us = add nuw nsw i64 %251, %polly.indvar661.us
  %polly.access.call1683.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.us
  %polly.access.call1683.load.us = load double, double* %polly.access.call1683.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1514685.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1514.us, %249
  %polly.access.Packed_MemRef_call1514686.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.us
  store double %polly.access.call1683.load.us, double* %polly.access.Packed_MemRef_call1514686.us, align 8
  br label %polly.merge677.us

polly.merge677.us:                                ; preds = %polly.then678.us, %polly.cond676.loopexit.us
  %polly.indvar_next662.us = add nuw nsw i64 %polly.indvar661.us, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar_next662.us, %233
  br i1 %exitcond1118.not, label %polly.loop_header687.preheader, label %polly.loop_header658.us

polly.cond676.loopexit.us:                        ; preds = %polly.loop_header665.us
  br i1 %.not927, label %polly.merge677.us, label %polly.then678.us

polly.loop_header651.split:                       ; preds = %polly.loop_header651
  br i1 %.not927, label %polly.loop_exit689, label %polly.loop_header658

polly.loop_exit689:                               ; preds = %polly.loop_exit696.loopexit.us, %polly.loop_header651.split, %polly.loop_header687.preheader
  %polly.indvar_next656 = add nuw nsw i64 %polly.indvar655, 1
  %polly.loop_cond657.not.not = icmp ult i64 %polly.indvar655, %230
  %indvars.iv.next1114 = add i64 %indvars.iv1113, 1
  %indvar.next1274 = add i64 %indvar1273, 1
  br i1 %polly.loop_cond657.not.not, label %polly.loop_header651, label %polly.loop_exit653

polly.loop_header658:                             ; preds = %polly.loop_header651.split, %polly.loop_header658
  %polly.indvar661 = phi i64 [ %polly.indvar_next662, %polly.loop_header658 ], [ 0, %polly.loop_header651.split ]
  %polly.access.add.call1682 = add nuw nsw i64 %251, %polly.indvar661
  %polly.access.call1683 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682
  %polly.access.call1683.load = load double, double* %polly.access.call1683, align 8, !alias.scope !95, !noalias !102
  %polly.access.mul.Packed_MemRef_call1514684 = mul nuw nsw i64 %polly.indvar661, 1200
  %polly.access.add.Packed_MemRef_call1514685 = add nsw i64 %polly.access.mul.Packed_MemRef_call1514684, %249
  %polly.access.Packed_MemRef_call1514686 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685
  store double %polly.access.call1683.load, double* %polly.access.Packed_MemRef_call1514686, align 8
  %polly.indvar_next662 = add nuw nsw i64 %polly.indvar661, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next662, %233
  br i1 %exitcond1103.not, label %polly.loop_header687.preheader, label %polly.loop_header658

polly.loop_header687.preheader:                   ; preds = %polly.loop_header658, %polly.merge677.us
  %254 = mul i64 %250, 9600
  br i1 %polly.loop_guard6681171, label %polly.loop_header687.us, label %polly.loop_exit689

polly.loop_header687.us:                          ; preds = %polly.loop_header687.preheader, %polly.loop_exit696.loopexit.us
  %polly.indvar690.us = phi i64 [ %polly.indvar_next691.us, %polly.loop_exit696.loopexit.us ], [ 0, %polly.loop_header687.preheader ]
  %polly.access.mul.Packed_MemRef_call1514701.us = mul nuw nsw i64 %polly.indvar690.us, 1200
  %255 = add nuw nsw i64 %polly.indvar690.us, %234
  %polly.access.mul.Packed_MemRef_call2516705.us = mul nuw nsw i64 %255, 1200
  %polly.access.add.Packed_MemRef_call2516706.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us, %250
  %polly.access.Packed_MemRef_call2516707.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us
  %_p_scalar_708.us = load double, double* %polly.access.Packed_MemRef_call2516707.us, align 8
  %polly.access.add.Packed_MemRef_call1514714.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1514701.us, %249
  %polly.access.Packed_MemRef_call1514715.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514714.us
  %_p_scalar_716.us = load double, double* %polly.access.Packed_MemRef_call1514715.us, align 8
  %min.iters.check1276 = icmp ult i64 %248, 4
  br i1 %min.iters.check1276, label %polly.loop_header694.us.preheader, label %vector.ph1277

vector.ph1277:                                    ; preds = %polly.loop_header687.us
  %n.vec1279 = and i64 %248, -4
  %broadcast.splatinsert1285 = insertelement <4 x double> poison, double %_p_scalar_708.us, i32 0
  %broadcast.splat1286 = shufflevector <4 x double> %broadcast.splatinsert1285, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1288 = insertelement <4 x double> poison, double %_p_scalar_716.us, i32 0
  %broadcast.splat1289 = shufflevector <4 x double> %broadcast.splatinsert1288, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1271

vector.body1271:                                  ; preds = %vector.body1271, %vector.ph1277
  %index1280 = phi i64 [ 0, %vector.ph1277 ], [ %index.next1281, %vector.body1271 ]
  %256 = add nuw nsw i64 %index1280, %240
  %257 = add nuw nsw i64 %index1280, %polly.access.mul.Packed_MemRef_call1514701.us
  %258 = getelementptr double, double* %Packed_MemRef_call1514, i64 %257
  %259 = bitcast double* %258 to <4 x double>*
  %wide.load1284 = load <4 x double>, <4 x double>* %259, align 8
  %260 = fmul fast <4 x double> %broadcast.splat1286, %wide.load1284
  %261 = add nuw nsw i64 %256, %polly.access.mul.Packed_MemRef_call2516705.us
  %262 = getelementptr double, double* %Packed_MemRef_call2516, i64 %261
  %263 = bitcast double* %262 to <4 x double>*
  %wide.load1287 = load <4 x double>, <4 x double>* %263, align 8
  %264 = fmul fast <4 x double> %broadcast.splat1289, %wide.load1287
  %265 = shl i64 %256, 3
  %266 = add i64 %265, %254
  %267 = getelementptr i8, i8* %call, i64 %266
  %268 = bitcast i8* %267 to <4 x double>*
  %wide.load1290 = load <4 x double>, <4 x double>* %268, align 8, !alias.scope !92, !noalias !94
  %269 = fadd fast <4 x double> %264, %260
  %270 = fmul fast <4 x double> %269, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %271 = fadd fast <4 x double> %270, %wide.load1290
  %272 = bitcast i8* %267 to <4 x double>*
  store <4 x double> %271, <4 x double>* %272, align 8, !alias.scope !92, !noalias !94
  %index.next1281 = add i64 %index1280, 4
  %273 = icmp eq i64 %index.next1281, %n.vec1279
  br i1 %273, label %middle.block1269, label %vector.body1271, !llvm.loop !103

middle.block1269:                                 ; preds = %vector.body1271
  %cmp.n1283 = icmp eq i64 %248, %n.vec1279
  br i1 %cmp.n1283, label %polly.loop_exit696.loopexit.us, label %polly.loop_header694.us.preheader

polly.loop_header694.us.preheader:                ; preds = %polly.loop_header687.us, %middle.block1269
  %polly.indvar698.us.ph = phi i64 [ 0, %polly.loop_header687.us ], [ %n.vec1279, %middle.block1269 ]
  br label %polly.loop_header694.us

polly.loop_header694.us:                          ; preds = %polly.loop_header694.us.preheader, %polly.loop_header694.us
  %polly.indvar698.us = phi i64 [ %polly.indvar_next699.us, %polly.loop_header694.us ], [ %polly.indvar698.us.ph, %polly.loop_header694.us.preheader ]
  %274 = add nuw nsw i64 %polly.indvar698.us, %240
  %polly.access.add.Packed_MemRef_call1514702.us = add nuw nsw i64 %polly.indvar698.us, %polly.access.mul.Packed_MemRef_call1514701.us
  %polly.access.Packed_MemRef_call1514703.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514702.us
  %_p_scalar_704.us = load double, double* %polly.access.Packed_MemRef_call1514703.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_708.us, %_p_scalar_704.us
  %polly.access.add.Packed_MemRef_call2516710.us = add nuw nsw i64 %274, %polly.access.mul.Packed_MemRef_call2516705.us
  %polly.access.Packed_MemRef_call2516711.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us
  %_p_scalar_712.us = load double, double* %polly.access.Packed_MemRef_call2516711.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_716.us, %_p_scalar_712.us
  %275 = shl i64 %274, 3
  %276 = add i64 %275, %254
  %scevgep717.us = getelementptr i8, i8* %call, i64 %276
  %scevgep717718.us = bitcast i8* %scevgep717.us to double*
  %_p_scalar_719.us = load double, double* %scevgep717718.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_719.us
  store double %p_add42.i.us, double* %scevgep717718.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next699.us = add nuw nsw i64 %polly.indvar698.us, 1
  %exitcond1120.not = icmp eq i64 %polly.indvar698.us, %smin1119
  br i1 %exitcond1120.not, label %polly.loop_exit696.loopexit.us, label %polly.loop_header694.us, !llvm.loop !104

polly.loop_exit696.loopexit.us:                   ; preds = %polly.loop_header694.us, %middle.block1269
  %polly.indvar_next691.us = add nuw nsw i64 %polly.indvar690.us, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar_next691.us, %233
  br i1 %exitcond1122.not, label %polly.loop_exit689, label %polly.loop_header687.us

polly.loop_header846:                             ; preds = %entry, %polly.loop_exit854
  %indvars.iv1159 = phi i64 [ %indvars.iv.next1160, %polly.loop_exit854 ], [ 0, %entry ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %entry ]
  %smin1161 = call i64 @llvm.smin.i64(i64 %indvars.iv1159, i64 -1168)
  %277 = shl nsw i64 %polly.indvar849, 5
  %278 = add nsw i64 %smin1161, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1160 = add nsw i64 %indvars.iv1159, -32
  %exitcond1164.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1164.not, label %polly.loop_header873, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %indvars.iv1155 = phi i64 [ %indvars.iv.next1156, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %279 = mul nsw i64 %polly.indvar855, -32
  %smin = call i64 @llvm.smin.i64(i64 %279, i64 -1168)
  %280 = add nsw i64 %smin, 1200
  %smin1157 = call i64 @llvm.smin.i64(i64 %indvars.iv1155, i64 -1168)
  %281 = shl nsw i64 %polly.indvar855, 5
  %282 = add nsw i64 %smin1157, 1199
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1156 = add nsw i64 %indvars.iv1155, -32
  %exitcond1163.not = icmp eq i64 %polly.indvar_next856, 38
  br i1 %exitcond1163.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %polly.indvar861 = phi i64 [ 0, %polly.loop_header852 ], [ %polly.indvar_next862, %polly.loop_exit866 ]
  %283 = add nuw nsw i64 %polly.indvar861, %277
  %284 = trunc i64 %283 to i32
  %285 = mul nuw nsw i64 %283, 9600
  %min.iters.check = icmp eq i64 %280, 0
  br i1 %min.iters.check, label %polly.loop_header864, label %vector.ph1199

vector.ph1199:                                    ; preds = %polly.loop_header858
  %broadcast.splatinsert1206 = insertelement <4 x i64> poison, i64 %281, i32 0
  %broadcast.splat1207 = shufflevector <4 x i64> %broadcast.splatinsert1206, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1208 = insertelement <4 x i32> poison, i32 %284, i32 0
  %broadcast.splat1209 = shufflevector <4 x i32> %broadcast.splatinsert1208, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1198

vector.body1198:                                  ; preds = %vector.body1198, %vector.ph1199
  %index1200 = phi i64 [ 0, %vector.ph1199 ], [ %index.next1201, %vector.body1198 ]
  %vec.ind1204 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1199 ], [ %vec.ind.next1205, %vector.body1198 ]
  %286 = add nuw nsw <4 x i64> %vec.ind1204, %broadcast.splat1207
  %287 = trunc <4 x i64> %286 to <4 x i32>
  %288 = mul <4 x i32> %broadcast.splat1209, %287
  %289 = add <4 x i32> %288, <i32 3, i32 3, i32 3, i32 3>
  %290 = urem <4 x i32> %289, <i32 1200, i32 1200, i32 1200, i32 1200>
  %291 = sitofp <4 x i32> %290 to <4 x double>
  %292 = fmul fast <4 x double> %291, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %293 = extractelement <4 x i64> %286, i32 0
  %294 = shl i64 %293, 3
  %295 = add nuw nsw i64 %294, %285
  %296 = getelementptr i8, i8* %call, i64 %295
  %297 = bitcast i8* %296 to <4 x double>*
  store <4 x double> %292, <4 x double>* %297, align 8, !alias.scope !105, !noalias !107
  %index.next1201 = add i64 %index1200, 4
  %vec.ind.next1205 = add <4 x i64> %vec.ind1204, <i64 4, i64 4, i64 4, i64 4>
  %298 = icmp eq i64 %index.next1201, %280
  br i1 %298, label %polly.loop_exit866, label %vector.body1198, !llvm.loop !110

polly.loop_exit866:                               ; preds = %vector.body1198, %polly.loop_header864
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1162.not = icmp eq i64 %polly.indvar861, %278
  br i1 %exitcond1162.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_header858, %polly.loop_header864
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_header864 ], [ 0, %polly.loop_header858 ]
  %299 = add nuw nsw i64 %polly.indvar867, %281
  %300 = trunc i64 %299 to i32
  %301 = mul i32 %300, %284
  %302 = add i32 %301, 3
  %303 = urem i32 %302, 1200
  %p_conv31.i = sitofp i32 %303 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %304 = shl i64 %299, 3
  %305 = add nuw nsw i64 %304, %285
  %scevgep870 = getelementptr i8, i8* %call, i64 %305
  %scevgep870871 = bitcast i8* %scevgep870 to double*
  store double %p_div33.i, double* %scevgep870871, align 8, !alias.scope !105, !noalias !107
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1158.not = icmp eq i64 %polly.indvar867, %282
  br i1 %exitcond1158.not, label %polly.loop_exit866, label %polly.loop_header864, !llvm.loop !111

polly.loop_header873:                             ; preds = %polly.loop_exit854, %polly.loop_exit881
  %indvars.iv1149 = phi i64 [ %indvars.iv.next1150, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %polly.indvar876 = phi i64 [ %polly.indvar_next877, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %smin1151 = call i64 @llvm.smin.i64(i64 %indvars.iv1149, i64 -1168)
  %306 = shl nsw i64 %polly.indvar876, 5
  %307 = add nsw i64 %smin1151, 1199
  br label %polly.loop_header879

polly.loop_exit881:                               ; preds = %polly.loop_exit887
  %polly.indvar_next877 = add nuw nsw i64 %polly.indvar876, 1
  %indvars.iv.next1150 = add nsw i64 %indvars.iv1149, -32
  %exitcond1154.not = icmp eq i64 %polly.indvar_next877, 38
  br i1 %exitcond1154.not, label %polly.loop_header899, label %polly.loop_header873

polly.loop_header879:                             ; preds = %polly.loop_exit887, %polly.loop_header873
  %indvars.iv1145 = phi i64 [ %indvars.iv.next1146, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %308 = mul nsw i64 %polly.indvar882, -32
  %smin1213 = call i64 @llvm.smin.i64(i64 %308, i64 -968)
  %309 = add nsw i64 %smin1213, 1000
  %smin1147 = call i64 @llvm.smin.i64(i64 %indvars.iv1145, i64 -968)
  %310 = shl nsw i64 %polly.indvar882, 5
  %311 = add nsw i64 %smin1147, 999
  br label %polly.loop_header885

polly.loop_exit887:                               ; preds = %polly.loop_exit893
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %indvars.iv.next1146 = add nsw i64 %indvars.iv1145, -32
  %exitcond1153.not = icmp eq i64 %polly.indvar_next883, 32
  br i1 %exitcond1153.not, label %polly.loop_exit881, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_exit893, %polly.loop_header879
  %polly.indvar888 = phi i64 [ 0, %polly.loop_header879 ], [ %polly.indvar_next889, %polly.loop_exit893 ]
  %312 = add nuw nsw i64 %polly.indvar888, %306
  %313 = trunc i64 %312 to i32
  %314 = mul nuw nsw i64 %312, 8000
  %min.iters.check1214 = icmp eq i64 %309, 0
  br i1 %min.iters.check1214, label %polly.loop_header891, label %vector.ph1215

vector.ph1215:                                    ; preds = %polly.loop_header885
  %broadcast.splatinsert1224 = insertelement <4 x i64> poison, i64 %310, i32 0
  %broadcast.splat1225 = shufflevector <4 x i64> %broadcast.splatinsert1224, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1226 = insertelement <4 x i32> poison, i32 %313, i32 0
  %broadcast.splat1227 = shufflevector <4 x i32> %broadcast.splatinsert1226, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1212

vector.body1212:                                  ; preds = %vector.body1212, %vector.ph1215
  %index1218 = phi i64 [ 0, %vector.ph1215 ], [ %index.next1219, %vector.body1212 ]
  %vec.ind1222 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1215 ], [ %vec.ind.next1223, %vector.body1212 ]
  %315 = add nuw nsw <4 x i64> %vec.ind1222, %broadcast.splat1225
  %316 = trunc <4 x i64> %315 to <4 x i32>
  %317 = mul <4 x i32> %broadcast.splat1227, %316
  %318 = add <4 x i32> %317, <i32 2, i32 2, i32 2, i32 2>
  %319 = urem <4 x i32> %318, <i32 1000, i32 1000, i32 1000, i32 1000>
  %320 = sitofp <4 x i32> %319 to <4 x double>
  %321 = fmul fast <4 x double> %320, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %322 = extractelement <4 x i64> %315, i32 0
  %323 = shl i64 %322, 3
  %324 = add nuw nsw i64 %323, %314
  %325 = getelementptr i8, i8* %call2, i64 %324
  %326 = bitcast i8* %325 to <4 x double>*
  store <4 x double> %321, <4 x double>* %326, align 8, !alias.scope !109, !noalias !112
  %index.next1219 = add i64 %index1218, 4
  %vec.ind.next1223 = add <4 x i64> %vec.ind1222, <i64 4, i64 4, i64 4, i64 4>
  %327 = icmp eq i64 %index.next1219, %309
  br i1 %327, label %polly.loop_exit893, label %vector.body1212, !llvm.loop !113

polly.loop_exit893:                               ; preds = %vector.body1212, %polly.loop_header891
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %exitcond1152.not = icmp eq i64 %polly.indvar888, %307
  br i1 %exitcond1152.not, label %polly.loop_exit887, label %polly.loop_header885

polly.loop_header891:                             ; preds = %polly.loop_header885, %polly.loop_header891
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_header891 ], [ 0, %polly.loop_header885 ]
  %328 = add nuw nsw i64 %polly.indvar894, %310
  %329 = trunc i64 %328 to i32
  %330 = mul i32 %329, %313
  %331 = add i32 %330, 2
  %332 = urem i32 %331, 1000
  %p_conv10.i = sitofp i32 %332 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %333 = shl i64 %328, 3
  %334 = add nuw nsw i64 %333, %314
  %scevgep897 = getelementptr i8, i8* %call2, i64 %334
  %scevgep897898 = bitcast i8* %scevgep897 to double*
  store double %p_div12.i, double* %scevgep897898, align 8, !alias.scope !109, !noalias !112
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1148.not = icmp eq i64 %polly.indvar894, %311
  br i1 %exitcond1148.not, label %polly.loop_exit893, label %polly.loop_header891, !llvm.loop !114

polly.loop_header899:                             ; preds = %polly.loop_exit881, %polly.loop_exit907
  %indvars.iv1139 = phi i64 [ %indvars.iv.next1140, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %smin1141 = call i64 @llvm.smin.i64(i64 %indvars.iv1139, i64 -1168)
  %335 = shl nsw i64 %polly.indvar902, 5
  %336 = add nsw i64 %smin1141, 1199
  br label %polly.loop_header905

polly.loop_exit907:                               ; preds = %polly.loop_exit913
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %indvars.iv.next1140 = add nsw i64 %indvars.iv1139, -32
  %exitcond1144.not = icmp eq i64 %polly.indvar_next903, 38
  br i1 %exitcond1144.not, label %init_array.exit, label %polly.loop_header899

polly.loop_header905:                             ; preds = %polly.loop_exit913, %polly.loop_header899
  %indvars.iv1135 = phi i64 [ %indvars.iv.next1136, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %337 = mul nsw i64 %polly.indvar908, -32
  %smin1231 = call i64 @llvm.smin.i64(i64 %337, i64 -968)
  %338 = add nsw i64 %smin1231, 1000
  %smin1137 = call i64 @llvm.smin.i64(i64 %indvars.iv1135, i64 -968)
  %339 = shl nsw i64 %polly.indvar908, 5
  %340 = add nsw i64 %smin1137, 999
  br label %polly.loop_header911

polly.loop_exit913:                               ; preds = %polly.loop_exit919
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %indvars.iv.next1136 = add nsw i64 %indvars.iv1135, -32
  %exitcond1143.not = icmp eq i64 %polly.indvar_next909, 32
  br i1 %exitcond1143.not, label %polly.loop_exit907, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_exit919, %polly.loop_header905
  %polly.indvar914 = phi i64 [ 0, %polly.loop_header905 ], [ %polly.indvar_next915, %polly.loop_exit919 ]
  %341 = add nuw nsw i64 %polly.indvar914, %335
  %342 = trunc i64 %341 to i32
  %343 = mul nuw nsw i64 %341, 8000
  %min.iters.check1232 = icmp eq i64 %338, 0
  br i1 %min.iters.check1232, label %polly.loop_header917, label %vector.ph1233

vector.ph1233:                                    ; preds = %polly.loop_header911
  %broadcast.splatinsert1242 = insertelement <4 x i64> poison, i64 %339, i32 0
  %broadcast.splat1243 = shufflevector <4 x i64> %broadcast.splatinsert1242, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1244 = insertelement <4 x i32> poison, i32 %342, i32 0
  %broadcast.splat1245 = shufflevector <4 x i32> %broadcast.splatinsert1244, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1230

vector.body1230:                                  ; preds = %vector.body1230, %vector.ph1233
  %index1236 = phi i64 [ 0, %vector.ph1233 ], [ %index.next1237, %vector.body1230 ]
  %vec.ind1240 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1233 ], [ %vec.ind.next1241, %vector.body1230 ]
  %344 = add nuw nsw <4 x i64> %vec.ind1240, %broadcast.splat1243
  %345 = trunc <4 x i64> %344 to <4 x i32>
  %346 = mul <4 x i32> %broadcast.splat1245, %345
  %347 = add <4 x i32> %346, <i32 1, i32 1, i32 1, i32 1>
  %348 = urem <4 x i32> %347, <i32 1200, i32 1200, i32 1200, i32 1200>
  %349 = sitofp <4 x i32> %348 to <4 x double>
  %350 = fmul fast <4 x double> %349, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %351 = extractelement <4 x i64> %344, i32 0
  %352 = shl i64 %351, 3
  %353 = add nuw nsw i64 %352, %343
  %354 = getelementptr i8, i8* %call1, i64 %353
  %355 = bitcast i8* %354 to <4 x double>*
  store <4 x double> %350, <4 x double>* %355, align 8, !alias.scope !108, !noalias !115
  %index.next1237 = add i64 %index1236, 4
  %vec.ind.next1241 = add <4 x i64> %vec.ind1240, <i64 4, i64 4, i64 4, i64 4>
  %356 = icmp eq i64 %index.next1237, %338
  br i1 %356, label %polly.loop_exit919, label %vector.body1230, !llvm.loop !116

polly.loop_exit919:                               ; preds = %vector.body1230, %polly.loop_header917
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %exitcond1142.not = icmp eq i64 %polly.indvar914, %336
  br i1 %exitcond1142.not, label %polly.loop_exit913, label %polly.loop_header911

polly.loop_header917:                             ; preds = %polly.loop_header911, %polly.loop_header917
  %polly.indvar920 = phi i64 [ %polly.indvar_next921, %polly.loop_header917 ], [ 0, %polly.loop_header911 ]
  %357 = add nuw nsw i64 %polly.indvar920, %339
  %358 = trunc i64 %357 to i32
  %359 = mul i32 %358, %342
  %360 = add i32 %359, 1
  %361 = urem i32 %360, 1200
  %p_conv.i = sitofp i32 %361 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %362 = shl i64 %357, 3
  %363 = add nuw nsw i64 %362, %343
  %scevgep924 = getelementptr i8, i8* %call1, i64 %363
  %scevgep924925 = bitcast i8* %scevgep924 to double*
  store double %p_div.i, double* %scevgep924925, align 8, !alias.scope !108, !noalias !115
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %exitcond1138.not = icmp eq i64 %polly.indvar920, %340
  br i1 %exitcond1138.not, label %polly.loop_exit919, label %polly.loop_header917, !llvm.loop !117
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
!26 = !{!"llvm.loop.tile.size", i32 20}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 80}
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
!49 = !{!"llvm.loop.tile.size", i32 128}
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
