; ModuleID = 'syr2k_exhaustive/mmp_all_XL_834.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_834.c"
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
  %call880 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1732 = bitcast i8* %call1 to double*
  %polly.access.call1741 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2742 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1741, %call2
  %polly.access.call2761 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2761, %call1
  %2 = or i1 %0, %1
  %polly.access.call781 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call781, %call2
  %4 = icmp ule i8* %polly.access.call2761, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call781, %call1
  %8 = icmp ule i8* %polly.access.call1741, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header854, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1219 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1218 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1217 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1216 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1216, %scevgep1219
  %bound1 = icmp ult i8* %scevgep1218, %scevgep1217
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
  br i1 %exitcond18.not.i, label %vector.ph1223, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1223:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1230 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1231 = shufflevector <4 x i64> %broadcast.splatinsert1230, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1222

vector.body1222:                                  ; preds = %vector.body1222, %vector.ph1223
  %index1224 = phi i64 [ 0, %vector.ph1223 ], [ %index.next1225, %vector.body1222 ]
  %vec.ind1228 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1223 ], [ %vec.ind.next1229, %vector.body1222 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1228, %broadcast.splat1231
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv7.i, i64 %index1224
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1225 = add i64 %index1224, 4
  %vec.ind.next1229 = add <4 x i64> %vec.ind1228, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1225, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1222, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1222
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1223, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit915
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start518, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1285 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1285, label %for.body3.i46.preheader1425, label %vector.ph1286

vector.ph1286:                                    ; preds = %for.body3.i46.preheader
  %n.vec1288 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1284

vector.body1284:                                  ; preds = %vector.body1284, %vector.ph1286
  %index1289 = phi i64 [ 0, %vector.ph1286 ], [ %index.next1290, %vector.body1284 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv21.i, i64 %index1289
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1290 = add i64 %index1289, 4
  %46 = icmp eq i64 %index.next1290, %n.vec1288
  br i1 %46, label %middle.block1282, label %vector.body1284, !llvm.loop !18

middle.block1282:                                 ; preds = %vector.body1284
  %cmp.n1292 = icmp eq i64 %indvars.iv21.i, %n.vec1288
  br i1 %cmp.n1292, label %for.inc6.i, label %for.body3.i46.preheader1425

for.body3.i46.preheader1425:                      ; preds = %for.body3.i46.preheader, %middle.block1282
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1288, %middle.block1282 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1425, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1425 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1282, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting519
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start306, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1329 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1329, label %for.body3.i60.preheader1423, label %vector.ph1330

vector.ph1330:                                    ; preds = %for.body3.i60.preheader
  %n.vec1332 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1328

vector.body1328:                                  ; preds = %vector.body1328, %vector.ph1330
  %index1333 = phi i64 [ 0, %vector.ph1330 ], [ %index.next1334, %vector.body1328 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv21.i52, i64 %index1333
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1337 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1337, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1334 = add i64 %index1333, 4
  %57 = icmp eq i64 %index.next1334, %n.vec1332
  br i1 %57, label %middle.block1326, label %vector.body1328, !llvm.loop !63

middle.block1326:                                 ; preds = %vector.body1328
  %cmp.n1336 = icmp eq i64 %indvars.iv21.i52, %n.vec1332
  br i1 %cmp.n1336, label %for.inc6.i63, label %for.body3.i60.preheader1423

for.body3.i60.preheader1423:                      ; preds = %for.body3.i60.preheader, %middle.block1326
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1332, %middle.block1326 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1423, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1423 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !64

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1326, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting307
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1376 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1376, label %for.body3.i99.preheader1421, label %vector.ph1377

vector.ph1377:                                    ; preds = %for.body3.i99.preheader
  %n.vec1379 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1375

vector.body1375:                                  ; preds = %vector.body1375, %vector.ph1377
  %index1380 = phi i64 [ 0, %vector.ph1377 ], [ %index.next1381, %vector.body1375 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv21.i91, i64 %index1380
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1384 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1384, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1381 = add i64 %index1380, 4
  %68 = icmp eq i64 %index.next1381, %n.vec1379
  br i1 %68, label %middle.block1373, label %vector.body1375, !llvm.loop !65

middle.block1373:                                 ; preds = %vector.body1375
  %cmp.n1383 = icmp eq i64 %indvars.iv21.i91, %n.vec1379
  br i1 %cmp.n1383, label %for.inc6.i102, label %for.body3.i99.preheader1421

for.body3.i99.preheader1421:                      ; preds = %for.body3.i99.preheader, %middle.block1373
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1379, %middle.block1373 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1421, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1421 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !66

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1373, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call880, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  %malloccall136 = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1388 = phi i64 [ %indvar.next1389, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1388, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1390 = icmp ult i64 %88, 4
  br i1 %min.iters.check1390, label %polly.loop_header192.preheader, label %vector.ph1391

vector.ph1391:                                    ; preds = %polly.loop_header
  %n.vec1393 = and i64 %88, -4
  br label %vector.body1387

vector.body1387:                                  ; preds = %vector.body1387, %vector.ph1391
  %index1394 = phi i64 [ 0, %vector.ph1391 ], [ %index.next1395, %vector.body1387 ]
  %90 = shl nuw nsw i64 %index1394, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1398 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !71, !noalias !73
  %93 = fmul fast <4 x double> %wide.load1398, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !71, !noalias !73
  %index.next1395 = add i64 %index1394, 4
  %95 = icmp eq i64 %index.next1395, %n.vec1393
  br i1 %95, label %middle.block1385, label %vector.body1387, !llvm.loop !78

middle.block1385:                                 ; preds = %vector.body1387
  %cmp.n1397 = icmp eq i64 %88, %n.vec1393
  br i1 %cmp.n1397, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1385
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1393, %middle.block1385 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1385
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1389 = add i64 %indvar1388, 1
  br i1 %exitcond1106.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1105.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1105.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !79

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %indvars.iv1080 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1081, %polly.loop_exit208 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit208 ]
  %smin1100 = call i64 @llvm.smin.i64(i64 %indvars.iv1080, i64 -872)
  %97 = add nsw i64 %smin1100, 1000
  %98 = shl nsw i64 %polly.indvar203, 7
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next1081 = add nsw i64 %indvars.iv1080, -128
  %exitcond1104.not = icmp eq i64 %polly.indvar_next204, 8
  br i1 %exitcond1104.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %99 = mul nsw i64 %polly.indvar209, -128
  %100 = shl nsw i64 %polly.indvar209, 7
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %101 = add nsw i64 %99, 1199
  %102 = shl nuw nsw i64 %polly.indvar209, 1
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit267
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -128
  %indvars.iv.next1095 = add nsw i64 %indvars.iv1094, -128
  %exitcond1103.not = icmp eq i64 %polly.indvar_next210, 10
  br i1 %exitcond1103.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %103 = add nuw nsw i64 %polly.indvar215, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar_next216, %97
  br i1 %exitcond1082.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %104 = add nuw nsw i64 %polly.indvar221, %100
  %polly.access.mul.call2225 = mul nuw nsw i64 %104, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %103, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit267, %polly.loop_exit214
  %indvar1402 = phi i64 [ %indvar.next1403, %polly.loop_exit267 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %polly.loop_exit267 ], [ %indvars.iv1094, %polly.loop_exit214 ]
  %indvars.iv1088 = phi i64 [ %indvars.iv.next1089, %polly.loop_exit267 ], [ 0, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit267 ], [ %102, %polly.loop_exit214 ]
  %105 = shl nuw nsw i64 %indvar1402, 6
  %smin1098 = call i64 @llvm.smin.i64(i64 %indvars.iv1096, i64 -1136)
  %106 = add nsw i64 %smin1098, 1199
  %smax = call i64 @llvm.smax.i64(i64 %106, i64 0)
  %107 = shl nsw i64 %polly.indvar231, 6
  %108 = add nsw i64 %107, %99
  %109 = add nsw i64 %108, -1
  %.inv = icmp ugt i64 %108, 127
  %110 = select i1 %.inv, i64 127, i64 %109
  %polly.loop_guard = icmp sgt i64 %110, -1
  %111 = or i64 %108, 63
  %112 = icmp ult i64 %101, %111
  %113 = select i1 %112, i64 %101, i64 %111
  %polly.loop_guard254.not = icmp ugt i64 %108, %113
  br i1 %polly.loop_guard, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit253.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit253.us ], [ 0, %polly.loop_header228 ]
  %114 = add nuw nsw i64 %polly.indvar237.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %115 = add nuw nsw i64 %polly.indvar243.us, %100
  %polly.access.mul.call1247.us = mul nuw nsw i64 %115, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %114, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar243.us, %110
  br i1 %exitcond1085.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_header251.us:                          ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %108, %polly.loop_exit242.loopexit.us ]
  %116 = add nuw nsw i64 %polly.indvar255.us, %100
  %polly.access.mul.call1259.us = mul nuw nsw i64 %116, 1000
  %polly.access.add.call1260.us = add nuw nsw i64 %114, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar255.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nuw nsw i64 %polly.indvar255.us, 1
  %polly.loop_cond257.not.not.us = icmp ult i64 %polly.indvar255.us, %113
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.us, label %polly.loop_exit253.us

polly.loop_exit253.us:                            ; preds = %polly.loop_header251.us, %polly.loop_exit242.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar_next238.us, %97
  br i1 %exitcond1087.not, label %polly.loop_header265.preheader, label %polly.loop_header234.us

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  br i1 %polly.loop_guard254.not, label %polly.loop_exit253.us, label %polly.loop_header251.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header234

polly.loop_exit267:                               ; preds = %polly.loop_exit274.loopexit.us, %polly.loop_header265.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1089 = add nuw nsw i64 %indvars.iv1088, 64
  %indvars.iv.next1097 = add nsw i64 %indvars.iv1096, -64
  %exitcond1102.not = icmp eq i64 %polly.indvar_next232, 19
  %indvar.next1403 = add i64 %indvar1402, 1
  br i1 %exitcond1102.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_exit253
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit253 ], [ 0, %polly.loop_header228.split ]
  %117 = add nuw nsw i64 %polly.indvar237, %98
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header251

polly.loop_exit253:                               ; preds = %polly.loop_header251
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar_next238, %97
  br i1 %exitcond1084.not, label %polly.loop_header265.preheader, label %polly.loop_header234

polly.loop_header265.preheader:                   ; preds = %polly.loop_exit253, %polly.loop_exit253.us, %polly.loop_header228.split
  %118 = mul nsw i64 %polly.indvar231, -64
  %polly.loop_guard2751205 = icmp sgt i64 %118, -1200
  br i1 %polly.loop_guard2751205, label %polly.loop_header265.us, label %polly.loop_exit267

polly.loop_header265.us:                          ; preds = %polly.loop_header265.preheader, %polly.loop_exit274.loopexit.us
  %polly.indvar268.us = phi i64 [ %polly.indvar_next269.us, %polly.loop_exit274.loopexit.us ], [ 0, %polly.loop_header265.preheader ]
  %polly.access.mul.Packed_MemRef_call1285.us = mul nuw nsw i64 %polly.indvar268.us, 1200
  br label %polly.loop_header272.us

polly.loop_header272.us:                          ; preds = %polly.loop_header265.us, %polly.loop_exit281.us
  %indvars.iv1090 = phi i64 [ %indvars.iv1088, %polly.loop_header265.us ], [ %indvars.iv.next1091, %polly.loop_exit281.us ]
  %polly.indvar276.us = phi i64 [ 0, %polly.loop_header265.us ], [ %polly.indvar_next277.us, %polly.loop_exit281.us ]
  %119 = add i64 %105, %polly.indvar276.us
  %smin1404 = call i64 @llvm.smin.i64(i64 %119, i64 127)
  %120 = add nuw nsw i64 %smin1404, 1
  %smin1092 = call i64 @llvm.smin.i64(i64 %indvars.iv1090, i64 127)
  %121 = add nuw nsw i64 %polly.indvar276.us, %108
  %122 = add nuw nsw i64 %polly.indvar276.us, %107
  %polly.access.add.Packed_MemRef_call2290.us = add nuw nsw i64 %121, %polly.access.mul.Packed_MemRef_call1285.us
  %polly.access.Packed_MemRef_call2291.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call2291.us, align 8
  %polly.access.Packed_MemRef_call1299.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290.us
  %_p_scalar_300.us = load double, double* %polly.access.Packed_MemRef_call1299.us, align 8
  %123 = mul nuw nsw i64 %122, 9600
  %min.iters.check1405 = icmp ult i64 %smin1404, 3
  br i1 %min.iters.check1405, label %polly.loop_header279.us.preheader, label %vector.ph1406

vector.ph1406:                                    ; preds = %polly.loop_header272.us
  %n.vec1408 = and i64 %120, -4
  %broadcast.splatinsert1414 = insertelement <4 x double> poison, double %_p_scalar_292.us, i32 0
  %broadcast.splat1415 = shufflevector <4 x double> %broadcast.splatinsert1414, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1417 = insertelement <4 x double> poison, double %_p_scalar_300.us, i32 0
  %broadcast.splat1418 = shufflevector <4 x double> %broadcast.splatinsert1417, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1401

vector.body1401:                                  ; preds = %vector.body1401, %vector.ph1406
  %index1409 = phi i64 [ 0, %vector.ph1406 ], [ %index.next1410, %vector.body1401 ]
  %124 = add nuw nsw i64 %index1409, %100
  %125 = add nuw nsw i64 %index1409, %polly.access.mul.Packed_MemRef_call1285.us
  %126 = getelementptr double, double* %Packed_MemRef_call1, i64 %125
  %127 = bitcast double* %126 to <4 x double>*
  %wide.load1413 = load <4 x double>, <4 x double>* %127, align 8
  %128 = fmul fast <4 x double> %broadcast.splat1415, %wide.load1413
  %129 = getelementptr double, double* %Packed_MemRef_call2, i64 %125
  %130 = bitcast double* %129 to <4 x double>*
  %wide.load1416 = load <4 x double>, <4 x double>* %130, align 8
  %131 = fmul fast <4 x double> %broadcast.splat1418, %wide.load1416
  %132 = shl i64 %124, 3
  %133 = add nuw nsw i64 %132, %123
  %134 = getelementptr i8, i8* %call, i64 %133
  %135 = bitcast i8* %134 to <4 x double>*
  %wide.load1419 = load <4 x double>, <4 x double>* %135, align 8, !alias.scope !71, !noalias !73
  %136 = fadd fast <4 x double> %131, %128
  %137 = fmul fast <4 x double> %136, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %138 = fadd fast <4 x double> %137, %wide.load1419
  %139 = bitcast i8* %134 to <4 x double>*
  store <4 x double> %138, <4 x double>* %139, align 8, !alias.scope !71, !noalias !73
  %index.next1410 = add i64 %index1409, 4
  %140 = icmp eq i64 %index.next1410, %n.vec1408
  br i1 %140, label %middle.block1399, label %vector.body1401, !llvm.loop !83

middle.block1399:                                 ; preds = %vector.body1401
  %cmp.n1412 = icmp eq i64 %120, %n.vec1408
  br i1 %cmp.n1412, label %polly.loop_exit281.us, label %polly.loop_header279.us.preheader

polly.loop_header279.us.preheader:                ; preds = %polly.loop_header272.us, %middle.block1399
  %polly.indvar282.us.ph = phi i64 [ 0, %polly.loop_header272.us ], [ %n.vec1408, %middle.block1399 ]
  br label %polly.loop_header279.us

polly.loop_header279.us:                          ; preds = %polly.loop_header279.us.preheader, %polly.loop_header279.us
  %polly.indvar282.us = phi i64 [ %polly.indvar_next283.us, %polly.loop_header279.us ], [ %polly.indvar282.us.ph, %polly.loop_header279.us.preheader ]
  %141 = add nuw nsw i64 %polly.indvar282.us, %100
  %polly.access.add.Packed_MemRef_call1286.us = add nuw nsw i64 %polly.indvar282.us, %polly.access.mul.Packed_MemRef_call1285.us
  %polly.access.Packed_MemRef_call1287.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call1287.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_292.us, %_p_scalar_288.us
  %polly.access.Packed_MemRef_call2295.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286.us
  %_p_scalar_296.us = load double, double* %polly.access.Packed_MemRef_call2295.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_300.us, %_p_scalar_296.us
  %142 = shl i64 %141, 3
  %143 = add nuw nsw i64 %142, %123
  %scevgep301.us = getelementptr i8, i8* %call, i64 %143
  %scevgep301302.us = bitcast i8* %scevgep301.us to double*
  %_p_scalar_303.us = load double, double* %scevgep301302.us, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_303.us
  store double %p_add42.i118.us, double* %scevgep301302.us, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next283.us = add nuw nsw i64 %polly.indvar282.us, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar282.us, %smin1092
  br i1 %exitcond1093.not, label %polly.loop_exit281.us, label %polly.loop_header279.us, !llvm.loop !84

polly.loop_exit281.us:                            ; preds = %polly.loop_header279.us, %middle.block1399
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %indvars.iv.next1091 = add nuw nsw i64 %indvars.iv1090, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar276.us, %smax
  br i1 %exitcond1099.not, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us

polly.loop_exit274.loopexit.us:                   ; preds = %polly.loop_exit281.us
  %polly.indvar_next269.us = add nuw nsw i64 %polly.indvar268.us, 1
  %exitcond1101.not = icmp eq i64 %polly.indvar_next269.us, %97
  br i1 %exitcond1101.not, label %polly.loop_exit267, label %polly.loop_header265.us

polly.loop_header251:                             ; preds = %polly.loop_header234, %polly.loop_header251
  %polly.indvar255 = phi i64 [ %polly.indvar_next256, %polly.loop_header251 ], [ %108, %polly.loop_header234 ]
  %144 = add nuw nsw i64 %polly.indvar255, %100
  %polly.access.mul.call1259 = mul nuw nsw i64 %144, 1000
  %polly.access.add.call1260 = add nuw nsw i64 %117, %polly.access.mul.call1259
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1263 = add nuw nsw i64 %polly.indvar255, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next256 = add nuw nsw i64 %polly.indvar255, 1
  %polly.loop_cond257.not.not = icmp ult i64 %polly.indvar255, %113
  br i1 %polly.loop_cond257.not.not, label %polly.loop_header251, label %polly.loop_exit253

polly.start306:                                   ; preds = %kernel_syr2k.exit
  %malloccall308 = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  %malloccall310 = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  br label %polly.loop_header394

polly.exiting307:                                 ; preds = %polly.loop_exit418
  tail call void @free(i8* %malloccall308)
  tail call void @free(i8* %malloccall310)
  br label %kernel_syr2k.exit90

polly.loop_header394:                             ; preds = %polly.loop_exit402, %polly.start306
  %indvar1341 = phi i64 [ %indvar.next1342, %polly.loop_exit402 ], [ 0, %polly.start306 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit402 ], [ 1, %polly.start306 ]
  %145 = add i64 %indvar1341, 1
  %146 = mul nuw nsw i64 %polly.indvar397, 9600
  %scevgep406 = getelementptr i8, i8* %call, i64 %146
  %min.iters.check1343 = icmp ult i64 %145, 4
  br i1 %min.iters.check1343, label %polly.loop_header400.preheader, label %vector.ph1344

vector.ph1344:                                    ; preds = %polly.loop_header394
  %n.vec1346 = and i64 %145, -4
  br label %vector.body1340

vector.body1340:                                  ; preds = %vector.body1340, %vector.ph1344
  %index1347 = phi i64 [ 0, %vector.ph1344 ], [ %index.next1348, %vector.body1340 ]
  %147 = shl nuw nsw i64 %index1347, 3
  %148 = getelementptr i8, i8* %scevgep406, i64 %147
  %149 = bitcast i8* %148 to <4 x double>*
  %wide.load1351 = load <4 x double>, <4 x double>* %149, align 8, !alias.scope !85, !noalias !87
  %150 = fmul fast <4 x double> %wide.load1351, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %151 = bitcast i8* %148 to <4 x double>*
  store <4 x double> %150, <4 x double>* %151, align 8, !alias.scope !85, !noalias !87
  %index.next1348 = add i64 %index1347, 4
  %152 = icmp eq i64 %index.next1348, %n.vec1346
  br i1 %152, label %middle.block1338, label %vector.body1340, !llvm.loop !92

middle.block1338:                                 ; preds = %vector.body1340
  %cmp.n1350 = icmp eq i64 %145, %n.vec1346
  br i1 %cmp.n1350, label %polly.loop_exit402, label %polly.loop_header400.preheader

polly.loop_header400.preheader:                   ; preds = %polly.loop_header394, %middle.block1338
  %polly.indvar403.ph = phi i64 [ 0, %polly.loop_header394 ], [ %n.vec1346, %middle.block1338 ]
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_header400, %middle.block1338
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1138.not = icmp eq i64 %polly.indvar_next398, 1200
  %indvar.next1342 = add i64 %indvar1341, 1
  br i1 %exitcond1138.not, label %polly.loop_header410.preheader, label %polly.loop_header394

polly.loop_header410.preheader:                   ; preds = %polly.loop_exit402
  %Packed_MemRef_call1309 = bitcast i8* %malloccall308 to double*
  %Packed_MemRef_call2311 = bitcast i8* %malloccall310 to double*
  br label %polly.loop_header410

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_header400
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_header400 ], [ %polly.indvar403.ph, %polly.loop_header400.preheader ]
  %153 = shl nuw nsw i64 %polly.indvar403, 3
  %scevgep407 = getelementptr i8, i8* %scevgep406, i64 %153
  %scevgep407408 = bitcast i8* %scevgep407 to double*
  %_p_scalar_409 = load double, double* %scevgep407408, align 8, !alias.scope !85, !noalias !87
  %p_mul.i57 = fmul fast double %_p_scalar_409, 1.200000e+00
  store double %p_mul.i57, double* %scevgep407408, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond1137.not = icmp eq i64 %polly.indvar_next404, %polly.indvar397
  br i1 %exitcond1137.not, label %polly.loop_exit402, label %polly.loop_header400, !llvm.loop !93

