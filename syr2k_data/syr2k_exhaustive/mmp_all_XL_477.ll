; ModuleID = 'syr2k_exhaustive/mmp_all_XL_477.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_477.c"
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
  %call876 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1728 = bitcast i8* %call1 to double*
  %polly.access.call1737 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2738 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1737, %call2
  %polly.access.call2757 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2757, %call1
  %2 = or i1 %0, %1
  %polly.access.call777 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call777, %call2
  %4 = icmp ule i8* %polly.access.call2757, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call777, %call1
  %8 = icmp ule i8* %polly.access.call1737, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header850, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1185 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1184 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1183 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1182 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1182, %scevgep1185
  %bound1 = icmp ult i8* %scevgep1184, %scevgep1183
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
  br i1 %exitcond18.not.i, label %vector.ph1189, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1189:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1196 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1197 = shufflevector <4 x i64> %broadcast.splatinsert1196, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1188

vector.body1188:                                  ; preds = %vector.body1188, %vector.ph1189
  %index1190 = phi i64 [ 0, %vector.ph1189 ], [ %index.next1191, %vector.body1188 ]
  %vec.ind1194 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1189 ], [ %vec.ind.next1195, %vector.body1188 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1194, %broadcast.splat1197
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv7.i, i64 %index1190
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1191 = add i64 %index1190, 4
  %vec.ind.next1195 = add <4 x i64> %vec.ind1194, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1191, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1188, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1188
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1189, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit911
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start515, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1252 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1252, label %for.body3.i46.preheader1401, label %vector.ph1253

vector.ph1253:                                    ; preds = %for.body3.i46.preheader
  %n.vec1255 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1251

vector.body1251:                                  ; preds = %vector.body1251, %vector.ph1253
  %index1256 = phi i64 [ 0, %vector.ph1253 ], [ %index.next1257, %vector.body1251 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i, i64 %index1256
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1257 = add i64 %index1256, 4
  %46 = icmp eq i64 %index.next1257, %n.vec1255
  br i1 %46, label %middle.block1249, label %vector.body1251, !llvm.loop !18

middle.block1249:                                 ; preds = %vector.body1251
  %cmp.n1259 = icmp eq i64 %indvars.iv21.i, %n.vec1255
  br i1 %cmp.n1259, label %for.inc6.i, label %for.body3.i46.preheader1401

for.body3.i46.preheader1401:                      ; preds = %for.body3.i46.preheader, %middle.block1249
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1255, %middle.block1249 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1401, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1401 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1249, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting516
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start304, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1299 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1299, label %for.body3.i60.preheader1399, label %vector.ph1300

vector.ph1300:                                    ; preds = %for.body3.i60.preheader
  %n.vec1302 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1298

vector.body1298:                                  ; preds = %vector.body1298, %vector.ph1300
  %index1303 = phi i64 [ 0, %vector.ph1300 ], [ %index.next1304, %vector.body1298 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i52, i64 %index1303
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1307 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1307, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1304 = add i64 %index1303, 4
  %57 = icmp eq i64 %index.next1304, %n.vec1302
  br i1 %57, label %middle.block1296, label %vector.body1298, !llvm.loop !64

middle.block1296:                                 ; preds = %vector.body1298
  %cmp.n1306 = icmp eq i64 %indvars.iv21.i52, %n.vec1302
  br i1 %cmp.n1306, label %for.inc6.i63, label %for.body3.i60.preheader1399

for.body3.i60.preheader1399:                      ; preds = %for.body3.i60.preheader, %middle.block1296
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1302, %middle.block1296 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1399, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1399 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1296, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting305
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1349 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1349, label %for.body3.i99.preheader1397, label %vector.ph1350

vector.ph1350:                                    ; preds = %for.body3.i99.preheader
  %n.vec1352 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1348

vector.body1348:                                  ; preds = %vector.body1348, %vector.ph1350
  %index1353 = phi i64 [ 0, %vector.ph1350 ], [ %index.next1354, %vector.body1348 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i91, i64 %index1353
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1357 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1357, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1354 = add i64 %index1353, 4
  %68 = icmp eq i64 %index.next1354, %n.vec1352
  br i1 %68, label %middle.block1346, label %vector.body1348, !llvm.loop !66

middle.block1346:                                 ; preds = %vector.body1348
  %cmp.n1356 = icmp eq i64 %indvars.iv21.i91, %n.vec1352
  br i1 %cmp.n1356, label %for.inc6.i102, label %for.body3.i99.preheader1397

for.body3.i99.preheader1397:                      ; preds = %for.body3.i99.preheader, %middle.block1346
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1352, %middle.block1346 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1397, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1397 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1346, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1361 = phi i64 [ %indvar.next1362, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1361, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1363 = icmp ult i64 %88, 4
  br i1 %min.iters.check1363, label %polly.loop_header192.preheader, label %vector.ph1364

vector.ph1364:                                    ; preds = %polly.loop_header
  %n.vec1366 = and i64 %88, -4
  br label %vector.body1360

vector.body1360:                                  ; preds = %vector.body1360, %vector.ph1364
  %index1367 = phi i64 [ 0, %vector.ph1364 ], [ %index.next1368, %vector.body1360 ]
  %90 = shl nuw nsw i64 %index1367, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1371 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1371, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1368 = add i64 %index1367, 4
  %95 = icmp eq i64 %index.next1368, %n.vec1366
  br i1 %95, label %middle.block1358, label %vector.body1360, !llvm.loop !79

middle.block1358:                                 ; preds = %vector.body1360
  %cmp.n1370 = icmp eq i64 %88, %n.vec1366
  br i1 %cmp.n1370, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1358
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1366, %middle.block1358 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1358
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1362 = add i64 %indvar1361, 1
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
  %indvars.iv1070 = phi i64 [ 4, %polly.loop_header200.preheader ], [ %indvars.iv.next1071, %polly.loop_exit224 ]
  %indvars.iv1068 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1069, %polly.loop_exit224 ]
  %indvars.iv = phi i64 [ 1200, %polly.loop_header200.preheader ], [ %indvars.iv.next, %polly.loop_exit224 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit224 ]
  %97 = mul nsw i64 %polly.indvar203, -8
  %98 = shl nuw nsw i64 %polly.indvar203, 1
  %99 = add nuw i64 %98, 4
  %100 = udiv i64 %99, 5
  %101 = mul nuw nsw i64 %100, 20
  %102 = add i64 %97, %101
  %103 = shl nuw nsw i64 %polly.indvar203, 3
  %104 = sub nsw i64 %103, %101
  %105 = udiv i64 %indvars.iv1070, 5
  %106 = mul nuw nsw i64 %105, 20
  %107 = add i64 %indvars.iv1068, %106
  %108 = sub nsw i64 %indvars.iv1074, %106
  %109 = shl nsw i64 %polly.indvar203, 5
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit214
  %110 = mul nsw i64 %polly.indvar203, -32
  %111 = shl nuw nsw i64 %polly.indvar203, 1
  %112 = add nuw nsw i64 %111, 4
  %pexp.p_div_q = udiv i64 %112, 5
  %113 = sub nsw i64 %111, %pexp.p_div_q
  %polly.loop_guard = icmp slt i64 %113, 60
  br i1 %polly.loop_guard, label %polly.loop_header222, label %polly.loop_exit224

polly.loop_exit224:                               ; preds = %polly.loop_exit263, %polly.loop_exit208
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %indvars.iv.next1069 = add nsw i64 %indvars.iv1068, -8
  %indvars.iv.next1071 = add nuw nsw i64 %indvars.iv1070, 2
  %indvars.iv.next1075 = add nuw nsw i64 %indvars.iv1074, 8
  %exitcond1082.not = icmp eq i64 %polly.indvar_next204, 38
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
  %114 = add nuw nsw i64 %polly.indvar215, %109
  %polly.access.mul.call2219 = mul nuw nsw i64 %114, 1000
  %polly.access.add.call2220 = add nuw nsw i64 %polly.access.mul.call2219, %polly.indvar209
  %polly.access.call2221 = getelementptr double, double* %polly.access.cast.call2738, i64 %polly.access.add.call2220
  %polly.access.call2221.load = load double, double* %polly.access.call2221, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar215, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2221.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next216, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header222:                             ; preds = %polly.loop_exit208, %polly.loop_exit263
  %indvar1375 = phi i64 [ %indvar.next1376, %polly.loop_exit263 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv1076 = phi i64 [ %indvars.iv.next1077, %polly.loop_exit263 ], [ %108, %polly.loop_exit208 ]
  %indvars.iv1072 = phi i64 [ %indvars.iv.next1073, %polly.loop_exit263 ], [ %107, %polly.loop_exit208 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit263 ], [ %113, %polly.loop_exit208 ]
  %115 = mul nsw i64 %indvar1375, -20
  %116 = add i64 %102, %115
  %smax1377 = call i64 @llvm.smax.i64(i64 %116, i64 0)
  %117 = mul nuw nsw i64 %indvar1375, 20
  %118 = add i64 %104, %117
  %119 = add i64 %smax1377, %118
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1072, i64 0)
  %120 = add i64 %smax, %indvars.iv1076
  %121 = mul nsw i64 %polly.indvar225, 20
  %122 = add nsw i64 %121, %110
  %123 = add nsw i64 %122, -1
  %.inv = icmp sgt i64 %122, 31
  %124 = select i1 %.inv, i64 31, i64 %123
  %polly.loop_guard238 = icmp sgt i64 %124, -1
  %125 = icmp sgt i64 %122, 0
  %126 = select i1 %125, i64 %122, i64 0
  %127 = add nsw i64 %122, 19
  %polly.loop_guard250.not = icmp sgt i64 %126, %127
  br i1 %polly.loop_guard238, label %polly.loop_header228.us, label %polly.loop_header222.split

polly.loop_header228.us:                          ; preds = %polly.loop_header222, %polly.loop_exit249.us
  %polly.indvar231.us = phi i64 [ %polly.indvar_next232.us, %polly.loop_exit249.us ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar231.us, 1200
  br label %polly.loop_header235.us

polly.loop_header235.us:                          ; preds = %polly.loop_header228.us, %polly.loop_header235.us
  %polly.indvar239.us = phi i64 [ %polly.indvar_next240.us, %polly.loop_header235.us ], [ 0, %polly.loop_header228.us ]
  %128 = add nuw nsw i64 %polly.indvar239.us, %109
  %polly.access.mul.call1243.us = mul nuw nsw i64 %128, 1000
  %polly.access.add.call1244.us = add nuw nsw i64 %polly.access.mul.call1243.us, %polly.indvar231.us
  %polly.access.call1245.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1244.us
  %polly.access.call1245.load.us = load double, double* %polly.access.call1245.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar239.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1245.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next240.us = add nuw i64 %polly.indvar239.us, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar239.us, %124
  br i1 %exitcond1066.not, label %polly.loop_exit237.loopexit.us, label %polly.loop_header235.us

polly.loop_header247.us:                          ; preds = %polly.loop_exit237.loopexit.us, %polly.loop_header247.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_header247.us ], [ %126, %polly.loop_exit237.loopexit.us ]
  %129 = add nuw nsw i64 %polly.indvar251.us, %109
  %polly.access.mul.call1255.us = mul nsw i64 %129, 1000
  %polly.access.add.call1256.us = add nuw nsw i64 %polly.access.mul.call1255.us, %polly.indvar231.us
  %polly.access.call1257.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1256.us
  %polly.access.call1257.load.us = load double, double* %polly.access.call1257.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1259.us = add nuw nsw i64 %polly.indvar251.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1260.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1259.us
  store double %polly.access.call1257.load.us, double* %polly.access.Packed_MemRef_call1260.us, align 8
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %polly.loop_cond253.not.not.us = icmp slt i64 %polly.indvar251.us, %127
  br i1 %polly.loop_cond253.not.not.us, label %polly.loop_header247.us, label %polly.loop_exit249.us

polly.loop_exit249.us:                            ; preds = %polly.loop_header247.us, %polly.loop_exit237.loopexit.us
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar_next232.us, 1000
  br i1 %exitcond1067.not, label %polly.loop_header261.preheader, label %polly.loop_header228.us

polly.loop_exit237.loopexit.us:                   ; preds = %polly.loop_header235.us
  br i1 %polly.loop_guard250.not, label %polly.loop_exit249.us, label %polly.loop_header247.us

polly.loop_header222.split:                       ; preds = %polly.loop_header222
  br i1 %polly.loop_guard250.not, label %polly.loop_header261.preheader, label %polly.loop_header228

polly.loop_exit263:                               ; preds = %polly.loop_exit270.loopexit.us, %polly.loop_header261.preheader
  %polly.indvar_next226 = add nsw i64 %polly.indvar225, 1
  %polly.loop_cond227 = icmp slt i64 %polly.indvar225, 59
  %indvars.iv.next1073 = add i64 %indvars.iv1072, -20
  %indvars.iv.next1077 = add i64 %indvars.iv1076, 20
  %indvar.next1376 = add i64 %indvar1375, 1
  br i1 %polly.loop_cond227, label %polly.loop_header222, label %polly.loop_exit224

polly.loop_header228:                             ; preds = %polly.loop_header222.split, %polly.loop_exit249
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit249 ], [ 0, %polly.loop_header222.split ]
  %polly.access.mul.Packed_MemRef_call1258 = mul nuw nsw i64 %polly.indvar231, 1200
  br label %polly.loop_header247

polly.loop_exit249:                               ; preds = %polly.loop_header247
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next232, 1000
  br i1 %exitcond1065.not, label %polly.loop_header261.preheader, label %polly.loop_header228

polly.loop_header261.preheader:                   ; preds = %polly.loop_exit249, %polly.loop_exit249.us, %polly.loop_header222.split
  %130 = sub nsw i64 %109, %121
  %131 = icmp sgt i64 %130, 0
  %132 = select i1 %131, i64 %130, i64 0
  %polly.loop_guard271 = icmp slt i64 %132, 20
  br i1 %polly.loop_guard271, label %polly.loop_header261.us, label %polly.loop_exit263

polly.loop_header261.us:                          ; preds = %polly.loop_header261.preheader, %polly.loop_exit270.loopexit.us
  %polly.indvar264.us = phi i64 [ %polly.indvar_next265.us, %polly.loop_exit270.loopexit.us ], [ 0, %polly.loop_header261.preheader ]
  %polly.access.mul.Packed_MemRef_call1283.us = mul nuw nsw i64 %polly.indvar264.us, 1200
  br label %polly.loop_header268.us

polly.loop_header268.us:                          ; preds = %polly.loop_header261.us, %polly.loop_exit278.us
  %indvar1378 = phi i64 [ 0, %polly.loop_header261.us ], [ %indvar.next1379, %polly.loop_exit278.us ]
  %indvars.iv1078 = phi i64 [ %120, %polly.loop_header261.us ], [ %indvars.iv.next1079, %polly.loop_exit278.us ]
  %polly.indvar272.us = phi i64 [ %132, %polly.loop_header261.us ], [ %polly.indvar_next273.us, %polly.loop_exit278.us ]
  %133 = add i64 %119, %indvar1378
  %smin1380 = call i64 @llvm.smin.i64(i64 %133, i64 31)
  %134 = add nsw i64 %smin1380, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1078, i64 31)
  %135 = add nsw i64 %polly.indvar272.us, %122
  %polly.loop_guard279.us1171 = icmp sgt i64 %135, -1
  br i1 %polly.loop_guard279.us1171, label %polly.loop_header276.preheader.us, label %polly.loop_exit278.us

polly.loop_header276.us:                          ; preds = %polly.loop_header276.us.preheader, %polly.loop_header276.us
  %polly.indvar280.us = phi i64 [ %polly.indvar_next281.us, %polly.loop_header276.us ], [ %polly.indvar280.us.ph, %polly.loop_header276.us.preheader ]
  %136 = add nuw nsw i64 %polly.indvar280.us, %109
  %polly.access.add.Packed_MemRef_call1284.us = add nuw nsw i64 %polly.indvar280.us, %polly.access.mul.Packed_MemRef_call1283.us
  %polly.access.Packed_MemRef_call1285.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call1285.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_290.us, %_p_scalar_286.us
  %polly.access.Packed_MemRef_call2293.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1284.us
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call2293.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_298.us, %_p_scalar_294.us
  %137 = shl i64 %136, 3
  %138 = add i64 %137, %140
  %scevgep299.us = getelementptr i8, i8* %call, i64 %138
  %scevgep299300.us = bitcast i8* %scevgep299.us to double*
  %_p_scalar_301.us = load double, double* %scevgep299300.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_301.us
  store double %p_add42.i118.us, double* %scevgep299300.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next281.us = add nuw nsw i64 %polly.indvar280.us, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar280.us, %smin
  br i1 %exitcond1080.not, label %polly.loop_exit278.us, label %polly.loop_header276.us, !llvm.loop !84

polly.loop_exit278.us:                            ; preds = %polly.loop_header276.us, %middle.block1372, %polly.loop_header268.us
  %polly.indvar_next273.us = add nuw nsw i64 %polly.indvar272.us, 1
  %polly.loop_cond274.us = icmp ult i64 %polly.indvar272.us, 19
  %indvars.iv.next1079 = add i64 %indvars.iv1078, 1
  %indvar.next1379 = add i64 %indvar1378, 1
  br i1 %polly.loop_cond274.us, label %polly.loop_header268.us, label %polly.loop_exit270.loopexit.us

polly.loop_header276.preheader.us:                ; preds = %polly.loop_header268.us
  %139 = add nsw i64 %polly.indvar272.us, %121
  %polly.access.add.Packed_MemRef_call2288.us = add nsw i64 %135, %polly.access.mul.Packed_MemRef_call1283.us
  %polly.access.Packed_MemRef_call2289.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call2289.us, align 8
  %polly.access.Packed_MemRef_call1297.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2288.us
  %_p_scalar_298.us = load double, double* %polly.access.Packed_MemRef_call1297.us, align 8
  %140 = mul i64 %139, 9600
  %min.iters.check1381 = icmp ult i64 %134, 4
  br i1 %min.iters.check1381, label %polly.loop_header276.us.preheader, label %vector.ph1382

vector.ph1382:                                    ; preds = %polly.loop_header276.preheader.us
  %n.vec1384 = and i64 %134, -4
  %broadcast.splatinsert1390 = insertelement <4 x double> poison, double %_p_scalar_290.us, i32 0
  %broadcast.splat1391 = shufflevector <4 x double> %broadcast.splatinsert1390, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1393 = insertelement <4 x double> poison, double %_p_scalar_298.us, i32 0
  %broadcast.splat1394 = shufflevector <4 x double> %broadcast.splatinsert1393, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1374

vector.body1374:                                  ; preds = %vector.body1374, %vector.ph1382
  %index1385 = phi i64 [ 0, %vector.ph1382 ], [ %index.next1386, %vector.body1374 ]
  %141 = add nuw nsw i64 %index1385, %109
  %142 = add nuw nsw i64 %index1385, %polly.access.mul.Packed_MemRef_call1283.us
  %143 = getelementptr double, double* %Packed_MemRef_call1, i64 %142
  %144 = bitcast double* %143 to <4 x double>*
  %wide.load1389 = load <4 x double>, <4 x double>* %144, align 8
  %145 = fmul fast <4 x double> %broadcast.splat1391, %wide.load1389
  %146 = getelementptr double, double* %Packed_MemRef_call2, i64 %142
  %147 = bitcast double* %146 to <4 x double>*
  %wide.load1392 = load <4 x double>, <4 x double>* %147, align 8
  %148 = fmul fast <4 x double> %broadcast.splat1394, %wide.load1392
  %149 = shl i64 %141, 3
  %150 = add i64 %149, %140
  %151 = getelementptr i8, i8* %call, i64 %150
  %152 = bitcast i8* %151 to <4 x double>*
  %wide.load1395 = load <4 x double>, <4 x double>* %152, align 8, !alias.scope !72, !noalias !74
  %153 = fadd fast <4 x double> %148, %145
  %154 = fmul fast <4 x double> %153, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %155 = fadd fast <4 x double> %154, %wide.load1395
  %156 = bitcast i8* %151 to <4 x double>*
  store <4 x double> %155, <4 x double>* %156, align 8, !alias.scope !72, !noalias !74
  %index.next1386 = add i64 %index1385, 4
  %157 = icmp eq i64 %index.next1386, %n.vec1384
  br i1 %157, label %middle.block1372, label %vector.body1374, !llvm.loop !85

middle.block1372:                                 ; preds = %vector.body1374
  %cmp.n1388 = icmp eq i64 %134, %n.vec1384
  br i1 %cmp.n1388, label %polly.loop_exit278.us, label %polly.loop_header276.us.preheader

polly.loop_header276.us.preheader:                ; preds = %polly.loop_header276.preheader.us, %middle.block1372
  %polly.indvar280.us.ph = phi i64 [ 0, %polly.loop_header276.preheader.us ], [ %n.vec1384, %middle.block1372 ]
  br label %polly.loop_header276.us

polly.loop_exit270.loopexit.us:                   ; preds = %polly.loop_exit278.us
  %polly.indvar_next265.us = add nuw nsw i64 %polly.indvar264.us, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar_next265.us, 1000
  br i1 %exitcond1081.not, label %polly.loop_exit263, label %polly.loop_header261.us

polly.loop_header247:                             ; preds = %polly.loop_header228, %polly.loop_header247
  %polly.indvar251 = phi i64 [ %polly.indvar_next252, %polly.loop_header247 ], [ %126, %polly.loop_header228 ]
  %158 = add nuw nsw i64 %polly.indvar251, %109
  %polly.access.mul.call1255 = mul nsw i64 %158, 1000
  %polly.access.add.call1256 = add nuw nsw i64 %polly.access.mul.call1255, %polly.indvar231
  %polly.access.call1257 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1256
  %polly.access.call1257.load = load double, double* %polly.access.call1257, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1259 = add nuw nsw i64 %polly.indvar251, %polly.access.mul.Packed_MemRef_call1258
  %polly.access.Packed_MemRef_call1260 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1259
  store double %polly.access.call1257.load, double* %polly.access.Packed_MemRef_call1260, align 8
  %polly.indvar_next252 = add nuw nsw i64 %polly.indvar251, 1
  %polly.loop_cond253.not.not = icmp slt i64 %polly.indvar251, %127
  br i1 %polly.loop_cond253.not.not, label %polly.loop_header247, label %polly.loop_exit249

polly.start304:                                   ; preds = %kernel_syr2k.exit
  %malloccall306 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall308 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header392

polly.exiting305:                                 ; preds = %polly.loop_exit434
  tail call void @free(i8* %malloccall306)
  tail call void @free(i8* %malloccall308)
  br label %kernel_syr2k.exit90

polly.loop_header392:                             ; preds = %polly.loop_exit400, %polly.start304
  %indvar1311 = phi i64 [ %indvar.next1312, %polly.loop_exit400 ], [ 0, %polly.start304 ]
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_exit400 ], [ 1, %polly.start304 ]
  %159 = add i64 %indvar1311, 1
  %160 = mul nuw nsw i64 %polly.indvar395, 9600
  %scevgep404 = getelementptr i8, i8* %call, i64 %160
  %min.iters.check1313 = icmp ult i64 %159, 4
  br i1 %min.iters.check1313, label %polly.loop_header398.preheader, label %vector.ph1314

vector.ph1314:                                    ; preds = %polly.loop_header392
  %n.vec1316 = and i64 %159, -4
  br label %vector.body1310

vector.body1310:                                  ; preds = %vector.body1310, %vector.ph1314
  %index1317 = phi i64 [ 0, %vector.ph1314 ], [ %index.next1318, %vector.body1310 ]
  %161 = shl nuw nsw i64 %index1317, 3
  %162 = getelementptr i8, i8* %scevgep404, i64 %161
  %163 = bitcast i8* %162 to <4 x double>*
  %wide.load1321 = load <4 x double>, <4 x double>* %163, align 8, !alias.scope !86, !noalias !88
  %164 = fmul fast <4 x double> %wide.load1321, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %165 = bitcast i8* %162 to <4 x double>*
  store <4 x double> %164, <4 x double>* %165, align 8, !alias.scope !86, !noalias !88
  %index.next1318 = add i64 %index1317, 4
  %166 = icmp eq i64 %index.next1318, %n.vec1316
  br i1 %166, label %middle.block1308, label %vector.body1310, !llvm.loop !93

middle.block1308:                                 ; preds = %vector.body1310
  %cmp.n1320 = icmp eq i64 %159, %n.vec1316
  br i1 %cmp.n1320, label %polly.loop_exit400, label %polly.loop_header398.preheader

polly.loop_header398.preheader:                   ; preds = %polly.loop_header392, %middle.block1308
  %polly.indvar401.ph = phi i64 [ 0, %polly.loop_header392 ], [ %n.vec1316, %middle.block1308 ]
  br label %polly.loop_header398

polly.loop_exit400:                               ; preds = %polly.loop_header398, %middle.block1308
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar_next396, 1200
  %indvar.next1312 = add i64 %indvar1311, 1
  br i1 %exitcond1110.not, label %polly.loop_header408.preheader, label %polly.loop_header392

polly.loop_header408.preheader:                   ; preds = %polly.loop_exit400
  %Packed_MemRef_call1307 = bitcast i8* %malloccall306 to double*
  %Packed_MemRef_call2309 = bitcast i8* %malloccall308 to double*
  br label %polly.loop_header408

polly.loop_header398:                             ; preds = %polly.loop_header398.preheader, %polly.loop_header398
  %polly.indvar401 = phi i64 [ %polly.indvar_next402, %polly.loop_header398 ], [ %polly.indvar401.ph, %polly.loop_header398.preheader ]
  %167 = shl nuw nsw i64 %polly.indvar401, 3
  %scevgep405 = getelementptr i8, i8* %scevgep404, i64 %167
  %scevgep405406 = bitcast i8* %scevgep405 to double*
  %_p_scalar_407 = load double, double* %scevgep405406, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_407, 1.200000e+00
  store double %p_mul.i57, double* %scevgep405406, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar_next402, %polly.indvar395
  br i1 %exitcond1109.not, label %polly.loop_exit400, label %polly.loop_header398, !llvm.loop !94

polly.loop_header408:                             ; preds = %polly.loop_header408.preheader, %polly.loop_exit434
  %indvars.iv1099 = phi i64 [ 0, %polly.loop_header408.preheader ], [ %indvars.iv.next1100, %polly.loop_exit434 ]
  %indvars.iv1094 = phi i64 [ 4, %polly.loop_header408.preheader ], [ %indvars.iv.next1095, %polly.loop_exit434 ]
  %indvars.iv1092 = phi i64 [ 0, %polly.loop_header408.preheader ], [ %indvars.iv.next1093, %polly.loop_exit434 ]
  %indvars.iv1085 = phi i64 [ 1200, %polly.loop_header408.preheader ], [ %indvars.iv.next1086, %polly.loop_exit434 ]
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header408.preheader ], [ %polly.indvar_next412, %polly.loop_exit434 ]
  %168 = mul nsw i64 %polly.indvar411, -8
  %169 = shl nuw nsw i64 %polly.indvar411, 1
  %170 = add nuw i64 %169, 4
  %171 = udiv i64 %170, 5
  %172 = mul nuw nsw i64 %171, 20
  %173 = add i64 %168, %172
  %174 = shl nuw nsw i64 %polly.indvar411, 3
  %175 = sub nsw i64 %174, %172
  %176 = udiv i64 %indvars.iv1094, 5
  %177 = mul nuw nsw i64 %176, 20
  %178 = add i64 %indvars.iv1092, %177
  %179 = sub nsw i64 %indvars.iv1099, %177
  %180 = shl nsw i64 %polly.indvar411, 5
  br label %polly.loop_header414

