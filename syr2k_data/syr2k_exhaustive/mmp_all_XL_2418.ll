; ModuleID = 'syr2k_exhaustive/mmp_all_XL_2418.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_2418.c"
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
  %call860 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1712 = bitcast i8* %call1 to double*
  %polly.access.call1721 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2722 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1721, %call2
  %polly.access.call2741 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2741, %call1
  %2 = or i1 %0, %1
  %polly.access.call761 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call761, %call2
  %4 = icmp ule i8* %polly.access.call2741, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call761, %call1
  %8 = icmp ule i8* %polly.access.call1721, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header834, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1145 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1144 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1143 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1142 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1142, %scevgep1145
  %bound1 = icmp ult i8* %scevgep1144, %scevgep1143
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
  br i1 %exitcond18.not.i, label %vector.ph1149, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1149:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1156 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1157 = shufflevector <4 x i64> %broadcast.splatinsert1156, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1148

vector.body1148:                                  ; preds = %vector.body1148, %vector.ph1149
  %index1150 = phi i64 [ 0, %vector.ph1149 ], [ %index.next1151, %vector.body1148 ]
  %vec.ind1154 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1149 ], [ %vec.ind.next1155, %vector.body1148 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1154, %broadcast.splat1157
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call860, i64 %indvars.iv7.i, i64 %index1150
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1151 = add i64 %index1150, 4
  %vec.ind.next1155 = add <4 x i64> %vec.ind1154, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1151, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1148, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1148
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1149, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit895
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start503, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1211 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1211, label %for.body3.i46.preheader1354, label %vector.ph1212

vector.ph1212:                                    ; preds = %for.body3.i46.preheader
  %n.vec1214 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1210

vector.body1210:                                  ; preds = %vector.body1210, %vector.ph1212
  %index1215 = phi i64 [ 0, %vector.ph1212 ], [ %index.next1216, %vector.body1210 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call860, i64 %indvars.iv21.i, i64 %index1215
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1216 = add i64 %index1215, 4
  %46 = icmp eq i64 %index.next1216, %n.vec1214
  br i1 %46, label %middle.block1208, label %vector.body1210, !llvm.loop !18

middle.block1208:                                 ; preds = %vector.body1210
  %cmp.n1218 = icmp eq i64 %indvars.iv21.i, %n.vec1214
  br i1 %cmp.n1218, label %for.inc6.i, label %for.body3.i46.preheader1354

for.body3.i46.preheader1354:                      ; preds = %for.body3.i46.preheader, %middle.block1208
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1214, %middle.block1208 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1354, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1354 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call860, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1208, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call860, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting504
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start296, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1256 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1256, label %for.body3.i60.preheader1352, label %vector.ph1257

vector.ph1257:                                    ; preds = %for.body3.i60.preheader
  %n.vec1259 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %vector.ph1257
  %index1260 = phi i64 [ 0, %vector.ph1257 ], [ %index.next1261, %vector.body1255 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call860, i64 %indvars.iv21.i52, i64 %index1260
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1264 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1264, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1261 = add i64 %index1260, 4
  %57 = icmp eq i64 %index.next1261, %n.vec1259
  br i1 %57, label %middle.block1253, label %vector.body1255, !llvm.loop !57

middle.block1253:                                 ; preds = %vector.body1255
  %cmp.n1263 = icmp eq i64 %indvars.iv21.i52, %n.vec1259
  br i1 %cmp.n1263, label %for.inc6.i63, label %for.body3.i60.preheader1352

for.body3.i60.preheader1352:                      ; preds = %for.body3.i60.preheader, %middle.block1253
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1259, %middle.block1253 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1352, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1352 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call860, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1253, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call860, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting297
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1304 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1304, label %for.body3.i99.preheader1350, label %vector.ph1305

vector.ph1305:                                    ; preds = %for.body3.i99.preheader
  %n.vec1307 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1303

vector.body1303:                                  ; preds = %vector.body1303, %vector.ph1305
  %index1308 = phi i64 [ 0, %vector.ph1305 ], [ %index.next1309, %vector.body1303 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call860, i64 %indvars.iv21.i91, i64 %index1308
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1312 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1312, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1309 = add i64 %index1308, 4
  %68 = icmp eq i64 %index.next1309, %n.vec1307
  br i1 %68, label %middle.block1301, label %vector.body1303, !llvm.loop !59

middle.block1301:                                 ; preds = %vector.body1303
  %cmp.n1311 = icmp eq i64 %indvars.iv21.i91, %n.vec1307
  br i1 %cmp.n1311, label %for.inc6.i102, label %for.body3.i99.preheader1350

for.body3.i99.preheader1350:                      ; preds = %for.body3.i99.preheader, %middle.block1301
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1307, %middle.block1301 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1350, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1350 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call860, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1301, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call860, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call860, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1316 = phi i64 [ %indvar.next1317, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1316, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1318 = icmp ult i64 %88, 4
  br i1 %min.iters.check1318, label %polly.loop_header192.preheader, label %vector.ph1319

vector.ph1319:                                    ; preds = %polly.loop_header
  %n.vec1321 = and i64 %88, -4
  br label %vector.body1315

vector.body1315:                                  ; preds = %vector.body1315, %vector.ph1319
  %index1322 = phi i64 [ 0, %vector.ph1319 ], [ %index.next1323, %vector.body1315 ]
  %90 = shl nuw nsw i64 %index1322, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1326 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1326, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1323 = add i64 %index1322, 4
  %95 = icmp eq i64 %index.next1323, %n.vec1321
  br i1 %95, label %middle.block1313, label %vector.body1315, !llvm.loop !72

middle.block1313:                                 ; preds = %vector.body1315
  %cmp.n1325 = icmp eq i64 %88, %n.vec1321
  br i1 %cmp.n1325, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1313
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1321, %middle.block1313 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1313
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1044.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1317 = add i64 %indvar1316, 1
  br i1 %exitcond1044.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1043.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1043.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1042.not, label %polly.loop_header216, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 1000
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2722, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !69, !noalias !75
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1041.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv1037 = phi i64 [ %indvars.iv.next1038, %polly.loop_exit224 ], [ 1, %polly.loop_exit208 ]
  %indvars.iv1026 = phi i64 [ %indvars.iv.next1027, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %101, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = mul nsw i64 %polly.indvar219, -96
  %98 = mul nuw nsw i64 %polly.indvar219, 96
  %99 = lshr i64 %indvars.iv1037, 2
  %100 = sub nsw i64 %indvars.iv1037, %99
  %101 = add nuw nsw i64 %polly.indvar219, 1
  %pexp.p_div_q = lshr i64 %101, 2
  %polly.loop_guard.not = icmp ult i64 %polly.indvar219, %pexp.p_div_q
  br i1 %polly.loop_guard.not, label %polly.loop_exit224, label %polly.loop_header222.preheader

polly.loop_header222.preheader:                   ; preds = %polly.loop_header216
  %102 = mul nsw i64 %polly.indvar219, -96
  %103 = icmp slt i64 %102, -1104
  %104 = select i1 %103, i64 %102, i64 -1104
  %105 = add nsw i64 %104, 1199
  %106 = mul nuw nsw i64 %polly.indvar219, 96
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit231, %polly.loop_header216
  %indvars.iv.next = add nsw i64 %indvars.iv, -96
  %indvars.iv.next1027 = add nuw nsw i64 %indvars.iv1026, 96
  %indvars.iv.next1038 = add nuw nsw i64 %indvars.iv1037, 1
  %exitcond1040.not = icmp eq i64 %101, 13
  br i1 %exitcond1040.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_header222.preheader, %polly.loop_exit231
  %indvars.iv1028 = phi i64 [ %indvars.iv1026, %polly.loop_header222.preheader ], [ %indvars.iv.next1029, %polly.loop_exit231 ]
  %indvars.iv1024 = phi i64 [ %indvars.iv, %polly.loop_header222.preheader ], [ %indvars.iv.next1025, %polly.loop_exit231 ]
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header222.preheader ], [ %polly.indvar_next226, %polly.loop_exit231 ]
  %107 = shl i64 %polly.indvar225, 7
  %108 = add i64 %97, %107
  %smax1330 = call i64 @llvm.smax.i64(i64 %108, i64 0)
  %109 = mul i64 %polly.indvar225, -128
  %110 = add i64 %98, %109
  %111 = add i64 %smax1330, %110
  %112 = shl nsw i64 %polly.indvar225, 7
  %113 = add nsw i64 %112, %102
  %114 = icmp sgt i64 %113, 0
  %115 = select i1 %114, i64 %113, i64 0
  %polly.loop_guard232.not = icmp sgt i64 %115, %105
  br i1 %polly.loop_guard232.not, label %polly.loop_exit231, label %polly.loop_header229.preheader

polly.loop_header229.preheader:                   ; preds = %polly.loop_header222
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1024, i64 0)
  %116 = add i64 %smax, %indvars.iv1028
  %117 = sub nsw i64 %106, %112
  %118 = add nuw nsw i64 %112, 128
  br label %polly.loop_header229

polly.loop_exit231:                               ; preds = %polly.loop_exit263, %polly.loop_header222
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next1025 = add nsw i64 %indvars.iv1024, 128
  %indvars.iv.next1029 = add nsw i64 %indvars.iv1028, -128
  %exitcond1039.not = icmp eq i64 %polly.indvar_next226, %100
  br i1 %exitcond1039.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header229:                             ; preds = %polly.loop_header229.preheader, %polly.loop_exit263
  %indvar1331 = phi i64 [ 0, %polly.loop_header229.preheader ], [ %indvar.next1332, %polly.loop_exit263 ]
  %indvars.iv1030 = phi i64 [ %116, %polly.loop_header229.preheader ], [ %indvars.iv.next1031, %polly.loop_exit263 ]
  %polly.indvar233 = phi i64 [ %115, %polly.loop_header229.preheader ], [ %polly.indvar_next234, %polly.loop_exit263 ]
  %119 = add i64 %111, %indvar1331
  %smin1333 = call i64 @llvm.smin.i64(i64 %119, i64 127)
  %120 = add nsw i64 %smin1333, 1
  %smin1034 = call i64 @llvm.smin.i64(i64 %indvars.iv1030, i64 127)
  %121 = add nsw i64 %polly.indvar233, %117
  %polly.loop_guard2461131 = icmp sgt i64 %121, -1
  %122 = add nuw nsw i64 %polly.indvar233, %106
  %.not = icmp ult i64 %122, %118
  %polly.access.mul.call1255 = mul nsw i64 %122, 1000
  br i1 %polly.loop_guard2461131, label %polly.loop_header236.us, label %polly.loop_header229.split

polly.loop_header236.us:                          ; preds = %polly.loop_header229, %polly.merge.us
  %polly.indvar239.us = phi i64 [ %polly.indvar_next240.us, %polly.merge.us ], [ 0, %polly.loop_header229 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar239.us, 1200
  br label %polly.loop_header243.us

polly.loop_header243.us:                          ; preds = %polly.loop_header236.us, %polly.loop_header243.us
  %polly.indvar247.us = phi i64 [ %polly.indvar_next248.us, %polly.loop_header243.us ], [ 0, %polly.loop_header236.us ]
  %123 = add nuw nsw i64 %polly.indvar247.us, %112
  %polly.access.mul.call1251.us = mul nuw nsw i64 %123, 1000
  %polly.access.add.call1252.us = add nuw nsw i64 %polly.access.mul.call1251.us, %polly.indvar239.us
  %polly.access.call1253.us = getelementptr double, double* %polly.access.cast.call1712, i64 %polly.access.add.call1252.us
  %polly.access.call1253.load.us = load double, double* %polly.access.call1253.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar247.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1253.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next248.us = add nuw nsw i64 %polly.indvar247.us, 1
  %exitcond1032.not = icmp eq i64 %polly.indvar247.us, %smin1034
  br i1 %exitcond1032.not, label %polly.cond.loopexit.us, label %polly.loop_header243.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1256.us = add nuw nsw i64 %polly.indvar239.us, %polly.access.mul.call1255
  %polly.access.call1257.us = getelementptr double, double* %polly.access.cast.call1712, i64 %polly.access.add.call1256.us
  %polly.access.call1257.load.us = load double, double* %polly.access.call1257.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1259.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %121
  %polly.access.Packed_MemRef_call1260.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1259.us
  store double %polly.access.call1257.load.us, double* %polly.access.Packed_MemRef_call1260.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next240.us = add nuw nsw i64 %polly.indvar239.us, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next240.us, 1000
  br i1 %exitcond1033.not, label %polly.loop_header261.preheader, label %polly.loop_header236.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header243.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header229.split:                       ; preds = %polly.loop_header229
  br i1 %.not, label %polly.loop_exit263, label %polly.loop_header236

polly.loop_exit263:                               ; preds = %polly.loop_exit270.loopexit.us, %polly.loop_header229.split, %polly.loop_header261.preheader
  %polly.indvar_next234 = add nuw nsw i64 %polly.indvar233, 1
  %polly.loop_cond235.not.not = icmp ult i64 %polly.indvar233, %105
  %indvars.iv.next1031 = add i64 %indvars.iv1030, 1
  %indvar.next1332 = add i64 %indvar1331, 1
  br i1 %polly.loop_cond235.not.not, label %polly.loop_header229, label %polly.loop_exit231

polly.loop_header236:                             ; preds = %polly.loop_header229.split, %polly.loop_header236
  %polly.indvar239 = phi i64 [ %polly.indvar_next240, %polly.loop_header236 ], [ 0, %polly.loop_header229.split ]
  %polly.access.add.call1256 = add nuw nsw i64 %polly.indvar239, %polly.access.mul.call1255
  %polly.access.call1257 = getelementptr double, double* %polly.access.cast.call1712, i64 %polly.access.add.call1256
  %polly.access.call1257.load = load double, double* %polly.access.call1257, align 8, !alias.scope !68, !noalias !76
  %polly.access.mul.Packed_MemRef_call1258 = mul nuw nsw i64 %polly.indvar239, 1200
  %polly.access.add.Packed_MemRef_call1259 = add nsw i64 %polly.access.mul.Packed_MemRef_call1258, %121
  %polly.access.Packed_MemRef_call1260 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1259
  store double %polly.access.call1257.load, double* %polly.access.Packed_MemRef_call1260, align 8
  %polly.indvar_next240 = add nuw nsw i64 %polly.indvar239, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next240, 1000
  br i1 %exitcond.not, label %polly.loop_header261.preheader, label %polly.loop_header236

polly.loop_header261.preheader:                   ; preds = %polly.loop_header236, %polly.merge.us
  %124 = mul i64 %122, 9600
  br i1 %polly.loop_guard2461131, label %polly.loop_header261.us, label %polly.loop_exit263

polly.loop_header261.us:                          ; preds = %polly.loop_header261.preheader, %polly.loop_exit270.loopexit.us
  %polly.indvar264.us = phi i64 [ %polly.indvar_next265.us, %polly.loop_exit270.loopexit.us ], [ 0, %polly.loop_header261.preheader ]
  %polly.access.mul.Packed_MemRef_call1275.us = mul nuw nsw i64 %polly.indvar264.us, 1200
  %polly.access.add.Packed_MemRef_call2280.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1275.us, %122
  %polly.access.Packed_MemRef_call2281.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2280.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call2281.us, align 8
  %polly.access.add.Packed_MemRef_call1288.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1275.us, %121
  %polly.access.Packed_MemRef_call1289.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call1289.us, align 8
  %min.iters.check1334 = icmp ult i64 %120, 4
  br i1 %min.iters.check1334, label %polly.loop_header268.us.preheader, label %vector.ph1335

vector.ph1335:                                    ; preds = %polly.loop_header261.us
  %n.vec1337 = and i64 %120, -4
  %broadcast.splatinsert1343 = insertelement <4 x double> poison, double %_p_scalar_282.us, i32 0
  %broadcast.splat1344 = shufflevector <4 x double> %broadcast.splatinsert1343, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1346 = insertelement <4 x double> poison, double %_p_scalar_290.us, i32 0
  %broadcast.splat1347 = shufflevector <4 x double> %broadcast.splatinsert1346, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1329

vector.body1329:                                  ; preds = %vector.body1329, %vector.ph1335
  %index1338 = phi i64 [ 0, %vector.ph1335 ], [ %index.next1339, %vector.body1329 ]
  %125 = add nuw nsw i64 %index1338, %112
  %126 = add nuw nsw i64 %index1338, %polly.access.mul.Packed_MemRef_call1275.us
  %127 = getelementptr double, double* %Packed_MemRef_call1, i64 %126
  %128 = bitcast double* %127 to <4 x double>*
  %wide.load1342 = load <4 x double>, <4 x double>* %128, align 8
  %129 = fmul fast <4 x double> %broadcast.splat1344, %wide.load1342
  %130 = add nuw nsw i64 %125, %polly.access.mul.Packed_MemRef_call1275.us
  %131 = getelementptr double, double* %Packed_MemRef_call2, i64 %130
  %132 = bitcast double* %131 to <4 x double>*
  %wide.load1345 = load <4 x double>, <4 x double>* %132, align 8
  %133 = fmul fast <4 x double> %broadcast.splat1347, %wide.load1345
  %134 = shl i64 %125, 3
  %135 = add i64 %134, %124
  %136 = getelementptr i8, i8* %call, i64 %135
  %137 = bitcast i8* %136 to <4 x double>*
  %wide.load1348 = load <4 x double>, <4 x double>* %137, align 8, !alias.scope !65, !noalias !67
  %138 = fadd fast <4 x double> %133, %129
  %139 = fmul fast <4 x double> %138, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %140 = fadd fast <4 x double> %139, %wide.load1348
  %141 = bitcast i8* %136 to <4 x double>*
  store <4 x double> %140, <4 x double>* %141, align 8, !alias.scope !65, !noalias !67
  %index.next1339 = add i64 %index1338, 4
  %142 = icmp eq i64 %index.next1339, %n.vec1337
  br i1 %142, label %middle.block1327, label %vector.body1329, !llvm.loop !77

middle.block1327:                                 ; preds = %vector.body1329
  %cmp.n1341 = icmp eq i64 %120, %n.vec1337
  br i1 %cmp.n1341, label %polly.loop_exit270.loopexit.us, label %polly.loop_header268.us.preheader

polly.loop_header268.us.preheader:                ; preds = %polly.loop_header261.us, %middle.block1327
  %polly.indvar272.us.ph = phi i64 [ 0, %polly.loop_header261.us ], [ %n.vec1337, %middle.block1327 ]
  br label %polly.loop_header268.us

polly.loop_header268.us:                          ; preds = %polly.loop_header268.us.preheader, %polly.loop_header268.us
  %polly.indvar272.us = phi i64 [ %polly.indvar_next273.us, %polly.loop_header268.us ], [ %polly.indvar272.us.ph, %polly.loop_header268.us.preheader ]
  %143 = add nuw nsw i64 %polly.indvar272.us, %112
  %polly.access.add.Packed_MemRef_call1276.us = add nuw nsw i64 %polly.indvar272.us, %polly.access.mul.Packed_MemRef_call1275.us
  %polly.access.Packed_MemRef_call1277.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1276.us
  %_p_scalar_278.us = load double, double* %polly.access.Packed_MemRef_call1277.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_282.us, %_p_scalar_278.us
  %polly.access.add.Packed_MemRef_call2284.us = add nuw nsw i64 %143, %polly.access.mul.Packed_MemRef_call1275.us
  %polly.access.Packed_MemRef_call2285.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call2285.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_290.us, %_p_scalar_286.us
  %144 = shl i64 %143, 3
  %145 = add i64 %144, %124
  %scevgep291.us = getelementptr i8, i8* %call, i64 %145
  %scevgep291292.us = bitcast i8* %scevgep291.us to double*
  %_p_scalar_293.us = load double, double* %scevgep291292.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_293.us
  store double %p_add42.i118.us, double* %scevgep291292.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next273.us = add nuw nsw i64 %polly.indvar272.us, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar272.us, %smin1034
  br i1 %exitcond1035.not, label %polly.loop_exit270.loopexit.us, label %polly.loop_header268.us, !llvm.loop !78

polly.loop_exit270.loopexit.us:                   ; preds = %polly.loop_header268.us, %middle.block1327
  %polly.indvar_next265.us = add nuw nsw i64 %polly.indvar264.us, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar_next265.us, 1000
  br i1 %exitcond1036.not, label %polly.loop_exit263, label %polly.loop_header261.us

polly.start296:                                   ; preds = %kernel_syr2k.exit
  %malloccall298 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall300 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header384

polly.exiting297:                                 ; preds = %polly.loop_exit426
  tail call void @free(i8* %malloccall298)
  tail call void @free(i8* %malloccall300)
  br label %kernel_syr2k.exit90

polly.loop_header384:                             ; preds = %polly.loop_exit392, %polly.start296
  %indvar1268 = phi i64 [ %indvar.next1269, %polly.loop_exit392 ], [ 0, %polly.start296 ]
  %polly.indvar387 = phi i64 [ %polly.indvar_next388, %polly.loop_exit392 ], [ 1, %polly.start296 ]
  %146 = add i64 %indvar1268, 1
  %147 = mul nuw nsw i64 %polly.indvar387, 9600
  %scevgep396 = getelementptr i8, i8* %call, i64 %147
  %min.iters.check1270 = icmp ult i64 %146, 4
  br i1 %min.iters.check1270, label %polly.loop_header390.preheader, label %vector.ph1271

vector.ph1271:                                    ; preds = %polly.loop_header384
  %n.vec1273 = and i64 %146, -4
  br label %vector.body1267

vector.body1267:                                  ; preds = %vector.body1267, %vector.ph1271
  %index1274 = phi i64 [ 0, %vector.ph1271 ], [ %index.next1275, %vector.body1267 ]
  %148 = shl nuw nsw i64 %index1274, 3
  %149 = getelementptr i8, i8* %scevgep396, i64 %148
  %150 = bitcast i8* %149 to <4 x double>*
  %wide.load1278 = load <4 x double>, <4 x double>* %150, align 8, !alias.scope !79, !noalias !81
  %151 = fmul fast <4 x double> %wide.load1278, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %152 = bitcast i8* %149 to <4 x double>*
  store <4 x double> %151, <4 x double>* %152, align 8, !alias.scope !79, !noalias !81
  %index.next1275 = add i64 %index1274, 4
  %153 = icmp eq i64 %index.next1275, %n.vec1273
  br i1 %153, label %middle.block1265, label %vector.body1267, !llvm.loop !86

middle.block1265:                                 ; preds = %vector.body1267
  %cmp.n1277 = icmp eq i64 %146, %n.vec1273
  br i1 %cmp.n1277, label %polly.loop_exit392, label %polly.loop_header390.preheader

polly.loop_header390.preheader:                   ; preds = %polly.loop_header384, %middle.block1265
  %polly.indvar393.ph = phi i64 [ 0, %polly.loop_header384 ], [ %n.vec1273, %middle.block1265 ]
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_header390, %middle.block1265
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar_next388, 1200
  %indvar.next1269 = add i64 %indvar1268, 1
  br i1 %exitcond1070.not, label %polly.loop_header400.preheader, label %polly.loop_header384

polly.loop_header400.preheader:                   ; preds = %polly.loop_exit392
  %Packed_MemRef_call1299 = bitcast i8* %malloccall298 to double*
  %Packed_MemRef_call2301 = bitcast i8* %malloccall300 to double*
  br label %polly.loop_header400

polly.loop_header390:                             ; preds = %polly.loop_header390.preheader, %polly.loop_header390
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_header390 ], [ %polly.indvar393.ph, %polly.loop_header390.preheader ]
  %154 = shl nuw nsw i64 %polly.indvar393, 3
  %scevgep397 = getelementptr i8, i8* %scevgep396, i64 %154
  %scevgep397398 = bitcast i8* %scevgep397 to double*
  %_p_scalar_399 = load double, double* %scevgep397398, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_399, 1.200000e+00
  store double %p_mul.i57, double* %scevgep397398, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond1069.not = icmp eq i64 %polly.indvar_next394, %polly.indvar387
  br i1 %exitcond1069.not, label %polly.loop_exit392, label %polly.loop_header390, !llvm.loop !87

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_exit408
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_exit408 ], [ 0, %polly.loop_header400.preheader ]
  %polly.access.mul.Packed_MemRef_call2301 = mul nuw nsw i64 %polly.indvar403, 1200
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_header406
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond1068.not = icmp eq i64 %polly.indvar_next404, 1000
  br i1 %exitcond1068.not, label %polly.loop_header416, label %polly.loop_header400

polly.loop_header406:                             ; preds = %polly.loop_header406, %polly.loop_header400
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header400 ], [ %polly.indvar_next410, %polly.loop_header406 ]
  %polly.access.mul.call2413 = mul nuw nsw i64 %polly.indvar409, 1000
  %polly.access.add.call2414 = add nuw nsw i64 %polly.access.mul.call2413, %polly.indvar403
  %polly.access.call2415 = getelementptr double, double* %polly.access.cast.call2722, i64 %polly.access.add.call2414
  %polly.access.call2415.load = load double, double* %polly.access.call2415, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call2301 = add nuw nsw i64 %polly.indvar409, %polly.access.mul.Packed_MemRef_call2301
  %polly.access.Packed_MemRef_call2301 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call2301
  store double %polly.access.call2415.load, double* %polly.access.Packed_MemRef_call2301, align 8
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar_next410, 1200
  br i1 %exitcond1067.not, label %polly.loop_exit408, label %polly.loop_header406

polly.loop_header416:                             ; preds = %polly.loop_exit408, %polly.loop_exit426
  %indvars.iv1063 = phi i64 [ %indvars.iv.next1064, %polly.loop_exit426 ], [ 1, %polly.loop_exit408 ]
  %indvars.iv1051 = phi i64 [ %indvars.iv.next1052, %polly.loop_exit426 ], [ 0, %polly.loop_exit408 ]
  %indvars.iv1046 = phi i64 [ %indvars.iv.next1047, %polly.loop_exit426 ], [ 0, %polly.loop_exit408 ]
  %polly.indvar419 = phi i64 [ %159, %polly.loop_exit426 ], [ 0, %polly.loop_exit408 ]
  %155 = mul nsw i64 %polly.indvar419, -96
  %156 = mul nuw nsw i64 %polly.indvar419, 96
  %157 = lshr i64 %indvars.iv1063, 2
  %158 = sub nsw i64 %indvars.iv1063, %157
  %159 = add nuw nsw i64 %polly.indvar419, 1
  %pexp.p_div_q422 = lshr i64 %159, 2
  %polly.loop_guard427.not = icmp ult i64 %polly.indvar419, %pexp.p_div_q422
  br i1 %polly.loop_guard427.not, label %polly.loop_exit426, label %polly.loop_header424.preheader

polly.loop_header424.preheader:                   ; preds = %polly.loop_header416
  %160 = mul nsw i64 %polly.indvar419, -96
  %161 = icmp slt i64 %160, -1104
  %162 = select i1 %161, i64 %160, i64 -1104
  %163 = add nsw i64 %162, 1199
  %164 = mul nuw nsw i64 %polly.indvar419, 96
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit434, %polly.loop_header416
  %indvars.iv.next1047 = add nsw i64 %indvars.iv1046, -96
  %indvars.iv.next1052 = add nuw nsw i64 %indvars.iv1051, 96
  %indvars.iv.next1064 = add nuw nsw i64 %indvars.iv1063, 1
  %exitcond1066.not = icmp eq i64 %159, 13
  br i1 %exitcond1066.not, label %polly.exiting297, label %polly.loop_header416

polly.loop_header424:                             ; preds = %polly.loop_header424.preheader, %polly.loop_exit434
  %indvars.iv1053 = phi i64 [ %indvars.iv1051, %polly.loop_header424.preheader ], [ %indvars.iv.next1054, %polly.loop_exit434 ]
  %indvars.iv1048 = phi i64 [ %indvars.iv1046, %polly.loop_header424.preheader ], [ %indvars.iv.next1049, %polly.loop_exit434 ]
  %polly.indvar428 = phi i64 [ 0, %polly.loop_header424.preheader ], [ %polly.indvar_next429, %polly.loop_exit434 ]
  %165 = shl i64 %polly.indvar428, 7
  %166 = add i64 %155, %165
  %smax1282 = call i64 @llvm.smax.i64(i64 %166, i64 0)
  %167 = mul i64 %polly.indvar428, -128
  %168 = add i64 %156, %167
  %169 = add i64 %smax1282, %168
  %170 = shl nsw i64 %polly.indvar428, 7
  %171 = add nsw i64 %170, %160
  %172 = icmp sgt i64 %171, 0
  %173 = select i1 %172, i64 %171, i64 0
  %polly.loop_guard435.not = icmp sgt i64 %173, %163
  br i1 %polly.loop_guard435.not, label %polly.loop_exit434, label %polly.loop_header432.preheader

polly.loop_header432.preheader:                   ; preds = %polly.loop_header424
  %smax1050 = call i64 @llvm.smax.i64(i64 %indvars.iv1048, i64 0)
  %174 = add i64 %smax1050, %indvars.iv1053
  %175 = sub nsw i64 %164, %170
  %176 = add nuw nsw i64 %170, 128
  br label %polly.loop_header432

polly.loop_exit434:                               ; preds = %polly.loop_exit470, %polly.loop_header424
  %polly.indvar_next429 = add nuw nsw i64 %polly.indvar428, 1
  %indvars.iv.next1049 = add nsw i64 %indvars.iv1048, 128
  %indvars.iv.next1054 = add nsw i64 %indvars.iv1053, -128
  %exitcond1065.not = icmp eq i64 %polly.indvar_next429, %158
  br i1 %exitcond1065.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header432:                             ; preds = %polly.loop_header432.preheader, %polly.loop_exit470
  %indvar1283 = phi i64 [ 0, %polly.loop_header432.preheader ], [ %indvar.next1284, %polly.loop_exit470 ]
  %indvars.iv1055 = phi i64 [ %174, %polly.loop_header432.preheader ], [ %indvars.iv.next1056, %polly.loop_exit470 ]
  %polly.indvar436 = phi i64 [ %173, %polly.loop_header432.preheader ], [ %polly.indvar_next437, %polly.loop_exit470 ]
  %177 = add i64 %169, %indvar1283
  %smin1285 = call i64 @llvm.smin.i64(i64 %177, i64 127)
  %178 = add nsw i64 %smin1285, 1
  %smin1060 = call i64 @llvm.smin.i64(i64 %indvars.iv1055, i64 127)
  %179 = add nsw i64 %polly.indvar436, %175
  %polly.loop_guard4491132 = icmp sgt i64 %179, -1
  %180 = add nuw nsw i64 %polly.indvar436, %164
  %.not914 = icmp ult i64 %180, %176
  %polly.access.mul.call1462 = mul nsw i64 %180, 1000
  br i1 %polly.loop_guard4491132, label %polly.loop_header439.us, label %polly.loop_header432.split

polly.loop_header439.us:                          ; preds = %polly.loop_header432, %polly.merge458.us
  %polly.indvar442.us = phi i64 [ %polly.indvar_next443.us, %polly.merge458.us ], [ 0, %polly.loop_header432 ]
  %polly.access.mul.Packed_MemRef_call1299.us = mul nuw nsw i64 %polly.indvar442.us, 1200
  br label %polly.loop_header446.us

polly.loop_header446.us:                          ; preds = %polly.loop_header439.us, %polly.loop_header446.us
  %polly.indvar450.us = phi i64 [ %polly.indvar_next451.us, %polly.loop_header446.us ], [ 0, %polly.loop_header439.us ]
  %181 = add nuw nsw i64 %polly.indvar450.us, %170
  %polly.access.mul.call1454.us = mul nuw nsw i64 %181, 1000
  %polly.access.add.call1455.us = add nuw nsw i64 %polly.access.mul.call1454.us, %polly.indvar442.us
  %polly.access.call1456.us = getelementptr double, double* %polly.access.cast.call1712, i64 %polly.access.add.call1455.us
  %polly.access.call1456.load.us = load double, double* %polly.access.call1456.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1299.us = add nuw nsw i64 %polly.indvar450.us, %polly.access.mul.Packed_MemRef_call1299.us
  %polly.access.Packed_MemRef_call1299.us = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299.us
  store double %polly.access.call1456.load.us, double* %polly.access.Packed_MemRef_call1299.us, align 8
  %polly.indvar_next451.us = add nuw nsw i64 %polly.indvar450.us, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar450.us, %smin1060
  br i1 %exitcond1058.not, label %polly.cond457.loopexit.us, label %polly.loop_header446.us

polly.then459.us:                                 ; preds = %polly.cond457.loopexit.us
  %polly.access.add.call1463.us = add nuw nsw i64 %polly.indvar442.us, %polly.access.mul.call1462
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1712, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1299466.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1299.us, %179
  %polly.access.Packed_MemRef_call1299467.us = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299466.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1299467.us, align 8
  br label %polly.merge458.us

polly.merge458.us:                                ; preds = %polly.then459.us, %polly.cond457.loopexit.us
  %polly.indvar_next443.us = add nuw nsw i64 %polly.indvar442.us, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar_next443.us, 1000
  br i1 %exitcond1059.not, label %polly.loop_header468.preheader, label %polly.loop_header439.us

polly.cond457.loopexit.us:                        ; preds = %polly.loop_header446.us
  br i1 %.not914, label %polly.merge458.us, label %polly.then459.us

polly.loop_header432.split:                       ; preds = %polly.loop_header432
  br i1 %.not914, label %polly.loop_exit470, label %polly.loop_header439

polly.loop_exit470:                               ; preds = %polly.loop_exit477.loopexit.us, %polly.loop_header432.split, %polly.loop_header468.preheader
  %polly.indvar_next437 = add nuw nsw i64 %polly.indvar436, 1
  %polly.loop_cond438.not.not = icmp ult i64 %polly.indvar436, %163
  %indvars.iv.next1056 = add i64 %indvars.iv1055, 1
  %indvar.next1284 = add i64 %indvar1283, 1
  br i1 %polly.loop_cond438.not.not, label %polly.loop_header432, label %polly.loop_exit434

polly.loop_header439:                             ; preds = %polly.loop_header432.split, %polly.loop_header439
  %polly.indvar442 = phi i64 [ %polly.indvar_next443, %polly.loop_header439 ], [ 0, %polly.loop_header432.split ]
  %polly.access.add.call1463 = add nuw nsw i64 %polly.indvar442, %polly.access.mul.call1462
  %polly.access.call1464 = getelementptr double, double* %polly.access.cast.call1712, i64 %polly.access.add.call1463
  %polly.access.call1464.load = load double, double* %polly.access.call1464, align 8, !alias.scope !82, !noalias !89
  %polly.access.mul.Packed_MemRef_call1299465 = mul nuw nsw i64 %polly.indvar442, 1200
  %polly.access.add.Packed_MemRef_call1299466 = add nsw i64 %polly.access.mul.Packed_MemRef_call1299465, %179
  %polly.access.Packed_MemRef_call1299467 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299466
  store double %polly.access.call1464.load, double* %polly.access.Packed_MemRef_call1299467, align 8
  %polly.indvar_next443 = add nuw nsw i64 %polly.indvar442, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar_next443, 1000
  br i1 %exitcond1045.not, label %polly.loop_header468.preheader, label %polly.loop_header439

polly.loop_header468.preheader:                   ; preds = %polly.loop_header439, %polly.merge458.us
  %182 = mul i64 %180, 9600
  br i1 %polly.loop_guard4491132, label %polly.loop_header468.us, label %polly.loop_exit470

polly.loop_header468.us:                          ; preds = %polly.loop_header468.preheader, %polly.loop_exit477.loopexit.us
  %polly.indvar471.us = phi i64 [ %polly.indvar_next472.us, %polly.loop_exit477.loopexit.us ], [ 0, %polly.loop_header468.preheader ]
  %polly.access.mul.Packed_MemRef_call1299482.us = mul nuw nsw i64 %polly.indvar471.us, 1200
  %polly.access.add.Packed_MemRef_call2301487.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1299482.us, %180
  %polly.access.Packed_MemRef_call2301488.us = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call2301487.us
  %_p_scalar_489.us = load double, double* %polly.access.Packed_MemRef_call2301488.us, align 8
  %polly.access.add.Packed_MemRef_call1299495.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1299482.us, %179
  %polly.access.Packed_MemRef_call1299496.us = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299495.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call1299496.us, align 8
  %min.iters.check1286 = icmp ult i64 %178, 4
  br i1 %min.iters.check1286, label %polly.loop_header475.us.preheader, label %vector.ph1287

vector.ph1287:                                    ; preds = %polly.loop_header468.us
  %n.vec1289 = and i64 %178, -4
  %broadcast.splatinsert1295 = insertelement <4 x double> poison, double %_p_scalar_489.us, i32 0
  %broadcast.splat1296 = shufflevector <4 x double> %broadcast.splatinsert1295, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1298 = insertelement <4 x double> poison, double %_p_scalar_497.us, i32 0
  %broadcast.splat1299 = shufflevector <4 x double> %broadcast.splatinsert1298, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1281

vector.body1281:                                  ; preds = %vector.body1281, %vector.ph1287
  %index1290 = phi i64 [ 0, %vector.ph1287 ], [ %index.next1291, %vector.body1281 ]
  %183 = add nuw nsw i64 %index1290, %170
  %184 = add nuw nsw i64 %index1290, %polly.access.mul.Packed_MemRef_call1299482.us
  %185 = getelementptr double, double* %Packed_MemRef_call1299, i64 %184
  %186 = bitcast double* %185 to <4 x double>*
  %wide.load1294 = load <4 x double>, <4 x double>* %186, align 8
  %187 = fmul fast <4 x double> %broadcast.splat1296, %wide.load1294
  %188 = add nuw nsw i64 %183, %polly.access.mul.Packed_MemRef_call1299482.us
  %189 = getelementptr double, double* %Packed_MemRef_call2301, i64 %188
  %190 = bitcast double* %189 to <4 x double>*
  %wide.load1297 = load <4 x double>, <4 x double>* %190, align 8
  %191 = fmul fast <4 x double> %broadcast.splat1299, %wide.load1297
  %192 = shl i64 %183, 3
  %193 = add i64 %192, %182
  %194 = getelementptr i8, i8* %call, i64 %193
  %195 = bitcast i8* %194 to <4 x double>*
  %wide.load1300 = load <4 x double>, <4 x double>* %195, align 8, !alias.scope !79, !noalias !81
  %196 = fadd fast <4 x double> %191, %187
  %197 = fmul fast <4 x double> %196, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %198 = fadd fast <4 x double> %197, %wide.load1300
  %199 = bitcast i8* %194 to <4 x double>*
  store <4 x double> %198, <4 x double>* %199, align 8, !alias.scope !79, !noalias !81
  %index.next1291 = add i64 %index1290, 4
  %200 = icmp eq i64 %index.next1291, %n.vec1289
  br i1 %200, label %middle.block1279, label %vector.body1281, !llvm.loop !90

middle.block1279:                                 ; preds = %vector.body1281
  %cmp.n1293 = icmp eq i64 %178, %n.vec1289
  br i1 %cmp.n1293, label %polly.loop_exit477.loopexit.us, label %polly.loop_header475.us.preheader

polly.loop_header475.us.preheader:                ; preds = %polly.loop_header468.us, %middle.block1279
  %polly.indvar479.us.ph = phi i64 [ 0, %polly.loop_header468.us ], [ %n.vec1289, %middle.block1279 ]
  br label %polly.loop_header475.us

polly.loop_header475.us:                          ; preds = %polly.loop_header475.us.preheader, %polly.loop_header475.us
  %polly.indvar479.us = phi i64 [ %polly.indvar_next480.us, %polly.loop_header475.us ], [ %polly.indvar479.us.ph, %polly.loop_header475.us.preheader ]
  %201 = add nuw nsw i64 %polly.indvar479.us, %170
  %polly.access.add.Packed_MemRef_call1299483.us = add nuw nsw i64 %polly.indvar479.us, %polly.access.mul.Packed_MemRef_call1299482.us
  %polly.access.Packed_MemRef_call1299484.us = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299483.us
  %_p_scalar_485.us = load double, double* %polly.access.Packed_MemRef_call1299484.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_489.us, %_p_scalar_485.us
  %polly.access.add.Packed_MemRef_call2301491.us = add nuw nsw i64 %201, %polly.access.mul.Packed_MemRef_call1299482.us
  %polly.access.Packed_MemRef_call2301492.us = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call2301491.us
  %_p_scalar_493.us = load double, double* %polly.access.Packed_MemRef_call2301492.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_497.us, %_p_scalar_493.us
  %202 = shl i64 %201, 3
  %203 = add i64 %202, %182
  %scevgep498.us = getelementptr i8, i8* %call, i64 %203
  %scevgep498499.us = bitcast i8* %scevgep498.us to double*
  %_p_scalar_500.us = load double, double* %scevgep498499.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_500.us
  store double %p_add42.i79.us, double* %scevgep498499.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next480.us = add nuw nsw i64 %polly.indvar479.us, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar479.us, %smin1060
  br i1 %exitcond1061.not, label %polly.loop_exit477.loopexit.us, label %polly.loop_header475.us, !llvm.loop !91

polly.loop_exit477.loopexit.us:                   ; preds = %polly.loop_header475.us, %middle.block1279
  %polly.indvar_next472.us = add nuw nsw i64 %polly.indvar471.us, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar_next472.us, 1000
  br i1 %exitcond1062.not, label %polly.loop_exit470, label %polly.loop_header468.us

polly.start503:                                   ; preds = %init_array.exit
  %malloccall505 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall507 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header591

polly.exiting504:                                 ; preds = %polly.loop_exit633
  tail call void @free(i8* %malloccall505)
  tail call void @free(i8* %malloccall507)
  br label %kernel_syr2k.exit

polly.loop_header591:                             ; preds = %polly.loop_exit599, %polly.start503
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit599 ], [ 0, %polly.start503 ]
  %polly.indvar594 = phi i64 [ %polly.indvar_next595, %polly.loop_exit599 ], [ 1, %polly.start503 ]
  %204 = add i64 %indvar, 1
  %205 = mul nuw nsw i64 %polly.indvar594, 9600
  %scevgep603 = getelementptr i8, i8* %call, i64 %205
  %min.iters.check1222 = icmp ult i64 %204, 4
  br i1 %min.iters.check1222, label %polly.loop_header597.preheader, label %vector.ph1223

vector.ph1223:                                    ; preds = %polly.loop_header591
  %n.vec1225 = and i64 %204, -4
  br label %vector.body1221

vector.body1221:                                  ; preds = %vector.body1221, %vector.ph1223
  %index1226 = phi i64 [ 0, %vector.ph1223 ], [ %index.next1227, %vector.body1221 ]
  %206 = shl nuw nsw i64 %index1226, 3
  %207 = getelementptr i8, i8* %scevgep603, i64 %206
  %208 = bitcast i8* %207 to <4 x double>*
  %wide.load1230 = load <4 x double>, <4 x double>* %208, align 8, !alias.scope !92, !noalias !94
  %209 = fmul fast <4 x double> %wide.load1230, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %210 = bitcast i8* %207 to <4 x double>*
  store <4 x double> %209, <4 x double>* %210, align 8, !alias.scope !92, !noalias !94
  %index.next1227 = add i64 %index1226, 4
  %211 = icmp eq i64 %index.next1227, %n.vec1225
  br i1 %211, label %middle.block1219, label %vector.body1221, !llvm.loop !99

middle.block1219:                                 ; preds = %vector.body1221
  %cmp.n1229 = icmp eq i64 %204, %n.vec1225
  br i1 %cmp.n1229, label %polly.loop_exit599, label %polly.loop_header597.preheader

polly.loop_header597.preheader:                   ; preds = %polly.loop_header591, %middle.block1219
  %polly.indvar600.ph = phi i64 [ 0, %polly.loop_header591 ], [ %n.vec1225, %middle.block1219 ]
  br label %polly.loop_header597

polly.loop_exit599:                               ; preds = %polly.loop_header597, %middle.block1219
  %polly.indvar_next595 = add nuw nsw i64 %polly.indvar594, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar_next595, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1096.not, label %polly.loop_header607.preheader, label %polly.loop_header591

polly.loop_header607.preheader:                   ; preds = %polly.loop_exit599
  %Packed_MemRef_call1506 = bitcast i8* %malloccall505 to double*
  %Packed_MemRef_call2508 = bitcast i8* %malloccall507 to double*
  br label %polly.loop_header607

polly.loop_header597:                             ; preds = %polly.loop_header597.preheader, %polly.loop_header597
  %polly.indvar600 = phi i64 [ %polly.indvar_next601, %polly.loop_header597 ], [ %polly.indvar600.ph, %polly.loop_header597.preheader ]
  %212 = shl nuw nsw i64 %polly.indvar600, 3
  %scevgep604 = getelementptr i8, i8* %scevgep603, i64 %212
  %scevgep604605 = bitcast i8* %scevgep604 to double*
  %_p_scalar_606 = load double, double* %scevgep604605, align 8, !alias.scope !92, !noalias !94
  %p_mul.i = fmul fast double %_p_scalar_606, 1.200000e+00
  store double %p_mul.i, double* %scevgep604605, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next601 = add nuw nsw i64 %polly.indvar600, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar_next601, %polly.indvar594
  br i1 %exitcond1095.not, label %polly.loop_exit599, label %polly.loop_header597, !llvm.loop !100

polly.loop_header607:                             ; preds = %polly.loop_header607.preheader, %polly.loop_exit615
  %polly.indvar610 = phi i64 [ %polly.indvar_next611, %polly.loop_exit615 ], [ 0, %polly.loop_header607.preheader ]
  %polly.access.mul.Packed_MemRef_call2508 = mul nuw nsw i64 %polly.indvar610, 1200
  br label %polly.loop_header613

polly.loop_exit615:                               ; preds = %polly.loop_header613
  %polly.indvar_next611 = add nuw nsw i64 %polly.indvar610, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar_next611, 1000
  br i1 %exitcond1094.not, label %polly.loop_header623, label %polly.loop_header607

polly.loop_header613:                             ; preds = %polly.loop_header613, %polly.loop_header607
  %polly.indvar616 = phi i64 [ 0, %polly.loop_header607 ], [ %polly.indvar_next617, %polly.loop_header613 ]
  %polly.access.mul.call2620 = mul nuw nsw i64 %polly.indvar616, 1000
  %polly.access.add.call2621 = add nuw nsw i64 %polly.access.mul.call2620, %polly.indvar610
  %polly.access.call2622 = getelementptr double, double* %polly.access.cast.call2722, i64 %polly.access.add.call2621
  %polly.access.call2622.load = load double, double* %polly.access.call2622, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2508 = add nuw nsw i64 %polly.indvar616, %polly.access.mul.Packed_MemRef_call2508
  %polly.access.Packed_MemRef_call2508 = getelementptr double, double* %Packed_MemRef_call2508, i64 %polly.access.add.Packed_MemRef_call2508
  store double %polly.access.call2622.load, double* %polly.access.Packed_MemRef_call2508, align 8
  %polly.indvar_next617 = add nuw nsw i64 %polly.indvar616, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar_next617, 1200
  br i1 %exitcond1093.not, label %polly.loop_exit615, label %polly.loop_header613

polly.loop_header623:                             ; preds = %polly.loop_exit615, %polly.loop_exit633
  %indvars.iv1089 = phi i64 [ %indvars.iv.next1090, %polly.loop_exit633 ], [ 1, %polly.loop_exit615 ]
  %indvars.iv1077 = phi i64 [ %indvars.iv.next1078, %polly.loop_exit633 ], [ 0, %polly.loop_exit615 ]
  %indvars.iv1072 = phi i64 [ %indvars.iv.next1073, %polly.loop_exit633 ], [ 0, %polly.loop_exit615 ]
  %polly.indvar626 = phi i64 [ %217, %polly.loop_exit633 ], [ 0, %polly.loop_exit615 ]
  %213 = mul nsw i64 %polly.indvar626, -96
  %214 = mul nuw nsw i64 %polly.indvar626, 96
  %215 = lshr i64 %indvars.iv1089, 2
  %216 = sub nsw i64 %indvars.iv1089, %215
  %217 = add nuw nsw i64 %polly.indvar626, 1
  %pexp.p_div_q629 = lshr i64 %217, 2
  %polly.loop_guard634.not = icmp ult i64 %polly.indvar626, %pexp.p_div_q629
  br i1 %polly.loop_guard634.not, label %polly.loop_exit633, label %polly.loop_header631.preheader

polly.loop_header631.preheader:                   ; preds = %polly.loop_header623
  %218 = mul nsw i64 %polly.indvar626, -96
  %219 = icmp slt i64 %218, -1104
  %220 = select i1 %219, i64 %218, i64 -1104
  %221 = add nsw i64 %220, 1199
  %222 = mul nuw nsw i64 %polly.indvar626, 96
  br label %polly.loop_header631

polly.loop_exit633:                               ; preds = %polly.loop_exit641, %polly.loop_header623
  %indvars.iv.next1073 = add nsw i64 %indvars.iv1072, -96
  %indvars.iv.next1078 = add nuw nsw i64 %indvars.iv1077, 96
  %indvars.iv.next1090 = add nuw nsw i64 %indvars.iv1089, 1
  %exitcond1092.not = icmp eq i64 %217, 13
  br i1 %exitcond1092.not, label %polly.exiting504, label %polly.loop_header623

polly.loop_header631:                             ; preds = %polly.loop_header631.preheader, %polly.loop_exit641
  %indvars.iv1079 = phi i64 [ %indvars.iv1077, %polly.loop_header631.preheader ], [ %indvars.iv.next1080, %polly.loop_exit641 ]
  %indvars.iv1074 = phi i64 [ %indvars.iv1072, %polly.loop_header631.preheader ], [ %indvars.iv.next1075, %polly.loop_exit641 ]
  %polly.indvar635 = phi i64 [ 0, %polly.loop_header631.preheader ], [ %polly.indvar_next636, %polly.loop_exit641 ]
  %223 = shl i64 %polly.indvar635, 7
  %224 = add i64 %213, %223
  %smax1234 = call i64 @llvm.smax.i64(i64 %224, i64 0)
  %225 = mul i64 %polly.indvar635, -128
  %226 = add i64 %214, %225
  %227 = add i64 %smax1234, %226
  %228 = shl nsw i64 %polly.indvar635, 7
  %229 = add nsw i64 %228, %218
  %230 = icmp sgt i64 %229, 0
  %231 = select i1 %230, i64 %229, i64 0
  %polly.loop_guard642.not = icmp sgt i64 %231, %221
  br i1 %polly.loop_guard642.not, label %polly.loop_exit641, label %polly.loop_header639.preheader

polly.loop_header639.preheader:                   ; preds = %polly.loop_header631
  %smax1076 = call i64 @llvm.smax.i64(i64 %indvars.iv1074, i64 0)
  %232 = add i64 %smax1076, %indvars.iv1079
  %233 = sub nsw i64 %222, %228
  %234 = add nuw nsw i64 %228, 128
  br label %polly.loop_header639

polly.loop_exit641:                               ; preds = %polly.loop_exit677, %polly.loop_header631
  %polly.indvar_next636 = add nuw nsw i64 %polly.indvar635, 1
  %indvars.iv.next1075 = add nsw i64 %indvars.iv1074, 128
  %indvars.iv.next1080 = add nsw i64 %indvars.iv1079, -128
  %exitcond1091.not = icmp eq i64 %polly.indvar_next636, %216
  br i1 %exitcond1091.not, label %polly.loop_exit633, label %polly.loop_header631

polly.loop_header639:                             ; preds = %polly.loop_header639.preheader, %polly.loop_exit677
  %indvar1235 = phi i64 [ 0, %polly.loop_header639.preheader ], [ %indvar.next1236, %polly.loop_exit677 ]
  %indvars.iv1081 = phi i64 [ %232, %polly.loop_header639.preheader ], [ %indvars.iv.next1082, %polly.loop_exit677 ]
  %polly.indvar643 = phi i64 [ %231, %polly.loop_header639.preheader ], [ %polly.indvar_next644, %polly.loop_exit677 ]
  %235 = add i64 %227, %indvar1235
  %smin1237 = call i64 @llvm.smin.i64(i64 %235, i64 127)
  %236 = add nsw i64 %smin1237, 1
  %smin1086 = call i64 @llvm.smin.i64(i64 %indvars.iv1081, i64 127)
  %237 = add nsw i64 %polly.indvar643, %233
  %polly.loop_guard6561133 = icmp sgt i64 %237, -1
  %238 = add nuw nsw i64 %polly.indvar643, %222
  %.not915 = icmp ult i64 %238, %234
  %polly.access.mul.call1669 = mul nsw i64 %238, 1000
  br i1 %polly.loop_guard6561133, label %polly.loop_header646.us, label %polly.loop_header639.split

polly.loop_header646.us:                          ; preds = %polly.loop_header639, %polly.merge665.us
  %polly.indvar649.us = phi i64 [ %polly.indvar_next650.us, %polly.merge665.us ], [ 0, %polly.loop_header639 ]
  %polly.access.mul.Packed_MemRef_call1506.us = mul nuw nsw i64 %polly.indvar649.us, 1200
  br label %polly.loop_header653.us

polly.loop_header653.us:                          ; preds = %polly.loop_header646.us, %polly.loop_header653.us
  %polly.indvar657.us = phi i64 [ %polly.indvar_next658.us, %polly.loop_header653.us ], [ 0, %polly.loop_header646.us ]
  %239 = add nuw nsw i64 %polly.indvar657.us, %228
  %polly.access.mul.call1661.us = mul nuw nsw i64 %239, 1000
  %polly.access.add.call1662.us = add nuw nsw i64 %polly.access.mul.call1661.us, %polly.indvar649.us
  %polly.access.call1663.us = getelementptr double, double* %polly.access.cast.call1712, i64 %polly.access.add.call1662.us
  %polly.access.call1663.load.us = load double, double* %polly.access.call1663.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1506.us = add nuw nsw i64 %polly.indvar657.us, %polly.access.mul.Packed_MemRef_call1506.us
  %polly.access.Packed_MemRef_call1506.us = getelementptr double, double* %Packed_MemRef_call1506, i64 %polly.access.add.Packed_MemRef_call1506.us
  store double %polly.access.call1663.load.us, double* %polly.access.Packed_MemRef_call1506.us, align 8
  %polly.indvar_next658.us = add nuw nsw i64 %polly.indvar657.us, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar657.us, %smin1086
  br i1 %exitcond1084.not, label %polly.cond664.loopexit.us, label %polly.loop_header653.us

polly.then666.us:                                 ; preds = %polly.cond664.loopexit.us
  %polly.access.add.call1670.us = add nuw nsw i64 %polly.indvar649.us, %polly.access.mul.call1669
  %polly.access.call1671.us = getelementptr double, double* %polly.access.cast.call1712, i64 %polly.access.add.call1670.us
  %polly.access.call1671.load.us = load double, double* %polly.access.call1671.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1506673.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1506.us, %237
  %polly.access.Packed_MemRef_call1506674.us = getelementptr double, double* %Packed_MemRef_call1506, i64 %polly.access.add.Packed_MemRef_call1506673.us
  store double %polly.access.call1671.load.us, double* %polly.access.Packed_MemRef_call1506674.us, align 8
  br label %polly.merge665.us

polly.merge665.us:                                ; preds = %polly.then666.us, %polly.cond664.loopexit.us
  %polly.indvar_next650.us = add nuw nsw i64 %polly.indvar649.us, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar_next650.us, 1000
  br i1 %exitcond1085.not, label %polly.loop_header675.preheader, label %polly.loop_header646.us

polly.cond664.loopexit.us:                        ; preds = %polly.loop_header653.us
  br i1 %.not915, label %polly.merge665.us, label %polly.then666.us

polly.loop_header639.split:                       ; preds = %polly.loop_header639
  br i1 %.not915, label %polly.loop_exit677, label %polly.loop_header646

polly.loop_exit677:                               ; preds = %polly.loop_exit684.loopexit.us, %polly.loop_header639.split, %polly.loop_header675.preheader
  %polly.indvar_next644 = add nuw nsw i64 %polly.indvar643, 1
  %polly.loop_cond645.not.not = icmp ult i64 %polly.indvar643, %221
  %indvars.iv.next1082 = add i64 %indvars.iv1081, 1
  %indvar.next1236 = add i64 %indvar1235, 1
  br i1 %polly.loop_cond645.not.not, label %polly.loop_header639, label %polly.loop_exit641

polly.loop_header646:                             ; preds = %polly.loop_header639.split, %polly.loop_header646
  %polly.indvar649 = phi i64 [ %polly.indvar_next650, %polly.loop_header646 ], [ 0, %polly.loop_header639.split ]
  %polly.access.add.call1670 = add nuw nsw i64 %polly.indvar649, %polly.access.mul.call1669
  %polly.access.call1671 = getelementptr double, double* %polly.access.cast.call1712, i64 %polly.access.add.call1670
  %polly.access.call1671.load = load double, double* %polly.access.call1671, align 8, !alias.scope !95, !noalias !102
  %polly.access.mul.Packed_MemRef_call1506672 = mul nuw nsw i64 %polly.indvar649, 1200
  %polly.access.add.Packed_MemRef_call1506673 = add nsw i64 %polly.access.mul.Packed_MemRef_call1506672, %237
  %polly.access.Packed_MemRef_call1506674 = getelementptr double, double* %Packed_MemRef_call1506, i64 %polly.access.add.Packed_MemRef_call1506673
  store double %polly.access.call1671.load, double* %polly.access.Packed_MemRef_call1506674, align 8
  %polly.indvar_next650 = add nuw nsw i64 %polly.indvar649, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar_next650, 1000
  br i1 %exitcond1071.not, label %polly.loop_header675.preheader, label %polly.loop_header646

polly.loop_header675.preheader:                   ; preds = %polly.loop_header646, %polly.merge665.us
  %240 = mul i64 %238, 9600
  br i1 %polly.loop_guard6561133, label %polly.loop_header675.us, label %polly.loop_exit677

polly.loop_header675.us:                          ; preds = %polly.loop_header675.preheader, %polly.loop_exit684.loopexit.us
  %polly.indvar678.us = phi i64 [ %polly.indvar_next679.us, %polly.loop_exit684.loopexit.us ], [ 0, %polly.loop_header675.preheader ]
  %polly.access.mul.Packed_MemRef_call1506689.us = mul nuw nsw i64 %polly.indvar678.us, 1200
  %polly.access.add.Packed_MemRef_call2508694.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1506689.us, %238
  %polly.access.Packed_MemRef_call2508695.us = getelementptr double, double* %Packed_MemRef_call2508, i64 %polly.access.add.Packed_MemRef_call2508694.us
  %_p_scalar_696.us = load double, double* %polly.access.Packed_MemRef_call2508695.us, align 8
  %polly.access.add.Packed_MemRef_call1506702.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1506689.us, %237
  %polly.access.Packed_MemRef_call1506703.us = getelementptr double, double* %Packed_MemRef_call1506, i64 %polly.access.add.Packed_MemRef_call1506702.us
  %_p_scalar_704.us = load double, double* %polly.access.Packed_MemRef_call1506703.us, align 8
  %min.iters.check1238 = icmp ult i64 %236, 4
  br i1 %min.iters.check1238, label %polly.loop_header682.us.preheader, label %vector.ph1239

vector.ph1239:                                    ; preds = %polly.loop_header675.us
  %n.vec1241 = and i64 %236, -4
  %broadcast.splatinsert1247 = insertelement <4 x double> poison, double %_p_scalar_696.us, i32 0
  %broadcast.splat1248 = shufflevector <4 x double> %broadcast.splatinsert1247, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1250 = insertelement <4 x double> poison, double %_p_scalar_704.us, i32 0
  %broadcast.splat1251 = shufflevector <4 x double> %broadcast.splatinsert1250, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.body1233, %vector.ph1239
  %index1242 = phi i64 [ 0, %vector.ph1239 ], [ %index.next1243, %vector.body1233 ]
  %241 = add nuw nsw i64 %index1242, %228
  %242 = add nuw nsw i64 %index1242, %polly.access.mul.Packed_MemRef_call1506689.us
  %243 = getelementptr double, double* %Packed_MemRef_call1506, i64 %242
  %244 = bitcast double* %243 to <4 x double>*
  %wide.load1246 = load <4 x double>, <4 x double>* %244, align 8
  %245 = fmul fast <4 x double> %broadcast.splat1248, %wide.load1246
  %246 = add nuw nsw i64 %241, %polly.access.mul.Packed_MemRef_call1506689.us
  %247 = getelementptr double, double* %Packed_MemRef_call2508, i64 %246
  %248 = bitcast double* %247 to <4 x double>*
  %wide.load1249 = load <4 x double>, <4 x double>* %248, align 8
  %249 = fmul fast <4 x double> %broadcast.splat1251, %wide.load1249
  %250 = shl i64 %241, 3
  %251 = add i64 %250, %240
  %252 = getelementptr i8, i8* %call, i64 %251
  %253 = bitcast i8* %252 to <4 x double>*
  %wide.load1252 = load <4 x double>, <4 x double>* %253, align 8, !alias.scope !92, !noalias !94
  %254 = fadd fast <4 x double> %249, %245
  %255 = fmul fast <4 x double> %254, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %256 = fadd fast <4 x double> %255, %wide.load1252
  %257 = bitcast i8* %252 to <4 x double>*
  store <4 x double> %256, <4 x double>* %257, align 8, !alias.scope !92, !noalias !94
  %index.next1243 = add i64 %index1242, 4
  %258 = icmp eq i64 %index.next1243, %n.vec1241
  br i1 %258, label %middle.block1231, label %vector.body1233, !llvm.loop !103

middle.block1231:                                 ; preds = %vector.body1233
  %cmp.n1245 = icmp eq i64 %236, %n.vec1241
  br i1 %cmp.n1245, label %polly.loop_exit684.loopexit.us, label %polly.loop_header682.us.preheader

polly.loop_header682.us.preheader:                ; preds = %polly.loop_header675.us, %middle.block1231
  %polly.indvar686.us.ph = phi i64 [ 0, %polly.loop_header675.us ], [ %n.vec1241, %middle.block1231 ]
  br label %polly.loop_header682.us

polly.loop_header682.us:                          ; preds = %polly.loop_header682.us.preheader, %polly.loop_header682.us
  %polly.indvar686.us = phi i64 [ %polly.indvar_next687.us, %polly.loop_header682.us ], [ %polly.indvar686.us.ph, %polly.loop_header682.us.preheader ]
  %259 = add nuw nsw i64 %polly.indvar686.us, %228
  %polly.access.add.Packed_MemRef_call1506690.us = add nuw nsw i64 %polly.indvar686.us, %polly.access.mul.Packed_MemRef_call1506689.us
  %polly.access.Packed_MemRef_call1506691.us = getelementptr double, double* %Packed_MemRef_call1506, i64 %polly.access.add.Packed_MemRef_call1506690.us
  %_p_scalar_692.us = load double, double* %polly.access.Packed_MemRef_call1506691.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_696.us, %_p_scalar_692.us
  %polly.access.add.Packed_MemRef_call2508698.us = add nuw nsw i64 %259, %polly.access.mul.Packed_MemRef_call1506689.us
  %polly.access.Packed_MemRef_call2508699.us = getelementptr double, double* %Packed_MemRef_call2508, i64 %polly.access.add.Packed_MemRef_call2508698.us
  %_p_scalar_700.us = load double, double* %polly.access.Packed_MemRef_call2508699.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_704.us, %_p_scalar_700.us
  %260 = shl i64 %259, 3
  %261 = add i64 %260, %240
  %scevgep705.us = getelementptr i8, i8* %call, i64 %261
  %scevgep705706.us = bitcast i8* %scevgep705.us to double*
  %_p_scalar_707.us = load double, double* %scevgep705706.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_707.us
  store double %p_add42.i.us, double* %scevgep705706.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next687.us = add nuw nsw i64 %polly.indvar686.us, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar686.us, %smin1086
  br i1 %exitcond1087.not, label %polly.loop_exit684.loopexit.us, label %polly.loop_header682.us, !llvm.loop !104

polly.loop_exit684.loopexit.us:                   ; preds = %polly.loop_header682.us, %middle.block1231
  %polly.indvar_next679.us = add nuw nsw i64 %polly.indvar678.us, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next679.us, 1000
  br i1 %exitcond1088.not, label %polly.loop_exit677, label %polly.loop_header675.us

polly.loop_header834:                             ; preds = %entry, %polly.loop_exit842
  %indvars.iv1121 = phi i64 [ %indvars.iv.next1122, %polly.loop_exit842 ], [ 0, %entry ]
  %polly.indvar837 = phi i64 [ %polly.indvar_next838, %polly.loop_exit842 ], [ 0, %entry ]
  %smin1123 = call i64 @llvm.smin.i64(i64 %indvars.iv1121, i64 -1168)
  %262 = shl nsw i64 %polly.indvar837, 5
  %263 = add nsw i64 %smin1123, 1199
  br label %polly.loop_header840

polly.loop_exit842:                               ; preds = %polly.loop_exit848
  %polly.indvar_next838 = add nuw nsw i64 %polly.indvar837, 1
  %indvars.iv.next1122 = add nsw i64 %indvars.iv1121, -32
  %exitcond1126.not = icmp eq i64 %polly.indvar_next838, 38
  br i1 %exitcond1126.not, label %polly.loop_header861, label %polly.loop_header834

polly.loop_header840:                             ; preds = %polly.loop_exit848, %polly.loop_header834
  %indvars.iv1117 = phi i64 [ %indvars.iv.next1118, %polly.loop_exit848 ], [ 0, %polly.loop_header834 ]
  %polly.indvar843 = phi i64 [ %polly.indvar_next844, %polly.loop_exit848 ], [ 0, %polly.loop_header834 ]
  %264 = mul nsw i64 %polly.indvar843, -32
  %smin = call i64 @llvm.smin.i64(i64 %264, i64 -1168)
  %265 = add nsw i64 %smin, 1200
  %smin1119 = call i64 @llvm.smin.i64(i64 %indvars.iv1117, i64 -1168)
  %266 = shl nsw i64 %polly.indvar843, 5
  %267 = add nsw i64 %smin1119, 1199
  br label %polly.loop_header846

polly.loop_exit848:                               ; preds = %polly.loop_exit854
  %polly.indvar_next844 = add nuw nsw i64 %polly.indvar843, 1
  %indvars.iv.next1118 = add nsw i64 %indvars.iv1117, -32
  %exitcond1125.not = icmp eq i64 %polly.indvar_next844, 38
  br i1 %exitcond1125.not, label %polly.loop_exit842, label %polly.loop_header840

polly.loop_header846:                             ; preds = %polly.loop_exit854, %polly.loop_header840
  %polly.indvar849 = phi i64 [ 0, %polly.loop_header840 ], [ %polly.indvar_next850, %polly.loop_exit854 ]
  %268 = add nuw nsw i64 %polly.indvar849, %262
  %269 = trunc i64 %268 to i32
  %270 = mul nuw nsw i64 %268, 9600
  %min.iters.check = icmp eq i64 %265, 0
  br i1 %min.iters.check, label %polly.loop_header852, label %vector.ph1161

vector.ph1161:                                    ; preds = %polly.loop_header846
  %broadcast.splatinsert1168 = insertelement <4 x i64> poison, i64 %266, i32 0
  %broadcast.splat1169 = shufflevector <4 x i64> %broadcast.splatinsert1168, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1170 = insertelement <4 x i32> poison, i32 %269, i32 0
  %broadcast.splat1171 = shufflevector <4 x i32> %broadcast.splatinsert1170, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1160

vector.body1160:                                  ; preds = %vector.body1160, %vector.ph1161
  %index1162 = phi i64 [ 0, %vector.ph1161 ], [ %index.next1163, %vector.body1160 ]
  %vec.ind1166 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1161 ], [ %vec.ind.next1167, %vector.body1160 ]
  %271 = add nuw nsw <4 x i64> %vec.ind1166, %broadcast.splat1169
  %272 = trunc <4 x i64> %271 to <4 x i32>
  %273 = mul <4 x i32> %broadcast.splat1171, %272
  %274 = add <4 x i32> %273, <i32 3, i32 3, i32 3, i32 3>
  %275 = urem <4 x i32> %274, <i32 1200, i32 1200, i32 1200, i32 1200>
  %276 = sitofp <4 x i32> %275 to <4 x double>
  %277 = fmul fast <4 x double> %276, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %278 = extractelement <4 x i64> %271, i32 0
  %279 = shl i64 %278, 3
  %280 = add nuw nsw i64 %279, %270
  %281 = getelementptr i8, i8* %call, i64 %280
  %282 = bitcast i8* %281 to <4 x double>*
  store <4 x double> %277, <4 x double>* %282, align 8, !alias.scope !105, !noalias !107
  %index.next1163 = add i64 %index1162, 4
  %vec.ind.next1167 = add <4 x i64> %vec.ind1166, <i64 4, i64 4, i64 4, i64 4>
  %283 = icmp eq i64 %index.next1163, %265
  br i1 %283, label %polly.loop_exit854, label %vector.body1160, !llvm.loop !110