polly.loop_header410:                             ; preds = %polly.loop_header410.preheader, %polly.loop_exit418
  %indvars.iv1110 = phi i64 [ 0, %polly.loop_header410.preheader ], [ %indvars.iv.next1111, %polly.loop_exit418 ]
  %polly.indvar413 = phi i64 [ 0, %polly.loop_header410.preheader ], [ %polly.indvar_next414, %polly.loop_exit418 ]
  %smin1132 = call i64 @llvm.smin.i64(i64 %indvars.iv1110, i64 -872)
  %154 = add nsw i64 %smin1132, 1000
  %155 = shl nsw i64 %polly.indvar413, 7
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_exit440
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %indvars.iv.next1111 = add nsw i64 %indvars.iv1110, -128
  %exitcond1136.not = icmp eq i64 %polly.indvar_next414, 8
  br i1 %exitcond1136.not, label %polly.exiting307, label %polly.loop_header410

polly.loop_header416:                             ; preds = %polly.loop_exit440, %polly.loop_header410
  %indvars.iv1125 = phi i64 [ %indvars.iv.next1126, %polly.loop_exit440 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1107 = phi i64 [ %indvars.iv.next1108, %polly.loop_exit440 ], [ 1200, %polly.loop_header410 ]
  %polly.indvar419 = phi i64 [ %polly.indvar_next420, %polly.loop_exit440 ], [ 0, %polly.loop_header410 ]
  %156 = mul nsw i64 %polly.indvar419, -128
  %157 = shl nsw i64 %polly.indvar419, 7
  br label %polly.loop_header422

polly.loop_exit424:                               ; preds = %polly.loop_exit430
  %158 = add nsw i64 %156, 1199
  %159 = shl nuw nsw i64 %polly.indvar419, 1
  br label %polly.loop_header438

polly.loop_exit440:                               ; preds = %polly.loop_exit479
  %polly.indvar_next420 = add nuw nsw i64 %polly.indvar419, 1
  %indvars.iv.next1108 = add nsw i64 %indvars.iv1107, -128
  %indvars.iv.next1126 = add nsw i64 %indvars.iv1125, -128
  %exitcond1135.not = icmp eq i64 %polly.indvar_next420, 10
  br i1 %exitcond1135.not, label %polly.loop_exit418, label %polly.loop_header416

polly.loop_header422:                             ; preds = %polly.loop_exit430, %polly.loop_header416
  %polly.indvar425 = phi i64 [ 0, %polly.loop_header416 ], [ %polly.indvar_next426, %polly.loop_exit430 ]
  %160 = add nuw nsw i64 %polly.indvar425, %155
  %polly.access.mul.Packed_MemRef_call2311 = mul nuw nsw i64 %polly.indvar425, 1200
  br label %polly.loop_header428

polly.loop_exit430:                               ; preds = %polly.loop_header428
  %polly.indvar_next426 = add nuw nsw i64 %polly.indvar425, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar_next426, %154
  br i1 %exitcond1113.not, label %polly.loop_exit424, label %polly.loop_header422

polly.loop_header428:                             ; preds = %polly.loop_header428, %polly.loop_header422
  %polly.indvar431 = phi i64 [ 0, %polly.loop_header422 ], [ %polly.indvar_next432, %polly.loop_header428 ]
  %161 = add nuw nsw i64 %polly.indvar431, %157
  %polly.access.mul.call2435 = mul nuw nsw i64 %161, 1000
  %polly.access.add.call2436 = add nuw nsw i64 %160, %polly.access.mul.call2435
  %polly.access.call2437 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2436
  %polly.access.call2437.load = load double, double* %polly.access.call2437, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2311 = add nuw nsw i64 %polly.indvar431, %polly.access.mul.Packed_MemRef_call2311
  %polly.access.Packed_MemRef_call2311 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311
  store double %polly.access.call2437.load, double* %polly.access.Packed_MemRef_call2311, align 8
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar_next432, %indvars.iv1107
  br i1 %exitcond1109.not, label %polly.loop_exit430, label %polly.loop_header428

polly.loop_header438:                             ; preds = %polly.loop_exit479, %polly.loop_exit424
  %indvar1355 = phi i64 [ %indvar.next1356, %polly.loop_exit479 ], [ 0, %polly.loop_exit424 ]
  %indvars.iv1127 = phi i64 [ %indvars.iv.next1128, %polly.loop_exit479 ], [ %indvars.iv1125, %polly.loop_exit424 ]
  %indvars.iv1119 = phi i64 [ %indvars.iv.next1120, %polly.loop_exit479 ], [ 0, %polly.loop_exit424 ]
  %polly.indvar441 = phi i64 [ %polly.indvar_next442, %polly.loop_exit479 ], [ %159, %polly.loop_exit424 ]
  %162 = shl nuw nsw i64 %indvar1355, 6
  %smin1129 = call i64 @llvm.smin.i64(i64 %indvars.iv1127, i64 -1136)
  %163 = add nsw i64 %smin1129, 1199
  %smax1130 = call i64 @llvm.smax.i64(i64 %163, i64 0)
  %164 = shl nsw i64 %polly.indvar441, 6
  %165 = add nsw i64 %164, %156
  %166 = add nsw i64 %165, -1
  %.inv934 = icmp ugt i64 %165, 127
  %167 = select i1 %.inv934, i64 127, i64 %166
  %polly.loop_guard454 = icmp sgt i64 %167, -1
  %168 = or i64 %165, 63
  %169 = icmp ult i64 %158, %168
  %170 = select i1 %169, i64 %158, i64 %168
  %polly.loop_guard466.not = icmp ugt i64 %165, %170
  br i1 %polly.loop_guard454, label %polly.loop_header444.us, label %polly.loop_header438.split

polly.loop_header444.us:                          ; preds = %polly.loop_header438, %polly.loop_exit465.us
  %polly.indvar447.us = phi i64 [ %polly.indvar_next448.us, %polly.loop_exit465.us ], [ 0, %polly.loop_header438 ]
  %171 = add nuw nsw i64 %polly.indvar447.us, %155
  %polly.access.mul.Packed_MemRef_call1309.us = mul nuw nsw i64 %polly.indvar447.us, 1200
  br label %polly.loop_header451.us

polly.loop_header451.us:                          ; preds = %polly.loop_header444.us, %polly.loop_header451.us
  %polly.indvar455.us = phi i64 [ %polly.indvar_next456.us, %polly.loop_header451.us ], [ 0, %polly.loop_header444.us ]
  %172 = add nuw nsw i64 %polly.indvar455.us, %157
  %polly.access.mul.call1459.us = mul nuw nsw i64 %172, 1000
  %polly.access.add.call1460.us = add nuw nsw i64 %171, %polly.access.mul.call1459.us
  %polly.access.call1461.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1460.us
  %polly.access.call1461.load.us = load double, double* %polly.access.call1461.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309.us = add nuw nsw i64 %polly.indvar455.us, %polly.access.mul.Packed_MemRef_call1309.us
  %polly.access.Packed_MemRef_call1309.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us
  store double %polly.access.call1461.load.us, double* %polly.access.Packed_MemRef_call1309.us, align 8
  %polly.indvar_next456.us = add nuw i64 %polly.indvar455.us, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar455.us, %167
  br i1 %exitcond1116.not, label %polly.loop_exit453.loopexit.us, label %polly.loop_header451.us

polly.loop_header463.us:                          ; preds = %polly.loop_exit453.loopexit.us, %polly.loop_header463.us
  %polly.indvar467.us = phi i64 [ %polly.indvar_next468.us, %polly.loop_header463.us ], [ %165, %polly.loop_exit453.loopexit.us ]
  %173 = add nuw nsw i64 %polly.indvar467.us, %157
  %polly.access.mul.call1471.us = mul nuw nsw i64 %173, 1000
  %polly.access.add.call1472.us = add nuw nsw i64 %171, %polly.access.mul.call1471.us
  %polly.access.call1473.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472.us
  %polly.access.call1473.load.us = load double, double* %polly.access.call1473.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309475.us = add nuw nsw i64 %polly.indvar467.us, %polly.access.mul.Packed_MemRef_call1309.us
  %polly.access.Packed_MemRef_call1309476.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309475.us
  store double %polly.access.call1473.load.us, double* %polly.access.Packed_MemRef_call1309476.us, align 8
  %polly.indvar_next468.us = add nuw nsw i64 %polly.indvar467.us, 1
  %polly.loop_cond469.not.not.us = icmp ult i64 %polly.indvar467.us, %170
  br i1 %polly.loop_cond469.not.not.us, label %polly.loop_header463.us, label %polly.loop_exit465.us

polly.loop_exit465.us:                            ; preds = %polly.loop_header463.us, %polly.loop_exit453.loopexit.us
  %polly.indvar_next448.us = add nuw nsw i64 %polly.indvar447.us, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar_next448.us, %154
  br i1 %exitcond1118.not, label %polly.loop_header477.preheader, label %polly.loop_header444.us

polly.loop_exit453.loopexit.us:                   ; preds = %polly.loop_header451.us
  br i1 %polly.loop_guard466.not, label %polly.loop_exit465.us, label %polly.loop_header463.us

polly.loop_header438.split:                       ; preds = %polly.loop_header438
  br i1 %polly.loop_guard466.not, label %polly.loop_header477.preheader, label %polly.loop_header444

polly.loop_exit479:                               ; preds = %polly.loop_exit486.loopexit.us, %polly.loop_header477.preheader
  %polly.indvar_next442 = add nuw nsw i64 %polly.indvar441, 1
  %indvars.iv.next1120 = add nuw nsw i64 %indvars.iv1119, 64
  %indvars.iv.next1128 = add nsw i64 %indvars.iv1127, -64
  %exitcond1134.not = icmp eq i64 %polly.indvar_next442, 19
  %indvar.next1356 = add i64 %indvar1355, 1
  br i1 %exitcond1134.not, label %polly.loop_exit440, label %polly.loop_header438

polly.loop_header444:                             ; preds = %polly.loop_header438.split, %polly.loop_exit465
  %polly.indvar447 = phi i64 [ %polly.indvar_next448, %polly.loop_exit465 ], [ 0, %polly.loop_header438.split ]
  %174 = add nuw nsw i64 %polly.indvar447, %155
  %polly.access.mul.Packed_MemRef_call1309474 = mul nuw nsw i64 %polly.indvar447, 1200
  br label %polly.loop_header463

polly.loop_exit465:                               ; preds = %polly.loop_header463
  %polly.indvar_next448 = add nuw nsw i64 %polly.indvar447, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar_next448, %154
  br i1 %exitcond1115.not, label %polly.loop_header477.preheader, label %polly.loop_header444

polly.loop_header477.preheader:                   ; preds = %polly.loop_exit465, %polly.loop_exit465.us, %polly.loop_header438.split
  %175 = mul nsw i64 %polly.indvar441, -64
  %polly.loop_guard4871206 = icmp sgt i64 %175, -1200
  br i1 %polly.loop_guard4871206, label %polly.loop_header477.us, label %polly.loop_exit479

polly.loop_header477.us:                          ; preds = %polly.loop_header477.preheader, %polly.loop_exit486.loopexit.us
  %polly.indvar480.us = phi i64 [ %polly.indvar_next481.us, %polly.loop_exit486.loopexit.us ], [ 0, %polly.loop_header477.preheader ]
  %polly.access.mul.Packed_MemRef_call1309497.us = mul nuw nsw i64 %polly.indvar480.us, 1200
  br label %polly.loop_header484.us

polly.loop_header484.us:                          ; preds = %polly.loop_header477.us, %polly.loop_exit493.us
  %indvars.iv1121 = phi i64 [ %indvars.iv1119, %polly.loop_header477.us ], [ %indvars.iv.next1122, %polly.loop_exit493.us ]
  %polly.indvar488.us = phi i64 [ 0, %polly.loop_header477.us ], [ %polly.indvar_next489.us, %polly.loop_exit493.us ]
  %176 = add i64 %162, %polly.indvar488.us
  %smin1357 = call i64 @llvm.smin.i64(i64 %176, i64 127)
  %177 = add nuw nsw i64 %smin1357, 1
  %smin1123 = call i64 @llvm.smin.i64(i64 %indvars.iv1121, i64 127)
  %178 = add nuw nsw i64 %polly.indvar488.us, %165
  %179 = add nuw nsw i64 %polly.indvar488.us, %164
  %polly.access.add.Packed_MemRef_call2311502.us = add nuw nsw i64 %178, %polly.access.mul.Packed_MemRef_call1309497.us
  %polly.access.Packed_MemRef_call2311503.us = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311502.us
  %_p_scalar_504.us = load double, double* %polly.access.Packed_MemRef_call2311503.us, align 8
  %polly.access.Packed_MemRef_call1309511.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311502.us
  %_p_scalar_512.us = load double, double* %polly.access.Packed_MemRef_call1309511.us, align 8
  %180 = mul nuw nsw i64 %179, 9600
  %min.iters.check1358 = icmp ult i64 %smin1357, 3
  br i1 %min.iters.check1358, label %polly.loop_header491.us.preheader, label %vector.ph1359

vector.ph1359:                                    ; preds = %polly.loop_header484.us
  %n.vec1361 = and i64 %177, -4
  %broadcast.splatinsert1367 = insertelement <4 x double> poison, double %_p_scalar_504.us, i32 0
  %broadcast.splat1368 = shufflevector <4 x double> %broadcast.splatinsert1367, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1370 = insertelement <4 x double> poison, double %_p_scalar_512.us, i32 0
  %broadcast.splat1371 = shufflevector <4 x double> %broadcast.splatinsert1370, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1354

vector.body1354:                                  ; preds = %vector.body1354, %vector.ph1359
  %index1362 = phi i64 [ 0, %vector.ph1359 ], [ %index.next1363, %vector.body1354 ]
  %181 = add nuw nsw i64 %index1362, %157
  %182 = add nuw nsw i64 %index1362, %polly.access.mul.Packed_MemRef_call1309497.us
  %183 = getelementptr double, double* %Packed_MemRef_call1309, i64 %182
  %184 = bitcast double* %183 to <4 x double>*
  %wide.load1366 = load <4 x double>, <4 x double>* %184, align 8
  %185 = fmul fast <4 x double> %broadcast.splat1368, %wide.load1366
  %186 = getelementptr double, double* %Packed_MemRef_call2311, i64 %182
  %187 = bitcast double* %186 to <4 x double>*
  %wide.load1369 = load <4 x double>, <4 x double>* %187, align 8
  %188 = fmul fast <4 x double> %broadcast.splat1371, %wide.load1369
  %189 = shl i64 %181, 3
  %190 = add nuw nsw i64 %189, %180
  %191 = getelementptr i8, i8* %call, i64 %190
  %192 = bitcast i8* %191 to <4 x double>*
  %wide.load1372 = load <4 x double>, <4 x double>* %192, align 8, !alias.scope !85, !noalias !87
  %193 = fadd fast <4 x double> %188, %185
  %194 = fmul fast <4 x double> %193, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %195 = fadd fast <4 x double> %194, %wide.load1372
  %196 = bitcast i8* %191 to <4 x double>*
  store <4 x double> %195, <4 x double>* %196, align 8, !alias.scope !85, !noalias !87
  %index.next1363 = add i64 %index1362, 4
  %197 = icmp eq i64 %index.next1363, %n.vec1361
  br i1 %197, label %middle.block1352, label %vector.body1354, !llvm.loop !96

middle.block1352:                                 ; preds = %vector.body1354
  %cmp.n1365 = icmp eq i64 %177, %n.vec1361
  br i1 %cmp.n1365, label %polly.loop_exit493.us, label %polly.loop_header491.us.preheader

polly.loop_header491.us.preheader:                ; preds = %polly.loop_header484.us, %middle.block1352
  %polly.indvar494.us.ph = phi i64 [ 0, %polly.loop_header484.us ], [ %n.vec1361, %middle.block1352 ]
  br label %polly.loop_header491.us

polly.loop_header491.us:                          ; preds = %polly.loop_header491.us.preheader, %polly.loop_header491.us
  %polly.indvar494.us = phi i64 [ %polly.indvar_next495.us, %polly.loop_header491.us ], [ %polly.indvar494.us.ph, %polly.loop_header491.us.preheader ]
  %198 = add nuw nsw i64 %polly.indvar494.us, %157
  %polly.access.add.Packed_MemRef_call1309498.us = add nuw nsw i64 %polly.indvar494.us, %polly.access.mul.Packed_MemRef_call1309497.us
  %polly.access.Packed_MemRef_call1309499.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309498.us
  %_p_scalar_500.us = load double, double* %polly.access.Packed_MemRef_call1309499.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_504.us, %_p_scalar_500.us
  %polly.access.Packed_MemRef_call2311507.us = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309498.us
  %_p_scalar_508.us = load double, double* %polly.access.Packed_MemRef_call2311507.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_512.us, %_p_scalar_508.us
  %199 = shl i64 %198, 3
  %200 = add nuw nsw i64 %199, %180
  %scevgep513.us = getelementptr i8, i8* %call, i64 %200
  %scevgep513514.us = bitcast i8* %scevgep513.us to double*
  %_p_scalar_515.us = load double, double* %scevgep513514.us, align 8, !alias.scope !85, !noalias !87
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_515.us
  store double %p_add42.i79.us, double* %scevgep513514.us, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next495.us = add nuw nsw i64 %polly.indvar494.us, 1
  %exitcond1124.not = icmp eq i64 %polly.indvar494.us, %smin1123
  br i1 %exitcond1124.not, label %polly.loop_exit493.us, label %polly.loop_header491.us, !llvm.loop !97

polly.loop_exit493.us:                            ; preds = %polly.loop_header491.us, %middle.block1352
  %polly.indvar_next489.us = add nuw nsw i64 %polly.indvar488.us, 1
  %indvars.iv.next1122 = add nuw nsw i64 %indvars.iv1121, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar488.us, %smax1130
  br i1 %exitcond1131.not, label %polly.loop_exit486.loopexit.us, label %polly.loop_header484.us

polly.loop_exit486.loopexit.us:                   ; preds = %polly.loop_exit493.us
  %polly.indvar_next481.us = add nuw nsw i64 %polly.indvar480.us, 1
  %exitcond1133.not = icmp eq i64 %polly.indvar_next481.us, %154
  br i1 %exitcond1133.not, label %polly.loop_exit479, label %polly.loop_header477.us

polly.loop_header463:                             ; preds = %polly.loop_header444, %polly.loop_header463
  %polly.indvar467 = phi i64 [ %polly.indvar_next468, %polly.loop_header463 ], [ %165, %polly.loop_header444 ]
  %201 = add nuw nsw i64 %polly.indvar467, %157
  %polly.access.mul.call1471 = mul nuw nsw i64 %201, 1000
  %polly.access.add.call1472 = add nuw nsw i64 %174, %polly.access.mul.call1471
  %polly.access.call1473 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472
  %polly.access.call1473.load = load double, double* %polly.access.call1473, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309475 = add nuw nsw i64 %polly.indvar467, %polly.access.mul.Packed_MemRef_call1309474
  %polly.access.Packed_MemRef_call1309476 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309475
  store double %polly.access.call1473.load, double* %polly.access.Packed_MemRef_call1309476, align 8
  %polly.indvar_next468 = add nuw nsw i64 %polly.indvar467, 1
  %polly.loop_cond469.not.not = icmp ult i64 %polly.indvar467, %170
  br i1 %polly.loop_cond469.not.not, label %polly.loop_header463, label %polly.loop_exit465

polly.start518:                                   ; preds = %init_array.exit
  %malloccall520 = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  %malloccall522 = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  br label %polly.loop_header606

polly.exiting519:                                 ; preds = %polly.loop_exit630
  tail call void @free(i8* %malloccall520)
  tail call void @free(i8* %malloccall522)
  br label %kernel_syr2k.exit

polly.loop_header606:                             ; preds = %polly.loop_exit614, %polly.start518
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit614 ], [ 0, %polly.start518 ]
  %polly.indvar609 = phi i64 [ %polly.indvar_next610, %polly.loop_exit614 ], [ 1, %polly.start518 ]
  %202 = add i64 %indvar, 1
  %203 = mul nuw nsw i64 %polly.indvar609, 9600
  %scevgep618 = getelementptr i8, i8* %call, i64 %203
  %min.iters.check1296 = icmp ult i64 %202, 4
  br i1 %min.iters.check1296, label %polly.loop_header612.preheader, label %vector.ph1297

