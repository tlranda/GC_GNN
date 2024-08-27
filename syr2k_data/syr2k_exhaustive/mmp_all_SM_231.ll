; ModuleID = 'syr2k_exhaustive/mmp_all_SM_231.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_231.c"
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
  %scevgep1184 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1183 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1182 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1181 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1181, %scevgep1184
  %bound1 = icmp ult i8* %scevgep1183, %scevgep1182
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
  br i1 %exitcond18.not.i, label %vector.ph1188, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1188:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1195 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1196 = shufflevector <4 x i64> %broadcast.splatinsert1195, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1187

vector.body1187:                                  ; preds = %vector.body1187, %vector.ph1188
  %index1189 = phi i64 [ 0, %vector.ph1188 ], [ %index.next1190, %vector.body1187 ]
  %vec.ind1193 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1188 ], [ %vec.ind.next1194, %vector.body1187 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1193, %broadcast.splat1196
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv7.i, i64 %index1189
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1190 = add i64 %index1189, 4
  %vec.ind.next1194 = add <4 x i64> %vec.ind1193, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1190, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1187, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1187
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1188, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit907
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start511, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1251 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1251, label %for.body3.i46.preheader1400, label %vector.ph1252

vector.ph1252:                                    ; preds = %for.body3.i46.preheader
  %n.vec1254 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1250

vector.body1250:                                  ; preds = %vector.body1250, %vector.ph1252
  %index1255 = phi i64 [ 0, %vector.ph1252 ], [ %index.next1256, %vector.body1250 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i, i64 %index1255
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1256 = add i64 %index1255, 4
  %46 = icmp eq i64 %index.next1256, %n.vec1254
  br i1 %46, label %middle.block1248, label %vector.body1250, !llvm.loop !18

middle.block1248:                                 ; preds = %vector.body1250
  %cmp.n1258 = icmp eq i64 %indvars.iv21.i, %n.vec1254
  br i1 %cmp.n1258, label %for.inc6.i, label %for.body3.i46.preheader1400

for.body3.i46.preheader1400:                      ; preds = %for.body3.i46.preheader, %middle.block1248
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1254, %middle.block1248 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1400, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1400 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1248, %for.cond1.preheader.i45
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
  %min.iters.check1298 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1298, label %for.body3.i60.preheader1398, label %vector.ph1299

vector.ph1299:                                    ; preds = %for.body3.i60.preheader
  %n.vec1301 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1297

vector.body1297:                                  ; preds = %vector.body1297, %vector.ph1299
  %index1302 = phi i64 [ 0, %vector.ph1299 ], [ %index.next1303, %vector.body1297 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i52, i64 %index1302
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1306 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1306, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1303 = add i64 %index1302, 4
  %57 = icmp eq i64 %index.next1303, %n.vec1301
  br i1 %57, label %middle.block1295, label %vector.body1297, !llvm.loop !64

middle.block1295:                                 ; preds = %vector.body1297
  %cmp.n1305 = icmp eq i64 %indvars.iv21.i52, %n.vec1301
  br i1 %cmp.n1305, label %for.inc6.i63, label %for.body3.i60.preheader1398

for.body3.i60.preheader1398:                      ; preds = %for.body3.i60.preheader, %middle.block1295
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1301, %middle.block1295 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1398, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1398 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1295, %for.cond1.preheader.i54
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
  %min.iters.check1348 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1348, label %for.body3.i99.preheader1396, label %vector.ph1349

vector.ph1349:                                    ; preds = %for.body3.i99.preheader
  %n.vec1351 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1347

vector.body1347:                                  ; preds = %vector.body1347, %vector.ph1349
  %index1352 = phi i64 [ 0, %vector.ph1349 ], [ %index.next1353, %vector.body1347 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i91, i64 %index1352
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1356 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1356, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1353 = add i64 %index1352, 4
  %68 = icmp eq i64 %index.next1353, %n.vec1351
  br i1 %68, label %middle.block1345, label %vector.body1347, !llvm.loop !66

middle.block1345:                                 ; preds = %vector.body1347
  %cmp.n1355 = icmp eq i64 %indvars.iv21.i91, %n.vec1351
  br i1 %cmp.n1355, label %for.inc6.i102, label %for.body3.i99.preheader1396

for.body3.i99.preheader1396:                      ; preds = %for.body3.i99.preheader, %middle.block1345
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1351, %middle.block1345 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1396, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1396 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1345, %for.cond1.preheader.i93
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
  %indvar1360 = phi i64 [ %indvar.next1361, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1360, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1362 = icmp ult i64 %88, 4
  br i1 %min.iters.check1362, label %polly.loop_header192.preheader, label %vector.ph1363

vector.ph1363:                                    ; preds = %polly.loop_header
  %n.vec1365 = and i64 %88, -4
  br label %vector.body1359

vector.body1359:                                  ; preds = %vector.body1359, %vector.ph1363
  %index1366 = phi i64 [ 0, %vector.ph1363 ], [ %index.next1367, %vector.body1359 ]
  %90 = shl nuw nsw i64 %index1366, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1370 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1370, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1367 = add i64 %index1366, 4
  %95 = icmp eq i64 %index.next1367, %n.vec1365
  br i1 %95, label %middle.block1357, label %vector.body1359, !llvm.loop !79

middle.block1357:                                 ; preds = %vector.body1359
  %cmp.n1369 = icmp eq i64 %88, %n.vec1365
  br i1 %cmp.n1369, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1357
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1365, %middle.block1357 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1357
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1361 = add i64 %indvar1360, 1
  br i1 %exitcond1085.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1084.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1084.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit224
  %indvars.iv1074 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1075, %polly.loop_exit224 ]
  %indvars.iv1070 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1071, %polly.loop_exit224 ]
  %indvars.iv = phi i64 [ 1200, %polly.loop_header200.preheader ], [ %indvars.iv.next, %polly.loop_exit224 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %112, %polly.loop_exit224 ]
  %97 = shl nuw nsw i64 %polly.indvar203, 2
  %98 = shl nuw nsw i64 %polly.indvar203, 2
  %99 = and i64 %98, 9223372036854775800
  %100 = sub nsw i64 %97, %99
  %101 = mul nsw i64 %polly.indvar203, -4
  %102 = add i64 %101, %99
  %103 = lshr i64 %polly.indvar203, 1
  %104 = shl nuw nsw i64 %103, 3
  %105 = sub nsw i64 %indvars.iv1070, %104
  %106 = add i64 %indvars.iv1074, %104
  %107 = shl nsw i64 %polly.indvar203, 2
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit214
  %108 = mul nsw i64 %polly.indvar203, -4
  %polly.access.mul.call1241.us = mul nsw i64 %polly.indvar203, 4000
  %109 = or i64 %107, 1
  %polly.access.mul.call1241.us.1 = mul nuw nsw i64 %109, 1000
  %110 = or i64 %107, 2
  %polly.access.mul.call1241.us.2 = mul nuw nsw i64 %110, 1000
  %111 = or i64 %107, 3
  %polly.access.mul.call1241.us.3 = mul nuw nsw i64 %111, 1000
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit259
  %112 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %indvars.iv.next1071 = add nuw nsw i64 %indvars.iv1070, 4
  %indvars.iv.next1075 = add nsw i64 %indvars.iv1074, -4
  %exitcond1083.not = icmp eq i64 %112, 300
  br i1 %exitcond1083.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit214, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_exit214 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar209, 1200
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_header212
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar_next210, 1000
  br i1 %exitcond1066.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_header212, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_header212 ]
  %113 = add nuw nsw i64 %polly.indvar215, %107
  %polly.access.mul.call2219 = mul nuw nsw i64 %113, 1000
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
  %indvar1374 = phi i64 [ %indvar.next1375, %polly.loop_exit259 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv1076 = phi i64 [ %indvars.iv.next1077, %polly.loop_exit259 ], [ %106, %polly.loop_exit208 ]
  %indvars.iv1072 = phi i64 [ %indvars.iv.next1073, %polly.loop_exit259 ], [ %105, %polly.loop_exit208 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit259 ], [ %103, %polly.loop_exit208 ]
  %114 = mul nsw i64 %indvar1374, -8
  %115 = add i64 %100, %114
  %smax1376 = call i64 @llvm.smax.i64(i64 %115, i64 0)
  %116 = shl nuw nsw i64 %indvar1374, 3
  %117 = add i64 %102, %116
  %118 = add i64 %smax1376, %117
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1072, i64 0)
  %119 = add i64 %smax, %indvars.iv1076
  %120 = shl nuw nsw i64 %polly.indvar225, 1
  %.not.not = icmp ugt i64 %120, %polly.indvar203
  %121 = shl nsw i64 %polly.indvar225, 3
  %122 = add nsw i64 %121, %108
  %123 = icmp sgt i64 %122, 0
  %124 = select i1 %123, i64 %122, i64 0
  %125 = add nsw i64 %122, 7
  %polly.loop_guard.not = icmp sgt i64 %124, %125
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
  br i1 %polly.loop_guard.not, label %polly.loop_exit246.us, label %polly.loop_header244.us

polly.loop_header244.us:                          ; preds = %polly.loop_header228.us, %polly.loop_header244.us
  %polly.indvar247.us = phi i64 [ %polly.indvar_next248.us, %polly.loop_header244.us ], [ %124, %polly.loop_header228.us ]
  %126 = add nuw nsw i64 %polly.indvar247.us, %107
  %polly.access.mul.call1251.us = mul nsw i64 %126, 1000
  %polly.access.add.call1252.us = add nuw nsw i64 %polly.access.mul.call1251.us, %polly.indvar231.us
  %polly.access.call1253.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1252.us
  %polly.access.call1253.load.us = load double, double* %polly.access.call1253.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1255.us = add nuw nsw i64 %polly.indvar247.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1256.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255.us
  store double %polly.access.call1253.load.us, double* %polly.access.Packed_MemRef_call1256.us, align 8
  %polly.indvar_next248.us = add nuw nsw i64 %polly.indvar247.us, 1
  %polly.loop_cond249.not.not.us = icmp slt i64 %polly.indvar247.us, %125
  br i1 %polly.loop_cond249.not.not.us, label %polly.loop_header244.us, label %polly.loop_exit246.us

polly.loop_exit246.us:                            ; preds = %polly.loop_header244.us, %polly.loop_header228.us
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %exitcond1069.not = icmp eq i64 %polly.indvar_next232.us, 1000
  br i1 %exitcond1069.not, label %polly.loop_header257.preheader, label %polly.loop_header228.us

polly.loop_header222.split:                       ; preds = %polly.loop_header222
  br i1 %polly.loop_guard.not, label %polly.loop_header257.preheader, label %polly.loop_header228

polly.loop_exit259:                               ; preds = %polly.loop_exit266.loopexit.us, %polly.loop_header257.preheader
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next1073 = add i64 %indvars.iv1072, -8
  %indvars.iv.next1077 = add i64 %indvars.iv1076, 8
  %exitcond1082.not = icmp eq i64 %polly.indvar_next226, 150
  %indvar.next1375 = add i64 %indvar1374, 1
  br i1 %exitcond1082.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header222.split, %polly.loop_exit246
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit246 ], [ 0, %polly.loop_header222.split ]
  %polly.access.mul.Packed_MemRef_call1254 = mul nuw nsw i64 %polly.indvar231, 1200
  br label %polly.loop_header244

polly.loop_exit246:                               ; preds = %polly.loop_header244
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar_next232, 1000
  br i1 %exitcond1067.not, label %polly.loop_header257.preheader, label %polly.loop_header228

polly.loop_header257.preheader:                   ; preds = %polly.loop_exit246, %polly.loop_exit246.us, %polly.loop_header222.split
  %127 = sub nsw i64 %107, %121
  %128 = icmp sgt i64 %127, 0
  %129 = select i1 %128, i64 %127, i64 0
  %polly.loop_guard267 = icmp slt i64 %129, 8
  br i1 %polly.loop_guard267, label %polly.loop_header257.us, label %polly.loop_exit259

polly.loop_header257.us:                          ; preds = %polly.loop_header257.preheader, %polly.loop_exit266.loopexit.us
  %polly.indvar260.us = phi i64 [ %polly.indvar_next261.us, %polly.loop_exit266.loopexit.us ], [ 0, %polly.loop_header257.preheader ]
  %polly.access.mul.Packed_MemRef_call1279.us = mul nuw nsw i64 %polly.indvar260.us, 1200
  br label %polly.loop_header264.us

polly.loop_header264.us:                          ; preds = %polly.loop_header257.us, %polly.loop_exit274.us
  %indvar1377 = phi i64 [ 0, %polly.loop_header257.us ], [ %indvar.next1378, %polly.loop_exit274.us ]
  %indvars.iv1078 = phi i64 [ %119, %polly.loop_header257.us ], [ %indvars.iv.next1079, %polly.loop_exit274.us ]
  %polly.indvar268.us = phi i64 [ %129, %polly.loop_header257.us ], [ %polly.indvar_next269.us, %polly.loop_exit274.us ]
  %130 = add i64 %118, %indvar1377
  %smin1379 = call i64 @llvm.smin.i64(i64 %130, i64 3)
  %131 = add nsw i64 %smin1379, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1078, i64 3)
  %132 = add nsw i64 %polly.indvar268.us, %122
  %polly.loop_guard275.us1170 = icmp sgt i64 %132, -1
  br i1 %polly.loop_guard275.us1170, label %polly.loop_header272.preheader.us, label %polly.loop_exit274.us

