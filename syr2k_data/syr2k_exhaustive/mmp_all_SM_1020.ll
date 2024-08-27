; ModuleID = 'syr2k_exhaustive/mmp_all_SM_1020.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_1020.c"
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
  %scevgep1187 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1186 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1185 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1184 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1184, %scevgep1187
  %bound1 = icmp ult i8* %scevgep1186, %scevgep1185
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
  br i1 %exitcond18.not.i, label %vector.ph1191, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1191:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1198 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1199 = shufflevector <4 x i64> %broadcast.splatinsert1198, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1190

vector.body1190:                                  ; preds = %vector.body1190, %vector.ph1191
  %index1192 = phi i64 [ 0, %vector.ph1191 ], [ %index.next1193, %vector.body1190 ]
  %vec.ind1196 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1191 ], [ %vec.ind.next1197, %vector.body1190 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1196, %broadcast.splat1199
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call933, i64 %indvars.iv7.i, i64 %index1192
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1193 = add i64 %index1192, 4
  %vec.ind.next1197 = add <4 x i64> %vec.ind1196, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1193, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1190, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1190
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1191, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit968
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start552, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1253 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1253, label %for.body3.i46.preheader1408, label %vector.ph1254

vector.ph1254:                                    ; preds = %for.body3.i46.preheader
  %n.vec1256 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1252

vector.body1252:                                  ; preds = %vector.body1252, %vector.ph1254
  %index1257 = phi i64 [ 0, %vector.ph1254 ], [ %index.next1258, %vector.body1252 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call933, i64 %indvars.iv21.i, i64 %index1257
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1258 = add i64 %index1257, 4
  %46 = icmp eq i64 %index.next1258, %n.vec1256
  br i1 %46, label %middle.block1250, label %vector.body1252, !llvm.loop !18

middle.block1250:                                 ; preds = %vector.body1252
  %cmp.n1260 = icmp eq i64 %indvars.iv21.i, %n.vec1256
  br i1 %cmp.n1260, label %for.inc6.i, label %for.body3.i46.preheader1408

for.body3.i46.preheader1408:                      ; preds = %for.body3.i46.preheader, %middle.block1250
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1256, %middle.block1250 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1408, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1408 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call933, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1250, %for.cond1.preheader.i45
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !47

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
  %min.iters.check1300 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1300, label %for.body3.i60.preheader1404, label %vector.ph1301

vector.ph1301:                                    ; preds = %for.body3.i60.preheader
  %n.vec1303 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1299

vector.body1299:                                  ; preds = %vector.body1299, %vector.ph1301
  %index1304 = phi i64 [ 0, %vector.ph1301 ], [ %index.next1305, %vector.body1299 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call933, i64 %indvars.iv21.i52, i64 %index1304
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1308 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1308, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1305 = add i64 %index1304, 4
  %57 = icmp eq i64 %index.next1305, %n.vec1303
  br i1 %57, label %middle.block1297, label %vector.body1299, !llvm.loop !64

middle.block1297:                                 ; preds = %vector.body1299
  %cmp.n1307 = icmp eq i64 %indvars.iv21.i52, %n.vec1303
  br i1 %cmp.n1307, label %for.inc6.i63, label %for.body3.i60.preheader1404

for.body3.i60.preheader1404:                      ; preds = %for.body3.i60.preheader, %middle.block1297
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1303, %middle.block1297 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1404, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1404 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call933, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1297, %for.cond1.preheader.i54
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !47

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
  %min.iters.check1350 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1350, label %for.body3.i99.preheader1400, label %vector.ph1351

vector.ph1351:                                    ; preds = %for.body3.i99.preheader
  %n.vec1353 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1349

vector.body1349:                                  ; preds = %vector.body1349, %vector.ph1351
  %index1354 = phi i64 [ 0, %vector.ph1351 ], [ %index.next1355, %vector.body1349 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call933, i64 %indvars.iv21.i91, i64 %index1354
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1358 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1358, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1355 = add i64 %index1354, 4
  %68 = icmp eq i64 %index.next1355, %n.vec1353
  br i1 %68, label %middle.block1347, label %vector.body1349, !llvm.loop !66

middle.block1347:                                 ; preds = %vector.body1349
  %cmp.n1357 = icmp eq i64 %indvars.iv21.i91, %n.vec1353
  br i1 %cmp.n1357, label %for.inc6.i102, label %for.body3.i99.preheader1400

for.body3.i99.preheader1400:                      ; preds = %for.body3.i99.preheader, %middle.block1347
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1353, %middle.block1347 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1400, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1400 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call933, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1347, %for.cond1.preheader.i93
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call933, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  %malloccall136 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1362 = phi i64 [ %indvar.next1363, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1362, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1364 = icmp ult i64 %88, 4
  br i1 %min.iters.check1364, label %polly.loop_header192.preheader, label %vector.ph1365

vector.ph1365:                                    ; preds = %polly.loop_header
  %n.vec1367 = and i64 %88, -4
  br label %vector.body1361

vector.body1361:                                  ; preds = %vector.body1361, %vector.ph1365
  %index1368 = phi i64 [ 0, %vector.ph1365 ], [ %index.next1369, %vector.body1361 ]
  %90 = shl nuw nsw i64 %index1368, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1372 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1372, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1369 = add i64 %index1368, 4
  %95 = icmp eq i64 %index.next1369, %n.vec1367
  br i1 %95, label %middle.block1359, label %vector.body1361, !llvm.loop !79

middle.block1359:                                 ; preds = %vector.body1361
  %cmp.n1371 = icmp eq i64 %88, %n.vec1367
  br i1 %cmp.n1371, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1359
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1367, %middle.block1359 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1359
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1363 = add i64 %indvar1362, 1
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
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1061.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %indvars.iv1033 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1034, %polly.loop_exit208 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit208 ]
  %smin1056 = call i64 @llvm.smin.i64(i64 %indvars.iv1033, i64 -968)
  %97 = add nsw i64 %smin1056, 1000
  %98 = shl nsw i64 %polly.indvar203, 5
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next1034 = add nsw i64 %indvars.iv1033, -32
  %exitcond1060.not = icmp eq i64 %polly.indvar_next204, 32
  br i1 %exitcond1060.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1048 = phi i64 [ %indvars.iv.next1049, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit230 ], [ 96, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %103, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %99 = shl nuw nsw i64 %polly.indvar209, 2
  %100 = mul nsw i64 %polly.indvar209, -4
  %101 = mul nsw i64 %polly.indvar209, -100
  %102 = mul nuw nsw i64 %polly.indvar209, 100
  br label %polly.loop_header212

polly.loop_exit230:                               ; preds = %polly.loop_exit280
  %103 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -100
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, -4
  %indvars.iv.next1045 = add nuw nsw i64 %indvars.iv1044, 4
  %indvars.iv.next1049 = add nsw i64 %indvars.iv1048, -4
  %exitcond1059.not = icmp eq i64 %103, 12
  br i1 %exitcond1059.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %104 = add nuw nsw i64 %polly.indvar215, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar_next216, %97
  br i1 %exitcond1035.not, label %polly.loop_header228.preheader, label %polly.loop_header212

polly.loop_header228.preheader:                   ; preds = %polly.loop_exit220
  %105 = add nsw i64 %101, 1199
  br label %polly.loop_header228

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %106 = add nuw nsw i64 %polly.indvar221, %102
  %polly.access.mul.call2225 = mul nuw nsw i64 %106, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %104, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2795, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_header228.preheader, %polly.loop_exit280
  %indvar1376 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %indvar.next1377, %polly.loop_exit280 ]
  %indvars.iv1050 = phi i64 [ %indvars.iv1048, %polly.loop_header228.preheader ], [ %indvars.iv.next1051, %polly.loop_exit280 ]
  %indvars.iv1046 = phi i64 [ %indvars.iv1044, %polly.loop_header228.preheader ], [ %indvars.iv.next1047, %polly.loop_exit280 ]
  %polly.indvar231 = phi i64 [ %polly.indvar209, %polly.loop_header228.preheader ], [ %polly.indvar_next232, %polly.loop_exit280 ]
  %107 = mul nsw i64 %indvar1376, -96
  %108 = add i64 %99, %107
  %smax1378 = call i64 @llvm.smax.i64(i64 %108, i64 0)
  %109 = mul nuw nsw i64 %indvar1376, 96
  %110 = add i64 %100, %109
  %111 = add i64 %smax1378, %110
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1046, i64 0)
  %112 = add i64 %smax, %indvars.iv1050
  %.not.not = icmp ugt i64 %polly.indvar231, %polly.indvar209
  %113 = mul nuw nsw i64 %polly.indvar231, 96
  %114 = add nsw i64 %113, %101
  %115 = add nsw i64 %114, -1
  %.inv = icmp sgt i64 %114, 99
  %116 = select i1 %.inv, i64 99, i64 %115
  %polly.loop_guard = icmp sgt i64 %116, -1
  %117 = add nsw i64 %114, 95
  %118 = icmp ult i64 %105, %117
  %119 = select i1 %118, i64 %105, i64 %117
  %polly.loop_guard254.not = icmp sgt i64 %114, %119
  br i1 %.not.not, label %polly.loop_header234.us, label %polly.loop_header234

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.us ], [ 0, %polly.loop_header228 ]
  br i1 %polly.loop_guard, label %polly.loop_header240.preheader.us, label %polly.loop_exit242.us

polly.loop_header240.us:                          ; preds = %polly.loop_header240.preheader.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header240.preheader.us ]
  %120 = add nuw nsw i64 %polly.indvar243.us, %102
  %polly.access.mul.call1247.us = mul nuw nsw i64 %120, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %123, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1785, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar243.us, %116
  br i1 %exitcond1041.not, label %polly.loop_exit242.us, label %polly.loop_header240.us

polly.loop_exit242.us:                            ; preds = %polly.loop_header240.us, %polly.loop_header234.us
  br i1 %polly.loop_guard254.not, label %polly.merge.us, label %polly.loop_header251.preheader.us

polly.loop_header251.us:                          ; preds = %polly.loop_header251.preheader.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %114, %polly.loop_header251.preheader.us ]
  %121 = add nsw i64 %polly.indvar255.us, %102
  %polly.access.mul.call1259.us = mul nuw nsw i64 %121, 1000
  %polly.access.add.call1260.us = add nuw nsw i64 %122, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1785, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us = add nsw i64 %polly.indvar255.us, %polly.access.mul.Packed_MemRef_call1262.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nsw i64 %polly.indvar255.us, 1
  %polly.loop_cond257.not.not.us = icmp slt i64 %polly.indvar255.us, %119
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.us, label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.loop_header251.us, %polly.loop_exit242.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar_next238.us, %97
  br i1 %exitcond1043.not, label %polly.loop_header278.preheader, label %polly.loop_header234.us

polly.loop_header251.preheader.us:                ; preds = %polly.loop_exit242.us
  %122 = add nuw nsw i64 %polly.indvar237.us, %98
  %polly.access.mul.Packed_MemRef_call1262.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header251.us

polly.loop_header240.preheader.us:                ; preds = %polly.loop_header234.us
  %123 = add nuw nsw i64 %polly.indvar237.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header240.us