polly.loop_exit416:                               ; preds = %polly.loop_exit422
  %181 = mul nsw i64 %polly.indvar411, -32
  %182 = shl nuw nsw i64 %polly.indvar411, 1
  %183 = add nuw nsw i64 %182, 4
  %pexp.p_div_q430 = udiv i64 %183, 5
  %184 = sub nsw i64 %182, %pexp.p_div_q430
  %polly.loop_guard435 = icmp slt i64 %184, 60
  br i1 %polly.loop_guard435, label %polly.loop_header432, label %polly.loop_exit434

polly.loop_exit434:                               ; preds = %polly.loop_exit474, %polly.loop_exit416
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %indvars.iv.next1086 = add nsw i64 %indvars.iv1085, -32
  %indvars.iv.next1093 = add nsw i64 %indvars.iv1092, -8
  %indvars.iv.next1095 = add nuw nsw i64 %indvars.iv1094, 2
  %indvars.iv.next1100 = add nuw nsw i64 %indvars.iv1099, 8
  %exitcond1108.not = icmp eq i64 %polly.indvar_next412, 38
  br i1 %exitcond1108.not, label %polly.exiting305, label %polly.loop_header408

polly.loop_header414:                             ; preds = %polly.loop_exit422, %polly.loop_header408
  %polly.indvar417 = phi i64 [ 0, %polly.loop_header408 ], [ %polly.indvar_next418, %polly.loop_exit422 ]
  %polly.access.mul.Packed_MemRef_call2309 = mul nuw nsw i64 %polly.indvar417, 1200
  br label %polly.loop_header420