polly.loop_exit854:                               ; preds = %vector.body1160, %polly.loop_header852
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %exitcond1124.not = icmp eq i64 %polly.indvar849, %263
  br i1 %exitcond1124.not, label %polly.loop_exit848, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_header846, %polly.loop_header852
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_header852 ], [ 0, %polly.loop_header846 ]
  %284 = add nuw nsw i64 %polly.indvar855, %266
  %285 = trunc i64 %284 to i32
  %286 = mul i32 %285, %269
  %287 = add i32 %286, 3
  %288 = urem i32 %287, 1200
  %p_conv31.i = sitofp i32 %288 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %289 = shl i64 %284, 3
  %290 = add nuw nsw i64 %289, %270
  %scevgep858 = getelementptr i8, i8* %call, i64 %290
  %scevgep858859 = bitcast i8* %scevgep858 to double*
  store double %p_div33.i, double* %scevgep858859, align 8, !alias.scope !105, !noalias !107
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %exitcond1120.not = icmp eq i64 %polly.indvar855, %267
  br i1 %exitcond1120.not, label %polly.loop_exit854, label %polly.loop_header852, !llvm.loop !111

polly.loop_header861:                             ; preds = %polly.loop_exit842, %polly.loop_exit869
  %indvars.iv1111 = phi i64 [ %indvars.iv.next1112, %polly.loop_exit869 ], [ 0, %polly.loop_exit842 ]
  %polly.indvar864 = phi i64 [ %polly.indvar_next865, %polly.loop_exit869 ], [ 0, %polly.loop_exit842 ]
  %smin1113 = call i64 @llvm.smin.i64(i64 %indvars.iv1111, i64 -1168)
  %291 = shl nsw i64 %polly.indvar864, 5
  %292 = add nsw i64 %smin1113, 1199
  br label %polly.loop_header867