polly.loop_exit280:                               ; preds = %polly.loop_exit287, %polly.loop_header278.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1047 = add nsw i64 %indvars.iv1046, -96
  %indvars.iv.next1051 = add nsw i64 %indvars.iv1050, 96
  %exitcond1058.not = icmp eq i64 %polly.indvar_next232, 13
  %indvar.next1377 = add i64 %indvar1376, 1
  br i1 %exitcond1058.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228, %polly.merge
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.merge ], [ 0, %polly.loop_header228 ]
  %124 = add nuw nsw i64 %polly.indvar237, %98
  %polly.access.mul.Packed_MemRef_call1275 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header265

polly.merge:                                      ; preds = %polly.loop_header265
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar_next238, %97
  br i1 %exitcond1040.not, label %polly.loop_header278.preheader, label %polly.loop_header234

polly.loop_header278.preheader:                   ; preds = %polly.merge, %polly.merge.us
  %125 = sub nsw i64 %102, %113
  %126 = icmp sgt i64 %125, 0
  %127 = select i1 %126, i64 %125, i64 0
  %128 = mul nsw i64 %polly.indvar231, -96
  %129 = icmp slt i64 %128, -1104
  %130 = select i1 %129, i64 %128, i64 -1104
  %131 = add nsw i64 %130, 1199
  %polly.loop_guard288.not = icmp sgt i64 %127, %131
  br i1 %polly.loop_guard288.not, label %polly.loop_exit280, label %polly.loop_header278

polly.loop_header265:                             ; preds = %polly.loop_header265, %polly.loop_header234
  %polly.indvar268 = phi i64 [ 0, %polly.loop_header234 ], [ %polly.indvar_next269, %polly.loop_header265 ]
  %132 = add nuw nsw i64 %polly.indvar268, %102
  %polly.access.mul.call1272 = mul nuw nsw i64 %132, 1000
  %polly.access.add.call1273 = add nuw nsw i64 %124, %polly.access.mul.call1272
  %polly.access.call1274 = getelementptr double, double* %polly.access.cast.call1785, i64 %polly.access.add.call1273
  %polly.access.call1274.load = load double, double* %polly.access.call1274, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1276 = add nuw nsw i64 %polly.indvar268, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call1277 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1276
  store double %polly.access.call1274.load, double* %polly.access.Packed_MemRef_call1277, align 8
  %polly.indvar_next269 = add nuw nsw i64 %polly.indvar268, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar_next269, %indvars.iv1036
  br i1 %exitcond1038.not, label %polly.merge, label %polly.loop_header265

polly.loop_header278:                             ; preds = %polly.loop_header278.preheader, %polly.loop_exit287
  %polly.indvar281 = phi i64 [ %polly.indvar_next282, %polly.loop_exit287 ], [ 0, %polly.loop_header278.preheader ]
  %polly.access.mul.Packed_MemRef_call1300 = mul nuw nsw i64 %polly.indvar281, 1200
  br label %polly.loop_header285

polly.loop_exit287:                               ; preds = %polly.loop_exit295
  %polly.indvar_next282 = add nuw nsw i64 %polly.indvar281, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar_next282, %97
  br i1 %exitcond1057.not, label %polly.loop_exit280, label %polly.loop_header278

polly.loop_header285:                             ; preds = %polly.loop_header278, %polly.loop_exit295
  %indvar1379 = phi i64 [ 0, %polly.loop_header278 ], [ %indvar.next1380, %polly.loop_exit295 ]
  %indvars.iv1052 = phi i64 [ %112, %polly.loop_header278 ], [ %indvars.iv.next1053, %polly.loop_exit295 ]
  %polly.indvar289 = phi i64 [ %127, %polly.loop_header278 ], [ %polly.indvar_next290, %polly.loop_exit295 ]
  %133 = add i64 %111, %indvar1379
  %smin1381 = call i64 @llvm.smin.i64(i64 %133, i64 99)
  %134 = add nsw i64 %smin1381, 1
  %smin1054 = call i64 @llvm.smin.i64(i64 %indvars.iv1052, i64 99)
  %135 = add nuw i64 %polly.indvar289, %113
  %136 = add i64 %135, %101
  %polly.loop_guard2961170 = icmp sgt i64 %136, -1
  br i1 %polly.loop_guard2961170, label %polly.loop_header293.preheader, label %polly.loop_exit295

polly.loop_header293.preheader:                   ; preds = %polly.loop_header285
  %polly.access.add.Packed_MemRef_call2305 = add nsw i64 %polly.access.mul.Packed_MemRef_call1300, %136
  %polly.access.Packed_MemRef_call2306 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2305
  %_p_scalar_307 = load double, double* %polly.access.Packed_MemRef_call2306, align 8
  %polly.access.Packed_MemRef_call1314 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2305
  %_p_scalar_315 = load double, double* %polly.access.Packed_MemRef_call1314, align 8
  %137 = mul i64 %135, 9600
  %min.iters.check1382 = icmp ult i64 %134, 4
  br i1 %min.iters.check1382, label %polly.loop_header293.preheader1397, label %vector.ph1383

vector.ph1383:                                    ; preds = %polly.loop_header293.preheader
  %n.vec1385 = and i64 %134, -4
  %broadcast.splatinsert1391 = insertelement <4 x double> poison, double %_p_scalar_307, i32 0
  %broadcast.splat1392 = shufflevector <4 x double> %broadcast.splatinsert1391, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1394 = insertelement <4 x double> poison, double %_p_scalar_315, i32 0
  %broadcast.splat1395 = shufflevector <4 x double> %broadcast.splatinsert1394, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1375

vector.body1375:                                  ; preds = %vector.body1375, %vector.ph1383
  %index1386 = phi i64 [ 0, %vector.ph1383 ], [ %index.next1387, %vector.body1375 ]
  %138 = add nuw nsw i64 %index1386, %102
  %139 = add nuw nsw i64 %index1386, %polly.access.mul.Packed_MemRef_call1300
  %140 = getelementptr double, double* %Packed_MemRef_call1, i64 %139
  %141 = bitcast double* %140 to <4 x double>*
  %wide.load1390 = load <4 x double>, <4 x double>* %141, align 8
  %142 = fmul fast <4 x double> %broadcast.splat1392, %wide.load1390
  %143 = getelementptr double, double* %Packed_MemRef_call2, i64 %139
  %144 = bitcast double* %143 to <4 x double>*
  %wide.load1393 = load <4 x double>, <4 x double>* %144, align 8
  %145 = fmul fast <4 x double> %broadcast.splat1395, %wide.load1393
  %146 = shl i64 %138, 3
  %147 = add i64 %146, %137
  %148 = getelementptr i8, i8* %call, i64 %147
  %149 = bitcast i8* %148 to <4 x double>*
  %wide.load1396 = load <4 x double>, <4 x double>* %149, align 8, !alias.scope !72, !noalias !74
  %150 = fadd fast <4 x double> %145, %142
  %151 = fmul fast <4 x double> %150, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %152 = fadd fast <4 x double> %151, %wide.load1396
  %153 = bitcast i8* %148 to <4 x double>*
  store <4 x double> %152, <4 x double>* %153, align 8, !alias.scope !72, !noalias !74
  %index.next1387 = add i64 %index1386, 4
  %154 = icmp eq i64 %index.next1387, %n.vec1385
  br i1 %154, label %middle.block1373, label %vector.body1375, !llvm.loop !84

middle.block1373:                                 ; preds = %vector.body1375
  %cmp.n1389 = icmp eq i64 %134, %n.vec1385
  br i1 %cmp.n1389, label %polly.loop_exit295, label %polly.loop_header293.preheader1397

polly.loop_header293.preheader1397:               ; preds = %polly.loop_header293.preheader, %middle.block1373
  %polly.indvar297.ph = phi i64 [ 0, %polly.loop_header293.preheader ], [ %n.vec1385, %middle.block1373 ]
  br label %polly.loop_header293

polly.loop_exit295:                               ; preds = %polly.loop_header293, %middle.block1373, %polly.loop_header285
  %polly.indvar_next290 = add nuw nsw i64 %polly.indvar289, 1
  %polly.loop_cond291.not.not = icmp slt i64 %polly.indvar289, %131
  %indvars.iv.next1053 = add i64 %indvars.iv1052, 1
  %indvar.next1380 = add i64 %indvar1379, 1
  br i1 %polly.loop_cond291.not.not, label %polly.loop_header285, label %polly.loop_exit287

polly.loop_header293:                             ; preds = %polly.loop_header293.preheader1397, %polly.loop_header293
  %polly.indvar297 = phi i64 [ %polly.indvar_next298, %polly.loop_header293 ], [ %polly.indvar297.ph, %polly.loop_header293.preheader1397 ]
  %155 = add nuw nsw i64 %polly.indvar297, %102
  %polly.access.add.Packed_MemRef_call1301 = add nuw nsw i64 %polly.indvar297, %polly.access.mul.Packed_MemRef_call1300
  %polly.access.Packed_MemRef_call1302 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1301
  %_p_scalar_303 = load double, double* %polly.access.Packed_MemRef_call1302, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_307, %_p_scalar_303
  %polly.access.Packed_MemRef_call2310 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1301
  %_p_scalar_311 = load double, double* %polly.access.Packed_MemRef_call2310, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_315, %_p_scalar_311
  %156 = shl i64 %155, 3
  %157 = add i64 %156, %137
  %scevgep316 = getelementptr i8, i8* %call, i64 %157
  %scevgep316317 = bitcast i8* %scevgep316 to double*
  %_p_scalar_318 = load double, double* %scevgep316317, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_318
  store double %p_add42.i118, double* %scevgep316317, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next298 = add nuw nsw i64 %polly.indvar297, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar297, %smin1054
  br i1 %exitcond1055.not, label %polly.loop_exit295, label %polly.loop_header293, !llvm.loop !85

polly.start321:                                   ; preds = %kernel_syr2k.exit
  %malloccall323 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  %malloccall325 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header409

polly.exiting322:                                 ; preds = %polly.loop_exit433
  tail call void @free(i8* %malloccall323)
  tail call void @free(i8* %malloccall325)
  br label %kernel_syr2k.exit90

polly.loop_header409:                             ; preds = %polly.loop_exit417, %polly.start321
  %indvar1312 = phi i64 [ %indvar.next1313, %polly.loop_exit417 ], [ 0, %polly.start321 ]
  %polly.indvar412 = phi i64 [ %polly.indvar_next413, %polly.loop_exit417 ], [ 1, %polly.start321 ]
  %158 = add i64 %indvar1312, 1
  %159 = mul nuw nsw i64 %polly.indvar412, 9600
  %scevgep421 = getelementptr i8, i8* %call, i64 %159
  %min.iters.check1314 = icmp ult i64 %158, 4
  br i1 %min.iters.check1314, label %polly.loop_header415.preheader, label %vector.ph1315

vector.ph1315:                                    ; preds = %polly.loop_header409
  %n.vec1317 = and i64 %158, -4
  br label %vector.body1311

vector.body1311:                                  ; preds = %vector.body1311, %vector.ph1315
  %index1318 = phi i64 [ 0, %vector.ph1315 ], [ %index.next1319, %vector.body1311 ]
  %160 = shl nuw nsw i64 %index1318, 3
  %161 = getelementptr i8, i8* %scevgep421, i64 %160
  %162 = bitcast i8* %161 to <4 x double>*
  %wide.load1322 = load <4 x double>, <4 x double>* %162, align 8, !alias.scope !86, !noalias !88
  %163 = fmul fast <4 x double> %wide.load1322, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %164 = bitcast i8* %161 to <4 x double>*
  store <4 x double> %163, <4 x double>* %164, align 8, !alias.scope !86, !noalias !88
  %index.next1319 = add i64 %index1318, 4
  %165 = icmp eq i64 %index.next1319, %n.vec1317
  br i1 %165, label %middle.block1309, label %vector.body1311, !llvm.loop !93