vector.ph1297:                                    ; preds = %polly.loop_header606
  %n.vec1299 = and i64 %202, -4
  br label %vector.body1295

vector.body1295:                                  ; preds = %vector.body1295, %vector.ph1297
  %index1300 = phi i64 [ 0, %vector.ph1297 ], [ %index.next1301, %vector.body1295 ]
  %204 = shl nuw nsw i64 %index1300, 3
  %205 = getelementptr i8, i8* %scevgep618, i64 %204
  %206 = bitcast i8* %205 to <4 x double>*
  %wide.load1304 = load <4 x double>, <4 x double>* %206, align 8, !alias.scope !98, !noalias !100
  %207 = fmul fast <4 x double> %wide.load1304, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %208 = bitcast i8* %205 to <4 x double>*
  store <4 x double> %207, <4 x double>* %208, align 8, !alias.scope !98, !noalias !100
  %index.next1301 = add i64 %index1300, 4
  %209 = icmp eq i64 %index.next1301, %n.vec1299
  br i1 %209, label %middle.block1293, label %vector.body1295, !llvm.loop !105

middle.block1293:                                 ; preds = %vector.body1295
  %cmp.n1303 = icmp eq i64 %202, %n.vec1299
  br i1 %cmp.n1303, label %polly.loop_exit614, label %polly.loop_header612.preheader