polly.loop_exit869:                               ; preds = %polly.loop_exit875
  %polly.indvar_next865 = add nuw nsw i64 %polly.indvar864, 1
  %indvars.iv.next1112 = add nsw i64 %indvars.iv1111, -32
  %exitcond1116.not = icmp eq i64 %polly.indvar_next865, 38
  br i1 %exitcond1116.not, label %polly.loop_header887, label %polly.loop_header861

polly.loop_header867:                             ; preds = %polly.loop_exit875, %polly.loop_header861
  %indvars.iv1107 = phi i64 [ %indvars.iv.next1108, %polly.loop_exit875 ], [ 0, %polly.loop_header861 ]
  %polly.indvar870 = phi i64 [ %polly.indvar_next871, %polly.loop_exit875 ], [ 0, %polly.loop_header861 ]
  %293 = mul nsw i64 %polly.indvar870, -32
  %smin1175 = call i64 @llvm.smin.i64(i64 %293, i64 -968)
  %294 = add nsw i64 %smin1175, 1000
  %smin1109 = call i64 @llvm.smin.i64(i64 %indvars.iv1107, i64 -968)
  %295 = shl nsw i64 %polly.indvar870, 5
  %296 = add nsw i64 %smin1109, 999
  br label %polly.loop_header873

polly.loop_exit875:                               ; preds = %polly.loop_exit881
  %polly.indvar_next871 = add nuw nsw i64 %polly.indvar870, 1
  %indvars.iv.next1108 = add nsw i64 %indvars.iv1107, -32
  %exitcond1115.not = icmp eq i64 %polly.indvar_next871, 32
  br i1 %exitcond1115.not, label %polly.loop_exit869, label %polly.loop_header867