polly.loop_header272.us:                          ; preds = %polly.loop_header272.us.preheader, %polly.loop_header272.us
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_header272.us ], [ %polly.indvar276.us.ph, %polly.loop_header272.us.preheader ]
  %133 = add nuw nsw i64 %polly.indvar276.us, %107
  %polly.access.add.Packed_MemRef_call1280.us = add nuw nsw i64 %polly.indvar276.us, %polly.access.mul.Packed_MemRef_call1279.us
  %polly.access.Packed_MemRef_call1281.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call1281.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %polly.access.Packed_MemRef_call2289.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1280.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call2289.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %134 = shl i64 %133, 3
  %135 = add i64 %134, %137
  %scevgep295.us = getelementptr i8, i8* %call, i64 %135
  %scevgep295296.us = bitcast i8* %scevgep295.us to double*
  %_p_scalar_297.us = load double, double* %scevgep295296.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_297.us
  store double %p_add42.i118.us, double* %scevgep295296.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar276.us, %smin
  br i1 %exitcond1080.not, label %polly.loop_exit274.us, label %polly.loop_header272.us, !llvm.loop !84

polly.loop_exit274.us:                            ; preds = %polly.loop_header272.us, %middle.block1371, %polly.loop_header264.us
  %polly.indvar_next269.us = add nuw nsw i64 %polly.indvar268.us, 1
  %polly.loop_cond270.us = icmp ult i64 %polly.indvar268.us, 7
  %indvars.iv.next1079 = add i64 %indvars.iv1078, 1
  %indvar.next1378 = add i64 %indvar1377, 1
  br i1 %polly.loop_cond270.us, label %polly.loop_header264.us, label %polly.loop_exit266.loopexit.us

polly.loop_header272.preheader.us:                ; preds = %polly.loop_header264.us
  %136 = add nuw nsw i64 %polly.indvar268.us, %121
  %polly.access.add.Packed_MemRef_call2284.us = add nsw i64 %132, %polly.access.mul.Packed_MemRef_call1279.us
  %polly.access.Packed_MemRef_call2285.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call2285.us, align 8
  %polly.access.Packed_MemRef_call1293.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2284.us
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call1293.us, align 8
  %137 = mul i64 %136, 9600
  %min.iters.check1380 = icmp ult i64 %131, 4
  br i1 %min.iters.check1380, label %polly.loop_header272.us.preheader, label %vector.ph1381

vector.ph1381:                                    ; preds = %polly.loop_header272.preheader.us
  %n.vec1383 = and i64 %131, -4
  %broadcast.splatinsert1389 = insertelement <4 x double> poison, double %_p_scalar_286.us, i32 0
  %broadcast.splat1390 = shufflevector <4 x double> %broadcast.splatinsert1389, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1392 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1393 = shufflevector <4 x double> %broadcast.splatinsert1392, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1373

vector.body1373:                                  ; preds = %vector.body1373, %vector.ph1381
  %index1384 = phi i64 [ 0, %vector.ph1381 ], [ %index.next1385, %vector.body1373 ]
  %138 = add nuw nsw i64 %index1384, %107
  %139 = add nuw nsw i64 %index1384, %polly.access.mul.Packed_MemRef_call1279.us
  %140 = getelementptr double, double* %Packed_MemRef_call1, i64 %139
  %141 = bitcast double* %140 to <4 x double>*
  %wide.load1388 = load <4 x double>, <4 x double>* %141, align 8
  %142 = fmul fast <4 x double> %broadcast.splat1390, %wide.load1388
  %143 = getelementptr double, double* %Packed_MemRef_call2, i64 %139
  %144 = bitcast double* %143 to <4 x double>*
  %wide.load1391 = load <4 x double>, <4 x double>* %144, align 8
  %145 = fmul fast <4 x double> %broadcast.splat1393, %wide.load1391
  %146 = shl i64 %138, 3
  %147 = add i64 %146, %137
  %148 = getelementptr i8, i8* %call, i64 %147
  %149 = bitcast i8* %148 to <4 x double>*
  %wide.load1394 = load <4 x double>, <4 x double>* %149, align 8, !alias.scope !72, !noalias !74
  %150 = fadd fast <4 x double> %145, %142
  %151 = fmul fast <4 x double> %150, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %152 = fadd fast <4 x double> %151, %wide.load1394
  %153 = bitcast i8* %148 to <4 x double>*
  store <4 x double> %152, <4 x double>* %153, align 8, !alias.scope !72, !noalias !74
  %index.next1385 = add i64 %index1384, 4
  %154 = icmp eq i64 %index.next1385, %n.vec1383
  br i1 %154, label %middle.block1371, label %vector.body1373, !llvm.loop !85

middle.block1371:                                 ; preds = %vector.body1373
  %cmp.n1387 = icmp eq i64 %131, %n.vec1383
  br i1 %cmp.n1387, label %polly.loop_exit274.us, label %polly.loop_header272.us.preheader

polly.loop_header272.us.preheader:                ; preds = %polly.loop_header272.preheader.us, %middle.block1371
  %polly.indvar276.us.ph = phi i64 [ 0, %polly.loop_header272.preheader.us ], [ %n.vec1383, %middle.block1371 ]
  br label %polly.loop_header272.us

polly.loop_exit266.loopexit.us:                   ; preds = %polly.loop_exit274.us
  %polly.indvar_next261.us = add nuw nsw i64 %polly.indvar260.us, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar_next261.us, 1000
  br i1 %exitcond1081.not, label %polly.loop_exit259, label %polly.loop_header257.us