polly.loop_exit422:                               ; preds = %polly.loop_header420
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next418, 1000
  br i1 %exitcond1088.not, label %polly.loop_exit416, label %polly.loop_header414

polly.loop_header420:                             ; preds = %polly.loop_header420, %polly.loop_header414
  %polly.indvar423 = phi i64 [ 0, %polly.loop_header414 ], [ %polly.indvar_next424, %polly.loop_header420 ]
  %185 = add nuw nsw i64 %polly.indvar423, %180
  %polly.access.mul.call2427 = mul nuw nsw i64 %185, 1000
  %polly.access.add.call2428 = add nuw nsw i64 %polly.access.mul.call2427, %polly.indvar417
  %polly.access.call2429 = getelementptr double, double* %polly.access.cast.call2738, i64 %polly.access.add.call2428
  %polly.access.call2429.load = load double, double* %polly.access.call2429, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2309 = add nuw nsw i64 %polly.indvar423, %polly.access.mul.Packed_MemRef_call2309
  %polly.access.Packed_MemRef_call2309 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call2309
  store double %polly.access.call2429.load, double* %polly.access.Packed_MemRef_call2309, align 8
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar_next424, %indvars.iv1085
  br i1 %exitcond1087.not, label %polly.loop_exit422, label %polly.loop_header420

polly.loop_header432:                             ; preds = %polly.loop_exit416, %polly.loop_exit474
  %indvar1325 = phi i64 [ %indvar.next1326, %polly.loop_exit474 ], [ 0, %polly.loop_exit416 ]
  %indvars.iv1101 = phi i64 [ %indvars.iv.next1102, %polly.loop_exit474 ], [ %179, %polly.loop_exit416 ]
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %polly.loop_exit474 ], [ %178, %polly.loop_exit416 ]
  %polly.indvar436 = phi i64 [ %polly.indvar_next437, %polly.loop_exit474 ], [ %184, %polly.loop_exit416 ]
  %186 = mul nsw i64 %indvar1325, -20
  %187 = add i64 %173, %186
  %smax1327 = call i64 @llvm.smax.i64(i64 %187, i64 0)
  %188 = mul nuw nsw i64 %indvar1325, 20
  %189 = add i64 %175, %188
  %190 = add i64 %smax1327, %189
  %smax1098 = call i64 @llvm.smax.i64(i64 %indvars.iv1096, i64 0)
  %191 = add i64 %smax1098, %indvars.iv1101
  %192 = mul nsw i64 %polly.indvar436, 20
  %193 = add nsw i64 %192, %181
  %194 = add nsw i64 %193, -1
  %.inv930 = icmp sgt i64 %193, 31
  %195 = select i1 %.inv930, i64 31, i64 %194
  %polly.loop_guard449 = icmp sgt i64 %195, -1
  %196 = icmp sgt i64 %193, 0
  %197 = select i1 %196, i64 %193, i64 0
  %198 = add nsw i64 %193, 19
  %polly.loop_guard461.not = icmp sgt i64 %197, %198
  br i1 %polly.loop_guard449, label %polly.loop_header439.us, label %polly.loop_header432.split

polly.loop_header439.us:                          ; preds = %polly.loop_header432, %polly.loop_exit460.us
  %polly.indvar442.us = phi i64 [ %polly.indvar_next443.us, %polly.loop_exit460.us ], [ 0, %polly.loop_header432 ]
  %polly.access.mul.Packed_MemRef_call1307.us = mul nuw nsw i64 %polly.indvar442.us, 1200
  br label %polly.loop_header446.us