polly.loop_header873:                             ; preds = %polly.loop_exit881, %polly.loop_header867
  %polly.indvar876 = phi i64 [ 0, %polly.loop_header867 ], [ %polly.indvar_next877, %polly.loop_exit881 ]
  %297 = add nuw nsw i64 %polly.indvar876, %291
  %298 = trunc i64 %297 to i32
  %299 = mul nuw nsw i64 %297, 8000
  %min.iters.check1176 = icmp eq i64 %294, 0
  br i1 %min.iters.check1176, label %polly.loop_header879, label %vector.ph1177

vector.ph1177:                                    ; preds = %polly.loop_header873
  %broadcast.splatinsert1186 = insertelement <4 x i64> poison, i64 %295, i32 0
  %broadcast.splat1187 = shufflevector <4 x i64> %broadcast.splatinsert1186, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1188 = insertelement <4 x i32> poison, i32 %298, i32 0
  %broadcast.splat1189 = shufflevector <4 x i32> %broadcast.splatinsert1188, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1174

vector.body1174:                                  ; preds = %vector.body1174, %vector.ph1177
  %index1180 = phi i64 [ 0, %vector.ph1177 ], [ %index.next1181, %vector.body1174 ]
  %vec.ind1184 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1177 ], [ %vec.ind.next1185, %vector.body1174 ]
  %300 = add nuw nsw <4 x i64> %vec.ind1184, %broadcast.splat1187
  %301 = trunc <4 x i64> %300 to <4 x i32>
  %302 = mul <4 x i32> %broadcast.splat1189, %301
  %303 = add <4 x i32> %302, <i32 2, i32 2, i32 2, i32 2>
  %304 = urem <4 x i32> %303, <i32 1000, i32 1000, i32 1000, i32 1000>
  %305 = sitofp <4 x i32> %304 to <4 x double>
  %306 = fmul fast <4 x double> %305, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %307 = extractelement <4 x i64> %300, i32 0
  %308 = shl i64 %307, 3
  %309 = add nuw nsw i64 %308, %299
  %310 = getelementptr i8, i8* %call2, i64 %309
  %311 = bitcast i8* %310 to <4 x double>*
  store <4 x double> %306, <4 x double>* %311, align 8, !alias.scope !109, !noalias !112
  %index.next1181 = add i64 %index1180, 4
  %vec.ind.next1185 = add <4 x i64> %vec.ind1184, <i64 4, i64 4, i64 4, i64 4>
  %312 = icmp eq i64 %index.next1181, %294
  br i1 %312, label %polly.loop_exit881, label %vector.body1174, !llvm.loop !113