polly.loop_header612.preheader:                   ; preds = %polly.loop_header606, %middle.block1293
  %polly.indvar615.ph = phi i64 [ 0, %polly.loop_header606 ], [ %n.vec1299, %middle.block1293 ]
  br label %polly.loop_header612

polly.loop_exit614:                               ; preds = %polly.loop_header612, %middle.block1293
  %polly.indvar_next610 = add nuw nsw i64 %polly.indvar609, 1
  %exitcond1170.not = icmp eq i64 %polly.indvar_next610, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1170.not, label %polly.loop_header622.preheader, label %polly.loop_header606

polly.loop_header622.preheader:                   ; preds = %polly.loop_exit614
  %Packed_MemRef_call1521 = bitcast i8* %malloccall520 to double*
  %Packed_MemRef_call2523 = bitcast i8* %malloccall522 to double*
  br label %polly.loop_header622

polly.loop_header612:                             ; preds = %polly.loop_header612.preheader, %polly.loop_header612
  %polly.indvar615 = phi i64 [ %polly.indvar_next616, %polly.loop_header612 ], [ %polly.indvar615.ph, %polly.loop_header612.preheader ]
  %210 = shl nuw nsw i64 %polly.indvar615, 3
  %scevgep619 = getelementptr i8, i8* %scevgep618, i64 %210
  %scevgep619620 = bitcast i8* %scevgep619 to double*
  %_p_scalar_621 = load double, double* %scevgep619620, align 8, !alias.scope !98, !noalias !100
  %p_mul.i = fmul fast double %_p_scalar_621, 1.200000e+00
  store double %p_mul.i, double* %scevgep619620, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next616 = add nuw nsw i64 %polly.indvar615, 1
  %exitcond1169.not = icmp eq i64 %polly.indvar_next616, %polly.indvar609
  br i1 %exitcond1169.not, label %polly.loop_exit614, label %polly.loop_header612, !llvm.loop !106