polly.loop_header446.us:                          ; preds = %polly.loop_header439.us, %polly.loop_header446.us
  %polly.indvar450.us = phi i64 [ %polly.indvar_next451.us, %polly.loop_header446.us ], [ 0, %polly.loop_header439.us ]
  %199 = add nuw nsw i64 %polly.indvar450.us, %180
  %polly.access.mul.call1454.us = mul nuw nsw i64 %199, 1000
  %polly.access.add.call1455.us = add nuw nsw i64 %polly.access.mul.call1454.us, %polly.indvar442.us
  %polly.access.call1456.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1455.us
  %polly.access.call1456.load.us = load double, double* %polly.access.call1456.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1307.us = add nuw nsw i64 %polly.indvar450.us, %polly.access.mul.Packed_MemRef_call1307.us
  %polly.access.Packed_MemRef_call1307.us = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307.us
  store double %polly.access.call1456.load.us, double* %polly.access.Packed_MemRef_call1307.us, align 8
  %polly.indvar_next451.us = add nuw i64 %polly.indvar450.us, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar450.us, %195
  br i1 %exitcond1090.not, label %polly.loop_exit448.loopexit.us, label %polly.loop_header446.us

polly.loop_header458.us:                          ; preds = %polly.loop_exit448.loopexit.us, %polly.loop_header458.us
  %polly.indvar462.us = phi i64 [ %polly.indvar_next463.us, %polly.loop_header458.us ], [ %197, %polly.loop_exit448.loopexit.us ]
  %200 = add nuw nsw i64 %polly.indvar462.us, %180
  %polly.access.mul.call1466.us = mul nsw i64 %200, 1000
  %polly.access.add.call1467.us = add nuw nsw i64 %polly.access.mul.call1466.us, %polly.indvar442.us
  %polly.access.call1468.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1467.us
  %polly.access.call1468.load.us = load double, double* %polly.access.call1468.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1307470.us = add nuw nsw i64 %polly.indvar462.us, %polly.access.mul.Packed_MemRef_call1307.us
  %polly.access.Packed_MemRef_call1307471.us = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307470.us
  store double %polly.access.call1468.load.us, double* %polly.access.Packed_MemRef_call1307471.us, align 8
  %polly.indvar_next463.us = add nuw nsw i64 %polly.indvar462.us, 1
  %polly.loop_cond464.not.not.us = icmp slt i64 %polly.indvar462.us, %198
  br i1 %polly.loop_cond464.not.not.us, label %polly.loop_header458.us, label %polly.loop_exit460.us

polly.loop_exit460.us:                            ; preds = %polly.loop_header458.us, %polly.loop_exit448.loopexit.us
  %polly.indvar_next443.us = add nuw nsw i64 %polly.indvar442.us, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar_next443.us, 1000
  br i1 %exitcond1091.not, label %polly.loop_header472.preheader, label %polly.loop_header439.us

polly.loop_exit448.loopexit.us:                   ; preds = %polly.loop_header446.us
  br i1 %polly.loop_guard461.not, label %polly.loop_exit460.us, label %polly.loop_header458.us

polly.loop_header432.split:                       ; preds = %polly.loop_header432
  br i1 %polly.loop_guard461.not, label %polly.loop_header472.preheader, label %polly.loop_header439

polly.loop_exit474:                               ; preds = %polly.loop_exit481.loopexit.us, %polly.loop_header472.preheader
  %polly.indvar_next437 = add nsw i64 %polly.indvar436, 1
  %polly.loop_cond438 = icmp slt i64 %polly.indvar436, 59
  %indvars.iv.next1097 = add i64 %indvars.iv1096, -20
  %indvars.iv.next1102 = add i64 %indvars.iv1101, 20
  %indvar.next1326 = add i64 %indvar1325, 1
  br i1 %polly.loop_cond438, label %polly.loop_header432, label %polly.loop_exit434

polly.loop_header439:                             ; preds = %polly.loop_header432.split, %polly.loop_exit460
  %polly.indvar442 = phi i64 [ %polly.indvar_next443, %polly.loop_exit460 ], [ 0, %polly.loop_header432.split ]
  %polly.access.mul.Packed_MemRef_call1307469 = mul nuw nsw i64 %polly.indvar442, 1200
  br label %polly.loop_header458

polly.loop_exit460:                               ; preds = %polly.loop_header458
  %polly.indvar_next443 = add nuw nsw i64 %polly.indvar442, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next443, 1000
  br i1 %exitcond1089.not, label %polly.loop_header472.preheader, label %polly.loop_header439

polly.loop_header472.preheader:                   ; preds = %polly.loop_exit460, %polly.loop_exit460.us, %polly.loop_header432.split
  %201 = sub nsw i64 %180, %192
  %202 = icmp sgt i64 %201, 0
  %203 = select i1 %202, i64 %201, i64 0
  %polly.loop_guard482 = icmp slt i64 %203, 20
  br i1 %polly.loop_guard482, label %polly.loop_header472.us, label %polly.loop_exit474

polly.loop_header472.us:                          ; preds = %polly.loop_header472.preheader, %polly.loop_exit481.loopexit.us
  %polly.indvar475.us = phi i64 [ %polly.indvar_next476.us, %polly.loop_exit481.loopexit.us ], [ 0, %polly.loop_header472.preheader ]
  %polly.access.mul.Packed_MemRef_call1307494.us = mul nuw nsw i64 %polly.indvar475.us, 1200
  br label %polly.loop_header479.us

polly.loop_header479.us:                          ; preds = %polly.loop_header472.us, %polly.loop_exit489.us
  %indvar1328 = phi i64 [ 0, %polly.loop_header472.us ], [ %indvar.next1329, %polly.loop_exit489.us ]
  %indvars.iv1103 = phi i64 [ %191, %polly.loop_header472.us ], [ %indvars.iv.next1104, %polly.loop_exit489.us ]
  %polly.indvar483.us = phi i64 [ %203, %polly.loop_header472.us ], [ %polly.indvar_next484.us, %polly.loop_exit489.us ]
  %204 = add i64 %190, %indvar1328
  %smin1330 = call i64 @llvm.smin.i64(i64 %204, i64 31)
  %205 = add nsw i64 %smin1330, 1
  %smin1105 = call i64 @llvm.smin.i64(i64 %indvars.iv1103, i64 31)
  %206 = add nsw i64 %polly.indvar483.us, %193
  %polly.loop_guard490.us1172 = icmp sgt i64 %206, -1
  br i1 %polly.loop_guard490.us1172, label %polly.loop_header487.preheader.us, label %polly.loop_exit489.us

polly.loop_header487.us:                          ; preds = %polly.loop_header487.us.preheader, %polly.loop_header487.us
  %polly.indvar491.us = phi i64 [ %polly.indvar_next492.us, %polly.loop_header487.us ], [ %polly.indvar491.us.ph, %polly.loop_header487.us.preheader ]
  %207 = add nuw nsw i64 %polly.indvar491.us, %180
  %polly.access.add.Packed_MemRef_call1307495.us = add nuw nsw i64 %polly.indvar491.us, %polly.access.mul.Packed_MemRef_call1307494.us
  %polly.access.Packed_MemRef_call1307496.us = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307495.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call1307496.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_501.us, %_p_scalar_497.us
  %polly.access.Packed_MemRef_call2309504.us = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call1307495.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call2309504.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_509.us, %_p_scalar_505.us
  %208 = shl i64 %207, 3
  %209 = add i64 %208, %211
  %scevgep510.us = getelementptr i8, i8* %call, i64 %209
  %scevgep510511.us = bitcast i8* %scevgep510.us to double*
  %_p_scalar_512.us = load double, double* %scevgep510511.us, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_512.us
  store double %p_add42.i79.us, double* %scevgep510511.us, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next492.us = add nuw nsw i64 %polly.indvar491.us, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar491.us, %smin1105
  br i1 %exitcond1106.not, label %polly.loop_exit489.us, label %polly.loop_header487.us, !llvm.loop !97

polly.loop_exit489.us:                            ; preds = %polly.loop_header487.us, %middle.block1322, %polly.loop_header479.us
  %polly.indvar_next484.us = add nuw nsw i64 %polly.indvar483.us, 1
  %polly.loop_cond485.us = icmp ult i64 %polly.indvar483.us, 19
  %indvars.iv.next1104 = add i64 %indvars.iv1103, 1
  %indvar.next1329 = add i64 %indvar1328, 1
  br i1 %polly.loop_cond485.us, label %polly.loop_header479.us, label %polly.loop_exit481.loopexit.us

polly.loop_header487.preheader.us:                ; preds = %polly.loop_header479.us
  %210 = add nsw i64 %polly.indvar483.us, %192
  %polly.access.add.Packed_MemRef_call2309499.us = add nsw i64 %206, %polly.access.mul.Packed_MemRef_call1307494.us
  %polly.access.Packed_MemRef_call2309500.us = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call2309499.us
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call2309500.us, align 8
  %polly.access.Packed_MemRef_call1307508.us = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call2309499.us
  %_p_scalar_509.us = load double, double* %polly.access.Packed_MemRef_call1307508.us, align 8
  %211 = mul i64 %210, 9600
  %min.iters.check1331 = icmp ult i64 %205, 4
  br i1 %min.iters.check1331, label %polly.loop_header487.us.preheader, label %vector.ph1332

vector.ph1332:                                    ; preds = %polly.loop_header487.preheader.us
  %n.vec1334 = and i64 %205, -4
  %broadcast.splatinsert1340 = insertelement <4 x double> poison, double %_p_scalar_501.us, i32 0
  %broadcast.splat1341 = shufflevector <4 x double> %broadcast.splatinsert1340, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1343 = insertelement <4 x double> poison, double %_p_scalar_509.us, i32 0
  %broadcast.splat1344 = shufflevector <4 x double> %broadcast.splatinsert1343, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1324

vector.body1324:                                  ; preds = %vector.body1324, %vector.ph1332
  %index1335 = phi i64 [ 0, %vector.ph1332 ], [ %index.next1336, %vector.body1324 ]
  %212 = add nuw nsw i64 %index1335, %180
  %213 = add nuw nsw i64 %index1335, %polly.access.mul.Packed_MemRef_call1307494.us
  %214 = getelementptr double, double* %Packed_MemRef_call1307, i64 %213
  %215 = bitcast double* %214 to <4 x double>*
  %wide.load1339 = load <4 x double>, <4 x double>* %215, align 8
  %216 = fmul fast <4 x double> %broadcast.splat1341, %wide.load1339
  %217 = getelementptr double, double* %Packed_MemRef_call2309, i64 %213
  %218 = bitcast double* %217 to <4 x double>*
  %wide.load1342 = load <4 x double>, <4 x double>* %218, align 8
  %219 = fmul fast <4 x double> %broadcast.splat1344, %wide.load1342
  %220 = shl i64 %212, 3
  %221 = add i64 %220, %211
  %222 = getelementptr i8, i8* %call, i64 %221
  %223 = bitcast i8* %222 to <4 x double>*
  %wide.load1345 = load <4 x double>, <4 x double>* %223, align 8, !alias.scope !86, !noalias !88
  %224 = fadd fast <4 x double> %219, %216
  %225 = fmul fast <4 x double> %224, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %226 = fadd fast <4 x double> %225, %wide.load1345
  %227 = bitcast i8* %222 to <4 x double>*
  store <4 x double> %226, <4 x double>* %227, align 8, !alias.scope !86, !noalias !88
  %index.next1336 = add i64 %index1335, 4
  %228 = icmp eq i64 %index.next1336, %n.vec1334
  br i1 %228, label %middle.block1322, label %vector.body1324, !llvm.loop !98