middle.block1309:                                 ; preds = %vector.body1311
  %cmp.n1321 = icmp eq i64 %158, %n.vec1317
  br i1 %cmp.n1321, label %polly.loop_exit417, label %polly.loop_header415.preheader

polly.loop_header415.preheader:                   ; preds = %polly.loop_header409, %middle.block1309
  %polly.indvar418.ph = phi i64 [ 0, %polly.loop_header409 ], [ %n.vec1317, %middle.block1309 ]
  br label %polly.loop_header415

polly.loop_exit417:                               ; preds = %polly.loop_header415, %middle.block1309
  %polly.indvar_next413 = add nuw nsw i64 %polly.indvar412, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar_next413, 1200
  %indvar.next1313 = add i64 %indvar1312, 1
  br i1 %exitcond1097.not, label %polly.loop_header425.preheader, label %polly.loop_header409

polly.loop_header425.preheader:                   ; preds = %polly.loop_exit417
  %Packed_MemRef_call1324 = bitcast i8* %malloccall323 to double*
  %Packed_MemRef_call2326 = bitcast i8* %malloccall325 to double*
  br label %polly.loop_header425

polly.loop_header415:                             ; preds = %polly.loop_header415.preheader, %polly.loop_header415
  %polly.indvar418 = phi i64 [ %polly.indvar_next419, %polly.loop_header415 ], [ %polly.indvar418.ph, %polly.loop_header415.preheader ]
  %166 = shl nuw nsw i64 %polly.indvar418, 3
  %scevgep422 = getelementptr i8, i8* %scevgep421, i64 %166
  %scevgep422423 = bitcast i8* %scevgep422 to double*
  %_p_scalar_424 = load double, double* %scevgep422423, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_424, 1.200000e+00
  store double %p_mul.i57, double* %scevgep422423, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next419 = add nuw nsw i64 %polly.indvar418, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar_next419, %polly.indvar412
  br i1 %exitcond1096.not, label %polly.loop_exit417, label %polly.loop_header415, !llvm.loop !94

polly.loop_header425:                             ; preds = %polly.loop_header425.preheader, %polly.loop_exit433
  %indvars.iv1066 = phi i64 [ 0, %polly.loop_header425.preheader ], [ %indvars.iv.next1067, %polly.loop_exit433 ]
  %polly.indvar428 = phi i64 [ 0, %polly.loop_header425.preheader ], [ %polly.indvar_next429, %polly.loop_exit433 ]
  %smin1091 = call i64 @llvm.smin.i64(i64 %indvars.iv1066, i64 -968)
  %167 = add nsw i64 %smin1091, 1000
  %168 = shl nsw i64 %polly.indvar428, 5
  br label %polly.loop_header431

polly.loop_exit433:                               ; preds = %polly.loop_exit455
  %polly.indvar_next429 = add nuw nsw i64 %polly.indvar428, 1
  %indvars.iv.next1067 = add nsw i64 %indvars.iv1066, -32
  %exitcond1095.not = icmp eq i64 %polly.indvar_next429, 32
  br i1 %exitcond1095.not, label %polly.exiting322, label %polly.loop_header425

polly.loop_header431:                             ; preds = %polly.loop_exit455, %polly.loop_header425
  %indvars.iv1083 = phi i64 [ %indvars.iv.next1084, %polly.loop_exit455 ], [ 0, %polly.loop_header425 ]
  %indvars.iv1078 = phi i64 [ %indvars.iv.next1079, %polly.loop_exit455 ], [ 0, %polly.loop_header425 ]
  %indvars.iv1070 = phi i64 [ %indvars.iv.next1071, %polly.loop_exit455 ], [ 96, %polly.loop_header425 ]
  %indvars.iv1063 = phi i64 [ %indvars.iv.next1064, %polly.loop_exit455 ], [ 1200, %polly.loop_header425 ]
  %polly.indvar434 = phi i64 [ %173, %polly.loop_exit455 ], [ 0, %polly.loop_header425 ]
  %169 = shl nuw nsw i64 %polly.indvar434, 2
  %170 = mul nsw i64 %polly.indvar434, -4
  %171 = mul nsw i64 %polly.indvar434, -100
  %172 = mul nuw nsw i64 %polly.indvar434, 100
  br label %polly.loop_header437

polly.loop_exit455:                               ; preds = %polly.loop_exit511
  %173 = add nuw nsw i64 %polly.indvar434, 1
  %indvars.iv.next1064 = add nsw i64 %indvars.iv1063, -100
  %indvars.iv.next1071 = add nsw i64 %indvars.iv1070, -4
  %indvars.iv.next1079 = add nuw nsw i64 %indvars.iv1078, 4
  %indvars.iv.next1084 = add nsw i64 %indvars.iv1083, -4
  %exitcond1094.not = icmp eq i64 %173, 12
  br i1 %exitcond1094.not, label %polly.loop_exit433, label %polly.loop_header431

polly.loop_header437:                             ; preds = %polly.loop_exit445, %polly.loop_header431
  %polly.indvar440 = phi i64 [ 0, %polly.loop_header431 ], [ %polly.indvar_next441, %polly.loop_exit445 ]
  %174 = add nuw nsw i64 %polly.indvar440, %168
  %polly.access.mul.Packed_MemRef_call2326 = mul nuw nsw i64 %polly.indvar440, 1200
  br label %polly.loop_header443

polly.loop_exit445:                               ; preds = %polly.loop_header443
  %polly.indvar_next441 = add nuw nsw i64 %polly.indvar440, 1
  %exitcond1069.not = icmp eq i64 %polly.indvar_next441, %167
  br i1 %exitcond1069.not, label %polly.loop_header453.preheader, label %polly.loop_header437

polly.loop_header453.preheader:                   ; preds = %polly.loop_exit445
  %175 = add nsw i64 %171, 1199
  br label %polly.loop_header453

polly.loop_header443:                             ; preds = %polly.loop_header443, %polly.loop_header437
  %polly.indvar446 = phi i64 [ 0, %polly.loop_header437 ], [ %polly.indvar_next447, %polly.loop_header443 ]
  %176 = add nuw nsw i64 %polly.indvar446, %172
  %polly.access.mul.call2450 = mul nuw nsw i64 %176, 1000
  %polly.access.add.call2451 = add nuw nsw i64 %174, %polly.access.mul.call2450
  %polly.access.call2452 = getelementptr double, double* %polly.access.cast.call2795, i64 %polly.access.add.call2451
  %polly.access.call2452.load = load double, double* %polly.access.call2452, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2326 = add nuw nsw i64 %polly.indvar446, %polly.access.mul.Packed_MemRef_call2326
  %polly.access.Packed_MemRef_call2326 = getelementptr double, double* %Packed_MemRef_call2326, i64 %polly.access.add.Packed_MemRef_call2326
  store double %polly.access.call2452.load, double* %polly.access.Packed_MemRef_call2326, align 8
  %polly.indvar_next447 = add nuw nsw i64 %polly.indvar446, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next447, %indvars.iv1063
  br i1 %exitcond1065.not, label %polly.loop_exit445, label %polly.loop_header443

polly.loop_header453:                             ; preds = %polly.loop_header453.preheader, %polly.loop_exit511
  %indvar1326 = phi i64 [ 0, %polly.loop_header453.preheader ], [ %indvar.next1327, %polly.loop_exit511 ]
  %indvars.iv1085 = phi i64 [ %indvars.iv1083, %polly.loop_header453.preheader ], [ %indvars.iv.next1086, %polly.loop_exit511 ]
  %indvars.iv1080 = phi i64 [ %indvars.iv1078, %polly.loop_header453.preheader ], [ %indvars.iv.next1081, %polly.loop_exit511 ]
  %polly.indvar456 = phi i64 [ %polly.indvar434, %polly.loop_header453.preheader ], [ %polly.indvar_next457, %polly.loop_exit511 ]
  %177 = mul nsw i64 %indvar1326, -96
  %178 = add i64 %169, %177
  %smax1328 = call i64 @llvm.smax.i64(i64 %178, i64 0)
  %179 = mul nuw nsw i64 %indvar1326, 96
  %180 = add i64 %170, %179
  %181 = add i64 %smax1328, %180
  %smax1082 = call i64 @llvm.smax.i64(i64 %indvars.iv1080, i64 0)
  %182 = add i64 %smax1082, %indvars.iv1085
  %.not.not987 = icmp ugt i64 %polly.indvar456, %polly.indvar434
  %183 = mul nuw nsw i64 %polly.indvar456, 96
  %184 = add nsw i64 %183, %171
  %185 = add nsw i64 %184, -1
  %.inv988 = icmp sgt i64 %184, 99
  %186 = select i1 %.inv988, i64 99, i64 %185
  %polly.loop_guard473 = icmp sgt i64 %186, -1
  %187 = add nsw i64 %184, 95
  %188 = icmp ult i64 %175, %187
  %189 = select i1 %188, i64 %175, i64 %187
  %polly.loop_guard485.not = icmp sgt i64 %184, %189
  br i1 %.not.not987, label %polly.loop_header459.us, label %polly.loop_header459

polly.loop_header459.us:                          ; preds = %polly.loop_header453, %polly.merge466.us
  %polly.indvar462.us = phi i64 [ %polly.indvar_next463.us, %polly.merge466.us ], [ 0, %polly.loop_header453 ]
  br i1 %polly.loop_guard473, label %polly.loop_header470.preheader.us, label %polly.loop_exit472.us

polly.loop_header470.us:                          ; preds = %polly.loop_header470.preheader.us, %polly.loop_header470.us
  %polly.indvar474.us = phi i64 [ %polly.indvar_next475.us, %polly.loop_header470.us ], [ 0, %polly.loop_header470.preheader.us ]
  %190 = add nuw nsw i64 %polly.indvar474.us, %172
  %polly.access.mul.call1478.us = mul nuw nsw i64 %190, 1000
  %polly.access.add.call1479.us = add nuw nsw i64 %193, %polly.access.mul.call1478.us
  %polly.access.call1480.us = getelementptr double, double* %polly.access.cast.call1785, i64 %polly.access.add.call1479.us
  %polly.access.call1480.load.us = load double, double* %polly.access.call1480.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1324.us = add nuw nsw i64 %polly.indvar474.us, %polly.access.mul.Packed_MemRef_call1324.us
  %polly.access.Packed_MemRef_call1324.us = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324.us
  store double %polly.access.call1480.load.us, double* %polly.access.Packed_MemRef_call1324.us, align 8
  %polly.indvar_next475.us = add nuw i64 %polly.indvar474.us, 1
  %exitcond1075.not = icmp eq i64 %polly.indvar474.us, %186
  br i1 %exitcond1075.not, label %polly.loop_exit472.us, label %polly.loop_header470.us

polly.loop_exit472.us:                            ; preds = %polly.loop_header470.us, %polly.loop_header459.us
  br i1 %polly.loop_guard485.not, label %polly.merge466.us, label %polly.loop_header482.preheader.us

