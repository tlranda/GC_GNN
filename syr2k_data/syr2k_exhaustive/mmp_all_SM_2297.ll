; ModuleID = 'syr2k_exhaustive/mmp_all_SM_2297.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_2297.c"
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
  %scevgep1151 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1150 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1149 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1148 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1148, %scevgep1151
  %bound1 = icmp ult i8* %scevgep1150, %scevgep1149
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
  br i1 %exitcond18.not.i, label %vector.ph1155, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1155:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1162 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1163 = shufflevector <4 x i64> %broadcast.splatinsert1162, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1154

vector.body1154:                                  ; preds = %vector.body1154, %vector.ph1155
  %index1156 = phi i64 [ 0, %vector.ph1155 ], [ %index.next1157, %vector.body1154 ]
  %vec.ind1160 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1155 ], [ %vec.ind.next1161, %vector.body1154 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1160, %broadcast.splat1163
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call860, i64 %indvars.iv7.i, i64 %index1156
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1157 = add i64 %index1156, 4
  %vec.ind.next1161 = add <4 x i64> %vec.ind1160, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1157, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1154, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1154
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1155, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit895
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start503, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1217 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1217, label %for.body3.i46.preheader1360, label %vector.ph1218

vector.ph1218:                                    ; preds = %for.body3.i46.preheader
  %n.vec1220 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1216

vector.body1216:                                  ; preds = %vector.body1216, %vector.ph1218
  %index1221 = phi i64 [ 0, %vector.ph1218 ], [ %index.next1222, %vector.body1216 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call860, i64 %indvars.iv21.i, i64 %index1221
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1222 = add i64 %index1221, 4
  %46 = icmp eq i64 %index.next1222, %n.vec1220
  br i1 %46, label %middle.block1214, label %vector.body1216, !llvm.loop !18

middle.block1214:                                 ; preds = %vector.body1216
  %cmp.n1224 = icmp eq i64 %indvars.iv21.i, %n.vec1220
  br i1 %cmp.n1224, label %for.inc6.i, label %for.body3.i46.preheader1360

for.body3.i46.preheader1360:                      ; preds = %for.body3.i46.preheader, %middle.block1214
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1220, %middle.block1214 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1360, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1360 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call860, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1214, %for.cond1.preheader.i45
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
  %min.iters.check1262 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1262, label %for.body3.i60.preheader1358, label %vector.ph1263

vector.ph1263:                                    ; preds = %for.body3.i60.preheader
  %n.vec1265 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1261

vector.body1261:                                  ; preds = %vector.body1261, %vector.ph1263
  %index1266 = phi i64 [ 0, %vector.ph1263 ], [ %index.next1267, %vector.body1261 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call860, i64 %indvars.iv21.i52, i64 %index1266
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1270 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1270, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1267 = add i64 %index1266, 4
  %57 = icmp eq i64 %index.next1267, %n.vec1265
  br i1 %57, label %middle.block1259, label %vector.body1261, !llvm.loop !57

middle.block1259:                                 ; preds = %vector.body1261
  %cmp.n1269 = icmp eq i64 %indvars.iv21.i52, %n.vec1265
  br i1 %cmp.n1269, label %for.inc6.i63, label %for.body3.i60.preheader1358

for.body3.i60.preheader1358:                      ; preds = %for.body3.i60.preheader, %middle.block1259
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1265, %middle.block1259 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1358, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1358 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call860, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1259, %for.cond1.preheader.i54
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
  %min.iters.check1310 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1310, label %for.body3.i99.preheader1356, label %vector.ph1311

vector.ph1311:                                    ; preds = %for.body3.i99.preheader
  %n.vec1313 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1309

vector.body1309:                                  ; preds = %vector.body1309, %vector.ph1311
  %index1314 = phi i64 [ 0, %vector.ph1311 ], [ %index.next1315, %vector.body1309 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call860, i64 %indvars.iv21.i91, i64 %index1314
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1318 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1318, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1315 = add i64 %index1314, 4
  %68 = icmp eq i64 %index.next1315, %n.vec1313
  br i1 %68, label %middle.block1307, label %vector.body1309, !llvm.loop !59

middle.block1307:                                 ; preds = %vector.body1309
  %cmp.n1317 = icmp eq i64 %indvars.iv21.i91, %n.vec1313
  br i1 %cmp.n1317, label %for.inc6.i102, label %for.body3.i99.preheader1356

for.body3.i99.preheader1356:                      ; preds = %for.body3.i99.preheader, %middle.block1307
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1313, %middle.block1307 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1356, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1356 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call860, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1307, %for.cond1.preheader.i93
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
  %indvar1322 = phi i64 [ %indvar.next1323, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1322, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1324 = icmp ult i64 %88, 4
  br i1 %min.iters.check1324, label %polly.loop_header192.preheader, label %vector.ph1325

vector.ph1325:                                    ; preds = %polly.loop_header
  %n.vec1327 = and i64 %88, -4
  br label %vector.body1321

vector.body1321:                                  ; preds = %vector.body1321, %vector.ph1325
  %index1328 = phi i64 [ 0, %vector.ph1325 ], [ %index.next1329, %vector.body1321 ]
  %90 = shl nuw nsw i64 %index1328, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1332 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1332, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1329 = add i64 %index1328, 4
  %95 = icmp eq i64 %index.next1329, %n.vec1327
  br i1 %95, label %middle.block1319, label %vector.body1321, !llvm.loop !72

middle.block1319:                                 ; preds = %vector.body1321
  %cmp.n1331 = icmp eq i64 %88, %n.vec1327
  br i1 %cmp.n1331, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1319
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1327, %middle.block1319 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1319
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1323 = add i64 %indvar1322, 1
  br i1 %exitcond1046.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1045.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1045.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1044.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1044.not, label %polly.loop_header216, label %polly.loop_header200

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
  %exitcond1043.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1043.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv1039 = phi i64 [ %indvars.iv.next1040, %polly.loop_exit224 ], [ 3, %polly.loop_exit208 ]
  %indvars.iv1037 = phi i64 [ %indvars.iv.next1038, %polly.loop_exit224 ], [ 1, %polly.loop_exit208 ]
  %indvars.iv1026 = phi i64 [ %indvars.iv.next1027, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = mul nsw i64 %polly.indvar219, -80
  %98 = mul nuw nsw i64 %polly.indvar219, 80
  %99 = lshr i64 %indvars.iv1039, 3
  %100 = sub nsw i64 %indvars.iv1037, %99
  %101 = mul nuw nsw i64 %polly.indvar219, 3
  %102 = add nuw nsw i64 %101, 3
  %pexp.p_div_q = lshr i64 %102, 3
  %polly.loop_guard.not = icmp ult i64 %polly.indvar219, %pexp.p_div_q
  br i1 %polly.loop_guard.not, label %polly.loop_exit224, label %polly.loop_header222.preheader

polly.loop_header222.preheader:                   ; preds = %polly.loop_header216
  %103 = mul nsw i64 %polly.indvar219, -80
  %104 = mul nuw nsw i64 %polly.indvar219, 80
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit231, %polly.loop_header216
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -80
  %indvars.iv.next1027 = add nuw nsw i64 %indvars.iv1026, 80
  %indvars.iv.next1038 = add nuw nsw i64 %indvars.iv1037, 1
  %indvars.iv.next1040 = add nuw nsw i64 %indvars.iv1039, 3
  %exitcond1042.not = icmp eq i64 %polly.indvar_next220, 15
  br i1 %exitcond1042.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_header222.preheader, %polly.loop_exit231
  %indvars.iv1028 = phi i64 [ %indvars.iv1026, %polly.loop_header222.preheader ], [ %indvars.iv.next1029, %polly.loop_exit231 ]
  %indvars.iv1024 = phi i64 [ %indvars.iv, %polly.loop_header222.preheader ], [ %indvars.iv.next1025, %polly.loop_exit231 ]
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header222.preheader ], [ %polly.indvar_next226, %polly.loop_exit231 ]
  %105 = shl i64 %polly.indvar225, 7
  %106 = add i64 %97, %105
  %smax1336 = call i64 @llvm.smax.i64(i64 %106, i64 0)
  %107 = mul i64 %polly.indvar225, -128
  %108 = add i64 %98, %107
  %109 = add i64 %smax1336, %108
  %110 = shl nsw i64 %polly.indvar225, 7
  %111 = add nsw i64 %110, %103
  %112 = icmp sgt i64 %111, 0
  %113 = select i1 %112, i64 %111, i64 0
  %polly.loop_guard232 = icmp slt i64 %113, 80
  br i1 %polly.loop_guard232, label %polly.loop_header229.preheader, label %polly.loop_exit231

polly.loop_header229.preheader:                   ; preds = %polly.loop_header222
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1024, i64 0)
  %114 = add i64 %smax, %indvars.iv1028
  %115 = sub nsw i64 %104, %110
  %116 = add nuw nsw i64 %110, 128
  br label %polly.loop_header229

polly.loop_exit231:                               ; preds = %polly.loop_exit263, %polly.loop_header222
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next1025 = add nsw i64 %indvars.iv1024, 128
  %indvars.iv.next1029 = add nsw i64 %indvars.iv1028, -128
  %exitcond1041.not = icmp eq i64 %polly.indvar_next226, %100
  br i1 %exitcond1041.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header229:                             ; preds = %polly.loop_header229.preheader, %polly.loop_exit263
  %indvar1337 = phi i64 [ 0, %polly.loop_header229.preheader ], [ %indvar.next1338, %polly.loop_exit263 ]
  %indvars.iv1030 = phi i64 [ %114, %polly.loop_header229.preheader ], [ %indvars.iv.next1031, %polly.loop_exit263 ]
  %polly.indvar233 = phi i64 [ %113, %polly.loop_header229.preheader ], [ %polly.indvar_next234, %polly.loop_exit263 ]
  %117 = add i64 %109, %indvar1337
  %smin1339 = call i64 @llvm.smin.i64(i64 %117, i64 127)
  %118 = add nsw i64 %smin1339, 1
  %smin1034 = call i64 @llvm.smin.i64(i64 %indvars.iv1030, i64 127)
  %119 = add nsw i64 %polly.indvar233, %115
  %polly.loop_guard2461137 = icmp sgt i64 %119, -1
  %120 = add nuw nsw i64 %polly.indvar233, %104
  %.not = icmp ult i64 %120, %116
  %polly.access.mul.call1255 = mul nsw i64 %120, 1000
  br i1 %polly.loop_guard2461137, label %polly.loop_header236.us, label %polly.loop_header229.split

polly.loop_header236.us:                          ; preds = %polly.loop_header229, %polly.merge.us
  %polly.indvar239.us = phi i64 [ %polly.indvar_next240.us, %polly.merge.us ], [ 0, %polly.loop_header229 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar239.us, 1200
  br label %polly.loop_header243.us

polly.loop_header243.us:                          ; preds = %polly.loop_header236.us, %polly.loop_header243.us
  %polly.indvar247.us = phi i64 [ %polly.indvar_next248.us, %polly.loop_header243.us ], [ 0, %polly.loop_header236.us ]
  %121 = add nuw nsw i64 %polly.indvar247.us, %110
  %polly.access.mul.call1251.us = mul nuw nsw i64 %121, 1000
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
  %polly.access.add.Packed_MemRef_call1259.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %119
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
  %polly.loop_cond235 = icmp ult i64 %polly.indvar233, 79
  %indvars.iv.next1031 = add i64 %indvars.iv1030, 1
  %indvar.next1338 = add i64 %indvar1337, 1
  br i1 %polly.loop_cond235, label %polly.loop_header229, label %polly.loop_exit231

polly.loop_header236:                             ; preds = %polly.loop_header229.split, %polly.loop_header236
  %polly.indvar239 = phi i64 [ %polly.indvar_next240, %polly.loop_header236 ], [ 0, %polly.loop_header229.split ]
  %polly.access.add.call1256 = add nuw nsw i64 %polly.indvar239, %polly.access.mul.call1255
  %polly.access.call1257 = getelementptr double, double* %polly.access.cast.call1712, i64 %polly.access.add.call1256
  %polly.access.call1257.load = load double, double* %polly.access.call1257, align 8, !alias.scope !68, !noalias !76
  %polly.access.mul.Packed_MemRef_call1258 = mul nuw nsw i64 %polly.indvar239, 1200
  %polly.access.add.Packed_MemRef_call1259 = add nsw i64 %polly.access.mul.Packed_MemRef_call1258, %119
  %polly.access.Packed_MemRef_call1260 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1259
  store double %polly.access.call1257.load, double* %polly.access.Packed_MemRef_call1260, align 8
  %polly.indvar_next240 = add nuw nsw i64 %polly.indvar239, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next240, 1000
  br i1 %exitcond.not, label %polly.loop_header261.preheader, label %polly.loop_header236

polly.loop_header261.preheader:                   ; preds = %polly.loop_header236, %polly.merge.us
  %122 = mul i64 %120, 9600
  br i1 %polly.loop_guard2461137, label %polly.loop_header261.us, label %polly.loop_exit263

polly.loop_header261.us:                          ; preds = %polly.loop_header261.preheader, %polly.loop_exit270.loopexit.us
  %polly.indvar264.us = phi i64 [ %polly.indvar_next265.us, %polly.loop_exit270.loopexit.us ], [ 0, %polly.loop_header261.preheader ]
  %polly.access.mul.Packed_MemRef_call1275.us = mul nuw nsw i64 %polly.indvar264.us, 1200
  %polly.access.add.Packed_MemRef_call2280.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1275.us, %120
  %polly.access.Packed_MemRef_call2281.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2280.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call2281.us, align 8
  %polly.access.add.Packed_MemRef_call1288.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1275.us, %119
  %polly.access.Packed_MemRef_call1289.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call1289.us, align 8
  %min.iters.check1340 = icmp ult i64 %118, 4
  br i1 %min.iters.check1340, label %polly.loop_header268.us.preheader, label %vector.ph1341

vector.ph1341:                                    ; preds = %polly.loop_header261.us
  %n.vec1343 = and i64 %118, -4
  %broadcast.splatinsert1349 = insertelement <4 x double> poison, double %_p_scalar_282.us, i32 0
  %broadcast.splat1350 = shufflevector <4 x double> %broadcast.splatinsert1349, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1352 = insertelement <4 x double> poison, double %_p_scalar_290.us, i32 0
  %broadcast.splat1353 = shufflevector <4 x double> %broadcast.splatinsert1352, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1335

vector.body1335:                                  ; preds = %vector.body1335, %vector.ph1341
  %index1344 = phi i64 [ 0, %vector.ph1341 ], [ %index.next1345, %vector.body1335 ]
  %123 = add nuw nsw i64 %index1344, %110
  %124 = add nuw nsw i64 %index1344, %polly.access.mul.Packed_MemRef_call1275.us
  %125 = getelementptr double, double* %Packed_MemRef_call1, i64 %124
  %126 = bitcast double* %125 to <4 x double>*
  %wide.load1348 = load <4 x double>, <4 x double>* %126, align 8
  %127 = fmul fast <4 x double> %broadcast.splat1350, %wide.load1348
  %128 = add nuw nsw i64 %123, %polly.access.mul.Packed_MemRef_call1275.us
  %129 = getelementptr double, double* %Packed_MemRef_call2, i64 %128
  %130 = bitcast double* %129 to <4 x double>*
  %wide.load1351 = load <4 x double>, <4 x double>* %130, align 8
  %131 = fmul fast <4 x double> %broadcast.splat1353, %wide.load1351
  %132 = shl i64 %123, 3
  %133 = add i64 %132, %122
  %134 = getelementptr i8, i8* %call, i64 %133
  %135 = bitcast i8* %134 to <4 x double>*
  %wide.load1354 = load <4 x double>, <4 x double>* %135, align 8, !alias.scope !65, !noalias !67
  %136 = fadd fast <4 x double> %131, %127
  %137 = fmul fast <4 x double> %136, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %138 = fadd fast <4 x double> %137, %wide.load1354
  %139 = bitcast i8* %134 to <4 x double>*
  store <4 x double> %138, <4 x double>* %139, align 8, !alias.scope !65, !noalias !67
  %index.next1345 = add i64 %index1344, 4
  %140 = icmp eq i64 %index.next1345, %n.vec1343
  br i1 %140, label %middle.block1333, label %vector.body1335, !llvm.loop !77

middle.block1333:                                 ; preds = %vector.body1335
  %cmp.n1347 = icmp eq i64 %118, %n.vec1343
  br i1 %cmp.n1347, label %polly.loop_exit270.loopexit.us, label %polly.loop_header268.us.preheader

polly.loop_header268.us.preheader:                ; preds = %polly.loop_header261.us, %middle.block1333
  %polly.indvar272.us.ph = phi i64 [ 0, %polly.loop_header261.us ], [ %n.vec1343, %middle.block1333 ]
  br label %polly.loop_header268.us

polly.loop_header268.us:                          ; preds = %polly.loop_header268.us.preheader, %polly.loop_header268.us
  %polly.indvar272.us = phi i64 [ %polly.indvar_next273.us, %polly.loop_header268.us ], [ %polly.indvar272.us.ph, %polly.loop_header268.us.preheader ]
  %141 = add nuw nsw i64 %polly.indvar272.us, %110
  %polly.access.add.Packed_MemRef_call1276.us = add nuw nsw i64 %polly.indvar272.us, %polly.access.mul.Packed_MemRef_call1275.us
  %polly.access.Packed_MemRef_call1277.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1276.us
  %_p_scalar_278.us = load double, double* %polly.access.Packed_MemRef_call1277.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_282.us, %_p_scalar_278.us
  %polly.access.add.Packed_MemRef_call2284.us = add nuw nsw i64 %141, %polly.access.mul.Packed_MemRef_call1275.us
  %polly.access.Packed_MemRef_call2285.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call2285.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_290.us, %_p_scalar_286.us
  %142 = shl i64 %141, 3
  %143 = add i64 %142, %122
  %scevgep291.us = getelementptr i8, i8* %call, i64 %143
  %scevgep291292.us = bitcast i8* %scevgep291.us to double*
  %_p_scalar_293.us = load double, double* %scevgep291292.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_293.us
  store double %p_add42.i118.us, double* %scevgep291292.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next273.us = add nuw nsw i64 %polly.indvar272.us, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar272.us, %smin1034
  br i1 %exitcond1035.not, label %polly.loop_exit270.loopexit.us, label %polly.loop_header268.us, !llvm.loop !78

polly.loop_exit270.loopexit.us:                   ; preds = %polly.loop_header268.us, %middle.block1333
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
  %indvar1274 = phi i64 [ %indvar.next1275, %polly.loop_exit392 ], [ 0, %polly.start296 ]
  %polly.indvar387 = phi i64 [ %polly.indvar_next388, %polly.loop_exit392 ], [ 1, %polly.start296 ]
  %144 = add i64 %indvar1274, 1
  %145 = mul nuw nsw i64 %polly.indvar387, 9600
  %scevgep396 = getelementptr i8, i8* %call, i64 %145
  %min.iters.check1276 = icmp ult i64 %144, 4
  br i1 %min.iters.check1276, label %polly.loop_header390.preheader, label %vector.ph1277

vector.ph1277:                                    ; preds = %polly.loop_header384
  %n.vec1279 = and i64 %144, -4
  br label %vector.body1273

vector.body1273:                                  ; preds = %vector.body1273, %vector.ph1277
  %index1280 = phi i64 [ 0, %vector.ph1277 ], [ %index.next1281, %vector.body1273 ]
  %146 = shl nuw nsw i64 %index1280, 3
  %147 = getelementptr i8, i8* %scevgep396, i64 %146
  %148 = bitcast i8* %147 to <4 x double>*
  %wide.load1284 = load <4 x double>, <4 x double>* %148, align 8, !alias.scope !79, !noalias !81
  %149 = fmul fast <4 x double> %wide.load1284, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %150 = bitcast i8* %147 to <4 x double>*
  store <4 x double> %149, <4 x double>* %150, align 8, !alias.scope !79, !noalias !81
  %index.next1281 = add i64 %index1280, 4
  %151 = icmp eq i64 %index.next1281, %n.vec1279
  br i1 %151, label %middle.block1271, label %vector.body1273, !llvm.loop !86

middle.block1271:                                 ; preds = %vector.body1273
  %cmp.n1283 = icmp eq i64 %144, %n.vec1279
  br i1 %cmp.n1283, label %polly.loop_exit392, label %polly.loop_header390.preheader

polly.loop_header390.preheader:                   ; preds = %polly.loop_header384, %middle.block1271
  %polly.indvar393.ph = phi i64 [ 0, %polly.loop_header384 ], [ %n.vec1279, %middle.block1271 ]
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_header390, %middle.block1271
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar_next388, 1200
  %indvar.next1275 = add i64 %indvar1274, 1
  br i1 %exitcond1074.not, label %polly.loop_header400.preheader, label %polly.loop_header384

polly.loop_header400.preheader:                   ; preds = %polly.loop_exit392
  %Packed_MemRef_call1299 = bitcast i8* %malloccall298 to double*
  %Packed_MemRef_call2301 = bitcast i8* %malloccall300 to double*
  br label %polly.loop_header400

polly.loop_header390:                             ; preds = %polly.loop_header390.preheader, %polly.loop_header390
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_header390 ], [ %polly.indvar393.ph, %polly.loop_header390.preheader ]
  %152 = shl nuw nsw i64 %polly.indvar393, 3
  %scevgep397 = getelementptr i8, i8* %scevgep396, i64 %152
  %scevgep397398 = bitcast i8* %scevgep397 to double*
  %_p_scalar_399 = load double, double* %scevgep397398, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_399, 1.200000e+00
  store double %p_mul.i57, double* %scevgep397398, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond1073.not = icmp eq i64 %polly.indvar_next394, %polly.indvar387
  br i1 %exitcond1073.not, label %polly.loop_exit392, label %polly.loop_header390, !llvm.loop !87

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_exit408
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_exit408 ], [ 0, %polly.loop_header400.preheader ]
  %polly.access.mul.Packed_MemRef_call2301 = mul nuw nsw i64 %polly.indvar403, 1200
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_header406
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar_next404, 1000
  br i1 %exitcond1072.not, label %polly.loop_header416, label %polly.loop_header400

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
  %exitcond1071.not = icmp eq i64 %polly.indvar_next410, 1200
  br i1 %exitcond1071.not, label %polly.loop_exit408, label %polly.loop_header406

polly.loop_header416:                             ; preds = %polly.loop_exit408, %polly.loop_exit426
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit426 ], [ 3, %polly.loop_exit408 ]
  %indvars.iv1065 = phi i64 [ %indvars.iv.next1066, %polly.loop_exit426 ], [ 1, %polly.loop_exit408 ]
  %indvars.iv1053 = phi i64 [ %indvars.iv.next1054, %polly.loop_exit426 ], [ 0, %polly.loop_exit408 ]
  %indvars.iv1048 = phi i64 [ %indvars.iv.next1049, %polly.loop_exit426 ], [ 0, %polly.loop_exit408 ]
  %polly.indvar419 = phi i64 [ %polly.indvar_next420, %polly.loop_exit426 ], [ 0, %polly.loop_exit408 ]
  %153 = mul nsw i64 %polly.indvar419, -80
  %154 = mul nuw nsw i64 %polly.indvar419, 80
  %155 = lshr i64 %indvars.iv1067, 3
  %156 = sub nsw i64 %indvars.iv1065, %155
  %157 = mul nuw nsw i64 %polly.indvar419, 3
  %158 = add nuw nsw i64 %157, 3
  %pexp.p_div_q422 = lshr i64 %158, 3
  %polly.loop_guard427.not = icmp ult i64 %polly.indvar419, %pexp.p_div_q422
  br i1 %polly.loop_guard427.not, label %polly.loop_exit426, label %polly.loop_header424.preheader

polly.loop_header424.preheader:                   ; preds = %polly.loop_header416
  %159 = mul nsw i64 %polly.indvar419, -80
  %160 = mul nuw nsw i64 %polly.indvar419, 80
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit434, %polly.loop_header416
  %polly.indvar_next420 = add nuw nsw i64 %polly.indvar419, 1
  %indvars.iv.next1049 = add nsw i64 %indvars.iv1048, -80
  %indvars.iv.next1054 = add nuw nsw i64 %indvars.iv1053, 80
  %indvars.iv.next1066 = add nuw nsw i64 %indvars.iv1065, 1
  %indvars.iv.next1068 = add nuw nsw i64 %indvars.iv1067, 3
  %exitcond1070.not = icmp eq i64 %polly.indvar_next420, 15
  br i1 %exitcond1070.not, label %polly.exiting297, label %polly.loop_header416

polly.loop_header424:                             ; preds = %polly.loop_header424.preheader, %polly.loop_exit434
  %indvars.iv1055 = phi i64 [ %indvars.iv1053, %polly.loop_header424.preheader ], [ %indvars.iv.next1056, %polly.loop_exit434 ]
  %indvars.iv1050 = phi i64 [ %indvars.iv1048, %polly.loop_header424.preheader ], [ %indvars.iv.next1051, %polly.loop_exit434 ]
  %polly.indvar428 = phi i64 [ 0, %polly.loop_header424.preheader ], [ %polly.indvar_next429, %polly.loop_exit434 ]
  %161 = shl i64 %polly.indvar428, 7
  %162 = add i64 %153, %161
  %smax1288 = call i64 @llvm.smax.i64(i64 %162, i64 0)
  %163 = mul i64 %polly.indvar428, -128
  %164 = add i64 %154, %163
  %165 = add i64 %smax1288, %164
  %166 = shl nsw i64 %polly.indvar428, 7
  %167 = add nsw i64 %166, %159
  %168 = icmp sgt i64 %167, 0
  %169 = select i1 %168, i64 %167, i64 0
  %polly.loop_guard435 = icmp slt i64 %169, 80
  br i1 %polly.loop_guard435, label %polly.loop_header432.preheader, label %polly.loop_exit434

polly.loop_header432.preheader:                   ; preds = %polly.loop_header424
  %smax1052 = call i64 @llvm.smax.i64(i64 %indvars.iv1050, i64 0)
  %170 = add i64 %smax1052, %indvars.iv1055
  %171 = sub nsw i64 %160, %166
  %172 = add nuw nsw i64 %166, 128
  br label %polly.loop_header432

polly.loop_exit434:                               ; preds = %polly.loop_exit470, %polly.loop_header424
  %polly.indvar_next429 = add nuw nsw i64 %polly.indvar428, 1
  %indvars.iv.next1051 = add nsw i64 %indvars.iv1050, 128
  %indvars.iv.next1056 = add nsw i64 %indvars.iv1055, -128
  %exitcond1069.not = icmp eq i64 %polly.indvar_next429, %156
  br i1 %exitcond1069.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header432:                             ; preds = %polly.loop_header432.preheader, %polly.loop_exit470
  %indvar1289 = phi i64 [ 0, %polly.loop_header432.preheader ], [ %indvar.next1290, %polly.loop_exit470 ]
  %indvars.iv1057 = phi i64 [ %170, %polly.loop_header432.preheader ], [ %indvars.iv.next1058, %polly.loop_exit470 ]
  %polly.indvar436 = phi i64 [ %169, %polly.loop_header432.preheader ], [ %polly.indvar_next437, %polly.loop_exit470 ]
  %173 = add i64 %165, %indvar1289
  %smin1291 = call i64 @llvm.smin.i64(i64 %173, i64 127)
  %174 = add nsw i64 %smin1291, 1
  %smin1062 = call i64 @llvm.smin.i64(i64 %indvars.iv1057, i64 127)
  %175 = add nsw i64 %polly.indvar436, %171
  %polly.loop_guard4491138 = icmp sgt i64 %175, -1
  %176 = add nuw nsw i64 %polly.indvar436, %160
  %.not914 = icmp ult i64 %176, %172
  %polly.access.mul.call1462 = mul nsw i64 %176, 1000
  br i1 %polly.loop_guard4491138, label %polly.loop_header439.us, label %polly.loop_header432.split

polly.loop_header439.us:                          ; preds = %polly.loop_header432, %polly.merge458.us
  %polly.indvar442.us = phi i64 [ %polly.indvar_next443.us, %polly.merge458.us ], [ 0, %polly.loop_header432 ]
  %polly.access.mul.Packed_MemRef_call1299.us = mul nuw nsw i64 %polly.indvar442.us, 1200
  br label %polly.loop_header446.us

polly.loop_header446.us:                          ; preds = %polly.loop_header439.us, %polly.loop_header446.us
  %polly.indvar450.us = phi i64 [ %polly.indvar_next451.us, %polly.loop_header446.us ], [ 0, %polly.loop_header439.us ]
  %177 = add nuw nsw i64 %polly.indvar450.us, %166
  %polly.access.mul.call1454.us = mul nuw nsw i64 %177, 1000
  %polly.access.add.call1455.us = add nuw nsw i64 %polly.access.mul.call1454.us, %polly.indvar442.us
  %polly.access.call1456.us = getelementptr double, double* %polly.access.cast.call1712, i64 %polly.access.add.call1455.us
  %polly.access.call1456.load.us = load double, double* %polly.access.call1456.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1299.us = add nuw nsw i64 %polly.indvar450.us, %polly.access.mul.Packed_MemRef_call1299.us
  %polly.access.Packed_MemRef_call1299.us = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299.us
  store double %polly.access.call1456.load.us, double* %polly.access.Packed_MemRef_call1299.us, align 8
  %polly.indvar_next451.us = add nuw nsw i64 %polly.indvar450.us, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar450.us, %smin1062
  br i1 %exitcond1060.not, label %polly.cond457.loopexit.us, label %polly.loop_header446.us

polly.then459.us:                                 ; preds = %polly.cond457.loopexit.us
  %polly.access.add.call1463.us = add nuw nsw i64 %polly.indvar442.us, %polly.access.mul.call1462
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1712, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1299466.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1299.us, %175
  %polly.access.Packed_MemRef_call1299467.us = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299466.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1299467.us, align 8
  br label %polly.merge458.us

polly.merge458.us:                                ; preds = %polly.then459.us, %polly.cond457.loopexit.us
  %polly.indvar_next443.us = add nuw nsw i64 %polly.indvar442.us, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar_next443.us, 1000
  br i1 %exitcond1061.not, label %polly.loop_header468.preheader, label %polly.loop_header439.us

polly.cond457.loopexit.us:                        ; preds = %polly.loop_header446.us
  br i1 %.not914, label %polly.merge458.us, label %polly.then459.us

polly.loop_header432.split:                       ; preds = %polly.loop_header432
  br i1 %.not914, label %polly.loop_exit470, label %polly.loop_header439

polly.loop_exit470:                               ; preds = %polly.loop_exit477.loopexit.us, %polly.loop_header432.split, %polly.loop_header468.preheader
  %polly.indvar_next437 = add nuw nsw i64 %polly.indvar436, 1
  %polly.loop_cond438 = icmp ult i64 %polly.indvar436, 79
  %indvars.iv.next1058 = add i64 %indvars.iv1057, 1
  %indvar.next1290 = add i64 %indvar1289, 1
  br i1 %polly.loop_cond438, label %polly.loop_header432, label %polly.loop_exit434

polly.loop_header439:                             ; preds = %polly.loop_header432.split, %polly.loop_header439
  %polly.indvar442 = phi i64 [ %polly.indvar_next443, %polly.loop_header439 ], [ 0, %polly.loop_header432.split ]
  %polly.access.add.call1463 = add nuw nsw i64 %polly.indvar442, %polly.access.mul.call1462
  %polly.access.call1464 = getelementptr double, double* %polly.access.cast.call1712, i64 %polly.access.add.call1463
  %polly.access.call1464.load = load double, double* %polly.access.call1464, align 8, !alias.scope !82, !noalias !89
  %polly.access.mul.Packed_MemRef_call1299465 = mul nuw nsw i64 %polly.indvar442, 1200
  %polly.access.add.Packed_MemRef_call1299466 = add nsw i64 %polly.access.mul.Packed_MemRef_call1299465, %175
  %polly.access.Packed_MemRef_call1299467 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299466
  store double %polly.access.call1464.load, double* %polly.access.Packed_MemRef_call1299467, align 8
  %polly.indvar_next443 = add nuw nsw i64 %polly.indvar442, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar_next443, 1000
  br i1 %exitcond1047.not, label %polly.loop_header468.preheader, label %polly.loop_header439

polly.loop_header468.preheader:                   ; preds = %polly.loop_header439, %polly.merge458.us
  %178 = mul i64 %176, 9600
  br i1 %polly.loop_guard4491138, label %polly.loop_header468.us, label %polly.loop_exit470

polly.loop_header468.us:                          ; preds = %polly.loop_header468.preheader, %polly.loop_exit477.loopexit.us
  %polly.indvar471.us = phi i64 [ %polly.indvar_next472.us, %polly.loop_exit477.loopexit.us ], [ 0, %polly.loop_header468.preheader ]
  %polly.access.mul.Packed_MemRef_call1299482.us = mul nuw nsw i64 %polly.indvar471.us, 1200
  %polly.access.add.Packed_MemRef_call2301487.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1299482.us, %176
  %polly.access.Packed_MemRef_call2301488.us = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call2301487.us
  %_p_scalar_489.us = load double, double* %polly.access.Packed_MemRef_call2301488.us, align 8
  %polly.access.add.Packed_MemRef_call1299495.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1299482.us, %175
  %polly.access.Packed_MemRef_call1299496.us = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299495.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call1299496.us, align 8
  %min.iters.check1292 = icmp ult i64 %174, 4
  br i1 %min.iters.check1292, label %polly.loop_header475.us.preheader, label %vector.ph1293

vector.ph1293:                                    ; preds = %polly.loop_header468.us
  %n.vec1295 = and i64 %174, -4
  %broadcast.splatinsert1301 = insertelement <4 x double> poison, double %_p_scalar_489.us, i32 0
  %broadcast.splat1302 = shufflevector <4 x double> %broadcast.splatinsert1301, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1304 = insertelement <4 x double> poison, double %_p_scalar_497.us, i32 0
  %broadcast.splat1305 = shufflevector <4 x double> %broadcast.splatinsert1304, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1287

vector.body1287:                                  ; preds = %vector.body1287, %vector.ph1293
  %index1296 = phi i64 [ 0, %vector.ph1293 ], [ %index.next1297, %vector.body1287 ]
  %179 = add nuw nsw i64 %index1296, %166
  %180 = add nuw nsw i64 %index1296, %polly.access.mul.Packed_MemRef_call1299482.us
  %181 = getelementptr double, double* %Packed_MemRef_call1299, i64 %180
  %182 = bitcast double* %181 to <4 x double>*
  %wide.load1300 = load <4 x double>, <4 x double>* %182, align 8
  %183 = fmul fast <4 x double> %broadcast.splat1302, %wide.load1300
  %184 = add nuw nsw i64 %179, %polly.access.mul.Packed_MemRef_call1299482.us
  %185 = getelementptr double, double* %Packed_MemRef_call2301, i64 %184
  %186 = bitcast double* %185 to <4 x double>*
  %wide.load1303 = load <4 x double>, <4 x double>* %186, align 8
  %187 = fmul fast <4 x double> %broadcast.splat1305, %wide.load1303
  %188 = shl i64 %179, 3
  %189 = add i64 %188, %178
  %190 = getelementptr i8, i8* %call, i64 %189
  %191 = bitcast i8* %190 to <4 x double>*
  %wide.load1306 = load <4 x double>, <4 x double>* %191, align 8, !alias.scope !79, !noalias !81
  %192 = fadd fast <4 x double> %187, %183
  %193 = fmul fast <4 x double> %192, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %194 = fadd fast <4 x double> %193, %wide.load1306
  %195 = bitcast i8* %190 to <4 x double>*
  store <4 x double> %194, <4 x double>* %195, align 8, !alias.scope !79, !noalias !81
  %index.next1297 = add i64 %index1296, 4
  %196 = icmp eq i64 %index.next1297, %n.vec1295
  br i1 %196, label %middle.block1285, label %vector.body1287, !llvm.loop !90

middle.block1285:                                 ; preds = %vector.body1287
  %cmp.n1299 = icmp eq i64 %174, %n.vec1295
  br i1 %cmp.n1299, label %polly.loop_exit477.loopexit.us, label %polly.loop_header475.us.preheader

polly.loop_header475.us.preheader:                ; preds = %polly.loop_header468.us, %middle.block1285
  %polly.indvar479.us.ph = phi i64 [ 0, %polly.loop_header468.us ], [ %n.vec1295, %middle.block1285 ]
  br label %polly.loop_header475.us

polly.loop_header475.us:                          ; preds = %polly.loop_header475.us.preheader, %polly.loop_header475.us
  %polly.indvar479.us = phi i64 [ %polly.indvar_next480.us, %polly.loop_header475.us ], [ %polly.indvar479.us.ph, %polly.loop_header475.us.preheader ]
  %197 = add nuw nsw i64 %polly.indvar479.us, %166
  %polly.access.add.Packed_MemRef_call1299483.us = add nuw nsw i64 %polly.indvar479.us, %polly.access.mul.Packed_MemRef_call1299482.us
  %polly.access.Packed_MemRef_call1299484.us = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299483.us
  %_p_scalar_485.us = load double, double* %polly.access.Packed_MemRef_call1299484.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_489.us, %_p_scalar_485.us
  %polly.access.add.Packed_MemRef_call2301491.us = add nuw nsw i64 %197, %polly.access.mul.Packed_MemRef_call1299482.us
  %polly.access.Packed_MemRef_call2301492.us = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call2301491.us
  %_p_scalar_493.us = load double, double* %polly.access.Packed_MemRef_call2301492.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_497.us, %_p_scalar_493.us
  %198 = shl i64 %197, 3
  %199 = add i64 %198, %178
  %scevgep498.us = getelementptr i8, i8* %call, i64 %199
  %scevgep498499.us = bitcast i8* %scevgep498.us to double*
  %_p_scalar_500.us = load double, double* %scevgep498499.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_500.us
  store double %p_add42.i79.us, double* %scevgep498499.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next480.us = add nuw nsw i64 %polly.indvar479.us, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar479.us, %smin1062
  br i1 %exitcond1063.not, label %polly.loop_exit477.loopexit.us, label %polly.loop_header475.us, !llvm.loop !91

polly.loop_exit477.loopexit.us:                   ; preds = %polly.loop_header475.us, %middle.block1285
  %polly.indvar_next472.us = add nuw nsw i64 %polly.indvar471.us, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar_next472.us, 1000
  br i1 %exitcond1064.not, label %polly.loop_exit470, label %polly.loop_header468.us

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
  %200 = add i64 %indvar, 1
  %201 = mul nuw nsw i64 %polly.indvar594, 9600
  %scevgep603 = getelementptr i8, i8* %call, i64 %201
  %min.iters.check1228 = icmp ult i64 %200, 4
  br i1 %min.iters.check1228, label %polly.loop_header597.preheader, label %vector.ph1229

vector.ph1229:                                    ; preds = %polly.loop_header591
  %n.vec1231 = and i64 %200, -4
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %vector.ph1229
  %index1232 = phi i64 [ 0, %vector.ph1229 ], [ %index.next1233, %vector.body1227 ]
  %202 = shl nuw nsw i64 %index1232, 3
  %203 = getelementptr i8, i8* %scevgep603, i64 %202
  %204 = bitcast i8* %203 to <4 x double>*
  %wide.load1236 = load <4 x double>, <4 x double>* %204, align 8, !alias.scope !92, !noalias !94
  %205 = fmul fast <4 x double> %wide.load1236, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %206 = bitcast i8* %203 to <4 x double>*
  store <4 x double> %205, <4 x double>* %206, align 8, !alias.scope !92, !noalias !94
  %index.next1233 = add i64 %index1232, 4
  %207 = icmp eq i64 %index.next1233, %n.vec1231
  br i1 %207, label %middle.block1225, label %vector.body1227, !llvm.loop !99

middle.block1225:                                 ; preds = %vector.body1227
  %cmp.n1235 = icmp eq i64 %200, %n.vec1231
  br i1 %cmp.n1235, label %polly.loop_exit599, label %polly.loop_header597.preheader

polly.loop_header597.preheader:                   ; preds = %polly.loop_header591, %middle.block1225
  %polly.indvar600.ph = phi i64 [ 0, %polly.loop_header591 ], [ %n.vec1231, %middle.block1225 ]
  br label %polly.loop_header597

polly.loop_exit599:                               ; preds = %polly.loop_header597, %middle.block1225
  %polly.indvar_next595 = add nuw nsw i64 %polly.indvar594, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar_next595, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1102.not, label %polly.loop_header607.preheader, label %polly.loop_header591

polly.loop_header607.preheader:                   ; preds = %polly.loop_exit599
  %Packed_MemRef_call1506 = bitcast i8* %malloccall505 to double*
  %Packed_MemRef_call2508 = bitcast i8* %malloccall507 to double*
  br label %polly.loop_header607

polly.loop_header597:                             ; preds = %polly.loop_header597.preheader, %polly.loop_header597
  %polly.indvar600 = phi i64 [ %polly.indvar_next601, %polly.loop_header597 ], [ %polly.indvar600.ph, %polly.loop_header597.preheader ]
  %208 = shl nuw nsw i64 %polly.indvar600, 3
  %scevgep604 = getelementptr i8, i8* %scevgep603, i64 %208
  %scevgep604605 = bitcast i8* %scevgep604 to double*
  %_p_scalar_606 = load double, double* %scevgep604605, align 8, !alias.scope !92, !noalias !94
  %p_mul.i = fmul fast double %_p_scalar_606, 1.200000e+00
  store double %p_mul.i, double* %scevgep604605, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next601 = add nuw nsw i64 %polly.indvar600, 1
  %exitcond1101.not = icmp eq i64 %polly.indvar_next601, %polly.indvar594
  br i1 %exitcond1101.not, label %polly.loop_exit599, label %polly.loop_header597, !llvm.loop !100

polly.loop_header607:                             ; preds = %polly.loop_header607.preheader, %polly.loop_exit615
  %polly.indvar610 = phi i64 [ %polly.indvar_next611, %polly.loop_exit615 ], [ 0, %polly.loop_header607.preheader ]
  %polly.access.mul.Packed_MemRef_call2508 = mul nuw nsw i64 %polly.indvar610, 1200
  br label %polly.loop_header613

polly.loop_exit615:                               ; preds = %polly.loop_header613
  %polly.indvar_next611 = add nuw nsw i64 %polly.indvar610, 1
  %exitcond1100.not = icmp eq i64 %polly.indvar_next611, 1000
  br i1 %exitcond1100.not, label %polly.loop_header623, label %polly.loop_header607

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
  %exitcond1099.not = icmp eq i64 %polly.indvar_next617, 1200
  br i1 %exitcond1099.not, label %polly.loop_exit615, label %polly.loop_header613

polly.loop_header623:                             ; preds = %polly.loop_exit615, %polly.loop_exit633
  %indvars.iv1095 = phi i64 [ %indvars.iv.next1096, %polly.loop_exit633 ], [ 3, %polly.loop_exit615 ]
  %indvars.iv1093 = phi i64 [ %indvars.iv.next1094, %polly.loop_exit633 ], [ 1, %polly.loop_exit615 ]
  %indvars.iv1081 = phi i64 [ %indvars.iv.next1082, %polly.loop_exit633 ], [ 0, %polly.loop_exit615 ]
  %indvars.iv1076 = phi i64 [ %indvars.iv.next1077, %polly.loop_exit633 ], [ 0, %polly.loop_exit615 ]
  %polly.indvar626 = phi i64 [ %polly.indvar_next627, %polly.loop_exit633 ], [ 0, %polly.loop_exit615 ]
  %209 = mul nsw i64 %polly.indvar626, -80
  %210 = mul nuw nsw i64 %polly.indvar626, 80
  %211 = lshr i64 %indvars.iv1095, 3
  %212 = sub nsw i64 %indvars.iv1093, %211
  %213 = mul nuw nsw i64 %polly.indvar626, 3
  %214 = add nuw nsw i64 %213, 3
  %pexp.p_div_q629 = lshr i64 %214, 3
  %polly.loop_guard634.not = icmp ult i64 %polly.indvar626, %pexp.p_div_q629
  br i1 %polly.loop_guard634.not, label %polly.loop_exit633, label %polly.loop_header631.preheader

polly.loop_header631.preheader:                   ; preds = %polly.loop_header623
  %215 = mul nsw i64 %polly.indvar626, -80
  %216 = mul nuw nsw i64 %polly.indvar626, 80
  br label %polly.loop_header631

polly.loop_exit633:                               ; preds = %polly.loop_exit641, %polly.loop_header623
  %polly.indvar_next627 = add nuw nsw i64 %polly.indvar626, 1
  %indvars.iv.next1077 = add nsw i64 %indvars.iv1076, -80
  %indvars.iv.next1082 = add nuw nsw i64 %indvars.iv1081, 80
  %indvars.iv.next1094 = add nuw nsw i64 %indvars.iv1093, 1
  %indvars.iv.next1096 = add nuw nsw i64 %indvars.iv1095, 3
  %exitcond1098.not = icmp eq i64 %polly.indvar_next627, 15
  br i1 %exitcond1098.not, label %polly.exiting504, label %polly.loop_header623

polly.loop_header631:                             ; preds = %polly.loop_header631.preheader, %polly.loop_exit641
  %indvars.iv1083 = phi i64 [ %indvars.iv1081, %polly.loop_header631.preheader ], [ %indvars.iv.next1084, %polly.loop_exit641 ]
  %indvars.iv1078 = phi i64 [ %indvars.iv1076, %polly.loop_header631.preheader ], [ %indvars.iv.next1079, %polly.loop_exit641 ]
  %polly.indvar635 = phi i64 [ 0, %polly.loop_header631.preheader ], [ %polly.indvar_next636, %polly.loop_exit641 ]
  %217 = shl i64 %polly.indvar635, 7
  %218 = add i64 %209, %217
  %smax1240 = call i64 @llvm.smax.i64(i64 %218, i64 0)
  %219 = mul i64 %polly.indvar635, -128
  %220 = add i64 %210, %219
  %221 = add i64 %smax1240, %220
  %222 = shl nsw i64 %polly.indvar635, 7
  %223 = add nsw i64 %222, %215
  %224 = icmp sgt i64 %223, 0
  %225 = select i1 %224, i64 %223, i64 0
  %polly.loop_guard642 = icmp slt i64 %225, 80
  br i1 %polly.loop_guard642, label %polly.loop_header639.preheader, label %polly.loop_exit641

polly.loop_header639.preheader:                   ; preds = %polly.loop_header631
  %smax1080 = call i64 @llvm.smax.i64(i64 %indvars.iv1078, i64 0)
  %226 = add i64 %smax1080, %indvars.iv1083
  %227 = sub nsw i64 %216, %222
  %228 = add nuw nsw i64 %222, 128
  br label %polly.loop_header639

polly.loop_exit641:                               ; preds = %polly.loop_exit677, %polly.loop_header631
  %polly.indvar_next636 = add nuw nsw i64 %polly.indvar635, 1
  %indvars.iv.next1079 = add nsw i64 %indvars.iv1078, 128
  %indvars.iv.next1084 = add nsw i64 %indvars.iv1083, -128
  %exitcond1097.not = icmp eq i64 %polly.indvar_next636, %212
  br i1 %exitcond1097.not, label %polly.loop_exit633, label %polly.loop_header631

polly.loop_header639:                             ; preds = %polly.loop_header639.preheader, %polly.loop_exit677
  %indvar1241 = phi i64 [ 0, %polly.loop_header639.preheader ], [ %indvar.next1242, %polly.loop_exit677 ]
  %indvars.iv1085 = phi i64 [ %226, %polly.loop_header639.preheader ], [ %indvars.iv.next1086, %polly.loop_exit677 ]
  %polly.indvar643 = phi i64 [ %225, %polly.loop_header639.preheader ], [ %polly.indvar_next644, %polly.loop_exit677 ]
  %229 = add i64 %221, %indvar1241
  %smin1243 = call i64 @llvm.smin.i64(i64 %229, i64 127)
  %230 = add nsw i64 %smin1243, 1
  %smin1090 = call i64 @llvm.smin.i64(i64 %indvars.iv1085, i64 127)
  %231 = add nsw i64 %polly.indvar643, %227
  %polly.loop_guard6561139 = icmp sgt i64 %231, -1
  %232 = add nuw nsw i64 %polly.indvar643, %216
  %.not915 = icmp ult i64 %232, %228
  %polly.access.mul.call1669 = mul nsw i64 %232, 1000
  br i1 %polly.loop_guard6561139, label %polly.loop_header646.us, label %polly.loop_header639.split

polly.loop_header646.us:                          ; preds = %polly.loop_header639, %polly.merge665.us
  %polly.indvar649.us = phi i64 [ %polly.indvar_next650.us, %polly.merge665.us ], [ 0, %polly.loop_header639 ]
  %polly.access.mul.Packed_MemRef_call1506.us = mul nuw nsw i64 %polly.indvar649.us, 1200
  br label %polly.loop_header653.us

polly.loop_header653.us:                          ; preds = %polly.loop_header646.us, %polly.loop_header653.us
  %polly.indvar657.us = phi i64 [ %polly.indvar_next658.us, %polly.loop_header653.us ], [ 0, %polly.loop_header646.us ]
  %233 = add nuw nsw i64 %polly.indvar657.us, %222
  %polly.access.mul.call1661.us = mul nuw nsw i64 %233, 1000
  %polly.access.add.call1662.us = add nuw nsw i64 %polly.access.mul.call1661.us, %polly.indvar649.us
  %polly.access.call1663.us = getelementptr double, double* %polly.access.cast.call1712, i64 %polly.access.add.call1662.us
  %polly.access.call1663.load.us = load double, double* %polly.access.call1663.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1506.us = add nuw nsw i64 %polly.indvar657.us, %polly.access.mul.Packed_MemRef_call1506.us
  %polly.access.Packed_MemRef_call1506.us = getelementptr double, double* %Packed_MemRef_call1506, i64 %polly.access.add.Packed_MemRef_call1506.us
  store double %polly.access.call1663.load.us, double* %polly.access.Packed_MemRef_call1506.us, align 8
  %polly.indvar_next658.us = add nuw nsw i64 %polly.indvar657.us, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar657.us, %smin1090
  br i1 %exitcond1088.not, label %polly.cond664.loopexit.us, label %polly.loop_header653.us

polly.then666.us:                                 ; preds = %polly.cond664.loopexit.us
  %polly.access.add.call1670.us = add nuw nsw i64 %polly.indvar649.us, %polly.access.mul.call1669
  %polly.access.call1671.us = getelementptr double, double* %polly.access.cast.call1712, i64 %polly.access.add.call1670.us
  %polly.access.call1671.load.us = load double, double* %polly.access.call1671.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1506673.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1506.us, %231
  %polly.access.Packed_MemRef_call1506674.us = getelementptr double, double* %Packed_MemRef_call1506, i64 %polly.access.add.Packed_MemRef_call1506673.us
  store double %polly.access.call1671.load.us, double* %polly.access.Packed_MemRef_call1506674.us, align 8
  br label %polly.merge665.us

polly.merge665.us:                                ; preds = %polly.then666.us, %polly.cond664.loopexit.us
  %polly.indvar_next650.us = add nuw nsw i64 %polly.indvar649.us, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next650.us, 1000
  br i1 %exitcond1089.not, label %polly.loop_header675.preheader, label %polly.loop_header646.us

polly.cond664.loopexit.us:                        ; preds = %polly.loop_header653.us
  br i1 %.not915, label %polly.merge665.us, label %polly.then666.us

polly.loop_header639.split:                       ; preds = %polly.loop_header639
  br i1 %.not915, label %polly.loop_exit677, label %polly.loop_header646

polly.loop_exit677:                               ; preds = %polly.loop_exit684.loopexit.us, %polly.loop_header639.split, %polly.loop_header675.preheader
  %polly.indvar_next644 = add nuw nsw i64 %polly.indvar643, 1
  %polly.loop_cond645 = icmp ult i64 %polly.indvar643, 79
  %indvars.iv.next1086 = add i64 %indvars.iv1085, 1
  %indvar.next1242 = add i64 %indvar1241, 1
  br i1 %polly.loop_cond645, label %polly.loop_header639, label %polly.loop_exit641

polly.loop_header646:                             ; preds = %polly.loop_header639.split, %polly.loop_header646
  %polly.indvar649 = phi i64 [ %polly.indvar_next650, %polly.loop_header646 ], [ 0, %polly.loop_header639.split ]
  %polly.access.add.call1670 = add nuw nsw i64 %polly.indvar649, %polly.access.mul.call1669
  %polly.access.call1671 = getelementptr double, double* %polly.access.cast.call1712, i64 %polly.access.add.call1670
  %polly.access.call1671.load = load double, double* %polly.access.call1671, align 8, !alias.scope !95, !noalias !102
  %polly.access.mul.Packed_MemRef_call1506672 = mul nuw nsw i64 %polly.indvar649, 1200
  %polly.access.add.Packed_MemRef_call1506673 = add nsw i64 %polly.access.mul.Packed_MemRef_call1506672, %231
  %polly.access.Packed_MemRef_call1506674 = getelementptr double, double* %Packed_MemRef_call1506, i64 %polly.access.add.Packed_MemRef_call1506673
  store double %polly.access.call1671.load, double* %polly.access.Packed_MemRef_call1506674, align 8
  %polly.indvar_next650 = add nuw nsw i64 %polly.indvar649, 1
  %exitcond1075.not = icmp eq i64 %polly.indvar_next650, 1000
  br i1 %exitcond1075.not, label %polly.loop_header675.preheader, label %polly.loop_header646

polly.loop_header675.preheader:                   ; preds = %polly.loop_header646, %polly.merge665.us
  %234 = mul i64 %232, 9600
  br i1 %polly.loop_guard6561139, label %polly.loop_header675.us, label %polly.loop_exit677

polly.loop_header675.us:                          ; preds = %polly.loop_header675.preheader, %polly.loop_exit684.loopexit.us
  %polly.indvar678.us = phi i64 [ %polly.indvar_next679.us, %polly.loop_exit684.loopexit.us ], [ 0, %polly.loop_header675.preheader ]
  %polly.access.mul.Packed_MemRef_call1506689.us = mul nuw nsw i64 %polly.indvar678.us, 1200
  %polly.access.add.Packed_MemRef_call2508694.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1506689.us, %232
  %polly.access.Packed_MemRef_call2508695.us = getelementptr double, double* %Packed_MemRef_call2508, i64 %polly.access.add.Packed_MemRef_call2508694.us
  %_p_scalar_696.us = load double, double* %polly.access.Packed_MemRef_call2508695.us, align 8
  %polly.access.add.Packed_MemRef_call1506702.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1506689.us, %231
  %polly.access.Packed_MemRef_call1506703.us = getelementptr double, double* %Packed_MemRef_call1506, i64 %polly.access.add.Packed_MemRef_call1506702.us
  %_p_scalar_704.us = load double, double* %polly.access.Packed_MemRef_call1506703.us, align 8
  %min.iters.check1244 = icmp ult i64 %230, 4
  br i1 %min.iters.check1244, label %polly.loop_header682.us.preheader, label %vector.ph1245

vector.ph1245:                                    ; preds = %polly.loop_header675.us
  %n.vec1247 = and i64 %230, -4
  %broadcast.splatinsert1253 = insertelement <4 x double> poison, double %_p_scalar_696.us, i32 0
  %broadcast.splat1254 = shufflevector <4 x double> %broadcast.splatinsert1253, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1256 = insertelement <4 x double> poison, double %_p_scalar_704.us, i32 0
  %broadcast.splat1257 = shufflevector <4 x double> %broadcast.splatinsert1256, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.body1239, %vector.ph1245
  %index1248 = phi i64 [ 0, %vector.ph1245 ], [ %index.next1249, %vector.body1239 ]
  %235 = add nuw nsw i64 %index1248, %222
  %236 = add nuw nsw i64 %index1248, %polly.access.mul.Packed_MemRef_call1506689.us
  %237 = getelementptr double, double* %Packed_MemRef_call1506, i64 %236
  %238 = bitcast double* %237 to <4 x double>*
  %wide.load1252 = load <4 x double>, <4 x double>* %238, align 8
  %239 = fmul fast <4 x double> %broadcast.splat1254, %wide.load1252
  %240 = add nuw nsw i64 %235, %polly.access.mul.Packed_MemRef_call1506689.us
  %241 = getelementptr double, double* %Packed_MemRef_call2508, i64 %240
  %242 = bitcast double* %241 to <4 x double>*
  %wide.load1255 = load <4 x double>, <4 x double>* %242, align 8
  %243 = fmul fast <4 x double> %broadcast.splat1257, %wide.load1255
  %244 = shl i64 %235, 3
  %245 = add i64 %244, %234
  %246 = getelementptr i8, i8* %call, i64 %245
  %247 = bitcast i8* %246 to <4 x double>*
  %wide.load1258 = load <4 x double>, <4 x double>* %247, align 8, !alias.scope !92, !noalias !94
  %248 = fadd fast <4 x double> %243, %239
  %249 = fmul fast <4 x double> %248, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %250 = fadd fast <4 x double> %249, %wide.load1258
  %251 = bitcast i8* %246 to <4 x double>*
  store <4 x double> %250, <4 x double>* %251, align 8, !alias.scope !92, !noalias !94
  %index.next1249 = add i64 %index1248, 4
  %252 = icmp eq i64 %index.next1249, %n.vec1247
  br i1 %252, label %middle.block1237, label %vector.body1239, !llvm.loop !103

middle.block1237:                                 ; preds = %vector.body1239
  %cmp.n1251 = icmp eq i64 %230, %n.vec1247
  br i1 %cmp.n1251, label %polly.loop_exit684.loopexit.us, label %polly.loop_header682.us.preheader

polly.loop_header682.us.preheader:                ; preds = %polly.loop_header675.us, %middle.block1237
  %polly.indvar686.us.ph = phi i64 [ 0, %polly.loop_header675.us ], [ %n.vec1247, %middle.block1237 ]
  br label %polly.loop_header682.us

polly.loop_header682.us:                          ; preds = %polly.loop_header682.us.preheader, %polly.loop_header682.us
  %polly.indvar686.us = phi i64 [ %polly.indvar_next687.us, %polly.loop_header682.us ], [ %polly.indvar686.us.ph, %polly.loop_header682.us.preheader ]
  %253 = add nuw nsw i64 %polly.indvar686.us, %222
  %polly.access.add.Packed_MemRef_call1506690.us = add nuw nsw i64 %polly.indvar686.us, %polly.access.mul.Packed_MemRef_call1506689.us
  %polly.access.Packed_MemRef_call1506691.us = getelementptr double, double* %Packed_MemRef_call1506, i64 %polly.access.add.Packed_MemRef_call1506690.us
  %_p_scalar_692.us = load double, double* %polly.access.Packed_MemRef_call1506691.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_696.us, %_p_scalar_692.us
  %polly.access.add.Packed_MemRef_call2508698.us = add nuw nsw i64 %253, %polly.access.mul.Packed_MemRef_call1506689.us
  %polly.access.Packed_MemRef_call2508699.us = getelementptr double, double* %Packed_MemRef_call2508, i64 %polly.access.add.Packed_MemRef_call2508698.us
  %_p_scalar_700.us = load double, double* %polly.access.Packed_MemRef_call2508699.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_704.us, %_p_scalar_700.us
  %254 = shl i64 %253, 3
  %255 = add i64 %254, %234
  %scevgep705.us = getelementptr i8, i8* %call, i64 %255
  %scevgep705706.us = bitcast i8* %scevgep705.us to double*
  %_p_scalar_707.us = load double, double* %scevgep705706.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_707.us
  store double %p_add42.i.us, double* %scevgep705706.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next687.us = add nuw nsw i64 %polly.indvar686.us, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar686.us, %smin1090
  br i1 %exitcond1091.not, label %polly.loop_exit684.loopexit.us, label %polly.loop_header682.us, !llvm.loop !104

polly.loop_exit684.loopexit.us:                   ; preds = %polly.loop_header682.us, %middle.block1237
  %polly.indvar_next679.us = add nuw nsw i64 %polly.indvar678.us, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar_next679.us, 1000
  br i1 %exitcond1092.not, label %polly.loop_exit677, label %polly.loop_header675.us

polly.loop_header834:                             ; preds = %entry, %polly.loop_exit842
  %indvars.iv1127 = phi i64 [ %indvars.iv.next1128, %polly.loop_exit842 ], [ 0, %entry ]
  %polly.indvar837 = phi i64 [ %polly.indvar_next838, %polly.loop_exit842 ], [ 0, %entry ]
  %smin1129 = call i64 @llvm.smin.i64(i64 %indvars.iv1127, i64 -1168)
  %256 = shl nsw i64 %polly.indvar837, 5
  %257 = add nsw i64 %smin1129, 1199
  br label %polly.loop_header840

polly.loop_exit842:                               ; preds = %polly.loop_exit848
  %polly.indvar_next838 = add nuw nsw i64 %polly.indvar837, 1
  %indvars.iv.next1128 = add nsw i64 %indvars.iv1127, -32
  %exitcond1132.not = icmp eq i64 %polly.indvar_next838, 38
  br i1 %exitcond1132.not, label %polly.loop_header861, label %polly.loop_header834

polly.loop_header840:                             ; preds = %polly.loop_exit848, %polly.loop_header834
  %indvars.iv1123 = phi i64 [ %indvars.iv.next1124, %polly.loop_exit848 ], [ 0, %polly.loop_header834 ]
  %polly.indvar843 = phi i64 [ %polly.indvar_next844, %polly.loop_exit848 ], [ 0, %polly.loop_header834 ]
  %258 = mul nsw i64 %polly.indvar843, -32
  %smin = call i64 @llvm.smin.i64(i64 %258, i64 -1168)
  %259 = add nsw i64 %smin, 1200
  %smin1125 = call i64 @llvm.smin.i64(i64 %indvars.iv1123, i64 -1168)
  %260 = shl nsw i64 %polly.indvar843, 5
  %261 = add nsw i64 %smin1125, 1199
  br label %polly.loop_header846

polly.loop_exit848:                               ; preds = %polly.loop_exit854
  %polly.indvar_next844 = add nuw nsw i64 %polly.indvar843, 1
  %indvars.iv.next1124 = add nsw i64 %indvars.iv1123, -32
  %exitcond1131.not = icmp eq i64 %polly.indvar_next844, 38
  br i1 %exitcond1131.not, label %polly.loop_exit842, label %polly.loop_header840

polly.loop_header846:                             ; preds = %polly.loop_exit854, %polly.loop_header840
  %polly.indvar849 = phi i64 [ 0, %polly.loop_header840 ], [ %polly.indvar_next850, %polly.loop_exit854 ]
  %262 = add nuw nsw i64 %polly.indvar849, %256
  %263 = trunc i64 %262 to i32
  %264 = mul nuw nsw i64 %262, 9600
  %min.iters.check = icmp eq i64 %259, 0
  br i1 %min.iters.check, label %polly.loop_header852, label %vector.ph1167

vector.ph1167:                                    ; preds = %polly.loop_header846
  %broadcast.splatinsert1174 = insertelement <4 x i64> poison, i64 %260, i32 0
  %broadcast.splat1175 = shufflevector <4 x i64> %broadcast.splatinsert1174, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1176 = insertelement <4 x i32> poison, i32 %263, i32 0
  %broadcast.splat1177 = shufflevector <4 x i32> %broadcast.splatinsert1176, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1166

vector.body1166:                                  ; preds = %vector.body1166, %vector.ph1167
  %index1168 = phi i64 [ 0, %vector.ph1167 ], [ %index.next1169, %vector.body1166 ]
  %vec.ind1172 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1167 ], [ %vec.ind.next1173, %vector.body1166 ]
  %265 = add nuw nsw <4 x i64> %vec.ind1172, %broadcast.splat1175
  %266 = trunc <4 x i64> %265 to <4 x i32>
  %267 = mul <4 x i32> %broadcast.splat1177, %266
  %268 = add <4 x i32> %267, <i32 3, i32 3, i32 3, i32 3>
  %269 = urem <4 x i32> %268, <i32 1200, i32 1200, i32 1200, i32 1200>
  %270 = sitofp <4 x i32> %269 to <4 x double>
  %271 = fmul fast <4 x double> %270, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %272 = extractelement <4 x i64> %265, i32 0
  %273 = shl i64 %272, 3
  %274 = add nuw nsw i64 %273, %264
  %275 = getelementptr i8, i8* %call, i64 %274
  %276 = bitcast i8* %275 to <4 x double>*
  store <4 x double> %271, <4 x double>* %276, align 8, !alias.scope !105, !noalias !107
  %index.next1169 = add i64 %index1168, 4
  %vec.ind.next1173 = add <4 x i64> %vec.ind1172, <i64 4, i64 4, i64 4, i64 4>
  %277 = icmp eq i64 %index.next1169, %259
  br i1 %277, label %polly.loop_exit854, label %vector.body1166, !llvm.loop !110

polly.loop_exit854:                               ; preds = %vector.body1166, %polly.loop_header852
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %exitcond1130.not = icmp eq i64 %polly.indvar849, %257
  br i1 %exitcond1130.not, label %polly.loop_exit848, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_header846, %polly.loop_header852
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_header852 ], [ 0, %polly.loop_header846 ]
  %278 = add nuw nsw i64 %polly.indvar855, %260
  %279 = trunc i64 %278 to i32
  %280 = mul i32 %279, %263
  %281 = add i32 %280, 3
  %282 = urem i32 %281, 1200
  %p_conv31.i = sitofp i32 %282 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %283 = shl i64 %278, 3
  %284 = add nuw nsw i64 %283, %264
  %scevgep858 = getelementptr i8, i8* %call, i64 %284
  %scevgep858859 = bitcast i8* %scevgep858 to double*
  store double %p_div33.i, double* %scevgep858859, align 8, !alias.scope !105, !noalias !107
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %exitcond1126.not = icmp eq i64 %polly.indvar855, %261
  br i1 %exitcond1126.not, label %polly.loop_exit854, label %polly.loop_header852, !llvm.loop !111