polly.loop_header244:                             ; preds = %polly.loop_header228, %polly.loop_header244
  %polly.indvar247 = phi i64 [ %polly.indvar_next248, %polly.loop_header244 ], [ %124, %polly.loop_header228 ]
  %155 = add nuw nsw i64 %polly.indvar247, %107
  %polly.access.mul.call1251 = mul nsw i64 %155, 1000
  %polly.access.add.call1252 = add nuw nsw i64 %polly.access.mul.call1251, %polly.indvar231
  %polly.access.call1253 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1252
  %polly.access.call1253.load = load double, double* %polly.access.call1253, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1255 = add nuw nsw i64 %polly.indvar247, %polly.access.mul.Packed_MemRef_call1254
  %polly.access.Packed_MemRef_call1256 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255
  store double %polly.access.call1253.load, double* %polly.access.Packed_MemRef_call1256, align 8
  %polly.indvar_next248 = add nuw nsw i64 %polly.indvar247, 1
  %polly.loop_cond249.not.not = icmp slt i64 %polly.indvar247, %125
  br i1 %polly.loop_cond249.not.not, label %polly.loop_header244, label %polly.loop_exit246

polly.start300:                                   ; preds = %kernel_syr2k.exit
  %malloccall302 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall304 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header388

polly.exiting301:                                 ; preds = %polly.loop_exit429
  tail call void @free(i8* %malloccall302)
  tail call void @free(i8* %malloccall304)
  br label %kernel_syr2k.exit90

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.start300
  %indvar1310 = phi i64 [ %indvar.next1311, %polly.loop_exit396 ], [ 0, %polly.start300 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start300 ]
  %156 = add i64 %indvar1310, 1
  %157 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %157
  %min.iters.check1312 = icmp ult i64 %156, 4
  br i1 %min.iters.check1312, label %polly.loop_header394.preheader, label %vector.ph1313

vector.ph1313:                                    ; preds = %polly.loop_header388
  %n.vec1315 = and i64 %156, -4
  br label %vector.body1309

vector.body1309:                                  ; preds = %vector.body1309, %vector.ph1313
  %index1316 = phi i64 [ 0, %vector.ph1313 ], [ %index.next1317, %vector.body1309 ]
  %158 = shl nuw nsw i64 %index1316, 3
  %159 = getelementptr i8, i8* %scevgep400, i64 %158
  %160 = bitcast i8* %159 to <4 x double>*
  %wide.load1320 = load <4 x double>, <4 x double>* %160, align 8, !alias.scope !86, !noalias !88
  %161 = fmul fast <4 x double> %wide.load1320, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %162 = bitcast i8* %159 to <4 x double>*
  store <4 x double> %161, <4 x double>* %162, align 8, !alias.scope !86, !noalias !88
  %index.next1317 = add i64 %index1316, 4
  %163 = icmp eq i64 %index.next1317, %n.vec1315
  br i1 %163, label %middle.block1307, label %vector.body1309, !llvm.loop !93

middle.block1307:                                 ; preds = %vector.body1309
  %cmp.n1319 = icmp eq i64 %156, %n.vec1315
  br i1 %cmp.n1319, label %polly.loop_exit396, label %polly.loop_header394.preheader

polly.loop_header394.preheader:                   ; preds = %polly.loop_header388, %middle.block1307
  %polly.indvar397.ph = phi i64 [ 0, %polly.loop_header388 ], [ %n.vec1315, %middle.block1307 ]
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394, %middle.block1307
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar_next392, 1200
  %indvar.next1311 = add i64 %indvar1310, 1
  br i1 %exitcond1110.not, label %polly.loop_header404.preheader, label %polly.loop_header388

polly.loop_header404.preheader:                   ; preds = %polly.loop_exit396
  %Packed_MemRef_call1303 = bitcast i8* %malloccall302 to double*
  %Packed_MemRef_call2305 = bitcast i8* %malloccall304 to double*
  br label %polly.loop_header404

polly.loop_header394:                             ; preds = %polly.loop_header394.preheader, %polly.loop_header394
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_header394 ], [ %polly.indvar397.ph, %polly.loop_header394.preheader ]
  %164 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %164
  %scevgep401402 = bitcast i8* %scevgep401 to double*
  %_p_scalar_403 = load double, double* %scevgep401402, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_403, 1.200000e+00
  store double %p_mul.i57, double* %scevgep401402, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond1109.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !94

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_exit429
  %indvars.iv1098 = phi i64 [ 0, %polly.loop_header404.preheader ], [ %indvars.iv.next1099, %polly.loop_exit429 ]
  %indvars.iv1093 = phi i64 [ 0, %polly.loop_header404.preheader ], [ %indvars.iv.next1094, %polly.loop_exit429 ]
  %indvars.iv1086 = phi i64 [ 1200, %polly.loop_header404.preheader ], [ %indvars.iv.next1087, %polly.loop_exit429 ]
  %polly.indvar407 = phi i64 [ 0, %polly.loop_header404.preheader ], [ %180, %polly.loop_exit429 ]
  %165 = shl nuw nsw i64 %polly.indvar407, 2
  %166 = shl nuw nsw i64 %polly.indvar407, 2
  %167 = and i64 %166, 9223372036854775800
  %168 = sub nsw i64 %165, %167
  %169 = mul nsw i64 %polly.indvar407, -4
  %170 = add i64 %169, %167
  %171 = lshr i64 %polly.indvar407, 1
  %172 = shl nuw nsw i64 %171, 3
  %173 = sub nsw i64 %indvars.iv1093, %172
  %174 = add i64 %indvars.iv1098, %172
  %175 = shl nsw i64 %polly.indvar407, 2
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_exit418
  %176 = mul nsw i64 %polly.indvar407, -4
  %polly.access.mul.call1450.us = mul nsw i64 %polly.indvar407, 4000
  %177 = or i64 %175, 1
  %polly.access.mul.call1450.us.1 = mul nuw nsw i64 %177, 1000
  %178 = or i64 %175, 2
  %polly.access.mul.call1450.us.2 = mul nuw nsw i64 %178, 1000
  %179 = or i64 %175, 3
  %polly.access.mul.call1450.us.3 = mul nuw nsw i64 %179, 1000
  br label %polly.loop_header427

polly.loop_exit429:                               ; preds = %polly.loop_exit470
  %180 = add nuw nsw i64 %polly.indvar407, 1
  %indvars.iv.next1087 = add nsw i64 %indvars.iv1086, -4
  %indvars.iv.next1094 = add nuw nsw i64 %indvars.iv1093, 4
  %indvars.iv.next1099 = add nsw i64 %indvars.iv1098, -4
  %exitcond1108.not = icmp eq i64 %180, 300
  br i1 %exitcond1108.not, label %polly.exiting301, label %polly.loop_header404

polly.loop_header410:                             ; preds = %polly.loop_exit418, %polly.loop_header404
  %polly.indvar413 = phi i64 [ 0, %polly.loop_header404 ], [ %polly.indvar_next414, %polly.loop_exit418 ]
  %polly.access.mul.Packed_MemRef_call2305 = mul nuw nsw i64 %polly.indvar413, 1200
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_header416
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next414, 1000
  br i1 %exitcond1089.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header416:                             ; preds = %polly.loop_header416, %polly.loop_header410
  %polly.indvar419 = phi i64 [ 0, %polly.loop_header410 ], [ %polly.indvar_next420, %polly.loop_header416 ]
  %181 = add nuw nsw i64 %polly.indvar419, %175
  %polly.access.mul.call2423 = mul nuw nsw i64 %181, 1000
  %polly.access.add.call2424 = add nuw nsw i64 %polly.access.mul.call2423, %polly.indvar413
  %polly.access.call2425 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2424
  %polly.access.call2425.load = load double, double* %polly.access.call2425, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2305 = add nuw nsw i64 %polly.indvar419, %polly.access.mul.Packed_MemRef_call2305
  %polly.access.Packed_MemRef_call2305 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305
  store double %polly.access.call2425.load, double* %polly.access.Packed_MemRef_call2305, align 8
  %polly.indvar_next420 = add nuw nsw i64 %polly.indvar419, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next420, %indvars.iv1086
  br i1 %exitcond1088.not, label %polly.loop_exit418, label %polly.loop_header416

polly.loop_header427:                             ; preds = %polly.loop_exit470, %polly.loop_exit412
  %indvar1324 = phi i64 [ %indvar.next1325, %polly.loop_exit470 ], [ 0, %polly.loop_exit412 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit470 ], [ %174, %polly.loop_exit412 ]
  %indvars.iv1095 = phi i64 [ %indvars.iv.next1096, %polly.loop_exit470 ], [ %173, %polly.loop_exit412 ]
  %polly.indvar430 = phi i64 [ %polly.indvar_next431, %polly.loop_exit470 ], [ %171, %polly.loop_exit412 ]
  %182 = mul nsw i64 %indvar1324, -8
  %183 = add i64 %168, %182
  %smax1326 = call i64 @llvm.smax.i64(i64 %183, i64 0)
  %184 = shl nuw nsw i64 %indvar1324, 3
  %185 = add i64 %170, %184
  %186 = add i64 %smax1326, %185
  %smax1097 = call i64 @llvm.smax.i64(i64 %indvars.iv1095, i64 0)
  %187 = add i64 %smax1097, %indvars.iv1100
  %188 = shl nuw nsw i64 %polly.indvar430, 1
  %.not.not926 = icmp ugt i64 %188, %polly.indvar407
  %189 = shl nsw i64 %polly.indvar430, 3
  %190 = add nsw i64 %189, %176
  %191 = icmp sgt i64 %190, 0
  %192 = select i1 %191, i64 %190, i64 0
  %193 = add nsw i64 %190, 7
  %polly.loop_guard457.not = icmp sgt i64 %192, %193
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
  br i1 %polly.loop_guard457.not, label %polly.loop_exit456.us, label %polly.loop_header454.us