polly.loop_exit881:                               ; preds = %vector.body1174, %polly.loop_header879
  %polly.indvar_next877 = add nuw nsw i64 %polly.indvar876, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar876, %292
  br i1 %exitcond1114.not, label %polly.loop_exit875, label %polly.loop_header873

polly.loop_header879:                             ; preds = %polly.loop_header873, %polly.loop_header879
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_header879 ], [ 0, %polly.loop_header873 ]
  %313 = add nuw nsw i64 %polly.indvar882, %295
  %314 = trunc i64 %313 to i32
  %315 = mul i32 %314, %298
  %316 = add i32 %315, 2
  %317 = urem i32 %316, 1000
  %p_conv10.i = sitofp i32 %317 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %318 = shl i64 %313, 3
  %319 = add nuw nsw i64 %318, %299
  %scevgep885 = getelementptr i8, i8* %call2, i64 %319
  %scevgep885886 = bitcast i8* %scevgep885 to double*
  store double %p_div12.i, double* %scevgep885886, align 8, !alias.scope !109, !noalias !112
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar882, %296
  br i1 %exitcond1110.not, label %polly.loop_exit881, label %polly.loop_header879, !llvm.loop !114

polly.loop_header887:                             ; preds = %polly.loop_exit869, %polly.loop_exit895
  %indvars.iv1101 = phi i64 [ %indvars.iv.next1102, %polly.loop_exit895 ], [ 0, %polly.loop_exit869 ]
  %polly.indvar890 = phi i64 [ %polly.indvar_next891, %polly.loop_exit895 ], [ 0, %polly.loop_exit869 ]
  %smin1103 = call i64 @llvm.smin.i64(i64 %indvars.iv1101, i64 -1168)
  %320 = shl nsw i64 %polly.indvar890, 5
  %321 = add nsw i64 %smin1103, 1199
  br label %polly.loop_header893