polly.loop_header861:                             ; preds = %polly.loop_exit842, %polly.loop_exit869
  %indvars.iv1117 = phi i64 [ %indvars.iv.next1118, %polly.loop_exit869 ], [ 0, %polly.loop_exit842 ]
  %polly.indvar864 = phi i64 [ %polly.indvar_next865, %polly.loop_exit869 ], [ 0, %polly.loop_exit842 ]
  %smin1119 = call i64 @llvm.smin.i64(i64 %indvars.iv1117, i64 -1168)
  %285 = shl nsw i64 %polly.indvar864, 5
  %286 = add nsw i64 %smin1119, 1199
  br label %polly.loop_header867

polly.loop_exit869:                               ; preds = %polly.loop_exit875
  %polly.indvar_next865 = add nuw nsw i64 %polly.indvar864, 1
  %indvars.iv.next1118 = add nsw i64 %indvars.iv1117, -32
  %exitcond1122.not = icmp eq i64 %polly.indvar_next865, 38
  br i1 %exitcond1122.not, label %polly.loop_header887, label %polly.loop_header861

polly.loop_header867:                             ; preds = %polly.loop_exit875, %polly.loop_header861
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %polly.loop_exit875 ], [ 0, %polly.loop_header861 ]
  %polly.indvar870 = phi i64 [ %polly.indvar_next871, %polly.loop_exit875 ], [ 0, %polly.loop_header861 ]
  %287 = mul nsw i64 %polly.indvar870, -32
  %smin1181 = call i64 @llvm.smin.i64(i64 %287, i64 -968)
  %288 = add nsw i64 %smin1181, 1000
  %smin1115 = call i64 @llvm.smin.i64(i64 %indvars.iv1113, i64 -968)
  %289 = shl nsw i64 %polly.indvar870, 5
  %290 = add nsw i64 %smin1115, 999
  br label %polly.loop_header873