polly.loop_header482.us:                          ; preds = %polly.loop_header482.preheader.us, %polly.loop_header482.us
  %polly.indvar486.us = phi i64 [ %polly.indvar_next487.us, %polly.loop_header482.us ], [ %184, %polly.loop_header482.preheader.us ]
  %191 = add nsw i64 %polly.indvar486.us, %172
  %polly.access.mul.call1490.us = mul nuw nsw i64 %191, 1000
  %polly.access.add.call1491.us = add nuw nsw i64 %192, %polly.access.mul.call1490.us
  %polly.access.call1492.us = getelementptr double, double* %polly.access.cast.call1785, i64 %polly.access.add.call1491.us
  %polly.access.call1492.load.us = load double, double* %polly.access.call1492.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1324494.us = add nsw i64 %polly.indvar486.us, %polly.access.mul.Packed_MemRef_call1324493.us
  %polly.access.Packed_MemRef_call1324495.us = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324494.us
  store double %polly.access.call1492.load.us, double* %polly.access.Packed_MemRef_call1324495.us, align 8
  %polly.indvar_next487.us = add nsw i64 %polly.indvar486.us, 1
  %polly.loop_cond488.not.not.us = icmp slt i64 %polly.indvar486.us, %189
  br i1 %polly.loop_cond488.not.not.us, label %polly.loop_header482.us, label %polly.merge466.us

polly.merge466.us:                                ; preds = %polly.loop_header482.us, %polly.loop_exit472.us
  %polly.indvar_next463.us = add nuw nsw i64 %polly.indvar462.us, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar_next463.us, %167
  br i1 %exitcond1077.not, label %polly.loop_header509.preheader, label %polly.loop_header459.us

polly.loop_header482.preheader.us:                ; preds = %polly.loop_exit472.us
  %192 = add nuw nsw i64 %polly.indvar462.us, %168
  %polly.access.mul.Packed_MemRef_call1324493.us = mul nuw nsw i64 %polly.indvar462.us, 1200
  br label %polly.loop_header482.us

polly.loop_header470.preheader.us:                ; preds = %polly.loop_header459.us
  %193 = add nuw nsw i64 %polly.indvar462.us, %168
  %polly.access.mul.Packed_MemRef_call1324.us = mul nuw nsw i64 %polly.indvar462.us, 1200
  br label %polly.loop_header470.us

polly.loop_exit511:                               ; preds = %polly.loop_exit518, %polly.loop_header509.preheader
  %polly.indvar_next457 = add nuw nsw i64 %polly.indvar456, 1
  %indvars.iv.next1081 = add nsw i64 %indvars.iv1080, -96
  %indvars.iv.next1086 = add nsw i64 %indvars.iv1085, 96
  %exitcond1093.not = icmp eq i64 %polly.indvar_next457, 13
  %indvar.next1327 = add i64 %indvar1326, 1
  br i1 %exitcond1093.not, label %polly.loop_exit455, label %polly.loop_header453

polly.loop_header459:                             ; preds = %polly.loop_header453, %polly.merge466
  %polly.indvar462 = phi i64 [ %polly.indvar_next463, %polly.merge466 ], [ 0, %polly.loop_header453 ]
  %194 = add nuw nsw i64 %polly.indvar462, %168
  %polly.access.mul.Packed_MemRef_call1324506 = mul nuw nsw i64 %polly.indvar462, 1200
  br label %polly.loop_header496

polly.merge466:                                   ; preds = %polly.loop_header496
  %polly.indvar_next463 = add nuw nsw i64 %polly.indvar462, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar_next463, %167
  br i1 %exitcond1074.not, label %polly.loop_header509.preheader, label %polly.loop_header459

polly.loop_header509.preheader:                   ; preds = %polly.merge466, %polly.merge466.us
  %195 = sub nsw i64 %172, %183
  %196 = icmp sgt i64 %195, 0
  %197 = select i1 %196, i64 %195, i64 0
  %198 = mul nsw i64 %polly.indvar456, -96
  %199 = icmp slt i64 %198, -1104
  %200 = select i1 %199, i64 %198, i64 -1104
  %201 = add nsw i64 %200, 1199
  %polly.loop_guard519.not = icmp sgt i64 %197, %201
  br i1 %polly.loop_guard519.not, label %polly.loop_exit511, label %polly.loop_header509

polly.loop_header496:                             ; preds = %polly.loop_header496, %polly.loop_header459
  %polly.indvar499 = phi i64 [ 0, %polly.loop_header459 ], [ %polly.indvar_next500, %polly.loop_header496 ]
  %202 = add nuw nsw i64 %polly.indvar499, %172
  %polly.access.mul.call1503 = mul nuw nsw i64 %202, 1000
  %polly.access.add.call1504 = add nuw nsw i64 %194, %polly.access.mul.call1503
  %polly.access.call1505 = getelementptr double, double* %polly.access.cast.call1785, i64 %polly.access.add.call1504
  %polly.access.call1505.load = load double, double* %polly.access.call1505, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1324507 = add nuw nsw i64 %polly.indvar499, %polly.access.mul.Packed_MemRef_call1324506
  %polly.access.Packed_MemRef_call1324508 = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324507
  store double %polly.access.call1505.load, double* %polly.access.Packed_MemRef_call1324508, align 8
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar_next500, %indvars.iv1070
  br i1 %exitcond1072.not, label %polly.merge466, label %polly.loop_header496

polly.loop_header509:                             ; preds = %polly.loop_header509.preheader, %polly.loop_exit518
  %polly.indvar512 = phi i64 [ %polly.indvar_next513, %polly.loop_exit518 ], [ 0, %polly.loop_header509.preheader ]
  %polly.access.mul.Packed_MemRef_call1324531 = mul nuw nsw i64 %polly.indvar512, 1200
  br label %polly.loop_header516

polly.loop_exit518:                               ; preds = %polly.loop_exit526
  %polly.indvar_next513 = add nuw nsw i64 %polly.indvar512, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar_next513, %167
  br i1 %exitcond1092.not, label %polly.loop_exit511, label %polly.loop_header509

polly.loop_header516:                             ; preds = %polly.loop_header509, %polly.loop_exit526
  %indvar1329 = phi i64 [ 0, %polly.loop_header509 ], [ %indvar.next1330, %polly.loop_exit526 ]
  %indvars.iv1087 = phi i64 [ %182, %polly.loop_header509 ], [ %indvars.iv.next1088, %polly.loop_exit526 ]
  %polly.indvar520 = phi i64 [ %197, %polly.loop_header509 ], [ %polly.indvar_next521, %polly.loop_exit526 ]
  %203 = add i64 %181, %indvar1329
  %smin1331 = call i64 @llvm.smin.i64(i64 %203, i64 99)
  %204 = add nsw i64 %smin1331, 1
  %smin1089 = call i64 @llvm.smin.i64(i64 %indvars.iv1087, i64 99)
  %205 = add nuw i64 %polly.indvar520, %183
  %206 = add i64 %205, %171
  %polly.loop_guard5271171 = icmp sgt i64 %206, -1
  br i1 %polly.loop_guard5271171, label %polly.loop_header524.preheader, label %polly.loop_exit526

polly.loop_header524.preheader:                   ; preds = %polly.loop_header516
  %polly.access.add.Packed_MemRef_call2326536 = add nsw i64 %polly.access.mul.Packed_MemRef_call1324531, %206
  %polly.access.Packed_MemRef_call2326537 = getelementptr double, double* %Packed_MemRef_call2326, i64 %polly.access.add.Packed_MemRef_call2326536
  %_p_scalar_538 = load double, double* %polly.access.Packed_MemRef_call2326537, align 8
  %polly.access.Packed_MemRef_call1324545 = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call2326536
  %_p_scalar_546 = load double, double* %polly.access.Packed_MemRef_call1324545, align 8
  %207 = mul i64 %205, 9600
  %min.iters.check1332 = icmp ult i64 %204, 4
  br i1 %min.iters.check1332, label %polly.loop_header524.preheader1401, label %vector.ph1333

vector.ph1333:                                    ; preds = %polly.loop_header524.preheader
  %n.vec1335 = and i64 %204, -4
  %broadcast.splatinsert1341 = insertelement <4 x double> poison, double %_p_scalar_538, i32 0
  %broadcast.splat1342 = shufflevector <4 x double> %broadcast.splatinsert1341, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1344 = insertelement <4 x double> poison, double %_p_scalar_546, i32 0
  %broadcast.splat1345 = shufflevector <4 x double> %broadcast.splatinsert1344, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1325

vector.body1325:                                  ; preds = %vector.body1325, %vector.ph1333
  %index1336 = phi i64 [ 0, %vector.ph1333 ], [ %index.next1337, %vector.body1325 ]
  %208 = add nuw nsw i64 %index1336, %172
  %209 = add nuw nsw i64 %index1336, %polly.access.mul.Packed_MemRef_call1324531
  %210 = getelementptr double, double* %Packed_MemRef_call1324, i64 %209
  %211 = bitcast double* %210 to <4 x double>*
  %wide.load1340 = load <4 x double>, <4 x double>* %211, align 8
  %212 = fmul fast <4 x double> %broadcast.splat1342, %wide.load1340
  %213 = getelementptr double, double* %Packed_MemRef_call2326, i64 %209
  %214 = bitcast double* %213 to <4 x double>*
  %wide.load1343 = load <4 x double>, <4 x double>* %214, align 8
  %215 = fmul fast <4 x double> %broadcast.splat1345, %wide.load1343
  %216 = shl i64 %208, 3
  %217 = add i64 %216, %207
  %218 = getelementptr i8, i8* %call, i64 %217
  %219 = bitcast i8* %218 to <4 x double>*
  %wide.load1346 = load <4 x double>, <4 x double>* %219, align 8, !alias.scope !86, !noalias !88
  %220 = fadd fast <4 x double> %215, %212
  %221 = fmul fast <4 x double> %220, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %222 = fadd fast <4 x double> %221, %wide.load1346
  %223 = bitcast i8* %218 to <4 x double>*
  store <4 x double> %222, <4 x double>* %223, align 8, !alias.scope !86, !noalias !88
  %index.next1337 = add i64 %index1336, 4
  %224 = icmp eq i64 %index.next1337, %n.vec1335
  br i1 %224, label %middle.block1323, label %vector.body1325, !llvm.loop !97

middle.block1323:                                 ; preds = %vector.body1325
  %cmp.n1339 = icmp eq i64 %204, %n.vec1335
  br i1 %cmp.n1339, label %polly.loop_exit526, label %polly.loop_header524.preheader1401

polly.loop_header524.preheader1401:               ; preds = %polly.loop_header524.preheader, %middle.block1323
  %polly.indvar528.ph = phi i64 [ 0, %polly.loop_header524.preheader ], [ %n.vec1335, %middle.block1323 ]
  br label %polly.loop_header524

polly.loop_exit526:                               ; preds = %polly.loop_header524, %middle.block1323, %polly.loop_header516
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %polly.loop_cond522.not.not = icmp slt i64 %polly.indvar520, %201
  %indvars.iv.next1088 = add i64 %indvars.iv1087, 1
  %indvar.next1330 = add i64 %indvar1329, 1
  br i1 %polly.loop_cond522.not.not, label %polly.loop_header516, label %polly.loop_exit518