polly.loop_header454.us:                          ; preds = %polly.loop_header433.us, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ %192, %polly.loop_header433.us ]
  %194 = add nuw nsw i64 %polly.indvar458.us, %175
  %polly.access.mul.call1462.us = mul nsw i64 %194, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %polly.access.mul.call1462.us, %polly.indvar436.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303466.us = add nuw nsw i64 %polly.indvar458.us, %polly.access.mul.Packed_MemRef_call1303.us
  %polly.access.Packed_MemRef_call1303467.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303466.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1303467.us, align 8
  %polly.indvar_next459.us = add nuw nsw i64 %polly.indvar458.us, 1
  %polly.loop_cond460.not.not.us = icmp slt i64 %polly.indvar458.us, %193
  br i1 %polly.loop_cond460.not.not.us, label %polly.loop_header454.us, label %polly.loop_exit456.us

polly.loop_exit456.us:                            ; preds = %polly.loop_header454.us, %polly.loop_header433.us
  %polly.indvar_next437.us = add nuw nsw i64 %polly.indvar436.us, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar_next437.us, 1000
  br i1 %exitcond1092.not, label %polly.loop_header468.preheader, label %polly.loop_header433.us

polly.loop_header427.split:                       ; preds = %polly.loop_header427
  br i1 %polly.loop_guard457.not, label %polly.loop_header468.preheader, label %polly.loop_header433

polly.loop_exit470:                               ; preds = %polly.loop_exit477.loopexit.us, %polly.loop_header468.preheader
  %polly.indvar_next431 = add nuw nsw i64 %polly.indvar430, 1
  %indvars.iv.next1096 = add i64 %indvars.iv1095, -8
  %indvars.iv.next1101 = add i64 %indvars.iv1100, 8
  %exitcond1107.not = icmp eq i64 %polly.indvar_next431, 150
  %indvar.next1325 = add i64 %indvar1324, 1
  br i1 %exitcond1107.not, label %polly.loop_exit429, label %polly.loop_header427

polly.loop_header433:                             ; preds = %polly.loop_header427.split, %polly.loop_exit456
  %polly.indvar436 = phi i64 [ %polly.indvar_next437, %polly.loop_exit456 ], [ 0, %polly.loop_header427.split ]
  %polly.access.mul.Packed_MemRef_call1303465 = mul nuw nsw i64 %polly.indvar436, 1200
  br label %polly.loop_header454

polly.loop_exit456:                               ; preds = %polly.loop_header454
  %polly.indvar_next437 = add nuw nsw i64 %polly.indvar436, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar_next437, 1000
  br i1 %exitcond1090.not, label %polly.loop_header468.preheader, label %polly.loop_header433

polly.loop_header468.preheader:                   ; preds = %polly.loop_exit456, %polly.loop_exit456.us, %polly.loop_header427.split
  %195 = sub nsw i64 %175, %189
  %196 = icmp sgt i64 %195, 0
  %197 = select i1 %196, i64 %195, i64 0
  %polly.loop_guard478 = icmp slt i64 %197, 8
  br i1 %polly.loop_guard478, label %polly.loop_header468.us, label %polly.loop_exit470

polly.loop_header468.us:                          ; preds = %polly.loop_header468.preheader, %polly.loop_exit477.loopexit.us
  %polly.indvar471.us = phi i64 [ %polly.indvar_next472.us, %polly.loop_exit477.loopexit.us ], [ 0, %polly.loop_header468.preheader ]
  %polly.access.mul.Packed_MemRef_call1303490.us = mul nuw nsw i64 %polly.indvar471.us, 1200
  br label %polly.loop_header475.us

polly.loop_header475.us:                          ; preds = %polly.loop_header468.us, %polly.loop_exit485.us
  %indvar1327 = phi i64 [ 0, %polly.loop_header468.us ], [ %indvar.next1328, %polly.loop_exit485.us ]
  %indvars.iv1102 = phi i64 [ %187, %polly.loop_header468.us ], [ %indvars.iv.next1103, %polly.loop_exit485.us ]
  %polly.indvar479.us = phi i64 [ %197, %polly.loop_header468.us ], [ %polly.indvar_next480.us, %polly.loop_exit485.us ]
  %198 = add i64 %186, %indvar1327
  %smin1329 = call i64 @llvm.smin.i64(i64 %198, i64 3)
  %199 = add nsw i64 %smin1329, 1
  %smin1104 = call i64 @llvm.smin.i64(i64 %indvars.iv1102, i64 3)
  %200 = add nsw i64 %polly.indvar479.us, %190
  %polly.loop_guard486.us1171 = icmp sgt i64 %200, -1
  br i1 %polly.loop_guard486.us1171, label %polly.loop_header483.preheader.us, label %polly.loop_exit485.us

polly.loop_header483.us:                          ; preds = %polly.loop_header483.us.preheader, %polly.loop_header483.us
  %polly.indvar487.us = phi i64 [ %polly.indvar_next488.us, %polly.loop_header483.us ], [ %polly.indvar487.us.ph, %polly.loop_header483.us.preheader ]
  %201 = add nuw nsw i64 %polly.indvar487.us, %175
  %polly.access.add.Packed_MemRef_call1303491.us = add nuw nsw i64 %polly.indvar487.us, %polly.access.mul.Packed_MemRef_call1303490.us
  %polly.access.Packed_MemRef_call1303492.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303491.us
  %_p_scalar_493.us = load double, double* %polly.access.Packed_MemRef_call1303492.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_497.us, %_p_scalar_493.us
  %polly.access.Packed_MemRef_call2305500.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call1303491.us
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call2305500.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_505.us, %_p_scalar_501.us
  %202 = shl i64 %201, 3
  %203 = add i64 %202, %205
  %scevgep506.us = getelementptr i8, i8* %call, i64 %203
  %scevgep506507.us = bitcast i8* %scevgep506.us to double*
  %_p_scalar_508.us = load double, double* %scevgep506507.us, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_508.us
  store double %p_add42.i79.us, double* %scevgep506507.us, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next488.us = add nuw nsw i64 %polly.indvar487.us, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar487.us, %smin1104
  br i1 %exitcond1105.not, label %polly.loop_exit485.us, label %polly.loop_header483.us, !llvm.loop !97

polly.loop_exit485.us:                            ; preds = %polly.loop_header483.us, %middle.block1321, %polly.loop_header475.us
  %polly.indvar_next480.us = add nuw nsw i64 %polly.indvar479.us, 1
  %polly.loop_cond481.us = icmp ult i64 %polly.indvar479.us, 7
  %indvars.iv.next1103 = add i64 %indvars.iv1102, 1
  %indvar.next1328 = add i64 %indvar1327, 1
  br i1 %polly.loop_cond481.us, label %polly.loop_header475.us, label %polly.loop_exit477.loopexit.us

polly.loop_header483.preheader.us:                ; preds = %polly.loop_header475.us
  %204 = add nuw nsw i64 %polly.indvar479.us, %189
  %polly.access.add.Packed_MemRef_call2305495.us = add nsw i64 %200, %polly.access.mul.Packed_MemRef_call1303490.us
  %polly.access.Packed_MemRef_call2305496.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call2305496.us, align 8
  %polly.access.Packed_MemRef_call1303504.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call2305495.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call1303504.us, align 8
  %205 = mul i64 %204, 9600
  %min.iters.check1330 = icmp ult i64 %199, 4
  br i1 %min.iters.check1330, label %polly.loop_header483.us.preheader, label %vector.ph1331

vector.ph1331:                                    ; preds = %polly.loop_header483.preheader.us
  %n.vec1333 = and i64 %199, -4
  %broadcast.splatinsert1339 = insertelement <4 x double> poison, double %_p_scalar_497.us, i32 0
  %broadcast.splat1340 = shufflevector <4 x double> %broadcast.splatinsert1339, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1342 = insertelement <4 x double> poison, double %_p_scalar_505.us, i32 0
  %broadcast.splat1343 = shufflevector <4 x double> %broadcast.splatinsert1342, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1323

vector.body1323:                                  ; preds = %vector.body1323, %vector.ph1331
  %index1334 = phi i64 [ 0, %vector.ph1331 ], [ %index.next1335, %vector.body1323 ]
  %206 = add nuw nsw i64 %index1334, %175
  %207 = add nuw nsw i64 %index1334, %polly.access.mul.Packed_MemRef_call1303490.us
  %208 = getelementptr double, double* %Packed_MemRef_call1303, i64 %207
  %209 = bitcast double* %208 to <4 x double>*
  %wide.load1338 = load <4 x double>, <4 x double>* %209, align 8
  %210 = fmul fast <4 x double> %broadcast.splat1340, %wide.load1338
  %211 = getelementptr double, double* %Packed_MemRef_call2305, i64 %207
  %212 = bitcast double* %211 to <4 x double>*
  %wide.load1341 = load <4 x double>, <4 x double>* %212, align 8
  %213 = fmul fast <4 x double> %broadcast.splat1343, %wide.load1341
  %214 = shl i64 %206, 3
  %215 = add i64 %214, %205
  %216 = getelementptr i8, i8* %call, i64 %215
  %217 = bitcast i8* %216 to <4 x double>*
  %wide.load1344 = load <4 x double>, <4 x double>* %217, align 8, !alias.scope !86, !noalias !88
  %218 = fadd fast <4 x double> %213, %210
  %219 = fmul fast <4 x double> %218, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %220 = fadd fast <4 x double> %219, %wide.load1344
  %221 = bitcast i8* %216 to <4 x double>*
  store <4 x double> %220, <4 x double>* %221, align 8, !alias.scope !86, !noalias !88
  %index.next1335 = add i64 %index1334, 4
  %222 = icmp eq i64 %index.next1335, %n.vec1333
  br i1 %222, label %middle.block1321, label %vector.body1323, !llvm.loop !98