polly.loop_exit875:                               ; preds = %polly.loop_exit881
  %polly.indvar_next871 = add nuw nsw i64 %polly.indvar870, 1
  %indvars.iv.next1114 = add nsw i64 %indvars.iv1113, -32
  %exitcond1121.not = icmp eq i64 %polly.indvar_next871, 32
  br i1 %exitcond1121.not, label %polly.loop_exit869, label %polly.loop_header867

polly.loop_header873:                             ; preds = %polly.loop_exit881, %polly.loop_header867
  %polly.indvar876 = phi i64 [ 0, %polly.loop_header867 ], [ %polly.indvar_next877, %polly.loop_exit881 ]
  %291 = add nuw nsw i64 %polly.indvar876, %285
  %292 = trunc i64 %291 to i32
  %293 = mul nuw nsw i64 %291, 8000
  %min.iters.check1182 = icmp eq i64 %288, 0
  br i1 %min.iters.check1182, label %polly.loop_header879, label %vector.ph1183

vector.ph1183:                                    ; preds = %polly.loop_header873
  %broadcast.splatinsert1192 = insertelement <4 x i64> poison, i64 %289, i32 0
  %broadcast.splat1193 = shufflevector <4 x i64> %broadcast.splatinsert1192, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1194 = insertelement <4 x i32> poison, i32 %292, i32 0
  %broadcast.splat1195 = shufflevector <4 x i32> %broadcast.splatinsert1194, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1180