polly.loop_header524:                             ; preds = %polly.loop_header524.preheader1401, %polly.loop_header524
  %polly.indvar528 = phi i64 [ %polly.indvar_next529, %polly.loop_header524 ], [ %polly.indvar528.ph, %polly.loop_header524.preheader1401 ]
  %225 = add nuw nsw i64 %polly.indvar528, %172
  %polly.access.add.Packed_MemRef_call1324532 = add nuw nsw i64 %polly.indvar528, %polly.access.mul.Packed_MemRef_call1324531
  %polly.access.Packed_MemRef_call1324533 = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324532
  %_p_scalar_534 = load double, double* %polly.access.Packed_MemRef_call1324533, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_538, %_p_scalar_534
  %polly.access.Packed_MemRef_call2326541 = getelementptr double, double* %Packed_MemRef_call2326, i64 %polly.access.add.Packed_MemRef_call1324532
  %_p_scalar_542 = load double, double* %polly.access.Packed_MemRef_call2326541, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_546, %_p_scalar_542
  %226 = shl i64 %225, 3
  %227 = add i64 %226, %207
  %scevgep547 = getelementptr i8, i8* %call, i64 %227
  %scevgep547548 = bitcast i8* %scevgep547 to double*
  %_p_scalar_549 = load double, double* %scevgep547548, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_549
  store double %p_add42.i79, double* %scevgep547548, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next529 = add nuw nsw i64 %polly.indvar528, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar528, %smin1089
  br i1 %exitcond1090.not, label %polly.loop_exit526, label %polly.loop_header524, !llvm.loop !98

polly.start552:                                   ; preds = %init_array.exit
  %malloccall554 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  %malloccall556 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header640

polly.exiting553:                                 ; preds = %polly.loop_exit664
  tail call void @free(i8* %malloccall554)
  tail call void @free(i8* %malloccall556)
  br label %kernel_syr2k.exit

polly.loop_header640:                             ; preds = %polly.loop_exit648, %polly.start552
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit648 ], [ 0, %polly.start552 ]
  %polly.indvar643 = phi i64 [ %polly.indvar_next644, %polly.loop_exit648 ], [ 1, %polly.start552 ]
  %228 = add i64 %indvar, 1
  %229 = mul nuw nsw i64 %polly.indvar643, 9600
  %scevgep652 = getelementptr i8, i8* %call, i64 %229
  %min.iters.check1264 = icmp ult i64 %228, 4
  br i1 %min.iters.check1264, label %polly.loop_header646.preheader, label %vector.ph1265

vector.ph1265:                                    ; preds = %polly.loop_header640
  %n.vec1267 = and i64 %228, -4
  br label %vector.body1263

vector.body1263:                                  ; preds = %vector.body1263, %vector.ph1265
  %index1268 = phi i64 [ 0, %vector.ph1265 ], [ %index.next1269, %vector.body1263 ]
  %230 = shl nuw nsw i64 %index1268, 3
  %231 = getelementptr i8, i8* %scevgep652, i64 %230
  %232 = bitcast i8* %231 to <4 x double>*
  %wide.load1272 = load <4 x double>, <4 x double>* %232, align 8, !alias.scope !99, !noalias !101
  %233 = fmul fast <4 x double> %wide.load1272, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %234 = bitcast i8* %231 to <4 x double>*
  store <4 x double> %233, <4 x double>* %234, align 8, !alias.scope !99, !noalias !101
  %index.next1269 = add i64 %index1268, 4
  %235 = icmp eq i64 %index.next1269, %n.vec1267
  br i1 %235, label %middle.block1261, label %vector.body1263, !llvm.loop !106

middle.block1261:                                 ; preds = %vector.body1263
  %cmp.n1271 = icmp eq i64 %228, %n.vec1267
  br i1 %cmp.n1271, label %polly.loop_exit648, label %polly.loop_header646.preheader

polly.loop_header646.preheader:                   ; preds = %polly.loop_header640, %middle.block1261
  %polly.indvar649.ph = phi i64 [ 0, %polly.loop_header640 ], [ %n.vec1267, %middle.block1261 ]
  br label %polly.loop_header646

polly.loop_exit648:                               ; preds = %polly.loop_header646, %middle.block1261
  %polly.indvar_next644 = add nuw nsw i64 %polly.indvar643, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar_next644, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1132.not, label %polly.loop_header656.preheader, label %polly.loop_header640

polly.loop_header656.preheader:                   ; preds = %polly.loop_exit648
  %Packed_MemRef_call1555 = bitcast i8* %malloccall554 to double*
  %Packed_MemRef_call2557 = bitcast i8* %malloccall556 to double*
  br label %polly.loop_header656

polly.loop_header646:                             ; preds = %polly.loop_header646.preheader, %polly.loop_header646
  %polly.indvar649 = phi i64 [ %polly.indvar_next650, %polly.loop_header646 ], [ %polly.indvar649.ph, %polly.loop_header646.preheader ]
  %236 = shl nuw nsw i64 %polly.indvar649, 3
  %scevgep653 = getelementptr i8, i8* %scevgep652, i64 %236
  %scevgep653654 = bitcast i8* %scevgep653 to double*
  %_p_scalar_655 = load double, double* %scevgep653654, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_655, 1.200000e+00
  store double %p_mul.i, double* %scevgep653654, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next650 = add nuw nsw i64 %polly.indvar649, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar_next650, %polly.indvar643
  br i1 %exitcond1131.not, label %polly.loop_exit648, label %polly.loop_header646, !llvm.loop !107

polly.loop_header656:                             ; preds = %polly.loop_header656.preheader, %polly.loop_exit664
  %indvars.iv1101 = phi i64 [ 0, %polly.loop_header656.preheader ], [ %indvars.iv.next1102, %polly.loop_exit664 ]
  %polly.indvar659 = phi i64 [ 0, %polly.loop_header656.preheader ], [ %polly.indvar_next660, %polly.loop_exit664 ]
  %smin1126 = call i64 @llvm.smin.i64(i64 %indvars.iv1101, i64 -968)
  %237 = add nsw i64 %smin1126, 1000
  %238 = shl nsw i64 %polly.indvar659, 5
  br label %polly.loop_header662

polly.loop_exit664:                               ; preds = %polly.loop_exit686
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %indvars.iv.next1102 = add nsw i64 %indvars.iv1101, -32
  %exitcond1130.not = icmp eq i64 %polly.indvar_next660, 32
  br i1 %exitcond1130.not, label %polly.exiting553, label %polly.loop_header656

polly.loop_header662:                             ; preds = %polly.loop_exit686, %polly.loop_header656
  %indvars.iv1118 = phi i64 [ %indvars.iv.next1119, %polly.loop_exit686 ], [ 0, %polly.loop_header656 ]
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %polly.loop_exit686 ], [ 0, %polly.loop_header656 ]
  %indvars.iv1105 = phi i64 [ %indvars.iv.next1106, %polly.loop_exit686 ], [ 96, %polly.loop_header656 ]
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit686 ], [ 1200, %polly.loop_header656 ]
  %polly.indvar665 = phi i64 [ %243, %polly.loop_exit686 ], [ 0, %polly.loop_header656 ]
  %239 = shl nuw nsw i64 %polly.indvar665, 2
  %240 = mul nsw i64 %polly.indvar665, -4
  %241 = mul nsw i64 %polly.indvar665, -100
  %242 = mul nuw nsw i64 %polly.indvar665, 100
  br label %polly.loop_header668

polly.loop_exit686:                               ; preds = %polly.loop_exit742
  %243 = add nuw nsw i64 %polly.indvar665, 1
  %indvars.iv.next1099 = add nsw i64 %indvars.iv1098, -100
  %indvars.iv.next1106 = add nsw i64 %indvars.iv1105, -4
  %indvars.iv.next1114 = add nuw nsw i64 %indvars.iv1113, 4
  %indvars.iv.next1119 = add nsw i64 %indvars.iv1118, -4
  %exitcond1129.not = icmp eq i64 %243, 12
  br i1 %exitcond1129.not, label %polly.loop_exit664, label %polly.loop_header662

polly.loop_header668:                             ; preds = %polly.loop_exit676, %polly.loop_header662
  %polly.indvar671 = phi i64 [ 0, %polly.loop_header662 ], [ %polly.indvar_next672, %polly.loop_exit676 ]
  %244 = add nuw nsw i64 %polly.indvar671, %238
  %polly.access.mul.Packed_MemRef_call2557 = mul nuw nsw i64 %polly.indvar671, 1200
  br label %polly.loop_header674

polly.loop_exit676:                               ; preds = %polly.loop_header674
  %polly.indvar_next672 = add nuw nsw i64 %polly.indvar671, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar_next672, %237
  br i1 %exitcond1104.not, label %polly.loop_header684.preheader, label %polly.loop_header668

polly.loop_header684.preheader:                   ; preds = %polly.loop_exit676
  %245 = add nsw i64 %241, 1199
  br label %polly.loop_header684

polly.loop_header674:                             ; preds = %polly.loop_header674, %polly.loop_header668
  %polly.indvar677 = phi i64 [ 0, %polly.loop_header668 ], [ %polly.indvar_next678, %polly.loop_header674 ]
  %246 = add nuw nsw i64 %polly.indvar677, %242
  %polly.access.mul.call2681 = mul nuw nsw i64 %246, 1000
  %polly.access.add.call2682 = add nuw nsw i64 %244, %polly.access.mul.call2681
  %polly.access.call2683 = getelementptr double, double* %polly.access.cast.call2795, i64 %polly.access.add.call2682
  %polly.access.call2683.load = load double, double* %polly.access.call2683, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2557 = add nuw nsw i64 %polly.indvar677, %polly.access.mul.Packed_MemRef_call2557
  %polly.access.Packed_MemRef_call2557 = getelementptr double, double* %Packed_MemRef_call2557, i64 %polly.access.add.Packed_MemRef_call2557
  store double %polly.access.call2683.load, double* %polly.access.Packed_MemRef_call2557, align 8
  %polly.indvar_next678 = add nuw nsw i64 %polly.indvar677, 1
  %exitcond1100.not = icmp eq i64 %polly.indvar_next678, %indvars.iv1098
  br i1 %exitcond1100.not, label %polly.loop_exit676, label %polly.loop_header674

polly.loop_header684:                             ; preds = %polly.loop_header684.preheader, %polly.loop_exit742
  %indvar1276 = phi i64 [ 0, %polly.loop_header684.preheader ], [ %indvar.next1277, %polly.loop_exit742 ]
  %indvars.iv1120 = phi i64 [ %indvars.iv1118, %polly.loop_header684.preheader ], [ %indvars.iv.next1121, %polly.loop_exit742 ]
  %indvars.iv1115 = phi i64 [ %indvars.iv1113, %polly.loop_header684.preheader ], [ %indvars.iv.next1116, %polly.loop_exit742 ]
  %polly.indvar687 = phi i64 [ %polly.indvar665, %polly.loop_header684.preheader ], [ %polly.indvar_next688, %polly.loop_exit742 ]
  %247 = mul nsw i64 %indvar1276, -96
  %248 = add i64 %239, %247
  %smax1278 = call i64 @llvm.smax.i64(i64 %248, i64 0)
  %249 = mul nuw nsw i64 %indvar1276, 96
  %250 = add i64 %240, %249
  %251 = add i64 %smax1278, %250
  %smax1117 = call i64 @llvm.smax.i64(i64 %indvars.iv1115, i64 0)
  %252 = add i64 %smax1117, %indvars.iv1120
  %.not.not989 = icmp ugt i64 %polly.indvar687, %polly.indvar665
  %253 = mul nuw nsw i64 %polly.indvar687, 96
  %254 = add nsw i64 %253, %241
  %255 = add nsw i64 %254, -1
  %.inv990 = icmp sgt i64 %254, 99
  %256 = select i1 %.inv990, i64 99, i64 %255
  %polly.loop_guard704 = icmp sgt i64 %256, -1
  %257 = add nsw i64 %254, 95
  %258 = icmp ult i64 %245, %257
  %259 = select i1 %258, i64 %245, i64 %257
  %polly.loop_guard716.not = icmp sgt i64 %254, %259
  br i1 %.not.not989, label %polly.loop_header690.us, label %polly.loop_header690