middle.block1322:                                 ; preds = %vector.body1324
  %cmp.n1338 = icmp eq i64 %205, %n.vec1334
  br i1 %cmp.n1338, label %polly.loop_exit489.us, label %polly.loop_header487.us.preheader

polly.loop_header487.us.preheader:                ; preds = %polly.loop_header487.preheader.us, %middle.block1322
  %polly.indvar491.us.ph = phi i64 [ 0, %polly.loop_header487.preheader.us ], [ %n.vec1334, %middle.block1322 ]
  br label %polly.loop_header487.us

polly.loop_exit481.loopexit.us:                   ; preds = %polly.loop_exit489.us
  %polly.indvar_next476.us = add nuw nsw i64 %polly.indvar475.us, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next476.us, 1000
  br i1 %exitcond1107.not, label %polly.loop_exit474, label %polly.loop_header472.us

polly.loop_header458:                             ; preds = %polly.loop_header439, %polly.loop_header458
  %polly.indvar462 = phi i64 [ %polly.indvar_next463, %polly.loop_header458 ], [ %197, %polly.loop_header439 ]
  %229 = add nuw nsw i64 %polly.indvar462, %180
  %polly.access.mul.call1466 = mul nsw i64 %229, 1000
  %polly.access.add.call1467 = add nuw nsw i64 %polly.access.mul.call1466, %polly.indvar442
  %polly.access.call1468 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1467
  %polly.access.call1468.load = load double, double* %polly.access.call1468, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1307470 = add nuw nsw i64 %polly.indvar462, %polly.access.mul.Packed_MemRef_call1307469
  %polly.access.Packed_MemRef_call1307471 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307470
  store double %polly.access.call1468.load, double* %polly.access.Packed_MemRef_call1307471, align 8
  %polly.indvar_next463 = add nuw nsw i64 %polly.indvar462, 1
  %polly.loop_cond464.not.not = icmp slt i64 %polly.indvar462, %198
  br i1 %polly.loop_cond464.not.not, label %polly.loop_header458, label %polly.loop_exit460

polly.start515:                                   ; preds = %init_array.exit
  %malloccall517 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall519 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header603

polly.exiting516:                                 ; preds = %polly.loop_exit645
  tail call void @free(i8* %malloccall517)
  tail call void @free(i8* %malloccall519)
  br label %kernel_syr2k.exit

polly.loop_header603:                             ; preds = %polly.loop_exit611, %polly.start515
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit611 ], [ 0, %polly.start515 ]
  %polly.indvar606 = phi i64 [ %polly.indvar_next607, %polly.loop_exit611 ], [ 1, %polly.start515 ]
  %230 = add i64 %indvar, 1
  %231 = mul nuw nsw i64 %polly.indvar606, 9600
  %scevgep615 = getelementptr i8, i8* %call, i64 %231
  %min.iters.check1263 = icmp ult i64 %230, 4
  br i1 %min.iters.check1263, label %polly.loop_header609.preheader, label %vector.ph1264

vector.ph1264:                                    ; preds = %polly.loop_header603
  %n.vec1266 = and i64 %230, -4
  br label %vector.body1262

vector.body1262:                                  ; preds = %vector.body1262, %vector.ph1264
  %index1267 = phi i64 [ 0, %vector.ph1264 ], [ %index.next1268, %vector.body1262 ]
  %232 = shl nuw nsw i64 %index1267, 3
  %233 = getelementptr i8, i8* %scevgep615, i64 %232
  %234 = bitcast i8* %233 to <4 x double>*
  %wide.load1271 = load <4 x double>, <4 x double>* %234, align 8, !alias.scope !99, !noalias !101
  %235 = fmul fast <4 x double> %wide.load1271, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %236 = bitcast i8* %233 to <4 x double>*
  store <4 x double> %235, <4 x double>* %236, align 8, !alias.scope !99, !noalias !101
  %index.next1268 = add i64 %index1267, 4
  %237 = icmp eq i64 %index.next1268, %n.vec1266
  br i1 %237, label %middle.block1260, label %vector.body1262, !llvm.loop !106

middle.block1260:                                 ; preds = %vector.body1262
  %cmp.n1270 = icmp eq i64 %230, %n.vec1266
  br i1 %cmp.n1270, label %polly.loop_exit611, label %polly.loop_header609.preheader

polly.loop_header609.preheader:                   ; preds = %polly.loop_header603, %middle.block1260
  %polly.indvar612.ph = phi i64 [ 0, %polly.loop_header603 ], [ %n.vec1266, %middle.block1260 ]
  br label %polly.loop_header609

polly.loop_exit611:                               ; preds = %polly.loop_header609, %middle.block1260
  %polly.indvar_next607 = add nuw nsw i64 %polly.indvar606, 1
  %exitcond1136.not = icmp eq i64 %polly.indvar_next607, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1136.not, label %polly.loop_header619.preheader, label %polly.loop_header603

polly.loop_header619.preheader:                   ; preds = %polly.loop_exit611
  %Packed_MemRef_call1518 = bitcast i8* %malloccall517 to double*
  %Packed_MemRef_call2520 = bitcast i8* %malloccall519 to double*
  br label %polly.loop_header619

polly.loop_header609:                             ; preds = %polly.loop_header609.preheader, %polly.loop_header609
  %polly.indvar612 = phi i64 [ %polly.indvar_next613, %polly.loop_header609 ], [ %polly.indvar612.ph, %polly.loop_header609.preheader ]
  %238 = shl nuw nsw i64 %polly.indvar612, 3
  %scevgep616 = getelementptr i8, i8* %scevgep615, i64 %238
  %scevgep616617 = bitcast i8* %scevgep616 to double*
  %_p_scalar_618 = load double, double* %scevgep616617, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_618, 1.200000e+00
  store double %p_mul.i, double* %scevgep616617, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next613 = add nuw nsw i64 %polly.indvar612, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar_next613, %polly.indvar606
  br i1 %exitcond1135.not, label %polly.loop_exit611, label %polly.loop_header609, !llvm.loop !107

polly.loop_header619:                             ; preds = %polly.loop_header619.preheader, %polly.loop_exit645
  %indvars.iv1125 = phi i64 [ 0, %polly.loop_header619.preheader ], [ %indvars.iv.next1126, %polly.loop_exit645 ]
  %indvars.iv1120 = phi i64 [ 4, %polly.loop_header619.preheader ], [ %indvars.iv.next1121, %polly.loop_exit645 ]
  %indvars.iv1118 = phi i64 [ 0, %polly.loop_header619.preheader ], [ %indvars.iv.next1119, %polly.loop_exit645 ]
  %indvars.iv1111 = phi i64 [ 1200, %polly.loop_header619.preheader ], [ %indvars.iv.next1112, %polly.loop_exit645 ]
  %polly.indvar622 = phi i64 [ 0, %polly.loop_header619.preheader ], [ %polly.indvar_next623, %polly.loop_exit645 ]
  %239 = mul nsw i64 %polly.indvar622, -8
  %240 = shl nuw nsw i64 %polly.indvar622, 1
  %241 = add nuw i64 %240, 4
  %242 = udiv i64 %241, 5
  %243 = mul nuw nsw i64 %242, 20
  %244 = add i64 %239, %243
  %245 = shl nuw nsw i64 %polly.indvar622, 3
  %246 = sub nsw i64 %245, %243
  %247 = udiv i64 %indvars.iv1120, 5
  %248 = mul nuw nsw i64 %247, 20
  %249 = add i64 %indvars.iv1118, %248
  %250 = sub nsw i64 %indvars.iv1125, %248
  %251 = shl nsw i64 %polly.indvar622, 5
  br label %polly.loop_header625

polly.loop_exit627:                               ; preds = %polly.loop_exit633
  %252 = mul nsw i64 %polly.indvar622, -32
  %253 = shl nuw nsw i64 %polly.indvar622, 1
  %254 = add nuw nsw i64 %253, 4
  %pexp.p_div_q641 = udiv i64 %254, 5
  %255 = sub nsw i64 %253, %pexp.p_div_q641
  %polly.loop_guard646 = icmp slt i64 %255, 60
  br i1 %polly.loop_guard646, label %polly.loop_header643, label %polly.loop_exit645

polly.loop_exit645:                               ; preds = %polly.loop_exit685, %polly.loop_exit627
  %polly.indvar_next623 = add nuw nsw i64 %polly.indvar622, 1
  %indvars.iv.next1112 = add nsw i64 %indvars.iv1111, -32
  %indvars.iv.next1119 = add nsw i64 %indvars.iv1118, -8
  %indvars.iv.next1121 = add nuw nsw i64 %indvars.iv1120, 2
  %indvars.iv.next1126 = add nuw nsw i64 %indvars.iv1125, 8
  %exitcond1134.not = icmp eq i64 %polly.indvar_next623, 38
  br i1 %exitcond1134.not, label %polly.exiting516, label %polly.loop_header619

polly.loop_header625:                             ; preds = %polly.loop_exit633, %polly.loop_header619
  %polly.indvar628 = phi i64 [ 0, %polly.loop_header619 ], [ %polly.indvar_next629, %polly.loop_exit633 ]
  %polly.access.mul.Packed_MemRef_call2520 = mul nuw nsw i64 %polly.indvar628, 1200
  br label %polly.loop_header631

polly.loop_exit633:                               ; preds = %polly.loop_header631
  %polly.indvar_next629 = add nuw nsw i64 %polly.indvar628, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar_next629, 1000
  br i1 %exitcond1114.not, label %polly.loop_exit627, label %polly.loop_header625

polly.loop_header631:                             ; preds = %polly.loop_header631, %polly.loop_header625
  %polly.indvar634 = phi i64 [ 0, %polly.loop_header625 ], [ %polly.indvar_next635, %polly.loop_header631 ]
  %256 = add nuw nsw i64 %polly.indvar634, %251
  %polly.access.mul.call2638 = mul nuw nsw i64 %256, 1000
  %polly.access.add.call2639 = add nuw nsw i64 %polly.access.mul.call2638, %polly.indvar628
  %polly.access.call2640 = getelementptr double, double* %polly.access.cast.call2738, i64 %polly.access.add.call2639
  %polly.access.call2640.load = load double, double* %polly.access.call2640, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2520 = add nuw nsw i64 %polly.indvar634, %polly.access.mul.Packed_MemRef_call2520
  %polly.access.Packed_MemRef_call2520 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520
  store double %polly.access.call2640.load, double* %polly.access.Packed_MemRef_call2520, align 8
  %polly.indvar_next635 = add nuw nsw i64 %polly.indvar634, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar_next635, %indvars.iv1111
  br i1 %exitcond1113.not, label %polly.loop_exit633, label %polly.loop_header631