middle.block1321:                                 ; preds = %vector.body1323
  %cmp.n1337 = icmp eq i64 %199, %n.vec1333
  br i1 %cmp.n1337, label %polly.loop_exit485.us, label %polly.loop_header483.us.preheader

polly.loop_header483.us.preheader:                ; preds = %polly.loop_header483.preheader.us, %middle.block1321
  %polly.indvar487.us.ph = phi i64 [ 0, %polly.loop_header483.preheader.us ], [ %n.vec1333, %middle.block1321 ]
  br label %polly.loop_header483.us

polly.loop_exit477.loopexit.us:                   ; preds = %polly.loop_exit485.us
  %polly.indvar_next472.us = add nuw nsw i64 %polly.indvar471.us, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next472.us, 1000
  br i1 %exitcond1106.not, label %polly.loop_exit470, label %polly.loop_header468.us

polly.loop_header454:                             ; preds = %polly.loop_header433, %polly.loop_header454
  %polly.indvar458 = phi i64 [ %polly.indvar_next459, %polly.loop_header454 ], [ %192, %polly.loop_header433 ]
  %223 = add nuw nsw i64 %polly.indvar458, %175
  %polly.access.mul.call1462 = mul nsw i64 %223, 1000
  %polly.access.add.call1463 = add nuw nsw i64 %polly.access.mul.call1462, %polly.indvar436
  %polly.access.call1464 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1463
  %polly.access.call1464.load = load double, double* %polly.access.call1464, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1303466 = add nuw nsw i64 %polly.indvar458, %polly.access.mul.Packed_MemRef_call1303465
  %polly.access.Packed_MemRef_call1303467 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303466
  store double %polly.access.call1464.load, double* %polly.access.Packed_MemRef_call1303467, align 8
  %polly.indvar_next459 = add nuw nsw i64 %polly.indvar458, 1
  %polly.loop_cond460.not.not = icmp slt i64 %polly.indvar458, %193
  br i1 %polly.loop_cond460.not.not, label %polly.loop_header454, label %polly.loop_exit456

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
  %224 = add i64 %indvar, 1
  %225 = mul nuw nsw i64 %polly.indvar602, 9600
  %scevgep611 = getelementptr i8, i8* %call, i64 %225
  %min.iters.check1262 = icmp ult i64 %224, 4
  br i1 %min.iters.check1262, label %polly.loop_header605.preheader, label %vector.ph1263

vector.ph1263:                                    ; preds = %polly.loop_header599
  %n.vec1265 = and i64 %224, -4
  br label %vector.body1261

vector.body1261:                                  ; preds = %vector.body1261, %vector.ph1263
  %index1266 = phi i64 [ 0, %vector.ph1263 ], [ %index.next1267, %vector.body1261 ]
  %226 = shl nuw nsw i64 %index1266, 3
  %227 = getelementptr i8, i8* %scevgep611, i64 %226
  %228 = bitcast i8* %227 to <4 x double>*
  %wide.load1270 = load <4 x double>, <4 x double>* %228, align 8, !alias.scope !99, !noalias !101
  %229 = fmul fast <4 x double> %wide.load1270, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %230 = bitcast i8* %227 to <4 x double>*
  store <4 x double> %229, <4 x double>* %230, align 8, !alias.scope !99, !noalias !101
  %index.next1267 = add i64 %index1266, 4
  %231 = icmp eq i64 %index.next1267, %n.vec1265
  br i1 %231, label %middle.block1259, label %vector.body1261, !llvm.loop !106

middle.block1259:                                 ; preds = %vector.body1261
  %cmp.n1269 = icmp eq i64 %224, %n.vec1265
  br i1 %cmp.n1269, label %polly.loop_exit607, label %polly.loop_header605.preheader

polly.loop_header605.preheader:                   ; preds = %polly.loop_header599, %middle.block1259
  %polly.indvar608.ph = phi i64 [ 0, %polly.loop_header599 ], [ %n.vec1265, %middle.block1259 ]
  br label %polly.loop_header605

polly.loop_exit607:                               ; preds = %polly.loop_header605, %middle.block1259
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar_next603, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1135.not, label %polly.loop_header615.preheader, label %polly.loop_header599

polly.loop_header615.preheader:                   ; preds = %polly.loop_exit607
  %Packed_MemRef_call1514 = bitcast i8* %malloccall513 to double*
  %Packed_MemRef_call2516 = bitcast i8* %malloccall515 to double*
  br label %polly.loop_header615

polly.loop_header605:                             ; preds = %polly.loop_header605.preheader, %polly.loop_header605
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_header605 ], [ %polly.indvar608.ph, %polly.loop_header605.preheader ]
  %232 = shl nuw nsw i64 %polly.indvar608, 3
  %scevgep612 = getelementptr i8, i8* %scevgep611, i64 %232
  %scevgep612613 = bitcast i8* %scevgep612 to double*
  %_p_scalar_614 = load double, double* %scevgep612613, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_614, 1.200000e+00
  store double %p_mul.i, double* %scevgep612613, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1134.not = icmp eq i64 %polly.indvar_next609, %polly.indvar602
  br i1 %exitcond1134.not, label %polly.loop_exit607, label %polly.loop_header605, !llvm.loop !107

polly.loop_header615:                             ; preds = %polly.loop_header615.preheader, %polly.loop_exit640
  %indvars.iv1123 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %indvars.iv.next1124, %polly.loop_exit640 ]
  %indvars.iv1118 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %indvars.iv.next1119, %polly.loop_exit640 ]
  %indvars.iv1111 = phi i64 [ 1200, %polly.loop_header615.preheader ], [ %indvars.iv.next1112, %polly.loop_exit640 ]
  %polly.indvar618 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %248, %polly.loop_exit640 ]
  %233 = shl nuw nsw i64 %polly.indvar618, 2
  %234 = shl nuw nsw i64 %polly.indvar618, 2
  %235 = and i64 %234, 9223372036854775800
  %236 = sub nsw i64 %233, %235
  %237 = mul nsw i64 %polly.indvar618, -4
  %238 = add i64 %237, %235
  %239 = lshr i64 %polly.indvar618, 1
  %240 = shl nuw nsw i64 %239, 3
  %241 = sub nsw i64 %indvars.iv1118, %240
  %242 = add i64 %indvars.iv1123, %240
  %243 = shl nsw i64 %polly.indvar618, 2
  br label %polly.loop_header621

polly.loop_exit623:                               ; preds = %polly.loop_exit629
  %244 = mul nsw i64 %polly.indvar618, -4
  %polly.access.mul.call1661.us = mul nsw i64 %polly.indvar618, 4000
  %245 = or i64 %243, 1
  %polly.access.mul.call1661.us.1 = mul nuw nsw i64 %245, 1000
  %246 = or i64 %243, 2
  %polly.access.mul.call1661.us.2 = mul nuw nsw i64 %246, 1000
  %247 = or i64 %243, 3
  %polly.access.mul.call1661.us.3 = mul nuw nsw i64 %247, 1000
  br label %polly.loop_header638

polly.loop_exit640:                               ; preds = %polly.loop_exit681
  %248 = add nuw nsw i64 %polly.indvar618, 1
  %indvars.iv.next1112 = add nsw i64 %indvars.iv1111, -4
  %indvars.iv.next1119 = add nuw nsw i64 %indvars.iv1118, 4
  %indvars.iv.next1124 = add nsw i64 %indvars.iv1123, -4
  %exitcond1133.not = icmp eq i64 %248, 300
  br i1 %exitcond1133.not, label %polly.exiting512, label %polly.loop_header615

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
  %249 = add nuw nsw i64 %polly.indvar630, %243
  %polly.access.mul.call2634 = mul nuw nsw i64 %249, 1000
  %polly.access.add.call2635 = add nuw nsw i64 %polly.access.mul.call2634, %polly.indvar624
  %polly.access.call2636 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2635
  %polly.access.call2636.load = load double, double* %polly.access.call2636, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2516 = add nuw nsw i64 %polly.indvar630, %polly.access.mul.Packed_MemRef_call2516
  %polly.access.Packed_MemRef_call2516 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516
  store double %polly.access.call2636.load, double* %polly.access.Packed_MemRef_call2516, align 8
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar_next631, %indvars.iv1111
  br i1 %exitcond1113.not, label %polly.loop_exit629, label %polly.loop_header627

polly.loop_header638:                             ; preds = %polly.loop_exit681, %polly.loop_exit623
  %indvar1274 = phi i64 [ %indvar.next1275, %polly.loop_exit681 ], [ 0, %polly.loop_exit623 ]
  %indvars.iv1125 = phi i64 [ %indvars.iv.next1126, %polly.loop_exit681 ], [ %242, %polly.loop_exit623 ]
  %indvars.iv1120 = phi i64 [ %indvars.iv.next1121, %polly.loop_exit681 ], [ %241, %polly.loop_exit623 ]
  %polly.indvar641 = phi i64 [ %polly.indvar_next642, %polly.loop_exit681 ], [ %239, %polly.loop_exit623 ]
  %250 = mul nsw i64 %indvar1274, -8
  %251 = add i64 %236, %250
  %smax1276 = call i64 @llvm.smax.i64(i64 %251, i64 0)
  %252 = shl nuw nsw i64 %indvar1274, 3
  %253 = add i64 %238, %252
  %254 = add i64 %smax1276, %253
  %smax1122 = call i64 @llvm.smax.i64(i64 %indvars.iv1120, i64 0)
  %255 = add i64 %smax1122, %indvars.iv1125
  %256 = shl nuw nsw i64 %polly.indvar641, 1
  %.not.not927 = icmp ugt i64 %256, %polly.indvar618
  %257 = shl nsw i64 %polly.indvar641, 3
  %258 = add nsw i64 %257, %244
  %259 = icmp sgt i64 %258, 0
  %260 = select i1 %259, i64 %258, i64 0
  %261 = add nsw i64 %258, 7
  %polly.loop_guard668.not = icmp sgt i64 %260, %261
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
  br i1 %polly.loop_guard668.not, label %polly.loop_exit667.us, label %polly.loop_header665.us