vector.body1180:                                  ; preds = %vector.body1180, %vector.ph1183
  %index1186 = phi i64 [ 0, %vector.ph1183 ], [ %index.next1187, %vector.body1180 ]
  %vec.ind1190 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1183 ], [ %vec.ind.next1191, %vector.body1180 ]
  %294 = add nuw nsw <4 x i64> %vec.ind1190, %broadcast.splat1193
  %295 = trunc <4 x i64> %294 to <4 x i32>
  %296 = mul <4 x i32> %broadcast.splat1195, %295
  %297 = add <4 x i32> %296, <i32 2, i32 2, i32 2, i32 2>
  %298 = urem <4 x i32> %297, <i32 1000, i32 1000, i32 1000, i32 1000>
  %299 = sitofp <4 x i32> %298 to <4 x double>
  %300 = fmul fast <4 x double> %299, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %301 = extractelement <4 x i64> %294, i32 0
  %302 = shl i64 %301, 3
  %303 = add nuw nsw i64 %302, %293
  %304 = getelementptr i8, i8* %call2, i64 %303
  %305 = bitcast i8* %304 to <4 x double>*
  store <4 x double> %300, <4 x double>* %305, align 8, !alias.scope !109, !noalias !112
  %index.next1187 = add i64 %index1186, 4
  %vec.ind.next1191 = add <4 x i64> %vec.ind1190, <i64 4, i64 4, i64 4, i64 4>
  %306 = icmp eq i64 %index.next1187, %288
  br i1 %306, label %polly.loop_exit881, label %vector.body1180, !llvm.loop !113