polly.loop_header622:                             ; preds = %polly.loop_header622.preheader, %polly.loop_exit630
  %indvars.iv1142 = phi i64 [ 0, %polly.loop_header622.preheader ], [ %indvars.iv.next1143, %polly.loop_exit630 ]
  %polly.indvar625 = phi i64 [ 0, %polly.loop_header622.preheader ], [ %polly.indvar_next626, %polly.loop_exit630 ]
  %smin1164 = call i64 @llvm.smin.i64(i64 %indvars.iv1142, i64 -872)
  %211 = add nsw i64 %smin1164, 1000
  %212 = shl nsw i64 %polly.indvar625, 7
  br label %polly.loop_header628

polly.loop_exit630:                               ; preds = %polly.loop_exit652
  %polly.indvar_next626 = add nuw nsw i64 %polly.indvar625, 1
  %indvars.iv.next1143 = add nsw i64 %indvars.iv1142, -128
  %exitcond1168.not = icmp eq i64 %polly.indvar_next626, 8
  br i1 %exitcond1168.not, label %polly.exiting519, label %polly.loop_header622

polly.loop_header628:                             ; preds = %polly.loop_exit652, %polly.loop_header622
  %indvars.iv1157 = phi i64 [ %indvars.iv.next1158, %polly.loop_exit652 ], [ 0, %polly.loop_header622 ]
  %indvars.iv1139 = phi i64 [ %indvars.iv.next1140, %polly.loop_exit652 ], [ 1200, %polly.loop_header622 ]
  %polly.indvar631 = phi i64 [ %polly.indvar_next632, %polly.loop_exit652 ], [ 0, %polly.loop_header622 ]
  %213 = mul nsw i64 %polly.indvar631, -128
  %214 = shl nsw i64 %polly.indvar631, 7
  br label %polly.loop_header634

polly.loop_exit636:                               ; preds = %polly.loop_exit642
  %215 = add nsw i64 %213, 1199
  %216 = shl nuw nsw i64 %polly.indvar631, 1
  br label %polly.loop_header650

polly.loop_exit652:                               ; preds = %polly.loop_exit691
  %polly.indvar_next632 = add nuw nsw i64 %polly.indvar631, 1
  %indvars.iv.next1140 = add nsw i64 %indvars.iv1139, -128
  %indvars.iv.next1158 = add nsw i64 %indvars.iv1157, -128
  %exitcond1167.not = icmp eq i64 %polly.indvar_next632, 10
  br i1 %exitcond1167.not, label %polly.loop_exit630, label %polly.loop_header628

polly.loop_header634:                             ; preds = %polly.loop_exit642, %polly.loop_header628
  %polly.indvar637 = phi i64 [ 0, %polly.loop_header628 ], [ %polly.indvar_next638, %polly.loop_exit642 ]
  %217 = add nuw nsw i64 %polly.indvar637, %212
  %polly.access.mul.Packed_MemRef_call2523 = mul nuw nsw i64 %polly.indvar637, 1200
  br label %polly.loop_header640

polly.loop_exit642:                               ; preds = %polly.loop_header640
  %polly.indvar_next638 = add nuw nsw i64 %polly.indvar637, 1
  %exitcond1145.not = icmp eq i64 %polly.indvar_next638, %211
  br i1 %exitcond1145.not, label %polly.loop_exit636, label %polly.loop_header634

polly.loop_header640:                             ; preds = %polly.loop_header640, %polly.loop_header634
  %polly.indvar643 = phi i64 [ 0, %polly.loop_header634 ], [ %polly.indvar_next644, %polly.loop_header640 ]
  %218 = add nuw nsw i64 %polly.indvar643, %214
  %polly.access.mul.call2647 = mul nuw nsw i64 %218, 1000
  %polly.access.add.call2648 = add nuw nsw i64 %217, %polly.access.mul.call2647
  %polly.access.call2649 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2648
  %polly.access.call2649.load = load double, double* %polly.access.call2649, align 8, !alias.scope !102, !noalias !107
  %polly.access.add.Packed_MemRef_call2523 = add nuw nsw i64 %polly.indvar643, %polly.access.mul.Packed_MemRef_call2523
  %polly.access.Packed_MemRef_call2523 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523
  store double %polly.access.call2649.load, double* %polly.access.Packed_MemRef_call2523, align 8
  %polly.indvar_next644 = add nuw nsw i64 %polly.indvar643, 1
  %exitcond1141.not = icmp eq i64 %polly.indvar_next644, %indvars.iv1139
  br i1 %exitcond1141.not, label %polly.loop_exit642, label %polly.loop_header640

polly.loop_header650:                             ; preds = %polly.loop_exit691, %polly.loop_exit636
  %indvar1308 = phi i64 [ %indvar.next1309, %polly.loop_exit691 ], [ 0, %polly.loop_exit636 ]
  %indvars.iv1159 = phi i64 [ %indvars.iv.next1160, %polly.loop_exit691 ], [ %indvars.iv1157, %polly.loop_exit636 ]
  %indvars.iv1151 = phi i64 [ %indvars.iv.next1152, %polly.loop_exit691 ], [ 0, %polly.loop_exit636 ]
  %polly.indvar653 = phi i64 [ %polly.indvar_next654, %polly.loop_exit691 ], [ %216, %polly.loop_exit636 ]
  %219 = shl nuw nsw i64 %indvar1308, 6
  %smin1161 = call i64 @llvm.smin.i64(i64 %indvars.iv1159, i64 -1136)
  %220 = add nsw i64 %smin1161, 1199
  %smax1162 = call i64 @llvm.smax.i64(i64 %220, i64 0)
  %221 = shl nsw i64 %polly.indvar653, 6
  %222 = add nsw i64 %221, %213
  %223 = add nsw i64 %222, -1
  %.inv935 = icmp ugt i64 %222, 127
  %224 = select i1 %.inv935, i64 127, i64 %223
  %polly.loop_guard666 = icmp sgt i64 %224, -1
  %225 = or i64 %222, 63
  %226 = icmp ult i64 %215, %225
  %227 = select i1 %226, i64 %215, i64 %225
  %polly.loop_guard678.not = icmp ugt i64 %222, %227
  br i1 %polly.loop_guard666, label %polly.loop_header656.us, label %polly.loop_header650.split

polly.loop_header656.us:                          ; preds = %polly.loop_header650, %polly.loop_exit677.us
  %polly.indvar659.us = phi i64 [ %polly.indvar_next660.us, %polly.loop_exit677.us ], [ 0, %polly.loop_header650 ]
  %228 = add nuw nsw i64 %polly.indvar659.us, %212
  %polly.access.mul.Packed_MemRef_call1521.us = mul nuw nsw i64 %polly.indvar659.us, 1200
  br label %polly.loop_header663.us