polly.loop_header643:                             ; preds = %polly.loop_exit627, %polly.loop_exit685
  %indvar1275 = phi i64 [ %indvar.next1276, %polly.loop_exit685 ], [ 0, %polly.loop_exit627 ]
  %indvars.iv1127 = phi i64 [ %indvars.iv.next1128, %polly.loop_exit685 ], [ %250, %polly.loop_exit627 ]
  %indvars.iv1122 = phi i64 [ %indvars.iv.next1123, %polly.loop_exit685 ], [ %249, %polly.loop_exit627 ]
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit685 ], [ %255, %polly.loop_exit627 ]
  %257 = mul nsw i64 %indvar1275, -20
  %258 = add i64 %244, %257
  %smax1277 = call i64 @llvm.smax.i64(i64 %258, i64 0)
  %259 = mul nuw nsw i64 %indvar1275, 20
  %260 = add i64 %246, %259
  %261 = add i64 %smax1277, %260
  %smax1124 = call i64 @llvm.smax.i64(i64 %indvars.iv1122, i64 0)
  %262 = add i64 %smax1124, %indvars.iv1127
  %263 = mul nsw i64 %polly.indvar647, 20
  %264 = add nsw i64 %263, %252
  %265 = add nsw i64 %264, -1
  %.inv931 = icmp sgt i64 %264, 31
  %266 = select i1 %.inv931, i64 31, i64 %265
  %polly.loop_guard660 = icmp sgt i64 %266, -1
  %267 = icmp sgt i64 %264, 0
  %268 = select i1 %267, i64 %264, i64 0
  %269 = add nsw i64 %264, 19
  %polly.loop_guard672.not = icmp sgt i64 %268, %269
  br i1 %polly.loop_guard660, label %polly.loop_header650.us, label %polly.loop_header643.split

polly.loop_header650.us:                          ; preds = %polly.loop_header643, %polly.loop_exit671.us
  %polly.indvar653.us = phi i64 [ %polly.indvar_next654.us, %polly.loop_exit671.us ], [ 0, %polly.loop_header643 ]
  %polly.access.mul.Packed_MemRef_call1518.us = mul nuw nsw i64 %polly.indvar653.us, 1200
  br label %polly.loop_header657.us

polly.loop_header657.us:                          ; preds = %polly.loop_header650.us, %polly.loop_header657.us
  %polly.indvar661.us = phi i64 [ %polly.indvar_next662.us, %polly.loop_header657.us ], [ 0, %polly.loop_header650.us ]
  %270 = add nuw nsw i64 %polly.indvar661.us, %251
  %polly.access.mul.call1665.us = mul nuw nsw i64 %270, 1000
  %polly.access.add.call1666.us = add nuw nsw i64 %polly.access.mul.call1665.us, %polly.indvar653.us
  %polly.access.call1667.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1666.us
  %polly.access.call1667.load.us = load double, double* %polly.access.call1667.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1518.us = add nuw nsw i64 %polly.indvar661.us, %polly.access.mul.Packed_MemRef_call1518.us
  %polly.access.Packed_MemRef_call1518.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518.us
  store double %polly.access.call1667.load.us, double* %polly.access.Packed_MemRef_call1518.us, align 8
  %polly.indvar_next662.us = add nuw i64 %polly.indvar661.us, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar661.us, %266
  br i1 %exitcond1116.not, label %polly.loop_exit659.loopexit.us, label %polly.loop_header657.us

polly.loop_header669.us:                          ; preds = %polly.loop_exit659.loopexit.us, %polly.loop_header669.us
  %polly.indvar673.us = phi i64 [ %polly.indvar_next674.us, %polly.loop_header669.us ], [ %268, %polly.loop_exit659.loopexit.us ]
  %271 = add nuw nsw i64 %polly.indvar673.us, %251
  %polly.access.mul.call1677.us = mul nsw i64 %271, 1000
  %polly.access.add.call1678.us = add nuw nsw i64 %polly.access.mul.call1677.us, %polly.indvar653.us
  %polly.access.call1679.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1678.us
  %polly.access.call1679.load.us = load double, double* %polly.access.call1679.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1518681.us = add nuw nsw i64 %polly.indvar673.us, %polly.access.mul.Packed_MemRef_call1518.us
  %polly.access.Packed_MemRef_call1518682.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518681.us
  store double %polly.access.call1679.load.us, double* %polly.access.Packed_MemRef_call1518682.us, align 8
  %polly.indvar_next674.us = add nuw nsw i64 %polly.indvar673.us, 1
  %polly.loop_cond675.not.not.us = icmp slt i64 %polly.indvar673.us, %269
  br i1 %polly.loop_cond675.not.not.us, label %polly.loop_header669.us, label %polly.loop_exit671.us

polly.loop_exit671.us:                            ; preds = %polly.loop_header669.us, %polly.loop_exit659.loopexit.us
  %polly.indvar_next654.us = add nuw nsw i64 %polly.indvar653.us, 1
  %exitcond1117.not = icmp eq i64 %polly.indvar_next654.us, 1000
  br i1 %exitcond1117.not, label %polly.loop_header683.preheader, label %polly.loop_header650.us

polly.loop_exit659.loopexit.us:                   ; preds = %polly.loop_header657.us
  br i1 %polly.loop_guard672.not, label %polly.loop_exit671.us, label %polly.loop_header669.us

polly.loop_header643.split:                       ; preds = %polly.loop_header643
  br i1 %polly.loop_guard672.not, label %polly.loop_header683.preheader, label %polly.loop_header650

polly.loop_exit685:                               ; preds = %polly.loop_exit692.loopexit.us, %polly.loop_header683.preheader
  %polly.indvar_next648 = add nsw i64 %polly.indvar647, 1
  %polly.loop_cond649 = icmp slt i64 %polly.indvar647, 59
  %indvars.iv.next1123 = add i64 %indvars.iv1122, -20
  %indvars.iv.next1128 = add i64 %indvars.iv1127, 20
  %indvar.next1276 = add i64 %indvar1275, 1
  br i1 %polly.loop_cond649, label %polly.loop_header643, label %polly.loop_exit645

polly.loop_header650:                             ; preds = %polly.loop_header643.split, %polly.loop_exit671
  %polly.indvar653 = phi i64 [ %polly.indvar_next654, %polly.loop_exit671 ], [ 0, %polly.loop_header643.split ]
  %polly.access.mul.Packed_MemRef_call1518680 = mul nuw nsw i64 %polly.indvar653, 1200
  br label %polly.loop_header669

polly.loop_exit671:                               ; preds = %polly.loop_header669
  %polly.indvar_next654 = add nuw nsw i64 %polly.indvar653, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar_next654, 1000
  br i1 %exitcond1115.not, label %polly.loop_header683.preheader, label %polly.loop_header650

polly.loop_header683.preheader:                   ; preds = %polly.loop_exit671, %polly.loop_exit671.us, %polly.loop_header643.split
  %272 = sub nsw i64 %251, %263
  %273 = icmp sgt i64 %272, 0
  %274 = select i1 %273, i64 %272, i64 0
  %polly.loop_guard693 = icmp slt i64 %274, 20
  br i1 %polly.loop_guard693, label %polly.loop_header683.us, label %polly.loop_exit685

polly.loop_header683.us:                          ; preds = %polly.loop_header683.preheader, %polly.loop_exit692.loopexit.us
  %polly.indvar686.us = phi i64 [ %polly.indvar_next687.us, %polly.loop_exit692.loopexit.us ], [ 0, %polly.loop_header683.preheader ]
  %polly.access.mul.Packed_MemRef_call1518705.us = mul nuw nsw i64 %polly.indvar686.us, 1200
  br label %polly.loop_header690.us

polly.loop_header690.us:                          ; preds = %polly.loop_header683.us, %polly.loop_exit700.us
  %indvar1278 = phi i64 [ 0, %polly.loop_header683.us ], [ %indvar.next1279, %polly.loop_exit700.us ]
  %indvars.iv1129 = phi i64 [ %262, %polly.loop_header683.us ], [ %indvars.iv.next1130, %polly.loop_exit700.us ]
  %polly.indvar694.us = phi i64 [ %274, %polly.loop_header683.us ], [ %polly.indvar_next695.us, %polly.loop_exit700.us ]
  %275 = add i64 %261, %indvar1278
  %smin1280 = call i64 @llvm.smin.i64(i64 %275, i64 31)
  %276 = add nsw i64 %smin1280, 1
  %smin1131 = call i64 @llvm.smin.i64(i64 %indvars.iv1129, i64 31)
  %277 = add nsw i64 %polly.indvar694.us, %264
  %polly.loop_guard701.us1173 = icmp sgt i64 %277, -1
  br i1 %polly.loop_guard701.us1173, label %polly.loop_header698.preheader.us, label %polly.loop_exit700.us

polly.loop_header698.us:                          ; preds = %polly.loop_header698.us.preheader, %polly.loop_header698.us
  %polly.indvar702.us = phi i64 [ %polly.indvar_next703.us, %polly.loop_header698.us ], [ %polly.indvar702.us.ph, %polly.loop_header698.us.preheader ]
  %278 = add nuw nsw i64 %polly.indvar702.us, %251
  %polly.access.add.Packed_MemRef_call1518706.us = add nuw nsw i64 %polly.indvar702.us, %polly.access.mul.Packed_MemRef_call1518705.us
  %polly.access.Packed_MemRef_call1518707.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518706.us
  %_p_scalar_708.us = load double, double* %polly.access.Packed_MemRef_call1518707.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_712.us, %_p_scalar_708.us
  %polly.access.Packed_MemRef_call2520715.us = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call1518706.us
  %_p_scalar_716.us = load double, double* %polly.access.Packed_MemRef_call2520715.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_720.us, %_p_scalar_716.us
  %279 = shl i64 %278, 3
  %280 = add i64 %279, %282
  %scevgep721.us = getelementptr i8, i8* %call, i64 %280
  %scevgep721722.us = bitcast i8* %scevgep721.us to double*
  %_p_scalar_723.us = load double, double* %scevgep721722.us, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_723.us
  store double %p_add42.i.us, double* %scevgep721722.us, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next703.us = add nuw nsw i64 %polly.indvar702.us, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar702.us, %smin1131
  br i1 %exitcond1132.not, label %polly.loop_exit700.us, label %polly.loop_header698.us, !llvm.loop !110

polly.loop_exit700.us:                            ; preds = %polly.loop_header698.us, %middle.block1272, %polly.loop_header690.us
  %polly.indvar_next695.us = add nuw nsw i64 %polly.indvar694.us, 1
  %polly.loop_cond696.us = icmp ult i64 %polly.indvar694.us, 19
  %indvars.iv.next1130 = add i64 %indvars.iv1129, 1
  %indvar.next1279 = add i64 %indvar1278, 1
  br i1 %polly.loop_cond696.us, label %polly.loop_header690.us, label %polly.loop_exit692.loopexit.us