polly.loop_exit881:                               ; preds = %vector.body1180, %polly.loop_header879
  %polly.indvar_next877 = add nuw nsw i64 %polly.indvar876, 1
  %exitcond1120.not = icmp eq i64 %polly.indvar876, %286
  br i1 %exitcond1120.not, label %polly.loop_exit875, label %polly.loop_header873

polly.loop_header879:                             ; preds = %polly.loop_header873, %polly.loop_header879
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_header879 ], [ 0, %polly.loop_header873 ]
  %307 = add nuw nsw i64 %polly.indvar882, %289
  %308 = trunc i64 %307 to i32
  %309 = mul i32 %308, %292
  %310 = add i32 %309, 2
  %311 = urem i32 %310, 1000
  %p_conv10.i = sitofp i32 %311 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %312 = shl i64 %307, 3
  %313 = add nuw nsw i64 %312, %293
  %scevgep885 = getelementptr i8, i8* %call2, i64 %313
  %scevgep885886 = bitcast i8* %scevgep885 to double*
  store double %p_div12.i, double* %scevgep885886, align 8, !alias.scope !109, !noalias !112
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar882, %290
  br i1 %exitcond1116.not, label %polly.loop_exit881, label %polly.loop_header879, !llvm.loop !114

polly.loop_header887:                             ; preds = %polly.loop_exit869, %polly.loop_exit895
  %indvars.iv1107 = phi i64 [ %indvars.iv.next1108, %polly.loop_exit895 ], [ 0, %polly.loop_exit869 ]
  %polly.indvar890 = phi i64 [ %polly.indvar_next891, %polly.loop_exit895 ], [ 0, %polly.loop_exit869 ]
  %smin1109 = call i64 @llvm.smin.i64(i64 %indvars.iv1107, i64 -1168)
  %314 = shl nsw i64 %polly.indvar890, 5
  %315 = add nsw i64 %smin1109, 1199
  br label %polly.loop_header893