polly.loop_header690.us:                          ; preds = %polly.loop_header684, %polly.merge697.us
  %polly.indvar693.us = phi i64 [ %polly.indvar_next694.us, %polly.merge697.us ], [ 0, %polly.loop_header684 ]
  br i1 %polly.loop_guard704, label %polly.loop_header701.preheader.us, label %polly.loop_exit703.us

polly.loop_header701.us:                          ; preds = %polly.loop_header701.preheader.us, %polly.loop_header701.us
  %polly.indvar705.us = phi i64 [ %polly.indvar_next706.us, %polly.loop_header701.us ], [ 0, %polly.loop_header701.preheader.us ]
  %260 = add nuw nsw i64 %polly.indvar705.us, %242
  %polly.access.mul.call1709.us = mul nuw nsw i64 %260, 1000
  %polly.access.add.call1710.us = add nuw nsw i64 %263, %polly.access.mul.call1709.us
  %polly.access.call1711.us = getelementptr double, double* %polly.access.cast.call1785, i64 %polly.access.add.call1710.us
  %polly.access.call1711.load.us = load double, double* %polly.access.call1711.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1555.us = add nuw nsw i64 %polly.indvar705.us, %polly.access.mul.Packed_MemRef_call1555.us
  %polly.access.Packed_MemRef_call1555.us = getelementptr double, double* %Packed_MemRef_call1555, i64 %polly.access.add.Packed_MemRef_call1555.us
  store double %polly.access.call1711.load.us, double* %polly.access.Packed_MemRef_call1555.us, align 8
  %polly.indvar_next706.us = add nuw i64 %polly.indvar705.us, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar705.us, %256
  br i1 %exitcond1110.not, label %polly.loop_exit703.us, label %polly.loop_header701.us

polly.loop_exit703.us:                            ; preds = %polly.loop_header701.us, %polly.loop_header690.us
  br i1 %polly.loop_guard716.not, label %polly.merge697.us, label %polly.loop_header713.preheader.us

polly.loop_header713.us:                          ; preds = %polly.loop_header713.preheader.us, %polly.loop_header713.us
  %polly.indvar717.us = phi i64 [ %polly.indvar_next718.us, %polly.loop_header713.us ], [ %254, %polly.loop_header713.preheader.us ]
  %261 = add nsw i64 %polly.indvar717.us, %242
  %polly.access.mul.call1721.us = mul nuw nsw i64 %261, 1000
  %polly.access.add.call1722.us = add nuw nsw i64 %262, %polly.access.mul.call1721.us
  %polly.access.call1723.us = getelementptr double, double* %polly.access.cast.call1785, i64 %polly.access.add.call1722.us
  %polly.access.call1723.load.us = load double, double* %polly.access.call1723.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1555725.us = add nsw i64 %polly.indvar717.us, %polly.access.mul.Packed_MemRef_call1555724.us
  %polly.access.Packed_MemRef_call1555726.us = getelementptr double, double* %Packed_MemRef_call1555, i64 %polly.access.add.Packed_MemRef_call1555725.us
  store double %polly.access.call1723.load.us, double* %polly.access.Packed_MemRef_call1555726.us, align 8
  %polly.indvar_next718.us = add nsw i64 %polly.indvar717.us, 1
  %polly.loop_cond719.not.not.us = icmp slt i64 %polly.indvar717.us, %259
  br i1 %polly.loop_cond719.not.not.us, label %polly.loop_header713.us, label %polly.merge697.us

polly.merge697.us:                                ; preds = %polly.loop_header713.us, %polly.loop_exit703.us
  %polly.indvar_next694.us = add nuw nsw i64 %polly.indvar693.us, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar_next694.us, %237
  br i1 %exitcond1112.not, label %polly.loop_header740.preheader, label %polly.loop_header690.us

polly.loop_header713.preheader.us:                ; preds = %polly.loop_exit703.us
  %262 = add nuw nsw i64 %polly.indvar693.us, %238
  %polly.access.mul.Packed_MemRef_call1555724.us = mul nuw nsw i64 %polly.indvar693.us, 1200
  br label %polly.loop_header713.us

polly.loop_header701.preheader.us:                ; preds = %polly.loop_header690.us
  %263 = add nuw nsw i64 %polly.indvar693.us, %238
  %polly.access.mul.Packed_MemRef_call1555.us = mul nuw nsw i64 %polly.indvar693.us, 1200
  br label %polly.loop_header701.us

polly.loop_exit742:                               ; preds = %polly.loop_exit749, %polly.loop_header740.preheader
  %polly.indvar_next688 = add nuw nsw i64 %polly.indvar687, 1
  %indvars.iv.next1116 = add nsw i64 %indvars.iv1115, -96
  %indvars.iv.next1121 = add nsw i64 %indvars.iv1120, 96
  %exitcond1128.not = icmp eq i64 %polly.indvar_next688, 13
  %indvar.next1277 = add i64 %indvar1276, 1
  br i1 %exitcond1128.not, label %polly.loop_exit686, label %polly.loop_header684

polly.loop_header690:                             ; preds = %polly.loop_header684, %polly.merge697
  %polly.indvar693 = phi i64 [ %polly.indvar_next694, %polly.merge697 ], [ 0, %polly.loop_header684 ]
  %264 = add nuw nsw i64 %polly.indvar693, %238
  %polly.access.mul.Packed_MemRef_call1555737 = mul nuw nsw i64 %polly.indvar693, 1200
  br label %polly.loop_header727

polly.merge697:                                   ; preds = %polly.loop_header727
  %polly.indvar_next694 = add nuw nsw i64 %polly.indvar693, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar_next694, %237
  br i1 %exitcond1109.not, label %polly.loop_header740.preheader, label %polly.loop_header690

polly.loop_header740.preheader:                   ; preds = %polly.merge697, %polly.merge697.us
  %265 = sub nsw i64 %242, %253
  %266 = icmp sgt i64 %265, 0
  %267 = select i1 %266, i64 %265, i64 0
  %268 = mul nsw i64 %polly.indvar687, -96
  %269 = icmp slt i64 %268, -1104
  %270 = select i1 %269, i64 %268, i64 -1104
  %271 = add nsw i64 %270, 1199
  %polly.loop_guard750.not = icmp sgt i64 %267, %271
  br i1 %polly.loop_guard750.not, label %polly.loop_exit742, label %polly.loop_header740

polly.loop_header727:                             ; preds = %polly.loop_header727, %polly.loop_header690
  %polly.indvar730 = phi i64 [ 0, %polly.loop_header690 ], [ %polly.indvar_next731, %polly.loop_header727 ]
  %272 = add nuw nsw i64 %polly.indvar730, %242
  %polly.access.mul.call1734 = mul nuw nsw i64 %272, 1000
  %polly.access.add.call1735 = add nuw nsw i64 %264, %polly.access.mul.call1734
  %polly.access.call1736 = getelementptr double, double* %polly.access.cast.call1785, i64 %polly.access.add.call1735
  %polly.access.call1736.load = load double, double* %polly.access.call1736, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1555738 = add nuw nsw i64 %polly.indvar730, %polly.access.mul.Packed_MemRef_call1555737
  %polly.access.Packed_MemRef_call1555739 = getelementptr double, double* %Packed_MemRef_call1555, i64 %polly.access.add.Packed_MemRef_call1555738
  store double %polly.access.call1736.load, double* %polly.access.Packed_MemRef_call1555739, align 8
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next731, %indvars.iv1105
  br i1 %exitcond1107.not, label %polly.merge697, label %polly.loop_header727

polly.loop_header740:                             ; preds = %polly.loop_header740.preheader, %polly.loop_exit749
  %polly.indvar743 = phi i64 [ %polly.indvar_next744, %polly.loop_exit749 ], [ 0, %polly.loop_header740.preheader ]
  %polly.access.mul.Packed_MemRef_call1555762 = mul nuw nsw i64 %polly.indvar743, 1200
  br label %polly.loop_header747

polly.loop_exit749:                               ; preds = %polly.loop_exit757
  %polly.indvar_next744 = add nuw nsw i64 %polly.indvar743, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar_next744, %237
  br i1 %exitcond1127.not, label %polly.loop_exit742, label %polly.loop_header740

polly.loop_header747:                             ; preds = %polly.loop_header740, %polly.loop_exit757
  %indvar1279 = phi i64 [ 0, %polly.loop_header740 ], [ %indvar.next1280, %polly.loop_exit757 ]
  %indvars.iv1122 = phi i64 [ %252, %polly.loop_header740 ], [ %indvars.iv.next1123, %polly.loop_exit757 ]
  %polly.indvar751 = phi i64 [ %267, %polly.loop_header740 ], [ %polly.indvar_next752, %polly.loop_exit757 ]
  %273 = add i64 %251, %indvar1279
  %smin1281 = call i64 @llvm.smin.i64(i64 %273, i64 99)
  %274 = add nsw i64 %smin1281, 1
  %smin1124 = call i64 @llvm.smin.i64(i64 %indvars.iv1122, i64 99)
  %275 = add nuw i64 %polly.indvar751, %253
  %276 = add i64 %275, %241
  %polly.loop_guard7581172 = icmp sgt i64 %276, -1
  br i1 %polly.loop_guard7581172, label %polly.loop_header755.preheader, label %polly.loop_exit757

polly.loop_header755.preheader:                   ; preds = %polly.loop_header747
  %polly.access.add.Packed_MemRef_call2557767 = add nsw i64 %polly.access.mul.Packed_MemRef_call1555762, %276
  %polly.access.Packed_MemRef_call2557768 = getelementptr double, double* %Packed_MemRef_call2557, i64 %polly.access.add.Packed_MemRef_call2557767
  %_p_scalar_769 = load double, double* %polly.access.Packed_MemRef_call2557768, align 8
  %polly.access.Packed_MemRef_call1555776 = getelementptr double, double* %Packed_MemRef_call1555, i64 %polly.access.add.Packed_MemRef_call2557767
  %_p_scalar_777 = load double, double* %polly.access.Packed_MemRef_call1555776, align 8
  %277 = mul i64 %275, 9600
  %min.iters.check1282 = icmp ult i64 %274, 4
  br i1 %min.iters.check1282, label %polly.loop_header755.preheader1405, label %vector.ph1283

vector.ph1283:                                    ; preds = %polly.loop_header755.preheader
  %n.vec1285 = and i64 %274, -4
  %broadcast.splatinsert1291 = insertelement <4 x double> poison, double %_p_scalar_769, i32 0
  %broadcast.splat1292 = shufflevector <4 x double> %broadcast.splatinsert1291, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1294 = insertelement <4 x double> poison, double %_p_scalar_777, i32 0
  %broadcast.splat1295 = shufflevector <4 x double> %broadcast.splatinsert1294, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1275