polly.loop_header698.preheader.us:                ; preds = %polly.loop_header690.us
  %281 = add nsw i64 %polly.indvar694.us, %263
  %polly.access.add.Packed_MemRef_call2520710.us = add nsw i64 %277, %polly.access.mul.Packed_MemRef_call1518705.us
  %polly.access.Packed_MemRef_call2520711.us = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520710.us
  %_p_scalar_712.us = load double, double* %polly.access.Packed_MemRef_call2520711.us, align 8
  %polly.access.Packed_MemRef_call1518719.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call2520710.us
  %_p_scalar_720.us = load double, double* %polly.access.Packed_MemRef_call1518719.us, align 8
  %282 = mul i64 %281, 9600
  %min.iters.check1281 = icmp ult i64 %276, 4
  br i1 %min.iters.check1281, label %polly.loop_header698.us.preheader, label %vector.ph1282

vector.ph1282:                                    ; preds = %polly.loop_header698.preheader.us
  %n.vec1284 = and i64 %276, -4
  %broadcast.splatinsert1290 = insertelement <4 x double> poison, double %_p_scalar_712.us, i32 0
  %broadcast.splat1291 = shufflevector <4 x double> %broadcast.splatinsert1290, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1293 = insertelement <4 x double> poison, double %_p_scalar_720.us, i32 0
  %broadcast.splat1294 = shufflevector <4 x double> %broadcast.splatinsert1293, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1274

vector.body1274:                                  ; preds = %vector.body1274, %vector.ph1282
  %index1285 = phi i64 [ 0, %vector.ph1282 ], [ %index.next1286, %vector.body1274 ]
  %283 = add nuw nsw i64 %index1285, %251
  %284 = add nuw nsw i64 %index1285, %polly.access.mul.Packed_MemRef_call1518705.us
  %285 = getelementptr double, double* %Packed_MemRef_call1518, i64 %284
  %286 = bitcast double* %285 to <4 x double>*
  %wide.load1289 = load <4 x double>, <4 x double>* %286, align 8
  %287 = fmul fast <4 x double> %broadcast.splat1291, %wide.load1289
  %288 = getelementptr double, double* %Packed_MemRef_call2520, i64 %284
  %289 = bitcast double* %288 to <4 x double>*
  %wide.load1292 = load <4 x double>, <4 x double>* %289, align 8
  %290 = fmul fast <4 x double> %broadcast.splat1294, %wide.load1292
  %291 = shl i64 %283, 3
  %292 = add i64 %291, %282
  %293 = getelementptr i8, i8* %call, i64 %292
  %294 = bitcast i8* %293 to <4 x double>*
  %wide.load1295 = load <4 x double>, <4 x double>* %294, align 8, !alias.scope !99, !noalias !101
  %295 = fadd fast <4 x double> %290, %287
  %296 = fmul fast <4 x double> %295, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %297 = fadd fast <4 x double> %296, %wide.load1295
  %298 = bitcast i8* %293 to <4 x double>*
  store <4 x double> %297, <4 x double>* %298, align 8, !alias.scope !99, !noalias !101
  %index.next1286 = add i64 %index1285, 4
  %299 = icmp eq i64 %index.next1286, %n.vec1284
  br i1 %299, label %middle.block1272, label %vector.body1274, !llvm.loop !111

middle.block1272:                                 ; preds = %vector.body1274
  %cmp.n1288 = icmp eq i64 %276, %n.vec1284
  br i1 %cmp.n1288, label %polly.loop_exit700.us, label %polly.loop_header698.us.preheader

polly.loop_header698.us.preheader:                ; preds = %polly.loop_header698.preheader.us, %middle.block1272
  %polly.indvar702.us.ph = phi i64 [ 0, %polly.loop_header698.preheader.us ], [ %n.vec1284, %middle.block1272 ]
  br label %polly.loop_header698.us

polly.loop_exit692.loopexit.us:                   ; preds = %polly.loop_exit700.us
  %polly.indvar_next687.us = add nuw nsw i64 %polly.indvar686.us, 1
  %exitcond1133.not = icmp eq i64 %polly.indvar_next687.us, 1000
  br i1 %exitcond1133.not, label %polly.loop_exit685, label %polly.loop_header683.us

polly.loop_header669:                             ; preds = %polly.loop_header650, %polly.loop_header669
  %polly.indvar673 = phi i64 [ %polly.indvar_next674, %polly.loop_header669 ], [ %268, %polly.loop_header650 ]
  %300 = add nuw nsw i64 %polly.indvar673, %251
  %polly.access.mul.call1677 = mul nsw i64 %300, 1000
  %polly.access.add.call1678 = add nuw nsw i64 %polly.access.mul.call1677, %polly.indvar653
  %polly.access.call1679 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1678
  %polly.access.call1679.load = load double, double* %polly.access.call1679, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1518681 = add nuw nsw i64 %polly.indvar673, %polly.access.mul.Packed_MemRef_call1518680
  %polly.access.Packed_MemRef_call1518682 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518681
  store double %polly.access.call1679.load, double* %polly.access.Packed_MemRef_call1518682, align 8
  %polly.indvar_next674 = add nuw nsw i64 %polly.indvar673, 1
  %polly.loop_cond675.not.not = icmp slt i64 %polly.indvar673, %269
  br i1 %polly.loop_cond675.not.not, label %polly.loop_header669, label %polly.loop_exit671

polly.loop_header850:                             ; preds = %entry, %polly.loop_exit858
  %indvars.iv1161 = phi i64 [ %indvars.iv.next1162, %polly.loop_exit858 ], [ 0, %entry ]
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_exit858 ], [ 0, %entry ]
  %smin1163 = call i64 @llvm.smin.i64(i64 %indvars.iv1161, i64 -1168)
  %301 = shl nsw i64 %polly.indvar853, 5
  %302 = add nsw i64 %smin1163, 1199
  br label %polly.loop_header856

polly.loop_exit858:                               ; preds = %polly.loop_exit864
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %indvars.iv.next1162 = add nsw i64 %indvars.iv1161, -32
  %exitcond1166.not = icmp eq i64 %polly.indvar_next854, 38
  br i1 %exitcond1166.not, label %polly.loop_header877, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_exit864, %polly.loop_header850
  %indvars.iv1157 = phi i64 [ %indvars.iv.next1158, %polly.loop_exit864 ], [ 0, %polly.loop_header850 ]
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_exit864 ], [ 0, %polly.loop_header850 ]
  %303 = mul nsw i64 %polly.indvar859, -32
  %smin1201 = call i64 @llvm.smin.i64(i64 %303, i64 -1168)
  %304 = add nsw i64 %smin1201, 1200
  %smin1159 = call i64 @llvm.smin.i64(i64 %indvars.iv1157, i64 -1168)
  %305 = shl nsw i64 %polly.indvar859, 5
  %306 = add nsw i64 %smin1159, 1199
  br label %polly.loop_header862

polly.loop_exit864:                               ; preds = %polly.loop_exit870
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %indvars.iv.next1158 = add nsw i64 %indvars.iv1157, -32
  %exitcond1165.not = icmp eq i64 %polly.indvar_next860, 38
  br i1 %exitcond1165.not, label %polly.loop_exit858, label %polly.loop_header856

polly.loop_header862:                             ; preds = %polly.loop_exit870, %polly.loop_header856
  %polly.indvar865 = phi i64 [ 0, %polly.loop_header856 ], [ %polly.indvar_next866, %polly.loop_exit870 ]
  %307 = add nuw nsw i64 %polly.indvar865, %301
  %308 = trunc i64 %307 to i32
  %309 = mul nuw nsw i64 %307, 9600
  %min.iters.check = icmp eq i64 %304, 0
  br i1 %min.iters.check, label %polly.loop_header868, label %vector.ph1202

vector.ph1202:                                    ; preds = %polly.loop_header862
  %broadcast.splatinsert1209 = insertelement <4 x i64> poison, i64 %305, i32 0
  %broadcast.splat1210 = shufflevector <4 x i64> %broadcast.splatinsert1209, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1211 = insertelement <4 x i32> poison, i32 %308, i32 0
  %broadcast.splat1212 = shufflevector <4 x i32> %broadcast.splatinsert1211, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %vector.ph1202
  %index1203 = phi i64 [ 0, %vector.ph1202 ], [ %index.next1204, %vector.body1200 ]
  %vec.ind1207 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1202 ], [ %vec.ind.next1208, %vector.body1200 ]
  %310 = add nuw nsw <4 x i64> %vec.ind1207, %broadcast.splat1210
  %311 = trunc <4 x i64> %310 to <4 x i32>
  %312 = mul <4 x i32> %broadcast.splat1212, %311
  %313 = add <4 x i32> %312, <i32 3, i32 3, i32 3, i32 3>
  %314 = urem <4 x i32> %313, <i32 1200, i32 1200, i32 1200, i32 1200>
  %315 = sitofp <4 x i32> %314 to <4 x double>
  %316 = fmul fast <4 x double> %315, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %317 = extractelement <4 x i64> %310, i32 0
  %318 = shl i64 %317, 3
  %319 = add nuw nsw i64 %318, %309
  %320 = getelementptr i8, i8* %call, i64 %319
  %321 = bitcast i8* %320 to <4 x double>*
  store <4 x double> %316, <4 x double>* %321, align 8, !alias.scope !112, !noalias !114
  %index.next1204 = add i64 %index1203, 4
  %vec.ind.next1208 = add <4 x i64> %vec.ind1207, <i64 4, i64 4, i64 4, i64 4>
  %322 = icmp eq i64 %index.next1204, %304
  br i1 %322, label %polly.loop_exit870, label %vector.body1200, !llvm.loop !117

polly.loop_exit870:                               ; preds = %vector.body1200, %polly.loop_header868
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %exitcond1164.not = icmp eq i64 %polly.indvar865, %302
  br i1 %exitcond1164.not, label %polly.loop_exit864, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_header862, %polly.loop_header868
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_header868 ], [ 0, %polly.loop_header862 ]
  %323 = add nuw nsw i64 %polly.indvar871, %305
  %324 = trunc i64 %323 to i32
  %325 = mul i32 %324, %308
  %326 = add i32 %325, 3
  %327 = urem i32 %326, 1200
  %p_conv31.i = sitofp i32 %327 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %328 = shl i64 %323, 3
  %329 = add nuw nsw i64 %328, %309
  %scevgep874 = getelementptr i8, i8* %call, i64 %329
  %scevgep874875 = bitcast i8* %scevgep874 to double*
  store double %p_div33.i, double* %scevgep874875, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %exitcond1160.not = icmp eq i64 %polly.indvar871, %306
  br i1 %exitcond1160.not, label %polly.loop_exit870, label %polly.loop_header868, !llvm.loop !118