polly.loop_header663.us:                          ; preds = %polly.loop_header656.us, %polly.loop_header663.us
  %polly.indvar667.us = phi i64 [ %polly.indvar_next668.us, %polly.loop_header663.us ], [ 0, %polly.loop_header656.us ]
  %229 = add nuw nsw i64 %polly.indvar667.us, %214
  %polly.access.mul.call1671.us = mul nuw nsw i64 %229, 1000
  %polly.access.add.call1672.us = add nuw nsw i64 %228, %polly.access.mul.call1671.us
  %polly.access.call1673.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1672.us
  %polly.access.call1673.load.us = load double, double* %polly.access.call1673.us, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1521.us = add nuw nsw i64 %polly.indvar667.us, %polly.access.mul.Packed_MemRef_call1521.us
  %polly.access.Packed_MemRef_call1521.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521.us
  store double %polly.access.call1673.load.us, double* %polly.access.Packed_MemRef_call1521.us, align 8
  %polly.indvar_next668.us = add nuw i64 %polly.indvar667.us, 1
  %exitcond1148.not = icmp eq i64 %polly.indvar667.us, %224
  br i1 %exitcond1148.not, label %polly.loop_exit665.loopexit.us, label %polly.loop_header663.us

polly.loop_header675.us:                          ; preds = %polly.loop_exit665.loopexit.us, %polly.loop_header675.us
  %polly.indvar679.us = phi i64 [ %polly.indvar_next680.us, %polly.loop_header675.us ], [ %222, %polly.loop_exit665.loopexit.us ]
  %230 = add nuw nsw i64 %polly.indvar679.us, %214
  %polly.access.mul.call1683.us = mul nuw nsw i64 %230, 1000
  %polly.access.add.call1684.us = add nuw nsw i64 %228, %polly.access.mul.call1683.us
  %polly.access.call1685.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684.us
  %polly.access.call1685.load.us = load double, double* %polly.access.call1685.us, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1521687.us = add nuw nsw i64 %polly.indvar679.us, %polly.access.mul.Packed_MemRef_call1521.us
  %polly.access.Packed_MemRef_call1521688.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521687.us
  store double %polly.access.call1685.load.us, double* %polly.access.Packed_MemRef_call1521688.us, align 8
  %polly.indvar_next680.us = add nuw nsw i64 %polly.indvar679.us, 1
  %polly.loop_cond681.not.not.us = icmp ult i64 %polly.indvar679.us, %227
  br i1 %polly.loop_cond681.not.not.us, label %polly.loop_header675.us, label %polly.loop_exit677.us

polly.loop_exit677.us:                            ; preds = %polly.loop_header675.us, %polly.loop_exit665.loopexit.us
  %polly.indvar_next660.us = add nuw nsw i64 %polly.indvar659.us, 1
  %exitcond1150.not = icmp eq i64 %polly.indvar_next660.us, %211
  br i1 %exitcond1150.not, label %polly.loop_header689.preheader, label %polly.loop_header656.us

polly.loop_exit665.loopexit.us:                   ; preds = %polly.loop_header663.us
  br i1 %polly.loop_guard678.not, label %polly.loop_exit677.us, label %polly.loop_header675.us

polly.loop_header650.split:                       ; preds = %polly.loop_header650
  br i1 %polly.loop_guard678.not, label %polly.loop_header689.preheader, label %polly.loop_header656

polly.loop_exit691:                               ; preds = %polly.loop_exit698.loopexit.us, %polly.loop_header689.preheader
  %polly.indvar_next654 = add nuw nsw i64 %polly.indvar653, 1
  %indvars.iv.next1152 = add nuw nsw i64 %indvars.iv1151, 64
  %indvars.iv.next1160 = add nsw i64 %indvars.iv1159, -64
  %exitcond1166.not = icmp eq i64 %polly.indvar_next654, 19
  %indvar.next1309 = add i64 %indvar1308, 1
  br i1 %exitcond1166.not, label %polly.loop_exit652, label %polly.loop_header650

polly.loop_header656:                             ; preds = %polly.loop_header650.split, %polly.loop_exit677
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit677 ], [ 0, %polly.loop_header650.split ]
  %231 = add nuw nsw i64 %polly.indvar659, %212
  %polly.access.mul.Packed_MemRef_call1521686 = mul nuw nsw i64 %polly.indvar659, 1200
  br label %polly.loop_header675

polly.loop_exit677:                               ; preds = %polly.loop_header675
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %exitcond1147.not = icmp eq i64 %polly.indvar_next660, %211
  br i1 %exitcond1147.not, label %polly.loop_header689.preheader, label %polly.loop_header656

polly.loop_header689.preheader:                   ; preds = %polly.loop_exit677, %polly.loop_exit677.us, %polly.loop_header650.split
  %232 = mul nsw i64 %polly.indvar653, -64
  %polly.loop_guard6991207 = icmp sgt i64 %232, -1200
  br i1 %polly.loop_guard6991207, label %polly.loop_header689.us, label %polly.loop_exit691

polly.loop_header689.us:                          ; preds = %polly.loop_header689.preheader, %polly.loop_exit698.loopexit.us
  %polly.indvar692.us = phi i64 [ %polly.indvar_next693.us, %polly.loop_exit698.loopexit.us ], [ 0, %polly.loop_header689.preheader ]
  %polly.access.mul.Packed_MemRef_call1521709.us = mul nuw nsw i64 %polly.indvar692.us, 1200
  br label %polly.loop_header696.us

polly.loop_header696.us:                          ; preds = %polly.loop_header689.us, %polly.loop_exit705.us
  %indvars.iv1153 = phi i64 [ %indvars.iv1151, %polly.loop_header689.us ], [ %indvars.iv.next1154, %polly.loop_exit705.us ]
  %polly.indvar700.us = phi i64 [ 0, %polly.loop_header689.us ], [ %polly.indvar_next701.us, %polly.loop_exit705.us ]
  %233 = add i64 %219, %polly.indvar700.us
  %smin1310 = call i64 @llvm.smin.i64(i64 %233, i64 127)
  %234 = add nuw nsw i64 %smin1310, 1
  %smin1155 = call i64 @llvm.smin.i64(i64 %indvars.iv1153, i64 127)
  %235 = add nuw nsw i64 %polly.indvar700.us, %222
  %236 = add nuw nsw i64 %polly.indvar700.us, %221
  %polly.access.add.Packed_MemRef_call2523714.us = add nuw nsw i64 %235, %polly.access.mul.Packed_MemRef_call1521709.us
  %polly.access.Packed_MemRef_call2523715.us = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523714.us
  %_p_scalar_716.us = load double, double* %polly.access.Packed_MemRef_call2523715.us, align 8
  %polly.access.Packed_MemRef_call1521723.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call2523714.us
  %_p_scalar_724.us = load double, double* %polly.access.Packed_MemRef_call1521723.us, align 8
  %237 = mul nuw nsw i64 %236, 9600
  %min.iters.check1311 = icmp ult i64 %smin1310, 3
  br i1 %min.iters.check1311, label %polly.loop_header703.us.preheader, label %vector.ph1312

vector.ph1312:                                    ; preds = %polly.loop_header696.us
  %n.vec1314 = and i64 %234, -4
  %broadcast.splatinsert1320 = insertelement <4 x double> poison, double %_p_scalar_716.us, i32 0
  %broadcast.splat1321 = shufflevector <4 x double> %broadcast.splatinsert1320, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1323 = insertelement <4 x double> poison, double %_p_scalar_724.us, i32 0
  %broadcast.splat1324 = shufflevector <4 x double> %broadcast.splatinsert1323, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1307

vector.body1307:                                  ; preds = %vector.body1307, %vector.ph1312
  %index1315 = phi i64 [ 0, %vector.ph1312 ], [ %index.next1316, %vector.body1307 ]
  %238 = add nuw nsw i64 %index1315, %214
  %239 = add nuw nsw i64 %index1315, %polly.access.mul.Packed_MemRef_call1521709.us
  %240 = getelementptr double, double* %Packed_MemRef_call1521, i64 %239
  %241 = bitcast double* %240 to <4 x double>*
  %wide.load1319 = load <4 x double>, <4 x double>* %241, align 8
  %242 = fmul fast <4 x double> %broadcast.splat1321, %wide.load1319
  %243 = getelementptr double, double* %Packed_MemRef_call2523, i64 %239
  %244 = bitcast double* %243 to <4 x double>*
  %wide.load1322 = load <4 x double>, <4 x double>* %244, align 8
  %245 = fmul fast <4 x double> %broadcast.splat1324, %wide.load1322
  %246 = shl i64 %238, 3
  %247 = add nuw nsw i64 %246, %237
  %248 = getelementptr i8, i8* %call, i64 %247
  %249 = bitcast i8* %248 to <4 x double>*
  %wide.load1325 = load <4 x double>, <4 x double>* %249, align 8, !alias.scope !98, !noalias !100
  %250 = fadd fast <4 x double> %245, %242
  %251 = fmul fast <4 x double> %250, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %252 = fadd fast <4 x double> %251, %wide.load1325
  %253 = bitcast i8* %248 to <4 x double>*
  store <4 x double> %252, <4 x double>* %253, align 8, !alias.scope !98, !noalias !100
  %index.next1316 = add i64 %index1315, 4
  %254 = icmp eq i64 %index.next1316, %n.vec1314
  br i1 %254, label %middle.block1305, label %vector.body1307, !llvm.loop !109

middle.block1305:                                 ; preds = %vector.body1307
  %cmp.n1318 = icmp eq i64 %234, %n.vec1314
  br i1 %cmp.n1318, label %polly.loop_exit705.us, label %polly.loop_header703.us.preheader

polly.loop_header703.us.preheader:                ; preds = %polly.loop_header696.us, %middle.block1305
  %polly.indvar706.us.ph = phi i64 [ 0, %polly.loop_header696.us ], [ %n.vec1314, %middle.block1305 ]
  br label %polly.loop_header703.us

polly.loop_header703.us:                          ; preds = %polly.loop_header703.us.preheader, %polly.loop_header703.us
  %polly.indvar706.us = phi i64 [ %polly.indvar_next707.us, %polly.loop_header703.us ], [ %polly.indvar706.us.ph, %polly.loop_header703.us.preheader ]
  %255 = add nuw nsw i64 %polly.indvar706.us, %214
  %polly.access.add.Packed_MemRef_call1521710.us = add nuw nsw i64 %polly.indvar706.us, %polly.access.mul.Packed_MemRef_call1521709.us
  %polly.access.Packed_MemRef_call1521711.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521710.us
  %_p_scalar_712.us = load double, double* %polly.access.Packed_MemRef_call1521711.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_716.us, %_p_scalar_712.us
  %polly.access.Packed_MemRef_call2523719.us = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call1521710.us
  %_p_scalar_720.us = load double, double* %polly.access.Packed_MemRef_call2523719.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_724.us, %_p_scalar_720.us
  %256 = shl i64 %255, 3
  %257 = add nuw nsw i64 %256, %237
  %scevgep725.us = getelementptr i8, i8* %call, i64 %257
  %scevgep725726.us = bitcast i8* %scevgep725.us to double*
  %_p_scalar_727.us = load double, double* %scevgep725726.us, align 8, !alias.scope !98, !noalias !100
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_727.us
  store double %p_add42.i.us, double* %scevgep725726.us, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next707.us = add nuw nsw i64 %polly.indvar706.us, 1
  %exitcond1156.not = icmp eq i64 %polly.indvar706.us, %smin1155
  br i1 %exitcond1156.not, label %polly.loop_exit705.us, label %polly.loop_header703.us, !llvm.loop !110