vector.body1275:                                  ; preds = %vector.body1275, %vector.ph1283
  %index1286 = phi i64 [ 0, %vector.ph1283 ], [ %index.next1287, %vector.body1275 ]
  %278 = add nuw nsw i64 %index1286, %242
  %279 = add nuw nsw i64 %index1286, %polly.access.mul.Packed_MemRef_call1555762
  %280 = getelementptr double, double* %Packed_MemRef_call1555, i64 %279
  %281 = bitcast double* %280 to <4 x double>*
  %wide.load1290 = load <4 x double>, <4 x double>* %281, align 8
  %282 = fmul fast <4 x double> %broadcast.splat1292, %wide.load1290
  %283 = getelementptr double, double* %Packed_MemRef_call2557, i64 %279
  %284 = bitcast double* %283 to <4 x double>*
  %wide.load1293 = load <4 x double>, <4 x double>* %284, align 8
  %285 = fmul fast <4 x double> %broadcast.splat1295, %wide.load1293
  %286 = shl i64 %278, 3
  %287 = add i64 %286, %277
  %288 = getelementptr i8, i8* %call, i64 %287
  %289 = bitcast i8* %288 to <4 x double>*
  %wide.load1296 = load <4 x double>, <4 x double>* %289, align 8, !alias.scope !99, !noalias !101
  %290 = fadd fast <4 x double> %285, %282
  %291 = fmul fast <4 x double> %290, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %292 = fadd fast <4 x double> %291, %wide.load1296
  %293 = bitcast i8* %288 to <4 x double>*
  store <4 x double> %292, <4 x double>* %293, align 8, !alias.scope !99, !noalias !101
  %index.next1287 = add i64 %index1286, 4
  %294 = icmp eq i64 %index.next1287, %n.vec1285
  br i1 %294, label %middle.block1273, label %vector.body1275, !llvm.loop !110

middle.block1273:                                 ; preds = %vector.body1275
  %cmp.n1289 = icmp eq i64 %274, %n.vec1285
  br i1 %cmp.n1289, label %polly.loop_exit757, label %polly.loop_header755.preheader1405

polly.loop_header755.preheader1405:               ; preds = %polly.loop_header755.preheader, %middle.block1273
  %polly.indvar759.ph = phi i64 [ 0, %polly.loop_header755.preheader ], [ %n.vec1285, %middle.block1273 ]
  br label %polly.loop_header755

polly.loop_exit757:                               ; preds = %polly.loop_header755, %middle.block1273, %polly.loop_header747
  %polly.indvar_next752 = add nuw nsw i64 %polly.indvar751, 1
  %polly.loop_cond753.not.not = icmp slt i64 %polly.indvar751, %271
  %indvars.iv.next1123 = add i64 %indvars.iv1122, 1
  %indvar.next1280 = add i64 %indvar1279, 1
  br i1 %polly.loop_cond753.not.not, label %polly.loop_header747, label %polly.loop_exit749

polly.loop_header755:                             ; preds = %polly.loop_header755.preheader1405, %polly.loop_header755
  %polly.indvar759 = phi i64 [ %polly.indvar_next760, %polly.loop_header755 ], [ %polly.indvar759.ph, %polly.loop_header755.preheader1405 ]
  %295 = add nuw nsw i64 %polly.indvar759, %242
  %polly.access.add.Packed_MemRef_call1555763 = add nuw nsw i64 %polly.indvar759, %polly.access.mul.Packed_MemRef_call1555762
  %polly.access.Packed_MemRef_call1555764 = getelementptr double, double* %Packed_MemRef_call1555, i64 %polly.access.add.Packed_MemRef_call1555763
  %_p_scalar_765 = load double, double* %polly.access.Packed_MemRef_call1555764, align 8
  %p_mul27.i = fmul fast double %_p_scalar_769, %_p_scalar_765
  %polly.access.Packed_MemRef_call2557772 = getelementptr double, double* %Packed_MemRef_call2557, i64 %polly.access.add.Packed_MemRef_call1555763
  %_p_scalar_773 = load double, double* %polly.access.Packed_MemRef_call2557772, align 8
  %p_mul37.i = fmul fast double %_p_scalar_777, %_p_scalar_773
  %296 = shl i64 %295, 3
  %297 = add i64 %296, %277
  %scevgep778 = getelementptr i8, i8* %call, i64 %297
  %scevgep778779 = bitcast i8* %scevgep778 to double*
  %_p_scalar_780 = load double, double* %scevgep778779, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_780
  store double %p_add42.i, double* %scevgep778779, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next760 = add nuw nsw i64 %polly.indvar759, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar759, %smin1124
  br i1 %exitcond1125.not, label %polly.loop_exit757, label %polly.loop_header755, !llvm.loop !111

polly.loop_header907:                             ; preds = %entry, %polly.loop_exit915
  %indvars.iv1157 = phi i64 [ %indvars.iv.next1158, %polly.loop_exit915 ], [ 0, %entry ]
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_exit915 ], [ 0, %entry ]
  %smin1159 = call i64 @llvm.smin.i64(i64 %indvars.iv1157, i64 -1168)
  %298 = shl nsw i64 %polly.indvar910, 5
  %299 = add nsw i64 %smin1159, 1199
  br label %polly.loop_header913

polly.loop_exit915:                               ; preds = %polly.loop_exit921
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %indvars.iv.next1158 = add nsw i64 %indvars.iv1157, -32
  %exitcond1162.not = icmp eq i64 %polly.indvar_next911, 38
  br i1 %exitcond1162.not, label %polly.loop_header934, label %polly.loop_header907

polly.loop_header913:                             ; preds = %polly.loop_exit921, %polly.loop_header907
  %indvars.iv1153 = phi i64 [ %indvars.iv.next1154, %polly.loop_exit921 ], [ 0, %polly.loop_header907 ]
  %polly.indvar916 = phi i64 [ %polly.indvar_next917, %polly.loop_exit921 ], [ 0, %polly.loop_header907 ]
  %300 = mul nsw i64 %polly.indvar916, -32
  %smin = call i64 @llvm.smin.i64(i64 %300, i64 -1168)
  %301 = add nsw i64 %smin, 1200
  %smin1155 = call i64 @llvm.smin.i64(i64 %indvars.iv1153, i64 -1168)
  %302 = shl nsw i64 %polly.indvar916, 5
  %303 = add nsw i64 %smin1155, 1199
  br label %polly.loop_header919

polly.loop_exit921:                               ; preds = %polly.loop_exit927
  %polly.indvar_next917 = add nuw nsw i64 %polly.indvar916, 1
  %indvars.iv.next1154 = add nsw i64 %indvars.iv1153, -32
  %exitcond1161.not = icmp eq i64 %polly.indvar_next917, 38
  br i1 %exitcond1161.not, label %polly.loop_exit915, label %polly.loop_header913

polly.loop_header919:                             ; preds = %polly.loop_exit927, %polly.loop_header913
  %polly.indvar922 = phi i64 [ 0, %polly.loop_header913 ], [ %polly.indvar_next923, %polly.loop_exit927 ]
  %304 = add nuw nsw i64 %polly.indvar922, %298
  %305 = trunc i64 %304 to i32
  %306 = mul nuw nsw i64 %304, 9600
  %min.iters.check = icmp eq i64 %301, 0
  br i1 %min.iters.check, label %polly.loop_header925, label %vector.ph1203

vector.ph1203:                                    ; preds = %polly.loop_header919
  %broadcast.splatinsert1210 = insertelement <4 x i64> poison, i64 %302, i32 0
  %broadcast.splat1211 = shufflevector <4 x i64> %broadcast.splatinsert1210, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1212 = insertelement <4 x i32> poison, i32 %305, i32 0
  %broadcast.splat1213 = shufflevector <4 x i32> %broadcast.splatinsert1212, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1202

vector.body1202:                                  ; preds = %vector.body1202, %vector.ph1203
  %index1204 = phi i64 [ 0, %vector.ph1203 ], [ %index.next1205, %vector.body1202 ]
  %vec.ind1208 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1203 ], [ %vec.ind.next1209, %vector.body1202 ]
  %307 = add nuw nsw <4 x i64> %vec.ind1208, %broadcast.splat1211
  %308 = trunc <4 x i64> %307 to <4 x i32>
  %309 = mul <4 x i32> %broadcast.splat1213, %308
  %310 = add <4 x i32> %309, <i32 3, i32 3, i32 3, i32 3>
  %311 = urem <4 x i32> %310, <i32 1200, i32 1200, i32 1200, i32 1200>
  %312 = sitofp <4 x i32> %311 to <4 x double>
  %313 = fmul fast <4 x double> %312, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %314 = extractelement <4 x i64> %307, i32 0
  %315 = shl i64 %314, 3
  %316 = add nuw nsw i64 %315, %306
  %317 = getelementptr i8, i8* %call, i64 %316
  %318 = bitcast i8* %317 to <4 x double>*
  store <4 x double> %313, <4 x double>* %318, align 8, !alias.scope !112, !noalias !114
  %index.next1205 = add i64 %index1204, 4
  %vec.ind.next1209 = add <4 x i64> %vec.ind1208, <i64 4, i64 4, i64 4, i64 4>
  %319 = icmp eq i64 %index.next1205, %301
  br i1 %319, label %polly.loop_exit927, label %vector.body1202, !llvm.loop !117

polly.loop_exit927:                               ; preds = %vector.body1202, %polly.loop_header925
  %polly.indvar_next923 = add nuw nsw i64 %polly.indvar922, 1
  %exitcond1160.not = icmp eq i64 %polly.indvar922, %299
  br i1 %exitcond1160.not, label %polly.loop_exit921, label %polly.loop_header919

polly.loop_header925:                             ; preds = %polly.loop_header919, %polly.loop_header925
  %polly.indvar928 = phi i64 [ %polly.indvar_next929, %polly.loop_header925 ], [ 0, %polly.loop_header919 ]
  %320 = add nuw nsw i64 %polly.indvar928, %302
  %321 = trunc i64 %320 to i32
  %322 = mul i32 %321, %305
  %323 = add i32 %322, 3
  %324 = urem i32 %323, 1200
  %p_conv31.i = sitofp i32 %324 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %325 = shl i64 %320, 3
  %326 = add nuw nsw i64 %325, %306
  %scevgep931 = getelementptr i8, i8* %call, i64 %326
  %scevgep931932 = bitcast i8* %scevgep931 to double*
  store double %p_div33.i, double* %scevgep931932, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next929 = add nuw nsw i64 %polly.indvar928, 1
  %exitcond1156.not = icmp eq i64 %polly.indvar928, %303
  br i1 %exitcond1156.not, label %polly.loop_exit927, label %polly.loop_header925, !llvm.loop !118

polly.loop_header934:                             ; preds = %polly.loop_exit915, %polly.loop_exit942
  %indvars.iv1147 = phi i64 [ %indvars.iv.next1148, %polly.loop_exit942 ], [ 0, %polly.loop_exit915 ]
  %polly.indvar937 = phi i64 [ %polly.indvar_next938, %polly.loop_exit942 ], [ 0, %polly.loop_exit915 ]
  %smin1149 = call i64 @llvm.smin.i64(i64 %indvars.iv1147, i64 -1168)
  %327 = shl nsw i64 %polly.indvar937, 5
  %328 = add nsw i64 %smin1149, 1199
  br label %polly.loop_header940

polly.loop_exit942:                               ; preds = %polly.loop_exit948
  %polly.indvar_next938 = add nuw nsw i64 %polly.indvar937, 1
  %indvars.iv.next1148 = add nsw i64 %indvars.iv1147, -32
  %exitcond1152.not = icmp eq i64 %polly.indvar_next938, 38
  br i1 %exitcond1152.not, label %polly.loop_header960, label %polly.loop_header934