polly.loop_exit895:                               ; preds = %polly.loop_exit901
  %polly.indvar_next891 = add nuw nsw i64 %polly.indvar890, 1
  %indvars.iv.next1108 = add nsw i64 %indvars.iv1107, -32
  %exitcond1112.not = icmp eq i64 %polly.indvar_next891, 38
  br i1 %exitcond1112.not, label %init_array.exit, label %polly.loop_header887

polly.loop_header893:                             ; preds = %polly.loop_exit901, %polly.loop_header887
  %indvars.iv1103 = phi i64 [ %indvars.iv.next1104, %polly.loop_exit901 ], [ 0, %polly.loop_header887 ]
  %polly.indvar896 = phi i64 [ %polly.indvar_next897, %polly.loop_exit901 ], [ 0, %polly.loop_header887 ]
  %316 = mul nsw i64 %polly.indvar896, -32
  %smin1199 = call i64 @llvm.smin.i64(i64 %316, i64 -968)
  %317 = add nsw i64 %smin1199, 1000
  %smin1105 = call i64 @llvm.smin.i64(i64 %indvars.iv1103, i64 -968)
  %318 = shl nsw i64 %polly.indvar896, 5
  %319 = add nsw i64 %smin1105, 999
  br label %polly.loop_header899

polly.loop_exit901:                               ; preds = %polly.loop_exit907
  %polly.indvar_next897 = add nuw nsw i64 %polly.indvar896, 1
  %indvars.iv.next1104 = add nsw i64 %indvars.iv1103, -32
  %exitcond1111.not = icmp eq i64 %polly.indvar_next897, 32
  br i1 %exitcond1111.not, label %polly.loop_exit895, label %polly.loop_header893