polly.loop_exit705.us:                            ; preds = %polly.loop_header703.us, %middle.block1305
  %polly.indvar_next701.us = add nuw nsw i64 %polly.indvar700.us, 1
  %indvars.iv.next1154 = add nuw nsw i64 %indvars.iv1153, 1
  %exitcond1163.not = icmp eq i64 %polly.indvar700.us, %smax1162
  br i1 %exitcond1163.not, label %polly.loop_exit698.loopexit.us, label %polly.loop_header696.us

polly.loop_exit698.loopexit.us:                   ; preds = %polly.loop_exit705.us
  %polly.indvar_next693.us = add nuw nsw i64 %polly.indvar692.us, 1
  %exitcond1165.not = icmp eq i64 %polly.indvar_next693.us, %211
  br i1 %exitcond1165.not, label %polly.loop_exit691, label %polly.loop_header689.us

polly.loop_header675:                             ; preds = %polly.loop_header656, %polly.loop_header675
  %polly.indvar679 = phi i64 [ %polly.indvar_next680, %polly.loop_header675 ], [ %222, %polly.loop_header656 ]
  %258 = add nuw nsw i64 %polly.indvar679, %214
  %polly.access.mul.call1683 = mul nuw nsw i64 %258, 1000
  %polly.access.add.call1684 = add nuw nsw i64 %231, %polly.access.mul.call1683
  %polly.access.call1685 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684
  %polly.access.call1685.load = load double, double* %polly.access.call1685, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1521687 = add nuw nsw i64 %polly.indvar679, %polly.access.mul.Packed_MemRef_call1521686
  %polly.access.Packed_MemRef_call1521688 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521687
  store double %polly.access.call1685.load, double* %polly.access.Packed_MemRef_call1521688, align 8
  %polly.indvar_next680 = add nuw nsw i64 %polly.indvar679, 1
  %polly.loop_cond681.not.not = icmp ult i64 %polly.indvar679, %227
  br i1 %polly.loop_cond681.not.not, label %polly.loop_header675, label %polly.loop_exit677

polly.loop_header854:                             ; preds = %entry, %polly.loop_exit862
  %indvars.iv1195 = phi i64 [ %indvars.iv.next1196, %polly.loop_exit862 ], [ 0, %entry ]
  %polly.indvar857 = phi i64 [ %polly.indvar_next858, %polly.loop_exit862 ], [ 0, %entry ]
  %smin1197 = call i64 @llvm.smin.i64(i64 %indvars.iv1195, i64 -1168)
  %259 = shl nsw i64 %polly.indvar857, 5
  %260 = add nsw i64 %smin1197, 1199
  br label %polly.loop_header860

polly.loop_exit862:                               ; preds = %polly.loop_exit868
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %indvars.iv.next1196 = add nsw i64 %indvars.iv1195, -32
  %exitcond1200.not = icmp eq i64 %polly.indvar_next858, 38
  br i1 %exitcond1200.not, label %polly.loop_header881, label %polly.loop_header854

polly.loop_header860:                             ; preds = %polly.loop_exit868, %polly.loop_header854
  %indvars.iv1191 = phi i64 [ %indvars.iv.next1192, %polly.loop_exit868 ], [ 0, %polly.loop_header854 ]
  %polly.indvar863 = phi i64 [ %polly.indvar_next864, %polly.loop_exit868 ], [ 0, %polly.loop_header854 ]
  %261 = mul nsw i64 %polly.indvar863, -32
  %smin = call i64 @llvm.smin.i64(i64 %261, i64 -1168)
  %262 = add nsw i64 %smin, 1200
  %smin1193 = call i64 @llvm.smin.i64(i64 %indvars.iv1191, i64 -1168)
  %263 = shl nsw i64 %polly.indvar863, 5
  %264 = add nsw i64 %smin1193, 1199
  br label %polly.loop_header866

polly.loop_exit868:                               ; preds = %polly.loop_exit874
  %polly.indvar_next864 = add nuw nsw i64 %polly.indvar863, 1
  %indvars.iv.next1192 = add nsw i64 %indvars.iv1191, -32
  %exitcond1199.not = icmp eq i64 %polly.indvar_next864, 38
  br i1 %exitcond1199.not, label %polly.loop_exit862, label %polly.loop_header860

polly.loop_header866:                             ; preds = %polly.loop_exit874, %polly.loop_header860
  %polly.indvar869 = phi i64 [ 0, %polly.loop_header860 ], [ %polly.indvar_next870, %polly.loop_exit874 ]
  %265 = add nuw nsw i64 %polly.indvar869, %259
  %266 = trunc i64 %265 to i32
  %267 = mul nuw nsw i64 %265, 9600
  %min.iters.check = icmp eq i64 %262, 0
  br i1 %min.iters.check, label %polly.loop_header872, label %vector.ph1235

vector.ph1235:                                    ; preds = %polly.loop_header866
  %broadcast.splatinsert1242 = insertelement <4 x i64> poison, i64 %263, i32 0
  %broadcast.splat1243 = shufflevector <4 x i64> %broadcast.splatinsert1242, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1244 = insertelement <4 x i32> poison, i32 %266, i32 0
  %broadcast.splat1245 = shufflevector <4 x i32> %broadcast.splatinsert1244, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1234

vector.body1234:                                  ; preds = %vector.body1234, %vector.ph1235
  %index1236 = phi i64 [ 0, %vector.ph1235 ], [ %index.next1237, %vector.body1234 ]
  %vec.ind1240 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1235 ], [ %vec.ind.next1241, %vector.body1234 ]
  %268 = add nuw nsw <4 x i64> %vec.ind1240, %broadcast.splat1243
  %269 = trunc <4 x i64> %268 to <4 x i32>
  %270 = mul <4 x i32> %broadcast.splat1245, %269
  %271 = add <4 x i32> %270, <i32 3, i32 3, i32 3, i32 3>
  %272 = urem <4 x i32> %271, <i32 1200, i32 1200, i32 1200, i32 1200>
  %273 = sitofp <4 x i32> %272 to <4 x double>
  %274 = fmul fast <4 x double> %273, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %275 = extractelement <4 x i64> %268, i32 0
  %276 = shl i64 %275, 3
  %277 = add nuw nsw i64 %276, %267
  %278 = getelementptr i8, i8* %call, i64 %277
  %279 = bitcast i8* %278 to <4 x double>*
  store <4 x double> %274, <4 x double>* %279, align 8, !alias.scope !111, !noalias !113
  %index.next1237 = add i64 %index1236, 4
  %vec.ind.next1241 = add <4 x i64> %vec.ind1240, <i64 4, i64 4, i64 4, i64 4>
  %280 = icmp eq i64 %index.next1237, %262
  br i1 %280, label %polly.loop_exit874, label %vector.body1234, !llvm.loop !116

polly.loop_exit874:                               ; preds = %vector.body1234, %polly.loop_header872
  %polly.indvar_next870 = add nuw nsw i64 %polly.indvar869, 1
  %exitcond1198.not = icmp eq i64 %polly.indvar869, %260
  br i1 %exitcond1198.not, label %polly.loop_exit868, label %polly.loop_header866

polly.loop_header872:                             ; preds = %polly.loop_header866, %polly.loop_header872
  %polly.indvar875 = phi i64 [ %polly.indvar_next876, %polly.loop_header872 ], [ 0, %polly.loop_header866 ]
  %281 = add nuw nsw i64 %polly.indvar875, %263
  %282 = trunc i64 %281 to i32
  %283 = mul i32 %282, %266
  %284 = add i32 %283, 3
  %285 = urem i32 %284, 1200
  %p_conv31.i = sitofp i32 %285 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %286 = shl i64 %281, 3
  %287 = add nuw nsw i64 %286, %267
  %scevgep878 = getelementptr i8, i8* %call, i64 %287
  %scevgep878879 = bitcast i8* %scevgep878 to double*
  store double %p_div33.i, double* %scevgep878879, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next876 = add nuw nsw i64 %polly.indvar875, 1
  %exitcond1194.not = icmp eq i64 %polly.indvar875, %264
  br i1 %exitcond1194.not, label %polly.loop_exit874, label %polly.loop_header872, !llvm.loop !117

polly.loop_header881:                             ; preds = %polly.loop_exit862, %polly.loop_exit889
  %indvars.iv1185 = phi i64 [ %indvars.iv.next1186, %polly.loop_exit889 ], [ 0, %polly.loop_exit862 ]
  %polly.indvar884 = phi i64 [ %polly.indvar_next885, %polly.loop_exit889 ], [ 0, %polly.loop_exit862 ]
  %smin1187 = call i64 @llvm.smin.i64(i64 %indvars.iv1185, i64 -1168)
  %288 = shl nsw i64 %polly.indvar884, 5
  %289 = add nsw i64 %smin1187, 1199
  br label %polly.loop_header887

polly.loop_exit889:                               ; preds = %polly.loop_exit895
  %polly.indvar_next885 = add nuw nsw i64 %polly.indvar884, 1
  %indvars.iv.next1186 = add nsw i64 %indvars.iv1185, -32
  %exitcond1190.not = icmp eq i64 %polly.indvar_next885, 38
  br i1 %exitcond1190.not, label %polly.loop_header907, label %polly.loop_header881

polly.loop_header887:                             ; preds = %polly.loop_exit895, %polly.loop_header881
  %indvars.iv1181 = phi i64 [ %indvars.iv.next1182, %polly.loop_exit895 ], [ 0, %polly.loop_header881 ]
  %polly.indvar890 = phi i64 [ %polly.indvar_next891, %polly.loop_exit895 ], [ 0, %polly.loop_header881 ]
  %290 = mul nsw i64 %polly.indvar890, -32
  %smin1249 = call i64 @llvm.smin.i64(i64 %290, i64 -968)
  %291 = add nsw i64 %smin1249, 1000
  %smin1183 = call i64 @llvm.smin.i64(i64 %indvars.iv1181, i64 -968)
  %292 = shl nsw i64 %polly.indvar890, 5
  %293 = add nsw i64 %smin1183, 999
  br label %polly.loop_header893