polly.loop_header665.us:                          ; preds = %polly.loop_header644.us, %polly.loop_header665.us
  %polly.indvar669.us = phi i64 [ %polly.indvar_next670.us, %polly.loop_header665.us ], [ %260, %polly.loop_header644.us ]
  %262 = add nuw nsw i64 %polly.indvar669.us, %243
  %polly.access.mul.call1673.us = mul nsw i64 %262, 1000
  %polly.access.add.call1674.us = add nuw nsw i64 %polly.access.mul.call1673.us, %polly.indvar647.us
  %polly.access.call1675.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674.us
  %polly.access.call1675.load.us = load double, double* %polly.access.call1675.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514677.us = add nuw nsw i64 %polly.indvar669.us, %polly.access.mul.Packed_MemRef_call1514.us
  %polly.access.Packed_MemRef_call1514678.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514677.us
  store double %polly.access.call1675.load.us, double* %polly.access.Packed_MemRef_call1514678.us, align 8
  %polly.indvar_next670.us = add nuw nsw i64 %polly.indvar669.us, 1
  %polly.loop_cond671.not.not.us = icmp slt i64 %polly.indvar669.us, %261
  br i1 %polly.loop_cond671.not.not.us, label %polly.loop_header665.us, label %polly.loop_exit667.us

polly.loop_exit667.us:                            ; preds = %polly.loop_header665.us, %polly.loop_header644.us
  %polly.indvar_next648.us = add nuw nsw i64 %polly.indvar647.us, 1
  %exitcond1117.not = icmp eq i64 %polly.indvar_next648.us, 1000
  br i1 %exitcond1117.not, label %polly.loop_header679.preheader, label %polly.loop_header644.us

polly.loop_header638.split:                       ; preds = %polly.loop_header638
  br i1 %polly.loop_guard668.not, label %polly.loop_header679.preheader, label %polly.loop_header644

polly.loop_exit681:                               ; preds = %polly.loop_exit688.loopexit.us, %polly.loop_header679.preheader
  %polly.indvar_next642 = add nuw nsw i64 %polly.indvar641, 1
  %indvars.iv.next1121 = add i64 %indvars.iv1120, -8
  %indvars.iv.next1126 = add i64 %indvars.iv1125, 8
  %exitcond1132.not = icmp eq i64 %polly.indvar_next642, 150
  %indvar.next1275 = add i64 %indvar1274, 1
  br i1 %exitcond1132.not, label %polly.loop_exit640, label %polly.loop_header638

polly.loop_header644:                             ; preds = %polly.loop_header638.split, %polly.loop_exit667
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit667 ], [ 0, %polly.loop_header638.split ]
  %polly.access.mul.Packed_MemRef_call1514676 = mul nuw nsw i64 %polly.indvar647, 1200
  br label %polly.loop_header665

polly.loop_exit667:                               ; preds = %polly.loop_header665
  %polly.indvar_next648 = add nuw nsw i64 %polly.indvar647, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar_next648, 1000
  br i1 %exitcond1115.not, label %polly.loop_header679.preheader, label %polly.loop_header644

polly.loop_header679.preheader:                   ; preds = %polly.loop_exit667, %polly.loop_exit667.us, %polly.loop_header638.split
  %263 = sub nsw i64 %243, %257
  %264 = icmp sgt i64 %263, 0
  %265 = select i1 %264, i64 %263, i64 0
  %polly.loop_guard689 = icmp slt i64 %265, 8
  br i1 %polly.loop_guard689, label %polly.loop_header679.us, label %polly.loop_exit681

polly.loop_header679.us:                          ; preds = %polly.loop_header679.preheader, %polly.loop_exit688.loopexit.us
  %polly.indvar682.us = phi i64 [ %polly.indvar_next683.us, %polly.loop_exit688.loopexit.us ], [ 0, %polly.loop_header679.preheader ]
  %polly.access.mul.Packed_MemRef_call1514701.us = mul nuw nsw i64 %polly.indvar682.us, 1200
  br label %polly.loop_header686.us

polly.loop_header686.us:                          ; preds = %polly.loop_header679.us, %polly.loop_exit696.us
  %indvar1277 = phi i64 [ 0, %polly.loop_header679.us ], [ %indvar.next1278, %polly.loop_exit696.us ]
  %indvars.iv1127 = phi i64 [ %255, %polly.loop_header679.us ], [ %indvars.iv.next1128, %polly.loop_exit696.us ]
  %polly.indvar690.us = phi i64 [ %265, %polly.loop_header679.us ], [ %polly.indvar_next691.us, %polly.loop_exit696.us ]
  %266 = add i64 %254, %indvar1277
  %smin1279 = call i64 @llvm.smin.i64(i64 %266, i64 3)
  %267 = add nsw i64 %smin1279, 1
  %smin1129 = call i64 @llvm.smin.i64(i64 %indvars.iv1127, i64 3)
  %268 = add nsw i64 %polly.indvar690.us, %258
  %polly.loop_guard697.us1172 = icmp sgt i64 %268, -1
  br i1 %polly.loop_guard697.us1172, label %polly.loop_header694.preheader.us, label %polly.loop_exit696.us

polly.loop_header694.us:                          ; preds = %polly.loop_header694.us.preheader, %polly.loop_header694.us
  %polly.indvar698.us = phi i64 [ %polly.indvar_next699.us, %polly.loop_header694.us ], [ %polly.indvar698.us.ph, %polly.loop_header694.us.preheader ]
  %269 = add nuw nsw i64 %polly.indvar698.us, %243
  %polly.access.add.Packed_MemRef_call1514702.us = add nuw nsw i64 %polly.indvar698.us, %polly.access.mul.Packed_MemRef_call1514701.us
  %polly.access.Packed_MemRef_call1514703.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514702.us
  %_p_scalar_704.us = load double, double* %polly.access.Packed_MemRef_call1514703.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_708.us, %_p_scalar_704.us
  %polly.access.Packed_MemRef_call2516711.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call1514702.us
  %_p_scalar_712.us = load double, double* %polly.access.Packed_MemRef_call2516711.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_716.us, %_p_scalar_712.us
  %270 = shl i64 %269, 3
  %271 = add i64 %270, %273
  %scevgep717.us = getelementptr i8, i8* %call, i64 %271
  %scevgep717718.us = bitcast i8* %scevgep717.us to double*
  %_p_scalar_719.us = load double, double* %scevgep717718.us, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_719.us
  store double %p_add42.i.us, double* %scevgep717718.us, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next699.us = add nuw nsw i64 %polly.indvar698.us, 1
  %exitcond1130.not = icmp eq i64 %polly.indvar698.us, %smin1129
  br i1 %exitcond1130.not, label %polly.loop_exit696.us, label %polly.loop_header694.us, !llvm.loop !110

polly.loop_exit696.us:                            ; preds = %polly.loop_header694.us, %middle.block1271, %polly.loop_header686.us
  %polly.indvar_next691.us = add nuw nsw i64 %polly.indvar690.us, 1
  %polly.loop_cond692.us = icmp ult i64 %polly.indvar690.us, 7
  %indvars.iv.next1128 = add i64 %indvars.iv1127, 1
  %indvar.next1278 = add i64 %indvar1277, 1
  br i1 %polly.loop_cond692.us, label %polly.loop_header686.us, label %polly.loop_exit688.loopexit.us

polly.loop_header694.preheader.us:                ; preds = %polly.loop_header686.us
  %272 = add nuw nsw i64 %polly.indvar690.us, %257
  %polly.access.add.Packed_MemRef_call2516706.us = add nsw i64 %268, %polly.access.mul.Packed_MemRef_call1514701.us
  %polly.access.Packed_MemRef_call2516707.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us
  %_p_scalar_708.us = load double, double* %polly.access.Packed_MemRef_call2516707.us, align 8
  %polly.access.Packed_MemRef_call1514715.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call2516706.us
  %_p_scalar_716.us = load double, double* %polly.access.Packed_MemRef_call1514715.us, align 8
  %273 = mul i64 %272, 9600
  %min.iters.check1280 = icmp ult i64 %267, 4
  br i1 %min.iters.check1280, label %polly.loop_header694.us.preheader, label %vector.ph1281

vector.ph1281:                                    ; preds = %polly.loop_header694.preheader.us
  %n.vec1283 = and i64 %267, -4
  %broadcast.splatinsert1289 = insertelement <4 x double> poison, double %_p_scalar_708.us, i32 0
  %broadcast.splat1290 = shufflevector <4 x double> %broadcast.splatinsert1289, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1292 = insertelement <4 x double> poison, double %_p_scalar_716.us, i32 0
  %broadcast.splat1293 = shufflevector <4 x double> %broadcast.splatinsert1292, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1273