polly.loop_header877:                             ; preds = %polly.loop_exit858, %polly.loop_exit885
  %indvars.iv1151 = phi i64 [ %indvars.iv.next1152, %polly.loop_exit885 ], [ 0, %polly.loop_exit858 ]
  %polly.indvar880 = phi i64 [ %polly.indvar_next881, %polly.loop_exit885 ], [ 0, %polly.loop_exit858 ]
  %smin1153 = call i64 @llvm.smin.i64(i64 %indvars.iv1151, i64 -1168)
  %330 = shl nsw i64 %polly.indvar880, 5
  %331 = add nsw i64 %smin1153, 1199
  br label %polly.loop_header883

polly.loop_exit885:                               ; preds = %polly.loop_exit891
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %indvars.iv.next1152 = add nsw i64 %indvars.iv1151, -32
  %exitcond1156.not = icmp eq i64 %polly.indvar_next881, 38
  br i1 %exitcond1156.not, label %polly.loop_header903, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_exit891, %polly.loop_header877
  %indvars.iv1147 = phi i64 [ %indvars.iv.next1148, %polly.loop_exit891 ], [ 0, %polly.loop_header877 ]
  %polly.indvar886 = phi i64 [ %polly.indvar_next887, %polly.loop_exit891 ], [ 0, %polly.loop_header877 ]
  %332 = mul nsw i64 %polly.indvar886, -32
  %smin1216 = call i64 @llvm.smin.i64(i64 %332, i64 -968)
  %333 = add nsw i64 %smin1216, 1000
  %smin1149 = call i64 @llvm.smin.i64(i64 %indvars.iv1147, i64 -968)
  %334 = shl nsw i64 %polly.indvar886, 5
  %335 = add nsw i64 %smin1149, 999
  br label %polly.loop_header889

polly.loop_exit891:                               ; preds = %polly.loop_exit897
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %indvars.iv.next1148 = add nsw i64 %indvars.iv1147, -32
  %exitcond1155.not = icmp eq i64 %polly.indvar_next887, 32
  br i1 %exitcond1155.not, label %polly.loop_exit885, label %polly.loop_header883

polly.loop_header889:                             ; preds = %polly.loop_exit897, %polly.loop_header883
  %polly.indvar892 = phi i64 [ 0, %polly.loop_header883 ], [ %polly.indvar_next893, %polly.loop_exit897 ]
  %336 = add nuw nsw i64 %polly.indvar892, %330
  %337 = trunc i64 %336 to i32
  %338 = mul nuw nsw i64 %336, 8000
  %min.iters.check1217 = icmp eq i64 %333, 0
  br i1 %min.iters.check1217, label %polly.loop_header895, label %vector.ph1218

vector.ph1218:                                    ; preds = %polly.loop_header889
  %broadcast.splatinsert1227 = insertelement <4 x i64> poison, i64 %334, i32 0
  %broadcast.splat1228 = shufflevector <4 x i64> %broadcast.splatinsert1227, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1229 = insertelement <4 x i32> poison, i32 %337, i32 0
  %broadcast.splat1230 = shufflevector <4 x i32> %broadcast.splatinsert1229, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %vector.ph1218
  %index1221 = phi i64 [ 0, %vector.ph1218 ], [ %index.next1222, %vector.body1215 ]
  %vec.ind1225 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1218 ], [ %vec.ind.next1226, %vector.body1215 ]
  %339 = add nuw nsw <4 x i64> %vec.ind1225, %broadcast.splat1228
  %340 = trunc <4 x i64> %339 to <4 x i32>
  %341 = mul <4 x i32> %broadcast.splat1230, %340
  %342 = add <4 x i32> %341, <i32 2, i32 2, i32 2, i32 2>
  %343 = urem <4 x i32> %342, <i32 1000, i32 1000, i32 1000, i32 1000>
  %344 = sitofp <4 x i32> %343 to <4 x double>
  %345 = fmul fast <4 x double> %344, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %346 = extractelement <4 x i64> %339, i32 0
  %347 = shl i64 %346, 3
  %348 = add nuw nsw i64 %347, %338
  %349 = getelementptr i8, i8* %call2, i64 %348
  %350 = bitcast i8* %349 to <4 x double>*
  store <4 x double> %345, <4 x double>* %350, align 8, !alias.scope !116, !noalias !119
  %index.next1222 = add i64 %index1221, 4
  %vec.ind.next1226 = add <4 x i64> %vec.ind1225, <i64 4, i64 4, i64 4, i64 4>
  %351 = icmp eq i64 %index.next1222, %333
  br i1 %351, label %polly.loop_exit897, label %vector.body1215, !llvm.loop !120

polly.loop_exit897:                               ; preds = %vector.body1215, %polly.loop_header895
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %exitcond1154.not = icmp eq i64 %polly.indvar892, %331
  br i1 %exitcond1154.not, label %polly.loop_exit891, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_header889, %polly.loop_header895
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_header895 ], [ 0, %polly.loop_header889 ]
  %352 = add nuw nsw i64 %polly.indvar898, %334
  %353 = trunc i64 %352 to i32
  %354 = mul i32 %353, %337
  %355 = add i32 %354, 2
  %356 = urem i32 %355, 1000
  %p_conv10.i = sitofp i32 %356 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %357 = shl i64 %352, 3
  %358 = add nuw nsw i64 %357, %338
  %scevgep901 = getelementptr i8, i8* %call2, i64 %358
  %scevgep901902 = bitcast i8* %scevgep901 to double*
  store double %p_div12.i, double* %scevgep901902, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %exitcond1150.not = icmp eq i64 %polly.indvar898, %335
  br i1 %exitcond1150.not, label %polly.loop_exit897, label %polly.loop_header895, !llvm.loop !121

polly.loop_header903:                             ; preds = %polly.loop_exit885, %polly.loop_exit911
  %indvars.iv1141 = phi i64 [ %indvars.iv.next1142, %polly.loop_exit911 ], [ 0, %polly.loop_exit885 ]
  %polly.indvar906 = phi i64 [ %polly.indvar_next907, %polly.loop_exit911 ], [ 0, %polly.loop_exit885 ]
  %smin1143 = call i64 @llvm.smin.i64(i64 %indvars.iv1141, i64 -1168)
  %359 = shl nsw i64 %polly.indvar906, 5
  %360 = add nsw i64 %smin1143, 1199
  br label %polly.loop_header909

polly.loop_exit911:                               ; preds = %polly.loop_exit917
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %indvars.iv.next1142 = add nsw i64 %indvars.iv1141, -32
  %exitcond1146.not = icmp eq i64 %polly.indvar_next907, 38
  br i1 %exitcond1146.not, label %init_array.exit, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_exit917, %polly.loop_header903
  %indvars.iv1137 = phi i64 [ %indvars.iv.next1138, %polly.loop_exit917 ], [ 0, %polly.loop_header903 ]
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_exit917 ], [ 0, %polly.loop_header903 ]
  %361 = mul nsw i64 %polly.indvar912, -32
  %smin1234 = call i64 @llvm.smin.i64(i64 %361, i64 -968)
  %362 = add nsw i64 %smin1234, 1000
  %smin1139 = call i64 @llvm.smin.i64(i64 %indvars.iv1137, i64 -968)
  %363 = shl nsw i64 %polly.indvar912, 5
  %364 = add nsw i64 %smin1139, 999
  br label %polly.loop_header915

polly.loop_exit917:                               ; preds = %polly.loop_exit923
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %indvars.iv.next1138 = add nsw i64 %indvars.iv1137, -32
  %exitcond1145.not = icmp eq i64 %polly.indvar_next913, 32
  br i1 %exitcond1145.not, label %polly.loop_exit911, label %polly.loop_header909

polly.loop_header915:                             ; preds = %polly.loop_exit923, %polly.loop_header909
  %polly.indvar918 = phi i64 [ 0, %polly.loop_header909 ], [ %polly.indvar_next919, %polly.loop_exit923 ]
  %365 = add nuw nsw i64 %polly.indvar918, %359
  %366 = trunc i64 %365 to i32
  %367 = mul nuw nsw i64 %365, 8000
  %min.iters.check1235 = icmp eq i64 %362, 0
  br i1 %min.iters.check1235, label %polly.loop_header921, label %vector.ph1236

vector.ph1236:                                    ; preds = %polly.loop_header915
  %broadcast.splatinsert1245 = insertelement <4 x i64> poison, i64 %363, i32 0
  %broadcast.splat1246 = shufflevector <4 x i64> %broadcast.splatinsert1245, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1247 = insertelement <4 x i32> poison, i32 %366, i32 0
  %broadcast.splat1248 = shufflevector <4 x i32> %broadcast.splatinsert1247, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.body1233, %vector.ph1236
  %index1239 = phi i64 [ 0, %vector.ph1236 ], [ %index.next1240, %vector.body1233 ]
  %vec.ind1243 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1236 ], [ %vec.ind.next1244, %vector.body1233 ]
  %368 = add nuw nsw <4 x i64> %vec.ind1243, %broadcast.splat1246
  %369 = trunc <4 x i64> %368 to <4 x i32>
  %370 = mul <4 x i32> %broadcast.splat1248, %369
  %371 = add <4 x i32> %370, <i32 1, i32 1, i32 1, i32 1>
  %372 = urem <4 x i32> %371, <i32 1200, i32 1200, i32 1200, i32 1200>
  %373 = sitofp <4 x i32> %372 to <4 x double>
  %374 = fmul fast <4 x double> %373, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %375 = extractelement <4 x i64> %368, i32 0
  %376 = shl i64 %375, 3
  %377 = add nuw nsw i64 %376, %367
  %378 = getelementptr i8, i8* %call1, i64 %377
  %379 = bitcast i8* %378 to <4 x double>*
  store <4 x double> %374, <4 x double>* %379, align 8, !alias.scope !115, !noalias !122
  %index.next1240 = add i64 %index1239, 4
  %vec.ind.next1244 = add <4 x i64> %vec.ind1243, <i64 4, i64 4, i64 4, i64 4>
  %380 = icmp eq i64 %index.next1240, %362
  br i1 %380, label %polly.loop_exit923, label %vector.body1233, !llvm.loop !123

polly.loop_exit923:                               ; preds = %vector.body1233, %polly.loop_header921
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %exitcond1144.not = icmp eq i64 %polly.indvar918, %360
  br i1 %exitcond1144.not, label %polly.loop_exit917, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_header915, %polly.loop_header921
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_header921 ], [ 0, %polly.loop_header915 ]
  %381 = add nuw nsw i64 %polly.indvar924, %363
  %382 = trunc i64 %381 to i32
  %383 = mul i32 %382, %366
  %384 = add i32 %383, 1
  %385 = urem i32 %384, 1200
  %p_conv.i = sitofp i32 %385 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %386 = shl i64 %381, 3
  %387 = add nuw nsw i64 %386, %367
  %scevgep928 = getelementptr i8, i8* %call1, i64 %387
  %scevgep928929 = bitcast i8* %scevgep928 to double*
  store double %p_div.i, double* %scevgep928929, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %exitcond1140.not = icmp eq i64 %polly.indvar924, %364
  br i1 %exitcond1140.not, label %polly.loop_exit923, label %polly.loop_header921, !llvm.loop !124
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
!26 = !{!"llvm.loop.tile.size", i32 32}
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
!51 = !{!"llvm.loop.tile.size", i32 20}
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