polly.loop_exit895:                               ; preds = %polly.loop_exit901
  %polly.indvar_next891 = add nuw nsw i64 %polly.indvar890, 1
  %indvars.iv.next1102 = add nsw i64 %indvars.iv1101, -32
  %exitcond1106.not = icmp eq i64 %polly.indvar_next891, 38
  br i1 %exitcond1106.not, label %init_array.exit, label %polly.loop_header887

polly.loop_header893:                             ; preds = %polly.loop_exit901, %polly.loop_header887
  %indvars.iv1097 = phi i64 [ %indvars.iv.next1098, %polly.loop_exit901 ], [ 0, %polly.loop_header887 ]
  %polly.indvar896 = phi i64 [ %polly.indvar_next897, %polly.loop_exit901 ], [ 0, %polly.loop_header887 ]
  %322 = mul nsw i64 %polly.indvar896, -32
  %smin1193 = call i64 @llvm.smin.i64(i64 %322, i64 -968)
  %323 = add nsw i64 %smin1193, 1000
  %smin1099 = call i64 @llvm.smin.i64(i64 %indvars.iv1097, i64 -968)
  %324 = shl nsw i64 %polly.indvar896, 5
  %325 = add nsw i64 %smin1099, 999
  br label %polly.loop_header899

polly.loop_exit901:                               ; preds = %polly.loop_exit907
  %polly.indvar_next897 = add nuw nsw i64 %polly.indvar896, 1
  %indvars.iv.next1098 = add nsw i64 %indvars.iv1097, -32
  %exitcond1105.not = icmp eq i64 %polly.indvar_next897, 32
  br i1 %exitcond1105.not, label %polly.loop_exit895, label %polly.loop_header893