vector.body1273:                                  ; preds = %vector.body1273, %vector.ph1281
  %index1284 = phi i64 [ 0, %vector.ph1281 ], [ %index.next1285, %vector.body1273 ]
  %274 = add nuw nsw i64 %index1284, %243
  %275 = add nuw nsw i64 %index1284, %polly.access.mul.Packed_MemRef_call1514701.us
  %276 = getelementptr double, double* %Packed_MemRef_call1514, i64 %275
  %277 = bitcast double* %276 to <4 x double>*
  %wide.load1288 = load <4 x double>, <4 x double>* %277, align 8
  %278 = fmul fast <4 x double> %broadcast.splat1290, %wide.load1288
  %279 = getelementptr double, double* %Packed_MemRef_call2516, i64 %275
  %280 = bitcast double* %279 to <4 x double>*
  %wide.load1291 = load <4 x double>, <4 x double>* %280, align 8
  %281 = fmul fast <4 x double> %broadcast.splat1293, %wide.load1291
  %282 = shl i64 %274, 3
  %283 = add i64 %282, %273
  %284 = getelementptr i8, i8* %call, i64 %283
  %285 = bitcast i8* %284 to <4 x double>*
  %wide.load1294 = load <4 x double>, <4 x double>* %285, align 8, !alias.scope !99, !noalias !101
  %286 = fadd fast <4 x double> %281, %278
  %287 = fmul fast <4 x double> %286, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %288 = fadd fast <4 x double> %287, %wide.load1294
  %289 = bitcast i8* %284 to <4 x double>*
  store <4 x double> %288, <4 x double>* %289, align 8, !alias.scope !99, !noalias !101
  %index.next1285 = add i64 %index1284, 4
  %290 = icmp eq i64 %index.next1285, %n.vec1283
  br i1 %290, label %middle.block1271, label %vector.body1273, !llvm.loop !111

middle.block1271:                                 ; preds = %vector.body1273
  %cmp.n1287 = icmp eq i64 %267, %n.vec1283
  br i1 %cmp.n1287, label %polly.loop_exit696.us, label %polly.loop_header694.us.preheader

polly.loop_header694.us.preheader:                ; preds = %polly.loop_header694.preheader.us, %middle.block1271
  %polly.indvar698.us.ph = phi i64 [ 0, %polly.loop_header694.preheader.us ], [ %n.vec1283, %middle.block1271 ]
  br label %polly.loop_header694.us

polly.loop_exit688.loopexit.us:                   ; preds = %polly.loop_exit696.us
  %polly.indvar_next683.us = add nuw nsw i64 %polly.indvar682.us, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar_next683.us, 1000
  br i1 %exitcond1131.not, label %polly.loop_exit681, label %polly.loop_header679.us

polly.loop_header665:                             ; preds = %polly.loop_header644, %polly.loop_header665
  %polly.indvar669 = phi i64 [ %polly.indvar_next670, %polly.loop_header665 ], [ %260, %polly.loop_header644 ]
  %291 = add nuw nsw i64 %polly.indvar669, %243
  %polly.access.mul.call1673 = mul nsw i64 %291, 1000
  %polly.access.add.call1674 = add nuw nsw i64 %polly.access.mul.call1673, %polly.indvar647
  %polly.access.call1675 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674
  %polly.access.call1675.load = load double, double* %polly.access.call1675, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514677 = add nuw nsw i64 %polly.indvar669, %polly.access.mul.Packed_MemRef_call1514676
  %polly.access.Packed_MemRef_call1514678 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514677
  store double %polly.access.call1675.load, double* %polly.access.Packed_MemRef_call1514678, align 8
  %polly.indvar_next670 = add nuw nsw i64 %polly.indvar669, 1
  %polly.loop_cond671.not.not = icmp slt i64 %polly.indvar669, %261
  br i1 %polly.loop_cond671.not.not, label %polly.loop_header665, label %polly.loop_exit667

polly.loop_header846:                             ; preds = %entry, %polly.loop_exit854
  %indvars.iv1160 = phi i64 [ %indvars.iv.next1161, %polly.loop_exit854 ], [ 0, %entry ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %entry ]
  %smin1162 = call i64 @llvm.smin.i64(i64 %indvars.iv1160, i64 -1168)
  %292 = shl nsw i64 %polly.indvar849, 5
  %293 = add nsw i64 %smin1162, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1161 = add nsw i64 %indvars.iv1160, -32
  %exitcond1165.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1165.not, label %polly.loop_header873, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %indvars.iv1156 = phi i64 [ %indvars.iv.next1157, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %294 = mul nsw i64 %polly.indvar855, -32
  %smin1200 = call i64 @llvm.smin.i64(i64 %294, i64 -1168)
  %295 = add nsw i64 %smin1200, 1200
  %smin1158 = call i64 @llvm.smin.i64(i64 %indvars.iv1156, i64 -1168)
  %296 = shl nsw i64 %polly.indvar855, 5
  %297 = add nsw i64 %smin1158, 1199
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1157 = add nsw i64 %indvars.iv1156, -32
  %exitcond1164.not = icmp eq i64 %polly.indvar_next856, 38
  br i1 %exitcond1164.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %polly.indvar861 = phi i64 [ 0, %polly.loop_header852 ], [ %polly.indvar_next862, %polly.loop_exit866 ]
  %298 = add nuw nsw i64 %polly.indvar861, %292
  %299 = trunc i64 %298 to i32
  %300 = mul nuw nsw i64 %298, 9600
  %min.iters.check = icmp eq i64 %295, 0
  br i1 %min.iters.check, label %polly.loop_header864, label %vector.ph1201

vector.ph1201:                                    ; preds = %polly.loop_header858
  %broadcast.splatinsert1208 = insertelement <4 x i64> poison, i64 %296, i32 0
  %broadcast.splat1209 = shufflevector <4 x i64> %broadcast.splatinsert1208, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1210 = insertelement <4 x i32> poison, i32 %299, i32 0
  %broadcast.splat1211 = shufflevector <4 x i32> %broadcast.splatinsert1210, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1199

vector.body1199:                                  ; preds = %vector.body1199, %vector.ph1201
  %index1202 = phi i64 [ 0, %vector.ph1201 ], [ %index.next1203, %vector.body1199 ]
  %vec.ind1206 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1201 ], [ %vec.ind.next1207, %vector.body1199 ]
  %301 = add nuw nsw <4 x i64> %vec.ind1206, %broadcast.splat1209
  %302 = trunc <4 x i64> %301 to <4 x i32>
  %303 = mul <4 x i32> %broadcast.splat1211, %302
  %304 = add <4 x i32> %303, <i32 3, i32 3, i32 3, i32 3>
  %305 = urem <4 x i32> %304, <i32 1200, i32 1200, i32 1200, i32 1200>
  %306 = sitofp <4 x i32> %305 to <4 x double>
  %307 = fmul fast <4 x double> %306, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %308 = extractelement <4 x i64> %301, i32 0
  %309 = shl i64 %308, 3
  %310 = add nuw nsw i64 %309, %300
  %311 = getelementptr i8, i8* %call, i64 %310
  %312 = bitcast i8* %311 to <4 x double>*
  store <4 x double> %307, <4 x double>* %312, align 8, !alias.scope !112, !noalias !114
  %index.next1203 = add i64 %index1202, 4
  %vec.ind.next1207 = add <4 x i64> %vec.ind1206, <i64 4, i64 4, i64 4, i64 4>
  %313 = icmp eq i64 %index.next1203, %295
  br i1 %313, label %polly.loop_exit866, label %vector.body1199, !llvm.loop !117

polly.loop_exit866:                               ; preds = %vector.body1199, %polly.loop_header864
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1163.not = icmp eq i64 %polly.indvar861, %293
  br i1 %exitcond1163.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_header858, %polly.loop_header864
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_header864 ], [ 0, %polly.loop_header858 ]
  %314 = add nuw nsw i64 %polly.indvar867, %296
  %315 = trunc i64 %314 to i32
  %316 = mul i32 %315, %299
  %317 = add i32 %316, 3
  %318 = urem i32 %317, 1200
  %p_conv31.i = sitofp i32 %318 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %319 = shl i64 %314, 3
  %320 = add nuw nsw i64 %319, %300
  %scevgep870 = getelementptr i8, i8* %call, i64 %320
  %scevgep870871 = bitcast i8* %scevgep870 to double*
  store double %p_div33.i, double* %scevgep870871, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1159.not = icmp eq i64 %polly.indvar867, %297
  br i1 %exitcond1159.not, label %polly.loop_exit866, label %polly.loop_header864, !llvm.loop !118