polly.loop_header899:                             ; preds = %polly.loop_exit907, %polly.loop_header893
  %polly.indvar902 = phi i64 [ 0, %polly.loop_header893 ], [ %polly.indvar_next903, %polly.loop_exit907 ]
  %320 = add nuw nsw i64 %polly.indvar902, %314
  %321 = trunc i64 %320 to i32
  %322 = mul nuw nsw i64 %320, 8000
  %min.iters.check1200 = icmp eq i64 %317, 0
  br i1 %min.iters.check1200, label %polly.loop_header905, label %vector.ph1201

vector.ph1201:                                    ; preds = %polly.loop_header899
  %broadcast.splatinsert1210 = insertelement <4 x i64> poison, i64 %318, i32 0
  %broadcast.splat1211 = shufflevector <4 x i64> %broadcast.splatinsert1210, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1212 = insertelement <4 x i32> poison, i32 %321, i32 0
  %broadcast.splat1213 = shufflevector <4 x i32> %broadcast.splatinsert1212, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1198

vector.body1198:                                  ; preds = %vector.body1198, %vector.ph1201
  %index1204 = phi i64 [ 0, %vector.ph1201 ], [ %index.next1205, %vector.body1198 ]
  %vec.ind1208 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1201 ], [ %vec.ind.next1209, %vector.body1198 ]
  %323 = add nuw nsw <4 x i64> %vec.ind1208, %broadcast.splat1211
  %324 = trunc <4 x i64> %323 to <4 x i32>
  %325 = mul <4 x i32> %broadcast.splat1213, %324
  %326 = add <4 x i32> %325, <i32 1, i32 1, i32 1, i32 1>
  %327 = urem <4 x i32> %326, <i32 1200, i32 1200, i32 1200, i32 1200>
  %328 = sitofp <4 x i32> %327 to <4 x double>
  %329 = fmul fast <4 x double> %328, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %330 = extractelement <4 x i64> %323, i32 0
  %331 = shl i64 %330, 3
  %332 = add nuw nsw i64 %331, %322
  %333 = getelementptr i8, i8* %call1, i64 %332
  %334 = bitcast i8* %333 to <4 x double>*
  store <4 x double> %329, <4 x double>* %334, align 8, !alias.scope !108, !noalias !115
  %index.next1205 = add i64 %index1204, 4
  %vec.ind.next1209 = add <4 x i64> %vec.ind1208, <i64 4, i64 4, i64 4, i64 4>
  %335 = icmp eq i64 %index.next1205, %317
  br i1 %335, label %polly.loop_exit907, label %vector.body1198, !llvm.loop !116

polly.loop_exit907:                               ; preds = %vector.body1198, %polly.loop_header905
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar902, %315
  br i1 %exitcond1110.not, label %polly.loop_exit901, label %polly.loop_header899

polly.loop_header905:                             ; preds = %polly.loop_header899, %polly.loop_header905
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_header905 ], [ 0, %polly.loop_header899 ]
  %336 = add nuw nsw i64 %polly.indvar908, %318
  %337 = trunc i64 %336 to i32
  %338 = mul i32 %337, %321
  %339 = add i32 %338, 1
  %340 = urem i32 %339, 1200
  %p_conv.i = sitofp i32 %340 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %341 = shl i64 %336, 3
  %342 = add nuw nsw i64 %341, %322
  %scevgep912 = getelementptr i8, i8* %call1, i64 %342
  %scevgep912913 = bitcast i8* %scevgep912 to double*
  store double %p_div.i, double* %scevgep912913, align 8, !alias.scope !108, !noalias !115
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar908, %319
  br i1 %exitcond1106.not, label %polly.loop_exit907, label %polly.loop_header905, !llvm.loop !117
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
!49 = !{!"llvm.loop.tile.size", i32 80}
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