polly.loop_header899:                             ; preds = %polly.loop_exit907, %polly.loop_header893
  %polly.indvar902 = phi i64 [ 0, %polly.loop_header893 ], [ %polly.indvar_next903, %polly.loop_exit907 ]
  %326 = add nuw nsw i64 %polly.indvar902, %320
  %327 = trunc i64 %326 to i32
  %328 = mul nuw nsw i64 %326, 8000
  %min.iters.check1194 = icmp eq i64 %323, 0
  br i1 %min.iters.check1194, label %polly.loop_header905, label %vector.ph1195

vector.ph1195:                                    ; preds = %polly.loop_header899
  %broadcast.splatinsert1204 = insertelement <4 x i64> poison, i64 %324, i32 0
  %broadcast.splat1205 = shufflevector <4 x i64> %broadcast.splatinsert1204, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1206 = insertelement <4 x i32> poison, i32 %327, i32 0
  %broadcast.splat1207 = shufflevector <4 x i32> %broadcast.splatinsert1206, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1192

vector.body1192:                                  ; preds = %vector.body1192, %vector.ph1195
  %index1198 = phi i64 [ 0, %vector.ph1195 ], [ %index.next1199, %vector.body1192 ]
  %vec.ind1202 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1195 ], [ %vec.ind.next1203, %vector.body1192 ]
  %329 = add nuw nsw <4 x i64> %vec.ind1202, %broadcast.splat1205
  %330 = trunc <4 x i64> %329 to <4 x i32>
  %331 = mul <4 x i32> %broadcast.splat1207, %330
  %332 = add <4 x i32> %331, <i32 1, i32 1, i32 1, i32 1>
  %333 = urem <4 x i32> %332, <i32 1200, i32 1200, i32 1200, i32 1200>
  %334 = sitofp <4 x i32> %333 to <4 x double>
  %335 = fmul fast <4 x double> %334, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %336 = extractelement <4 x i64> %329, i32 0
  %337 = shl i64 %336, 3
  %338 = add nuw nsw i64 %337, %328
  %339 = getelementptr i8, i8* %call1, i64 %338
  %340 = bitcast i8* %339 to <4 x double>*
  store <4 x double> %335, <4 x double>* %340, align 8, !alias.scope !108, !noalias !115
  %index.next1199 = add i64 %index1198, 4
  %vec.ind.next1203 = add <4 x i64> %vec.ind1202, <i64 4, i64 4, i64 4, i64 4>
  %341 = icmp eq i64 %index.next1199, %323
  br i1 %341, label %polly.loop_exit907, label %vector.body1192, !llvm.loop !116