polly.loop_header940:                             ; preds = %polly.loop_exit948, %polly.loop_header934
  %indvars.iv1143 = phi i64 [ %indvars.iv.next1144, %polly.loop_exit948 ], [ 0, %polly.loop_header934 ]
  %polly.indvar943 = phi i64 [ %polly.indvar_next944, %polly.loop_exit948 ], [ 0, %polly.loop_header934 ]
  %329 = mul nsw i64 %polly.indvar943, -32
  %smin1217 = call i64 @llvm.smin.i64(i64 %329, i64 -968)
  %330 = add nsw i64 %smin1217, 1000
  %smin1145 = call i64 @llvm.smin.i64(i64 %indvars.iv1143, i64 -968)
  %331 = shl nsw i64 %polly.indvar943, 5
  %332 = add nsw i64 %smin1145, 999
  br label %polly.loop_header946

polly.loop_exit948:                               ; preds = %polly.loop_exit954
  %polly.indvar_next944 = add nuw nsw i64 %polly.indvar943, 1
  %indvars.iv.next1144 = add nsw i64 %indvars.iv1143, -32
  %exitcond1151.not = icmp eq i64 %polly.indvar_next944, 32
  br i1 %exitcond1151.not, label %polly.loop_exit942, label %polly.loop_header940

polly.loop_header946:                             ; preds = %polly.loop_exit954, %polly.loop_header940
  %polly.indvar949 = phi i64 [ 0, %polly.loop_header940 ], [ %polly.indvar_next950, %polly.loop_exit954 ]
  %333 = add nuw nsw i64 %polly.indvar949, %327
  %334 = trunc i64 %333 to i32
  %335 = mul nuw nsw i64 %333, 8000
  %min.iters.check1218 = icmp eq i64 %330, 0
  br i1 %min.iters.check1218, label %polly.loop_header952, label %vector.ph1219

vector.ph1219:                                    ; preds = %polly.loop_header946
  %broadcast.splatinsert1228 = insertelement <4 x i64> poison, i64 %331, i32 0
  %broadcast.splat1229 = shufflevector <4 x i64> %broadcast.splatinsert1228, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1230 = insertelement <4 x i32> poison, i32 %334, i32 0
  %broadcast.splat1231 = shufflevector <4 x i32> %broadcast.splatinsert1230, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1216

vector.body1216:                                  ; preds = %vector.body1216, %vector.ph1219
  %index1222 = phi i64 [ 0, %vector.ph1219 ], [ %index.next1223, %vector.body1216 ]
  %vec.ind1226 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1219 ], [ %vec.ind.next1227, %vector.body1216 ]
  %336 = add nuw nsw <4 x i64> %vec.ind1226, %broadcast.splat1229
  %337 = trunc <4 x i64> %336 to <4 x i32>
  %338 = mul <4 x i32> %broadcast.splat1231, %337
  %339 = add <4 x i32> %338, <i32 2, i32 2, i32 2, i32 2>
  %340 = urem <4 x i32> %339, <i32 1000, i32 1000, i32 1000, i32 1000>
  %341 = sitofp <4 x i32> %340 to <4 x double>
  %342 = fmul fast <4 x double> %341, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %343 = extractelement <4 x i64> %336, i32 0
  %344 = shl i64 %343, 3
  %345 = add nuw nsw i64 %344, %335
  %346 = getelementptr i8, i8* %call2, i64 %345
  %347 = bitcast i8* %346 to <4 x double>*
  store <4 x double> %342, <4 x double>* %347, align 8, !alias.scope !116, !noalias !119
  %index.next1223 = add i64 %index1222, 4
  %vec.ind.next1227 = add <4 x i64> %vec.ind1226, <i64 4, i64 4, i64 4, i64 4>
  %348 = icmp eq i64 %index.next1223, %330
  br i1 %348, label %polly.loop_exit954, label %vector.body1216, !llvm.loop !120

polly.loop_exit954:                               ; preds = %vector.body1216, %polly.loop_header952
  %polly.indvar_next950 = add nuw nsw i64 %polly.indvar949, 1
  %exitcond1150.not = icmp eq i64 %polly.indvar949, %328
  br i1 %exitcond1150.not, label %polly.loop_exit948, label %polly.loop_header946

polly.loop_header952:                             ; preds = %polly.loop_header946, %polly.loop_header952
  %polly.indvar955 = phi i64 [ %polly.indvar_next956, %polly.loop_header952 ], [ 0, %polly.loop_header946 ]
  %349 = add nuw nsw i64 %polly.indvar955, %331
  %350 = trunc i64 %349 to i32
  %351 = mul i32 %350, %334
  %352 = add i32 %351, 2
  %353 = urem i32 %352, 1000
  %p_conv10.i = sitofp i32 %353 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %354 = shl i64 %349, 3
  %355 = add nuw nsw i64 %354, %335
  %scevgep958 = getelementptr i8, i8* %call2, i64 %355
  %scevgep958959 = bitcast i8* %scevgep958 to double*
  store double %p_div12.i, double* %scevgep958959, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next956 = add nuw nsw i64 %polly.indvar955, 1
  %exitcond1146.not = icmp eq i64 %polly.indvar955, %332
  br i1 %exitcond1146.not, label %polly.loop_exit954, label %polly.loop_header952, !llvm.loop !121

polly.loop_header960:                             ; preds = %polly.loop_exit942, %polly.loop_exit968
  %indvars.iv1137 = phi i64 [ %indvars.iv.next1138, %polly.loop_exit968 ], [ 0, %polly.loop_exit942 ]
  %polly.indvar963 = phi i64 [ %polly.indvar_next964, %polly.loop_exit968 ], [ 0, %polly.loop_exit942 ]
  %smin1139 = call i64 @llvm.smin.i64(i64 %indvars.iv1137, i64 -1168)
  %356 = shl nsw i64 %polly.indvar963, 5
  %357 = add nsw i64 %smin1139, 1199
  br label %polly.loop_header966

polly.loop_exit968:                               ; preds = %polly.loop_exit974
  %polly.indvar_next964 = add nuw nsw i64 %polly.indvar963, 1
  %indvars.iv.next1138 = add nsw i64 %indvars.iv1137, -32
  %exitcond1142.not = icmp eq i64 %polly.indvar_next964, 38
  br i1 %exitcond1142.not, label %init_array.exit, label %polly.loop_header960

polly.loop_header966:                             ; preds = %polly.loop_exit974, %polly.loop_header960
  %indvars.iv1133 = phi i64 [ %indvars.iv.next1134, %polly.loop_exit974 ], [ 0, %polly.loop_header960 ]
  %polly.indvar969 = phi i64 [ %polly.indvar_next970, %polly.loop_exit974 ], [ 0, %polly.loop_header960 ]
  %358 = mul nsw i64 %polly.indvar969, -32
  %smin1235 = call i64 @llvm.smin.i64(i64 %358, i64 -968)
  %359 = add nsw i64 %smin1235, 1000
  %smin1135 = call i64 @llvm.smin.i64(i64 %indvars.iv1133, i64 -968)
  %360 = shl nsw i64 %polly.indvar969, 5
  %361 = add nsw i64 %smin1135, 999
  br label %polly.loop_header972

polly.loop_exit974:                               ; preds = %polly.loop_exit980
  %polly.indvar_next970 = add nuw nsw i64 %polly.indvar969, 1
  %indvars.iv.next1134 = add nsw i64 %indvars.iv1133, -32
  %exitcond1141.not = icmp eq i64 %polly.indvar_next970, 32
  br i1 %exitcond1141.not, label %polly.loop_exit968, label %polly.loop_header966

polly.loop_header972:                             ; preds = %polly.loop_exit980, %polly.loop_header966
  %polly.indvar975 = phi i64 [ 0, %polly.loop_header966 ], [ %polly.indvar_next976, %polly.loop_exit980 ]
  %362 = add nuw nsw i64 %polly.indvar975, %356
  %363 = trunc i64 %362 to i32
  %364 = mul nuw nsw i64 %362, 8000
  %min.iters.check1236 = icmp eq i64 %359, 0
  br i1 %min.iters.check1236, label %polly.loop_header978, label %vector.ph1237

vector.ph1237:                                    ; preds = %polly.loop_header972
  %broadcast.splatinsert1246 = insertelement <4 x i64> poison, i64 %360, i32 0
  %broadcast.splat1247 = shufflevector <4 x i64> %broadcast.splatinsert1246, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1248 = insertelement <4 x i32> poison, i32 %363, i32 0
  %broadcast.splat1249 = shufflevector <4 x i32> %broadcast.splatinsert1248, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1234

vector.body1234:                                  ; preds = %vector.body1234, %vector.ph1237
  %index1240 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1241, %vector.body1234 ]
  %vec.ind1244 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1237 ], [ %vec.ind.next1245, %vector.body1234 ]
  %365 = add nuw nsw <4 x i64> %vec.ind1244, %broadcast.splat1247
  %366 = trunc <4 x i64> %365 to <4 x i32>
  %367 = mul <4 x i32> %broadcast.splat1249, %366
  %368 = add <4 x i32> %367, <i32 1, i32 1, i32 1, i32 1>
  %369 = urem <4 x i32> %368, <i32 1200, i32 1200, i32 1200, i32 1200>
  %370 = sitofp <4 x i32> %369 to <4 x double>
  %371 = fmul fast <4 x double> %370, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %372 = extractelement <4 x i64> %365, i32 0
  %373 = shl i64 %372, 3
  %374 = add nuw nsw i64 %373, %364
  %375 = getelementptr i8, i8* %call1, i64 %374
  %376 = bitcast i8* %375 to <4 x double>*
  store <4 x double> %371, <4 x double>* %376, align 8, !alias.scope !115, !noalias !122
  %index.next1241 = add i64 %index1240, 4
  %vec.ind.next1245 = add <4 x i64> %vec.ind1244, <i64 4, i64 4, i64 4, i64 4>
  %377 = icmp eq i64 %index.next1241, %359
  br i1 %377, label %polly.loop_exit980, label %vector.body1234, !llvm.loop !123

polly.loop_exit980:                               ; preds = %vector.body1234, %polly.loop_header978
  %polly.indvar_next976 = add nuw nsw i64 %polly.indvar975, 1
  %exitcond1140.not = icmp eq i64 %polly.indvar975, %357
  br i1 %exitcond1140.not, label %polly.loop_exit974, label %polly.loop_header972

polly.loop_header978:                             ; preds = %polly.loop_header972, %polly.loop_header978
  %polly.indvar981 = phi i64 [ %polly.indvar_next982, %polly.loop_header978 ], [ 0, %polly.loop_header972 ]
  %378 = add nuw nsw i64 %polly.indvar981, %360
  %379 = trunc i64 %378 to i32
  %380 = mul i32 %379, %363
  %381 = add i32 %380, 1
  %382 = urem i32 %381, 1200
  %p_conv.i = sitofp i32 %382 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %383 = shl i64 %378, 3
  %384 = add nuw nsw i64 %383, %364
  %scevgep985 = getelementptr i8, i8* %call1, i64 %384
  %scevgep985986 = bitcast i8* %scevgep985 to double*
  store double %p_div.i, double* %scevgep985986, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next982 = add nuw nsw i64 %polly.indvar981, 1
  %exitcond1136.not = icmp eq i64 %polly.indvar981, %361
  br i1 %exitcond1136.not, label %polly.loop_exit980, label %polly.loop_header978, !llvm.loop !124
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
!26 = !{!"llvm.loop.tile.size", i32 100}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 32}
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
!51 = !{!"llvm.loop.tile.size", i32 96}
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