polly.loop_exit895:                               ; preds = %polly.loop_exit901
  %polly.indvar_next891 = add nuw nsw i64 %polly.indvar890, 1
  %indvars.iv.next1182 = add nsw i64 %indvars.iv1181, -32
  %exitcond1189.not = icmp eq i64 %polly.indvar_next891, 32
  br i1 %exitcond1189.not, label %polly.loop_exit889, label %polly.loop_header887

polly.loop_header893:                             ; preds = %polly.loop_exit901, %polly.loop_header887
  %polly.indvar896 = phi i64 [ 0, %polly.loop_header887 ], [ %polly.indvar_next897, %polly.loop_exit901 ]
  %294 = add nuw nsw i64 %polly.indvar896, %288
  %295 = trunc i64 %294 to i32
  %296 = mul nuw nsw i64 %294, 8000
  %min.iters.check1250 = icmp eq i64 %291, 0
  br i1 %min.iters.check1250, label %polly.loop_header899, label %vector.ph1251

vector.ph1251:                                    ; preds = %polly.loop_header893
  %broadcast.splatinsert1260 = insertelement <4 x i64> poison, i64 %292, i32 0
  %broadcast.splat1261 = shufflevector <4 x i64> %broadcast.splatinsert1260, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1262 = insertelement <4 x i32> poison, i32 %295, i32 0
  %broadcast.splat1263 = shufflevector <4 x i32> %broadcast.splatinsert1262, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1248

vector.body1248:                                  ; preds = %vector.body1248, %vector.ph1251
  %index1254 = phi i64 [ 0, %vector.ph1251 ], [ %index.next1255, %vector.body1248 ]
  %vec.ind1258 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1251 ], [ %vec.ind.next1259, %vector.body1248 ]
  %297 = add nuw nsw <4 x i64> %vec.ind1258, %broadcast.splat1261
  %298 = trunc <4 x i64> %297 to <4 x i32>
  %299 = mul <4 x i32> %broadcast.splat1263, %298
  %300 = add <4 x i32> %299, <i32 2, i32 2, i32 2, i32 2>
  %301 = urem <4 x i32> %300, <i32 1000, i32 1000, i32 1000, i32 1000>
  %302 = sitofp <4 x i32> %301 to <4 x double>
  %303 = fmul fast <4 x double> %302, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %304 = extractelement <4 x i64> %297, i32 0
  %305 = shl i64 %304, 3
  %306 = add nuw nsw i64 %305, %296
  %307 = getelementptr i8, i8* %call2, i64 %306
  %308 = bitcast i8* %307 to <4 x double>*
  store <4 x double> %303, <4 x double>* %308, align 8, !alias.scope !115, !noalias !118
  %index.next1255 = add i64 %index1254, 4
  %vec.ind.next1259 = add <4 x i64> %vec.ind1258, <i64 4, i64 4, i64 4, i64 4>
  %309 = icmp eq i64 %index.next1255, %291
  br i1 %309, label %polly.loop_exit901, label %vector.body1248, !llvm.loop !119

polly.loop_exit901:                               ; preds = %vector.body1248, %polly.loop_header899
  %polly.indvar_next897 = add nuw nsw i64 %polly.indvar896, 1
  %exitcond1188.not = icmp eq i64 %polly.indvar896, %289
  br i1 %exitcond1188.not, label %polly.loop_exit895, label %polly.loop_header893

polly.loop_header899:                             ; preds = %polly.loop_header893, %polly.loop_header899
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_header899 ], [ 0, %polly.loop_header893 ]
  %310 = add nuw nsw i64 %polly.indvar902, %292
  %311 = trunc i64 %310 to i32
  %312 = mul i32 %311, %295
  %313 = add i32 %312, 2
  %314 = urem i32 %313, 1000
  %p_conv10.i = sitofp i32 %314 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %315 = shl i64 %310, 3
  %316 = add nuw nsw i64 %315, %296
  %scevgep905 = getelementptr i8, i8* %call2, i64 %316
  %scevgep905906 = bitcast i8* %scevgep905 to double*
  store double %p_div12.i, double* %scevgep905906, align 8, !alias.scope !115, !noalias !118
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %exitcond1184.not = icmp eq i64 %polly.indvar902, %293
  br i1 %exitcond1184.not, label %polly.loop_exit901, label %polly.loop_header899, !llvm.loop !120

polly.loop_header907:                             ; preds = %polly.loop_exit889, %polly.loop_exit915
  %indvars.iv1175 = phi i64 [ %indvars.iv.next1176, %polly.loop_exit915 ], [ 0, %polly.loop_exit889 ]
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_exit915 ], [ 0, %polly.loop_exit889 ]
  %smin1177 = call i64 @llvm.smin.i64(i64 %indvars.iv1175, i64 -1168)
  %317 = shl nsw i64 %polly.indvar910, 5
  %318 = add nsw i64 %smin1177, 1199
  br label %polly.loop_header913

polly.loop_exit915:                               ; preds = %polly.loop_exit921
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %indvars.iv.next1176 = add nsw i64 %indvars.iv1175, -32
  %exitcond1180.not = icmp eq i64 %polly.indvar_next911, 38
  br i1 %exitcond1180.not, label %init_array.exit, label %polly.loop_header907

polly.loop_header913:                             ; preds = %polly.loop_exit921, %polly.loop_header907
  %indvars.iv1171 = phi i64 [ %indvars.iv.next1172, %polly.loop_exit921 ], [ 0, %polly.loop_header907 ]
  %polly.indvar916 = phi i64 [ %polly.indvar_next917, %polly.loop_exit921 ], [ 0, %polly.loop_header907 ]
  %319 = mul nsw i64 %polly.indvar916, -32
  %smin1267 = call i64 @llvm.smin.i64(i64 %319, i64 -968)
  %320 = add nsw i64 %smin1267, 1000
  %smin1173 = call i64 @llvm.smin.i64(i64 %indvars.iv1171, i64 -968)
  %321 = shl nsw i64 %polly.indvar916, 5
  %322 = add nsw i64 %smin1173, 999
  br label %polly.loop_header919

polly.loop_exit921:                               ; preds = %polly.loop_exit927
  %polly.indvar_next917 = add nuw nsw i64 %polly.indvar916, 1
  %indvars.iv.next1172 = add nsw i64 %indvars.iv1171, -32
  %exitcond1179.not = icmp eq i64 %polly.indvar_next917, 32
  br i1 %exitcond1179.not, label %polly.loop_exit915, label %polly.loop_header913

polly.loop_header919:                             ; preds = %polly.loop_exit927, %polly.loop_header913
  %polly.indvar922 = phi i64 [ 0, %polly.loop_header913 ], [ %polly.indvar_next923, %polly.loop_exit927 ]
  %323 = add nuw nsw i64 %polly.indvar922, %317
  %324 = trunc i64 %323 to i32
  %325 = mul nuw nsw i64 %323, 8000
  %min.iters.check1268 = icmp eq i64 %320, 0
  br i1 %min.iters.check1268, label %polly.loop_header925, label %vector.ph1269

vector.ph1269:                                    ; preds = %polly.loop_header919
  %broadcast.splatinsert1278 = insertelement <4 x i64> poison, i64 %321, i32 0
  %broadcast.splat1279 = shufflevector <4 x i64> %broadcast.splatinsert1278, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1280 = insertelement <4 x i32> poison, i32 %324, i32 0
  %broadcast.splat1281 = shufflevector <4 x i32> %broadcast.splatinsert1280, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1266

vector.body1266:                                  ; preds = %vector.body1266, %vector.ph1269
  %index1272 = phi i64 [ 0, %vector.ph1269 ], [ %index.next1273, %vector.body1266 ]
  %vec.ind1276 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1269 ], [ %vec.ind.next1277, %vector.body1266 ]
  %326 = add nuw nsw <4 x i64> %vec.ind1276, %broadcast.splat1279
  %327 = trunc <4 x i64> %326 to <4 x i32>
  %328 = mul <4 x i32> %broadcast.splat1281, %327
  %329 = add <4 x i32> %328, <i32 1, i32 1, i32 1, i32 1>
  %330 = urem <4 x i32> %329, <i32 1200, i32 1200, i32 1200, i32 1200>
  %331 = sitofp <4 x i32> %330 to <4 x double>
  %332 = fmul fast <4 x double> %331, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %333 = extractelement <4 x i64> %326, i32 0
  %334 = shl i64 %333, 3
  %335 = add nuw nsw i64 %334, %325
  %336 = getelementptr i8, i8* %call1, i64 %335
  %337 = bitcast i8* %336 to <4 x double>*
  store <4 x double> %332, <4 x double>* %337, align 8, !alias.scope !114, !noalias !121
  %index.next1273 = add i64 %index1272, 4
  %vec.ind.next1277 = add <4 x i64> %vec.ind1276, <i64 4, i64 4, i64 4, i64 4>
  %338 = icmp eq i64 %index.next1273, %320
  br i1 %338, label %polly.loop_exit927, label %vector.body1266, !llvm.loop !122

polly.loop_exit927:                               ; preds = %vector.body1266, %polly.loop_header925
  %polly.indvar_next923 = add nuw nsw i64 %polly.indvar922, 1
  %exitcond1178.not = icmp eq i64 %polly.indvar922, %318
  br i1 %exitcond1178.not, label %polly.loop_exit921, label %polly.loop_header919

polly.loop_header925:                             ; preds = %polly.loop_header919, %polly.loop_header925
  %polly.indvar928 = phi i64 [ %polly.indvar_next929, %polly.loop_header925 ], [ 0, %polly.loop_header919 ]
  %339 = add nuw nsw i64 %polly.indvar928, %321
  %340 = trunc i64 %339 to i32
  %341 = mul i32 %340, %324
  %342 = add i32 %341, 1
  %343 = urem i32 %342, 1200
  %p_conv.i = sitofp i32 %343 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %344 = shl i64 %339, 3
  %345 = add nuw nsw i64 %344, %325
  %scevgep932 = getelementptr i8, i8* %call1, i64 %345
  %scevgep932933 = bitcast i8* %scevgep932 to double*
  store double %p_div.i, double* %scevgep932933, align 8, !alias.scope !114, !noalias !121
  %polly.indvar_next929 = add nuw nsw i64 %polly.indvar928, 1
  %exitcond1174.not = icmp eq i64 %polly.indvar928, %322
  br i1 %exitcond1174.not, label %polly.loop_exit927, label %polly.loop_header925, !llvm.loop !123
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
!26 = !{!"llvm.loop.tile.size", i32 128}
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
!50 = !{!"llvm.loop.tile.size", i32 64}
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