polly.loop_exit907:                               ; preds = %vector.body1192, %polly.loop_header905
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar902, %321
  br i1 %exitcond1104.not, label %polly.loop_exit901, label %polly.loop_header899

polly.loop_header905:                             ; preds = %polly.loop_header899, %polly.loop_header905
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_header905 ], [ 0, %polly.loop_header899 ]
  %342 = add nuw nsw i64 %polly.indvar908, %324
  %343 = trunc i64 %342 to i32
  %344 = mul i32 %343, %327
  %345 = add i32 %344, 1
  %346 = urem i32 %345, 1200
  %p_conv.i = sitofp i32 %346 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %347 = shl i64 %342, 3
  %348 = add nuw nsw i64 %347, %328
  %scevgep912 = getelementptr i8, i8* %call1, i64 %348
  %scevgep912913 = bitcast i8* %scevgep912 to double*
  store double %p_div.i, double* %scevgep912913, align 8, !alias.scope !108, !noalias !115
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %exitcond1100.not = icmp eq i64 %polly.indvar908, %325
  br i1 %exitcond1100.not, label %polly.loop_exit907, label %polly.loop_header905, !llvm.loop !117
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
!26 = !{!"llvm.loop.tile.size", i32 128}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 2048}
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
!49 = !{!"llvm.loop.tile.size", i32 96}
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