polly.loop_header873:                             ; preds = %polly.loop_exit854, %polly.loop_exit881
  %indvars.iv1150 = phi i64 [ %indvars.iv.next1151, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %polly.indvar876 = phi i64 [ %polly.indvar_next877, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %smin1152 = call i64 @llvm.smin.i64(i64 %indvars.iv1150, i64 -1168)
  %321 = shl nsw i64 %polly.indvar876, 5
  %322 = add nsw i64 %smin1152, 1199
  br label %polly.loop_header879

polly.loop_exit881:                               ; preds = %polly.loop_exit887
  %polly.indvar_next877 = add nuw nsw i64 %polly.indvar876, 1
  %indvars.iv.next1151 = add nsw i64 %indvars.iv1150, -32
  %exitcond1155.not = icmp eq i64 %polly.indvar_next877, 38
  br i1 %exitcond1155.not, label %polly.loop_header899, label %polly.loop_header873

polly.loop_header879:                             ; preds = %polly.loop_exit887, %polly.loop_header873
  %indvars.iv1146 = phi i64 [ %indvars.iv.next1147, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %323 = mul nsw i64 %polly.indvar882, -32
  %smin1215 = call i64 @llvm.smin.i64(i64 %323, i64 -968)
  %324 = add nsw i64 %smin1215, 1000
  %smin1148 = call i64 @llvm.smin.i64(i64 %indvars.iv1146, i64 -968)
  %325 = shl nsw i64 %polly.indvar882, 5
  %326 = add nsw i64 %smin1148, 999
  br label %polly.loop_header885

polly.loop_exit887:                               ; preds = %polly.loop_exit893
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %indvars.iv.next1147 = add nsw i64 %indvars.iv1146, -32
  %exitcond1154.not = icmp eq i64 %polly.indvar_next883, 32
  br i1 %exitcond1154.not, label %polly.loop_exit881, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_exit893, %polly.loop_header879
  %polly.indvar888 = phi i64 [ 0, %polly.loop_header879 ], [ %polly.indvar_next889, %polly.loop_exit893 ]
  %327 = add nuw nsw i64 %polly.indvar888, %321
  %328 = trunc i64 %327 to i32
  %329 = mul nuw nsw i64 %327, 8000
  %min.iters.check1216 = icmp eq i64 %324, 0
  br i1 %min.iters.check1216, label %polly.loop_header891, label %vector.ph1217

vector.ph1217:                                    ; preds = %polly.loop_header885
  %broadcast.splatinsert1226 = insertelement <4 x i64> poison, i64 %325, i32 0
  %broadcast.splat1227 = shufflevector <4 x i64> %broadcast.splatinsert1226, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1228 = insertelement <4 x i32> poison, i32 %328, i32 0
  %broadcast.splat1229 = shufflevector <4 x i32> %broadcast.splatinsert1228, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1214

vector.body1214:                                  ; preds = %vector.body1214, %vector.ph1217
  %index1220 = phi i64 [ 0, %vector.ph1217 ], [ %index.next1221, %vector.body1214 ]
  %vec.ind1224 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1217 ], [ %vec.ind.next1225, %vector.body1214 ]
  %330 = add nuw nsw <4 x i64> %vec.ind1224, %broadcast.splat1227
  %331 = trunc <4 x i64> %330 to <4 x i32>
  %332 = mul <4 x i32> %broadcast.splat1229, %331
  %333 = add <4 x i32> %332, <i32 2, i32 2, i32 2, i32 2>
  %334 = urem <4 x i32> %333, <i32 1000, i32 1000, i32 1000, i32 1000>
  %335 = sitofp <4 x i32> %334 to <4 x double>
  %336 = fmul fast <4 x double> %335, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %337 = extractelement <4 x i64> %330, i32 0
  %338 = shl i64 %337, 3
  %339 = add nuw nsw i64 %338, %329
  %340 = getelementptr i8, i8* %call2, i64 %339
  %341 = bitcast i8* %340 to <4 x double>*
  store <4 x double> %336, <4 x double>* %341, align 8, !alias.scope !116, !noalias !119
  %index.next1221 = add i64 %index1220, 4
  %vec.ind.next1225 = add <4 x i64> %vec.ind1224, <i64 4, i64 4, i64 4, i64 4>
  %342 = icmp eq i64 %index.next1221, %324
  br i1 %342, label %polly.loop_exit893, label %vector.body1214, !llvm.loop !120

polly.loop_exit893:                               ; preds = %vector.body1214, %polly.loop_header891
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %exitcond1153.not = icmp eq i64 %polly.indvar888, %322
  br i1 %exitcond1153.not, label %polly.loop_exit887, label %polly.loop_header885

polly.loop_header891:                             ; preds = %polly.loop_header885, %polly.loop_header891
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_header891 ], [ 0, %polly.loop_header885 ]
  %343 = add nuw nsw i64 %polly.indvar894, %325
  %344 = trunc i64 %343 to i32
  %345 = mul i32 %344, %328
  %346 = add i32 %345, 2
  %347 = urem i32 %346, 1000
  %p_conv10.i = sitofp i32 %347 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %348 = shl i64 %343, 3
  %349 = add nuw nsw i64 %348, %329
  %scevgep897 = getelementptr i8, i8* %call2, i64 %349
  %scevgep897898 = bitcast i8* %scevgep897 to double*
  store double %p_div12.i, double* %scevgep897898, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1149.not = icmp eq i64 %polly.indvar894, %326
  br i1 %exitcond1149.not, label %polly.loop_exit893, label %polly.loop_header891, !llvm.loop !121

polly.loop_header899:                             ; preds = %polly.loop_exit881, %polly.loop_exit907
  %indvars.iv1140 = phi i64 [ %indvars.iv.next1141, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %smin1142 = call i64 @llvm.smin.i64(i64 %indvars.iv1140, i64 -1168)
  %350 = shl nsw i64 %polly.indvar902, 5
  %351 = add nsw i64 %smin1142, 1199
  br label %polly.loop_header905

polly.loop_exit907:                               ; preds = %polly.loop_exit913
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %indvars.iv.next1141 = add nsw i64 %indvars.iv1140, -32
  %exitcond1145.not = icmp eq i64 %polly.indvar_next903, 38
  br i1 %exitcond1145.not, label %init_array.exit, label %polly.loop_header899

polly.loop_header905:                             ; preds = %polly.loop_exit913, %polly.loop_header899
  %indvars.iv1136 = phi i64 [ %indvars.iv.next1137, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %352 = mul nsw i64 %polly.indvar908, -32
  %smin1233 = call i64 @llvm.smin.i64(i64 %352, i64 -968)
  %353 = add nsw i64 %smin1233, 1000
  %smin1138 = call i64 @llvm.smin.i64(i64 %indvars.iv1136, i64 -968)
  %354 = shl nsw i64 %polly.indvar908, 5
  %355 = add nsw i64 %smin1138, 999
  br label %polly.loop_header911

polly.loop_exit913:                               ; preds = %polly.loop_exit919
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %indvars.iv.next1137 = add nsw i64 %indvars.iv1136, -32
  %exitcond1144.not = icmp eq i64 %polly.indvar_next909, 32
  br i1 %exitcond1144.not, label %polly.loop_exit907, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_exit919, %polly.loop_header905
  %polly.indvar914 = phi i64 [ 0, %polly.loop_header905 ], [ %polly.indvar_next915, %polly.loop_exit919 ]
  %356 = add nuw nsw i64 %polly.indvar914, %350
  %357 = trunc i64 %356 to i32
  %358 = mul nuw nsw i64 %356, 8000
  %min.iters.check1234 = icmp eq i64 %353, 0
  br i1 %min.iters.check1234, label %polly.loop_header917, label %vector.ph1235

vector.ph1235:                                    ; preds = %polly.loop_header911
  %broadcast.splatinsert1244 = insertelement <4 x i64> poison, i64 %354, i32 0
  %broadcast.splat1245 = shufflevector <4 x i64> %broadcast.splatinsert1244, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1246 = insertelement <4 x i32> poison, i32 %357, i32 0
  %broadcast.splat1247 = shufflevector <4 x i32> %broadcast.splatinsert1246, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1232

vector.body1232:                                  ; preds = %vector.body1232, %vector.ph1235
  %index1238 = phi i64 [ 0, %vector.ph1235 ], [ %index.next1239, %vector.body1232 ]
  %vec.ind1242 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1235 ], [ %vec.ind.next1243, %vector.body1232 ]
  %359 = add nuw nsw <4 x i64> %vec.ind1242, %broadcast.splat1245
  %360 = trunc <4 x i64> %359 to <4 x i32>
  %361 = mul <4 x i32> %broadcast.splat1247, %360
  %362 = add <4 x i32> %361, <i32 1, i32 1, i32 1, i32 1>
  %363 = urem <4 x i32> %362, <i32 1200, i32 1200, i32 1200, i32 1200>
  %364 = sitofp <4 x i32> %363 to <4 x double>
  %365 = fmul fast <4 x double> %364, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %366 = extractelement <4 x i64> %359, i32 0
  %367 = shl i64 %366, 3
  %368 = add nuw nsw i64 %367, %358
  %369 = getelementptr i8, i8* %call1, i64 %368
  %370 = bitcast i8* %369 to <4 x double>*
  store <4 x double> %365, <4 x double>* %370, align 8, !alias.scope !115, !noalias !122
  %index.next1239 = add i64 %index1238, 4
  %vec.ind.next1243 = add <4 x i64> %vec.ind1242, <i64 4, i64 4, i64 4, i64 4>
  %371 = icmp eq i64 %index.next1239, %353
  br i1 %371, label %polly.loop_exit919, label %vector.body1232, !llvm.loop !123

polly.loop_exit919:                               ; preds = %vector.body1232, %polly.loop_header917
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %exitcond1143.not = icmp eq i64 %polly.indvar914, %351
  br i1 %exitcond1143.not, label %polly.loop_exit913, label %polly.loop_header911

polly.loop_header917:                             ; preds = %polly.loop_header911, %polly.loop_header917
  %polly.indvar920 = phi i64 [ %polly.indvar_next921, %polly.loop_header917 ], [ 0, %polly.loop_header911 ]
  %372 = add nuw nsw i64 %polly.indvar920, %354
  %373 = trunc i64 %372 to i32
  %374 = mul i32 %373, %357
  %375 = add i32 %374, 1
  %376 = urem i32 %375, 1200
  %p_conv.i = sitofp i32 %376 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %377 = shl i64 %372, 3
  %378 = add nuw nsw i64 %377, %358
  %scevgep924 = getelementptr i8, i8* %call1, i64 %378
  %scevgep924925 = bitcast i8* %scevgep924 to double*
  store double %p_div.i, double* %scevgep924925, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %exitcond1139.not = icmp eq i64 %polly.indvar920, %355
  br i1 %exitcond1139.not, label %polly.loop_exit919, label %polly.loop_header917, !llvm.loop !124
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
!26 = !{!"llvm.loop.tile.size", i32 4}
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
!51 = !{!"llvm.loop.tile.size", i32 8}
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
!84 = distinct !{!84, !81, !13}
!85 = distinct !{!85, !13}
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
!97 = distinct !{!97, !81, !13}
!98 = distinct !{!98, !13}
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
!110 = distinct !{!110, !81, !13}
!111 = distinct !{!111, !13}
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
