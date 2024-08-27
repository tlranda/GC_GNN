; ModuleID = 'syr2k_exhaustive/mmp_all_SM_0.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_0.c"
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
  %call868 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1720 = bitcast i8* %call1 to double*
  %polly.access.call1729 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2730 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1729, %call2
  %polly.access.call2749 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2749, %call1
  %2 = or i1 %0, %1
  %polly.access.call769 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call769, %call2
  %4 = icmp ule i8* %polly.access.call2749, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call769, %call1
  %8 = icmp ule i8* %polly.access.call1729, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header842, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1140 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1139 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1138 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1137 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1137, %scevgep1140
  %bound1 = icmp ult i8* %scevgep1139, %scevgep1138
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
  br i1 %exitcond18.not.i, label %vector.ph1144, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1144:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1151 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1152 = shufflevector <4 x i64> %broadcast.splatinsert1151, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1143

vector.body1143:                                  ; preds = %vector.body1143, %vector.ph1144
  %index1145 = phi i64 [ 0, %vector.ph1144 ], [ %index.next1146, %vector.body1143 ]
  %vec.ind1149 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1144 ], [ %vec.ind.next1150, %vector.body1143 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1149, %broadcast.splat1152
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv7.i, i64 %index1145
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1146 = add i64 %index1145, 4
  %vec.ind.next1150 = add <4 x i64> %vec.ind1149, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1146, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1143, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1143
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1144, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit903
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start510, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1207 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1207, label %for.body3.i46.preheader1281, label %vector.ph1208

vector.ph1208:                                    ; preds = %for.body3.i46.preheader
  %n.vec1210 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1206

vector.body1206:                                  ; preds = %vector.body1206, %vector.ph1208
  %index1211 = phi i64 [ 0, %vector.ph1208 ], [ %index.next1212, %vector.body1206 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv21.i, i64 %index1211
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1212 = add i64 %index1211, 4
  %46 = icmp eq i64 %index.next1212, %n.vec1210
  br i1 %46, label %middle.block1204, label %vector.body1206, !llvm.loop !18

middle.block1204:                                 ; preds = %vector.body1206
  %cmp.n1214 = icmp eq i64 %indvars.iv21.i, %n.vec1210
  br i1 %cmp.n1214, label %for.inc6.i, label %for.body3.i46.preheader1281

for.body3.i46.preheader1281:                      ; preds = %for.body3.i46.preheader, %middle.block1204
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1210, %middle.block1204 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1281, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1281 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1204, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting511
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start302, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1230 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1230, label %for.body3.i60.preheader1280, label %vector.ph1231

vector.ph1231:                                    ; preds = %for.body3.i60.preheader
  %n.vec1233 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1229

vector.body1229:                                  ; preds = %vector.body1229, %vector.ph1231
  %index1234 = phi i64 [ 0, %vector.ph1231 ], [ %index.next1235, %vector.body1229 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv21.i52, i64 %index1234
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1238 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1238, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1235 = add i64 %index1234, 4
  %57 = icmp eq i64 %index.next1235, %n.vec1233
  br i1 %57, label %middle.block1227, label %vector.body1229, !llvm.loop !62

middle.block1227:                                 ; preds = %vector.body1229
  %cmp.n1237 = icmp eq i64 %indvars.iv21.i52, %n.vec1233
  br i1 %cmp.n1237, label %for.inc6.i63, label %for.body3.i60.preheader1280

for.body3.i60.preheader1280:                      ; preds = %for.body3.i60.preheader, %middle.block1227
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1233, %middle.block1227 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1280, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1280 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !63

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1227, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1256 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1256, label %for.body3.i99.preheader1279, label %vector.ph1257

vector.ph1257:                                    ; preds = %for.body3.i99.preheader
  %n.vec1259 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %vector.ph1257
  %index1260 = phi i64 [ 0, %vector.ph1257 ], [ %index.next1261, %vector.body1255 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv21.i91, i64 %index1260
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1264 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1264, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1261 = add i64 %index1260, 4
  %68 = icmp eq i64 %index.next1261, %n.vec1259
  br i1 %68, label %middle.block1253, label %vector.body1255, !llvm.loop !64

middle.block1253:                                 ; preds = %vector.body1255
  %cmp.n1263 = icmp eq i64 %indvars.iv21.i91, %n.vec1259
  br i1 %cmp.n1263, label %for.inc6.i102, label %for.body3.i99.preheader1279

for.body3.i99.preheader1279:                      ; preds = %for.body3.i99.preheader, %middle.block1253
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1259, %middle.block1253 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1279, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1279 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !65

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1253, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !66
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !66
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !66
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !66
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !66
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !68

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !69

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !66
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !66
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall136 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1268 = phi i64 [ %indvar.next1269, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1268, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1270 = icmp ult i64 %88, 4
  br i1 %min.iters.check1270, label %polly.loop_header192.preheader, label %vector.ph1271

vector.ph1271:                                    ; preds = %polly.loop_header
  %n.vec1273 = and i64 %88, -4
  br label %vector.body1267

vector.body1267:                                  ; preds = %vector.body1267, %vector.ph1271
  %index1274 = phi i64 [ 0, %vector.ph1271 ], [ %index.next1275, %vector.body1267 ]
  %90 = shl nuw nsw i64 %index1274, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1278 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !70, !noalias !72
  %93 = fmul fast <4 x double> %wide.load1278, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !70, !noalias !72
  %index.next1275 = add i64 %index1274, 4
  %95 = icmp eq i64 %index.next1275, %n.vec1273
  br i1 %95, label %middle.block1265, label %vector.body1267, !llvm.loop !77

middle.block1265:                                 ; preds = %vector.body1267
  %cmp.n1277 = icmp eq i64 %88, %n.vec1273
  br i1 %cmp.n1277, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1265
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1273, %middle.block1265 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1265
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond977.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1269 = add i64 %indvar1268, 1
  br i1 %exitcond977.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  %polly.access.Packed_MemRef_call1.1 = getelementptr i8, i8* %malloccall, i64 8
  %96 = bitcast i8* %polly.access.Packed_MemRef_call1.1 to double*
  %polly.access.Packed_MemRef_call1.2 = getelementptr i8, i8* %malloccall, i64 16
  %97 = bitcast i8* %polly.access.Packed_MemRef_call1.2 to double*
  %polly.access.Packed_MemRef_call1.3 = getelementptr i8, i8* %malloccall, i64 24
  %98 = bitcast i8* %polly.access.Packed_MemRef_call1.3 to double*
  %polly.access.Packed_MemRef_call1.11058 = getelementptr i8, i8* %malloccall, i64 9600
  %99 = bitcast i8* %polly.access.Packed_MemRef_call1.11058 to double*
  %polly.access.Packed_MemRef_call1.1.1 = getelementptr i8, i8* %malloccall, i64 9608
  %100 = bitcast i8* %polly.access.Packed_MemRef_call1.1.1 to double*
  %polly.access.Packed_MemRef_call1.2.1 = getelementptr i8, i8* %malloccall, i64 9616
  %101 = bitcast i8* %polly.access.Packed_MemRef_call1.2.1 to double*
  %polly.access.Packed_MemRef_call1.3.1 = getelementptr i8, i8* %malloccall, i64 9624
  %102 = bitcast i8* %polly.access.Packed_MemRef_call1.3.1 to double*
  %polly.access.Packed_MemRef_call1.21063 = getelementptr i8, i8* %malloccall, i64 19200
  %103 = bitcast i8* %polly.access.Packed_MemRef_call1.21063 to double*
  %polly.access.Packed_MemRef_call1.1.2 = getelementptr i8, i8* %malloccall, i64 19208
  %104 = bitcast i8* %polly.access.Packed_MemRef_call1.1.2 to double*
  %polly.access.Packed_MemRef_call1.2.2 = getelementptr i8, i8* %malloccall, i64 19216
  %105 = bitcast i8* %polly.access.Packed_MemRef_call1.2.2 to double*
  %polly.access.Packed_MemRef_call1.3.2 = getelementptr i8, i8* %malloccall, i64 19224
  %106 = bitcast i8* %polly.access.Packed_MemRef_call1.3.2 to double*
  %polly.access.Packed_MemRef_call1.31068 = getelementptr i8, i8* %malloccall, i64 28800
  %107 = bitcast i8* %polly.access.Packed_MemRef_call1.31068 to double*
  %polly.access.Packed_MemRef_call1.1.3 = getelementptr i8, i8* %malloccall, i64 28808
  %108 = bitcast i8* %polly.access.Packed_MemRef_call1.1.3 to double*
  %polly.access.Packed_MemRef_call1.2.3 = getelementptr i8, i8* %malloccall, i64 28816
  %109 = bitcast i8* %polly.access.Packed_MemRef_call1.2.3 to double*
  %polly.access.Packed_MemRef_call1.3.3 = getelementptr i8, i8* %malloccall, i64 28824
  %110 = bitcast i8* %polly.access.Packed_MemRef_call1.3.3 to double*
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr i8, i8* %malloccall, i64 8
  %111 = bitcast i8* %polly.access.Packed_MemRef_call1.us.1 to double*
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr i8, i8* %malloccall, i64 16
  %112 = bitcast i8* %polly.access.Packed_MemRef_call1.us.2 to double*
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr i8, i8* %malloccall, i64 24
  %113 = bitcast i8* %polly.access.Packed_MemRef_call1.us.3 to double*
  %polly.access.Packed_MemRef_call1.us.11072 = getelementptr i8, i8* %malloccall, i64 9600
  %114 = bitcast i8* %polly.access.Packed_MemRef_call1.us.11072 to double*
  %polly.access.Packed_MemRef_call1.us.1.1 = getelementptr i8, i8* %malloccall, i64 9608
  %115 = bitcast i8* %polly.access.Packed_MemRef_call1.us.1.1 to double*
  %polly.access.Packed_MemRef_call1.us.2.1 = getelementptr i8, i8* %malloccall, i64 9616
  %116 = bitcast i8* %polly.access.Packed_MemRef_call1.us.2.1 to double*
  %polly.access.Packed_MemRef_call1.us.3.1 = getelementptr i8, i8* %malloccall, i64 9624
  %117 = bitcast i8* %polly.access.Packed_MemRef_call1.us.3.1 to double*
  %polly.access.Packed_MemRef_call1.us.21076 = getelementptr i8, i8* %malloccall, i64 19200
  %118 = bitcast i8* %polly.access.Packed_MemRef_call1.us.21076 to double*
  %polly.access.Packed_MemRef_call1.us.1.2 = getelementptr i8, i8* %malloccall, i64 19208
  %119 = bitcast i8* %polly.access.Packed_MemRef_call1.us.1.2 to double*
  %polly.access.Packed_MemRef_call1.us.2.2 = getelementptr i8, i8* %malloccall, i64 19216
  %120 = bitcast i8* %polly.access.Packed_MemRef_call1.us.2.2 to double*
  %polly.access.Packed_MemRef_call1.us.3.2 = getelementptr i8, i8* %malloccall, i64 19224
  %121 = bitcast i8* %polly.access.Packed_MemRef_call1.us.3.2 to double*
  %polly.access.Packed_MemRef_call1.us.31080 = getelementptr i8, i8* %malloccall, i64 28800
  %122 = bitcast i8* %polly.access.Packed_MemRef_call1.us.31080 to double*
  %polly.access.Packed_MemRef_call1.us.1.3 = getelementptr i8, i8* %malloccall, i64 28808
  %123 = bitcast i8* %polly.access.Packed_MemRef_call1.us.1.3 to double*
  %polly.access.Packed_MemRef_call1.us.2.3 = getelementptr i8, i8* %malloccall, i64 28816
  %124 = bitcast i8* %polly.access.Packed_MemRef_call1.us.2.3 to double*
  %polly.access.Packed_MemRef_call1.us.3.3 = getelementptr i8, i8* %malloccall, i64 28824
  %125 = bitcast i8* %polly.access.Packed_MemRef_call1.us.3.3 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %126 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %126
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !70, !noalias !72
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !70, !noalias !72
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond976.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond976.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !78

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %127 = shl nsw i64 %polly.indvar203, 2
  %128 = or i64 %127, 1
  %129 = or i64 %127, 2
  %130 = or i64 %127, 3
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond975.not = icmp eq i64 %polly.indvar_next204, 250
  br i1 %exitcond975.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %131 = shl nsw i64 %polly.indvar209, 2
  br label %polly.loop_header218

polly.loop_exit230:                               ; preds = %polly.loop_exit265
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %exitcond974.not = icmp eq i64 %polly.indvar_next210, 300
  br i1 %exitcond974.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header206
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %132 = add nuw nsw i64 %polly.indvar221, %131
  %polly.access.mul.call2225 = mul nuw nsw i64 %132, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %127, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2730, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !74, !noalias !80
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar221
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_header218.1, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit220.3, %polly.loop_exit265
  %indvars.iv966 = phi i64 [ 0, %polly.loop_exit220.3 ], [ %indvars.iv.next967, %polly.loop_exit265 ]
  %polly.indvar231 = phi i64 [ %polly.indvar209, %polly.loop_exit220.3 ], [ %polly.indvar_next232, %polly.loop_exit265 ]
  %133 = shl nsw i64 %polly.indvar231, 2
  %134 = add nsw i64 %133, %370
  %135 = icmp ugt i64 %134, 4
  %136 = select i1 %135, i64 %134, i64 4
  %137 = or i64 %134, 3
  %polly.loop_guard.not = icmp ugt i64 %136, %137
  br i1 %polly.loop_guard.not, label %polly.loop_header234.us.preheader, label %polly.loop_header234.preheader

polly.loop_header234.preheader:                   ; preds = %polly.loop_header228
  %polly.access.call1249.load = load double, double* %polly.access.call1249, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load, double* %Packed_MemRef_call1, align 8
  %polly.access.call1249.load.1 = load double, double* %polly.access.call1249.1, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.1, double* %96, align 8
  %polly.access.call1249.load.2 = load double, double* %polly.access.call1249.2, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.2, double* %97, align 8
  %polly.access.call1249.load.3 = load double, double* %polly.access.call1249.3, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.3, double* %98, align 8
  br label %polly.loop_header250

polly.loop_header234.us.preheader:                ; preds = %polly.loop_header228
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.us, double* %Packed_MemRef_call1, align 8
  %polly.access.call1249.load.us.1 = load double, double* %polly.access.call1249.us.1, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.us.1, double* %111, align 8
  %polly.access.call1249.load.us.2 = load double, double* %polly.access.call1249.us.2, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.us.2, double* %112, align 8
  %polly.access.call1249.load.us.3 = load double, double* %polly.access.call1249.us.3, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.us.3, double* %113, align 8
  %polly.access.call1249.load.us.11071 = load double, double* %polly.access.call1249.us.11070, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.us.11071, double* %114, align 8
  %polly.access.call1249.load.us.1.1 = load double, double* %polly.access.call1249.us.1.1, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.us.1.1, double* %115, align 8
  %polly.access.call1249.load.us.2.1 = load double, double* %polly.access.call1249.us.2.1, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.us.2.1, double* %116, align 8
  %polly.access.call1249.load.us.3.1 = load double, double* %polly.access.call1249.us.3.1, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.us.3.1, double* %117, align 8
  %polly.access.call1249.load.us.21075 = load double, double* %polly.access.call1249.us.21074, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.us.21075, double* %118, align 8
  %polly.access.call1249.load.us.1.2 = load double, double* %polly.access.call1249.us.1.2, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.us.1.2, double* %119, align 8
  %polly.access.call1249.load.us.2.2 = load double, double* %polly.access.call1249.us.2.2, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.us.2.2, double* %120, align 8
  %polly.access.call1249.load.us.3.2 = load double, double* %polly.access.call1249.us.3.2, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.us.3.2, double* %121, align 8
  %polly.access.call1249.load.us.31079 = load double, double* %polly.access.call1249.us.31078, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.us.31079, double* %122, align 8
  %polly.access.call1249.load.us.1.3 = load double, double* %polly.access.call1249.us.1.3, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.us.1.3, double* %123, align 8
  %polly.access.call1249.load.us.2.3 = load double, double* %polly.access.call1249.us.2.3, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.us.2.3, double* %124, align 8
  %polly.access.call1249.load.us.3.3 = load double, double* %polly.access.call1249.us.3.3, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.us.3.3, double* %125, align 8
  br label %polly.loop_header263.preheader

polly.loop_exit265:                               ; preds = %polly.loop_exit277.3
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next967 = add nuw nsw i64 %indvars.iv966, 4
  %exitcond973.not = icmp eq i64 %polly.indvar_next232, 300
  br i1 %exitcond973.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_exit252:                               ; preds = %polly.loop_header250
  %polly.access.call1249.load.11057 = load double, double* %polly.access.call1249.11056, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.11057, double* %99, align 8
  %polly.access.call1249.load.1.1 = load double, double* %polly.access.call1249.1.1, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.1.1, double* %100, align 8
  %polly.access.call1249.load.2.1 = load double, double* %polly.access.call1249.2.1, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.2.1, double* %101, align 8
  %polly.access.call1249.load.3.1 = load double, double* %polly.access.call1249.3.1, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.3.1, double* %102, align 8
  br label %polly.loop_header250.1

polly.loop_header263.preheader:                   ; preds = %polly.loop_header250.3, %polly.loop_header234.us.preheader
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv966, i64 3)
  %138 = mul nsw i64 %polly.indvar231, 38400
  %indvars.iv.next969 = or i64 %indvars.iv966, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next969, i64 3)
  %139 = or i64 %134, 1
  %140 = or i64 %133, 1
  %141 = mul nuw nsw i64 %140, 9600
  %indvars.iv.next969.1 = add nuw nsw i64 %indvars.iv.next969, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next969.1, i64 3)
  %142 = or i64 %134, 2
  %143 = or i64 %133, 2
  %144 = mul nuw nsw i64 %143, 9600
  %145 = or i64 %134, 3
  %146 = or i64 %133, 3
  %147 = mul nuw nsw i64 %146, 9600
  br label %polly.loop_header263

polly.loop_header250:                             ; preds = %polly.loop_header234.preheader, %polly.loop_header250
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_header250 ], [ %136, %polly.loop_header234.preheader ]
  %148 = add nuw nsw i64 %polly.indvar253, %131
  %polly.access.mul.call1257 = mul nuw nsw i64 %148, 1000
  %polly.access.add.call1258 = add nuw nsw i64 %polly.access.mul.call1257, %127
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1258
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !73, !noalias !81
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar253
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %polly.loop_cond255.not.not = icmp ult i64 %polly.indvar253, %137
  br i1 %polly.loop_cond255.not.not, label %polly.loop_header250, label %polly.loop_exit252

polly.loop_header263:                             ; preds = %polly.loop_header263.preheader, %polly.loop_exit277.3
  %polly.indvar266 = phi i64 [ %polly.indvar_next267, %polly.loop_exit277.3 ], [ 0, %polly.loop_header263.preheader ]
  %polly.access.mul.Packed_MemRef_call1281 = mul nuw nsw i64 %polly.indvar266, 1200
  %polly.access.add.Packed_MemRef_call2286 = add nuw nsw i64 %134, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call2287 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286
  %_p_scalar_288 = load double, double* %polly.access.Packed_MemRef_call2287, align 8
  %polly.access.Packed_MemRef_call1295 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2286
  %_p_scalar_296 = load double, double* %polly.access.Packed_MemRef_call1295, align 8
  br label %polly.loop_header275

polly.loop_exit277:                               ; preds = %polly.loop_header275
  %polly.access.add.Packed_MemRef_call2286.1 = add nuw nsw i64 %139, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call2287.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.1
  %_p_scalar_288.1 = load double, double* %polly.access.Packed_MemRef_call2287.1, align 8
  %polly.access.Packed_MemRef_call1295.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2286.1
  %_p_scalar_296.1 = load double, double* %polly.access.Packed_MemRef_call1295.1, align 8
  br label %polly.loop_header275.1

polly.loop_header275:                             ; preds = %polly.loop_header275, %polly.loop_header263
  %polly.indvar278 = phi i64 [ 0, %polly.loop_header263 ], [ %polly.indvar_next279, %polly.loop_header275 ]
  %149 = add nuw nsw i64 %polly.indvar278, %131
  %polly.access.add.Packed_MemRef_call1282 = add nuw nsw i64 %polly.indvar278, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1283 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282
  %_p_scalar_284 = load double, double* %polly.access.Packed_MemRef_call1283, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_288, %_p_scalar_284
  %polly.access.Packed_MemRef_call2291 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1282
  %_p_scalar_292 = load double, double* %polly.access.Packed_MemRef_call2291, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_296, %_p_scalar_292
  %150 = shl i64 %149, 3
  %151 = add nuw nsw i64 %150, %138
  %scevgep297 = getelementptr i8, i8* %call, i64 %151
  %scevgep297298 = bitcast i8* %scevgep297 to double*
  %_p_scalar_299 = load double, double* %scevgep297298, align 8, !alias.scope !70, !noalias !72
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_299
  store double %p_add42.i118, double* %scevgep297298, align 8, !alias.scope !70, !noalias !72
  %polly.indvar_next279 = add nuw nsw i64 %polly.indvar278, 1
  %exitcond970.not = icmp eq i64 %polly.indvar278, %smin
  br i1 %exitcond970.not, label %polly.loop_exit277, label %polly.loop_header275

polly.start302:                                   ; preds = %kernel_syr2k.exit
  %malloccall304 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall306 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header390

polly.exiting303:                                 ; preds = %polly.loop_exit414
  tail call void @free(i8* nonnull %malloccall304)
  tail call void @free(i8* nonnull %malloccall306)
  br label %kernel_syr2k.exit90

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.start302
  %indvar1242 = phi i64 [ %indvar.next1243, %polly.loop_exit398 ], [ 0, %polly.start302 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 1, %polly.start302 ]
  %152 = add i64 %indvar1242, 1
  %153 = mul nuw nsw i64 %polly.indvar393, 9600
  %scevgep402 = getelementptr i8, i8* %call, i64 %153
  %min.iters.check1244 = icmp ult i64 %152, 4
  br i1 %min.iters.check1244, label %polly.loop_header396.preheader, label %vector.ph1245

vector.ph1245:                                    ; preds = %polly.loop_header390
  %n.vec1247 = and i64 %152, -4
  br label %vector.body1241

vector.body1241:                                  ; preds = %vector.body1241, %vector.ph1245
  %index1248 = phi i64 [ 0, %vector.ph1245 ], [ %index.next1249, %vector.body1241 ]
  %154 = shl nuw nsw i64 %index1248, 3
  %155 = getelementptr i8, i8* %scevgep402, i64 %154
  %156 = bitcast i8* %155 to <4 x double>*
  %wide.load1252 = load <4 x double>, <4 x double>* %156, align 8, !alias.scope !82, !noalias !84
  %157 = fmul fast <4 x double> %wide.load1252, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %158 = bitcast i8* %155 to <4 x double>*
  store <4 x double> %157, <4 x double>* %158, align 8, !alias.scope !82, !noalias !84
  %index.next1249 = add i64 %index1248, 4
  %159 = icmp eq i64 %index.next1249, %n.vec1247
  br i1 %159, label %middle.block1239, label %vector.body1241, !llvm.loop !89

middle.block1239:                                 ; preds = %vector.body1241
  %cmp.n1251 = icmp eq i64 %152, %n.vec1247
  br i1 %cmp.n1251, label %polly.loop_exit398, label %polly.loop_header396.preheader

polly.loop_header396.preheader:                   ; preds = %polly.loop_header390, %middle.block1239
  %polly.indvar399.ph = phi i64 [ 0, %polly.loop_header390 ], [ %n.vec1247, %middle.block1239 ]
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396, %middle.block1239
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond998.not = icmp eq i64 %polly.indvar_next394, 1200
  %indvar.next1243 = add i64 %indvar1242, 1
  br i1 %exitcond998.not, label %polly.loop_header406.preheader, label %polly.loop_header390

polly.loop_header406.preheader:                   ; preds = %polly.loop_exit398
  %Packed_MemRef_call1305 = bitcast i8* %malloccall304 to double*
  %Packed_MemRef_call2307 = bitcast i8* %malloccall306 to double*
  %polly.access.Packed_MemRef_call1305.1 = getelementptr i8, i8* %malloccall304, i64 8
  %160 = bitcast i8* %polly.access.Packed_MemRef_call1305.1 to double*
  %polly.access.Packed_MemRef_call1305.2 = getelementptr i8, i8* %malloccall304, i64 16
  %161 = bitcast i8* %polly.access.Packed_MemRef_call1305.2 to double*
  %polly.access.Packed_MemRef_call1305.3 = getelementptr i8, i8* %malloccall304, i64 24
  %162 = bitcast i8* %polly.access.Packed_MemRef_call1305.3 to double*
  %polly.access.Packed_MemRef_call1305.11085 = getelementptr i8, i8* %malloccall304, i64 9600
  %163 = bitcast i8* %polly.access.Packed_MemRef_call1305.11085 to double*
  %polly.access.Packed_MemRef_call1305.1.1 = getelementptr i8, i8* %malloccall304, i64 9608
  %164 = bitcast i8* %polly.access.Packed_MemRef_call1305.1.1 to double*
  %polly.access.Packed_MemRef_call1305.2.1 = getelementptr i8, i8* %malloccall304, i64 9616
  %165 = bitcast i8* %polly.access.Packed_MemRef_call1305.2.1 to double*
  %polly.access.Packed_MemRef_call1305.3.1 = getelementptr i8, i8* %malloccall304, i64 9624
  %166 = bitcast i8* %polly.access.Packed_MemRef_call1305.3.1 to double*
  %polly.access.Packed_MemRef_call1305.21090 = getelementptr i8, i8* %malloccall304, i64 19200
  %167 = bitcast i8* %polly.access.Packed_MemRef_call1305.21090 to double*
  %polly.access.Packed_MemRef_call1305.1.2 = getelementptr i8, i8* %malloccall304, i64 19208
  %168 = bitcast i8* %polly.access.Packed_MemRef_call1305.1.2 to double*
  %polly.access.Packed_MemRef_call1305.2.2 = getelementptr i8, i8* %malloccall304, i64 19216
  %169 = bitcast i8* %polly.access.Packed_MemRef_call1305.2.2 to double*
  %polly.access.Packed_MemRef_call1305.3.2 = getelementptr i8, i8* %malloccall304, i64 19224
  %170 = bitcast i8* %polly.access.Packed_MemRef_call1305.3.2 to double*
  %polly.access.Packed_MemRef_call1305.31095 = getelementptr i8, i8* %malloccall304, i64 28800
  %171 = bitcast i8* %polly.access.Packed_MemRef_call1305.31095 to double*
  %polly.access.Packed_MemRef_call1305.1.3 = getelementptr i8, i8* %malloccall304, i64 28808
  %172 = bitcast i8* %polly.access.Packed_MemRef_call1305.1.3 to double*
  %polly.access.Packed_MemRef_call1305.2.3 = getelementptr i8, i8* %malloccall304, i64 28816
  %173 = bitcast i8* %polly.access.Packed_MemRef_call1305.2.3 to double*
  %polly.access.Packed_MemRef_call1305.3.3 = getelementptr i8, i8* %malloccall304, i64 28824
  %174 = bitcast i8* %polly.access.Packed_MemRef_call1305.3.3 to double*
  %polly.access.Packed_MemRef_call1305.us.1 = getelementptr i8, i8* %malloccall304, i64 8
  %175 = bitcast i8* %polly.access.Packed_MemRef_call1305.us.1 to double*
  %polly.access.Packed_MemRef_call1305.us.2 = getelementptr i8, i8* %malloccall304, i64 16
  %176 = bitcast i8* %polly.access.Packed_MemRef_call1305.us.2 to double*
  %polly.access.Packed_MemRef_call1305.us.3 = getelementptr i8, i8* %malloccall304, i64 24
  %177 = bitcast i8* %polly.access.Packed_MemRef_call1305.us.3 to double*
  %polly.access.Packed_MemRef_call1305.us.11099 = getelementptr i8, i8* %malloccall304, i64 9600
  %178 = bitcast i8* %polly.access.Packed_MemRef_call1305.us.11099 to double*
  %polly.access.Packed_MemRef_call1305.us.1.1 = getelementptr i8, i8* %malloccall304, i64 9608
  %179 = bitcast i8* %polly.access.Packed_MemRef_call1305.us.1.1 to double*
  %polly.access.Packed_MemRef_call1305.us.2.1 = getelementptr i8, i8* %malloccall304, i64 9616
  %180 = bitcast i8* %polly.access.Packed_MemRef_call1305.us.2.1 to double*
  %polly.access.Packed_MemRef_call1305.us.3.1 = getelementptr i8, i8* %malloccall304, i64 9624
  %181 = bitcast i8* %polly.access.Packed_MemRef_call1305.us.3.1 to double*
  %polly.access.Packed_MemRef_call1305.us.21103 = getelementptr i8, i8* %malloccall304, i64 19200
  %182 = bitcast i8* %polly.access.Packed_MemRef_call1305.us.21103 to double*
  %polly.access.Packed_MemRef_call1305.us.1.2 = getelementptr i8, i8* %malloccall304, i64 19208
  %183 = bitcast i8* %polly.access.Packed_MemRef_call1305.us.1.2 to double*
  %polly.access.Packed_MemRef_call1305.us.2.2 = getelementptr i8, i8* %malloccall304, i64 19216
  %184 = bitcast i8* %polly.access.Packed_MemRef_call1305.us.2.2 to double*
  %polly.access.Packed_MemRef_call1305.us.3.2 = getelementptr i8, i8* %malloccall304, i64 19224
  %185 = bitcast i8* %polly.access.Packed_MemRef_call1305.us.3.2 to double*
  %polly.access.Packed_MemRef_call1305.us.31107 = getelementptr i8, i8* %malloccall304, i64 28800
  %186 = bitcast i8* %polly.access.Packed_MemRef_call1305.us.31107 to double*
  %polly.access.Packed_MemRef_call1305.us.1.3 = getelementptr i8, i8* %malloccall304, i64 28808
  %187 = bitcast i8* %polly.access.Packed_MemRef_call1305.us.1.3 to double*
  %polly.access.Packed_MemRef_call1305.us.2.3 = getelementptr i8, i8* %malloccall304, i64 28816
  %188 = bitcast i8* %polly.access.Packed_MemRef_call1305.us.2.3 to double*
  %polly.access.Packed_MemRef_call1305.us.3.3 = getelementptr i8, i8* %malloccall304, i64 28824
  %189 = bitcast i8* %polly.access.Packed_MemRef_call1305.us.3.3 to double*
  br label %polly.loop_header406

polly.loop_header396:                             ; preds = %polly.loop_header396.preheader, %polly.loop_header396
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_header396 ], [ %polly.indvar399.ph, %polly.loop_header396.preheader ]
  %190 = shl nuw nsw i64 %polly.indvar399, 3
  %scevgep403 = getelementptr i8, i8* %scevgep402, i64 %190
  %scevgep403404 = bitcast i8* %scevgep403 to double*
  %_p_scalar_405 = load double, double* %scevgep403404, align 8, !alias.scope !82, !noalias !84
  %p_mul.i57 = fmul fast double %_p_scalar_405, 1.200000e+00
  store double %p_mul.i57, double* %scevgep403404, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond997.not = icmp eq i64 %polly.indvar_next400, %polly.indvar393
  br i1 %exitcond997.not, label %polly.loop_exit398, label %polly.loop_header396, !llvm.loop !90

polly.loop_header406:                             ; preds = %polly.loop_header406.preheader, %polly.loop_exit414
  %polly.indvar409 = phi i64 [ %polly.indvar_next410, %polly.loop_exit414 ], [ 0, %polly.loop_header406.preheader ]
  %191 = shl nsw i64 %polly.indvar409, 2
  %192 = or i64 %191, 1
  %193 = or i64 %191, 2
  %194 = or i64 %191, 3
  br label %polly.loop_header412

polly.loop_exit414:                               ; preds = %polly.loop_exit436
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond996.not = icmp eq i64 %polly.indvar_next410, 250
  br i1 %exitcond996.not, label %polly.exiting303, label %polly.loop_header406

polly.loop_header412:                             ; preds = %polly.loop_exit436, %polly.loop_header406
  %indvars.iv978 = phi i64 [ %indvars.iv.next979, %polly.loop_exit436 ], [ 1200, %polly.loop_header406 ]
  %polly.indvar415 = phi i64 [ %polly.indvar_next416, %polly.loop_exit436 ], [ 0, %polly.loop_header406 ]
  %195 = shl nsw i64 %polly.indvar415, 2
  br label %polly.loop_header424

polly.loop_exit436:                               ; preds = %polly.loop_exit473
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %indvars.iv.next979 = add nsw i64 %indvars.iv978, -4
  %exitcond995.not = icmp eq i64 %polly.indvar_next416, 300
  br i1 %exitcond995.not, label %polly.loop_exit414, label %polly.loop_header412

polly.loop_header424:                             ; preds = %polly.loop_header424, %polly.loop_header412
  %polly.indvar427 = phi i64 [ 0, %polly.loop_header412 ], [ %polly.indvar_next428, %polly.loop_header424 ]
  %196 = add nuw nsw i64 %polly.indvar427, %195
  %polly.access.mul.call2431 = mul nuw nsw i64 %196, 1000
  %polly.access.add.call2432 = add nuw nsw i64 %191, %polly.access.mul.call2431
  %polly.access.call2433 = getelementptr double, double* %polly.access.cast.call2730, i64 %polly.access.add.call2432
  %polly.access.call2433.load = load double, double* %polly.access.call2433, align 8, !alias.scope !86, !noalias !91
  %polly.access.Packed_MemRef_call2307 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.indvar427
  store double %polly.access.call2433.load, double* %polly.access.Packed_MemRef_call2307, align 8
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond980.not = icmp eq i64 %polly.indvar_next428, %indvars.iv978
  br i1 %exitcond980.not, label %polly.loop_header424.1, label %polly.loop_header424

polly.loop_header434:                             ; preds = %polly.loop_exit426.3, %polly.loop_exit473
  %indvars.iv986 = phi i64 [ 0, %polly.loop_exit426.3 ], [ %indvars.iv.next987, %polly.loop_exit473 ]
  %polly.indvar437 = phi i64 [ %polly.indvar415, %polly.loop_exit426.3 ], [ %polly.indvar_next438, %polly.loop_exit473 ]
  %197 = shl nsw i64 %polly.indvar437, 2
  %198 = add nsw i64 %197, %392
  %199 = icmp ugt i64 %198, 4
  %200 = select i1 %199, i64 %198, i64 4
  %201 = or i64 %198, 3
  %polly.loop_guard460.not = icmp ugt i64 %200, %201
  br i1 %polly.loop_guard460.not, label %polly.loop_header440.us.preheader, label %polly.loop_header440.preheader

polly.loop_header440.preheader:                   ; preds = %polly.loop_header434
  %polly.access.call1455.load = load double, double* %polly.access.call1455, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load, double* %Packed_MemRef_call1305, align 8
  %polly.access.call1455.load.1 = load double, double* %polly.access.call1455.1, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.1, double* %160, align 8
  %polly.access.call1455.load.2 = load double, double* %polly.access.call1455.2, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.2, double* %161, align 8
  %polly.access.call1455.load.3 = load double, double* %polly.access.call1455.3, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.3, double* %162, align 8
  br label %polly.loop_header457

polly.loop_header440.us.preheader:                ; preds = %polly.loop_header434
  %polly.access.call1455.load.us = load double, double* %polly.access.call1455.us, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.us, double* %Packed_MemRef_call1305, align 8
  %polly.access.call1455.load.us.1 = load double, double* %polly.access.call1455.us.1, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.us.1, double* %175, align 8
  %polly.access.call1455.load.us.2 = load double, double* %polly.access.call1455.us.2, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.us.2, double* %176, align 8
  %polly.access.call1455.load.us.3 = load double, double* %polly.access.call1455.us.3, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.us.3, double* %177, align 8
  %polly.access.call1455.load.us.11098 = load double, double* %polly.access.call1455.us.11097, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.us.11098, double* %178, align 8
  %polly.access.call1455.load.us.1.1 = load double, double* %polly.access.call1455.us.1.1, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.us.1.1, double* %179, align 8
  %polly.access.call1455.load.us.2.1 = load double, double* %polly.access.call1455.us.2.1, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.us.2.1, double* %180, align 8
  %polly.access.call1455.load.us.3.1 = load double, double* %polly.access.call1455.us.3.1, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.us.3.1, double* %181, align 8
  %polly.access.call1455.load.us.21102 = load double, double* %polly.access.call1455.us.21101, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.us.21102, double* %182, align 8
  %polly.access.call1455.load.us.1.2 = load double, double* %polly.access.call1455.us.1.2, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.us.1.2, double* %183, align 8
  %polly.access.call1455.load.us.2.2 = load double, double* %polly.access.call1455.us.2.2, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.us.2.2, double* %184, align 8
  %polly.access.call1455.load.us.3.2 = load double, double* %polly.access.call1455.us.3.2, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.us.3.2, double* %185, align 8
  %polly.access.call1455.load.us.31106 = load double, double* %polly.access.call1455.us.31105, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.us.31106, double* %186, align 8
  %polly.access.call1455.load.us.1.3 = load double, double* %polly.access.call1455.us.1.3, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.us.1.3, double* %187, align 8
  %polly.access.call1455.load.us.2.3 = load double, double* %polly.access.call1455.us.2.3, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.us.2.3, double* %188, align 8
  %polly.access.call1455.load.us.3.3 = load double, double* %polly.access.call1455.us.3.3, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.us.3.3, double* %189, align 8
  br label %polly.loop_header471.preheader

polly.loop_exit473:                               ; preds = %polly.loop_exit485.3
  %polly.indvar_next438 = add nuw nsw i64 %polly.indvar437, 1
  %indvars.iv.next987 = add nuw nsw i64 %indvars.iv986, 4
  %exitcond994.not = icmp eq i64 %polly.indvar_next438, 300
  br i1 %exitcond994.not, label %polly.loop_exit436, label %polly.loop_header434

polly.loop_exit459:                               ; preds = %polly.loop_header457
  %polly.access.call1455.load.11084 = load double, double* %polly.access.call1455.11083, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.11084, double* %163, align 8
  %polly.access.call1455.load.1.1 = load double, double* %polly.access.call1455.1.1, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.1.1, double* %164, align 8
  %polly.access.call1455.load.2.1 = load double, double* %polly.access.call1455.2.1, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.2.1, double* %165, align 8
  %polly.access.call1455.load.3.1 = load double, double* %polly.access.call1455.3.1, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.3.1, double* %166, align 8
  br label %polly.loop_header457.1

polly.loop_header471.preheader:                   ; preds = %polly.loop_header457.3, %polly.loop_header440.us.preheader
  %smin990 = call i64 @llvm.smin.i64(i64 %indvars.iv986, i64 3)
  %202 = mul nsw i64 %polly.indvar437, 38400
  %indvars.iv.next989 = or i64 %indvars.iv986, 1
  %smin990.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next989, i64 3)
  %203 = or i64 %198, 1
  %204 = or i64 %197, 1
  %205 = mul nuw nsw i64 %204, 9600
  %indvars.iv.next989.1 = add nuw nsw i64 %indvars.iv.next989, 1
  %smin990.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next989.1, i64 3)
  %206 = or i64 %198, 2
  %207 = or i64 %197, 2
  %208 = mul nuw nsw i64 %207, 9600
  %209 = or i64 %198, 3
  %210 = or i64 %197, 3
  %211 = mul nuw nsw i64 %210, 9600
  br label %polly.loop_header471

polly.loop_header457:                             ; preds = %polly.loop_header440.preheader, %polly.loop_header457
  %polly.indvar461 = phi i64 [ %polly.indvar_next462, %polly.loop_header457 ], [ %200, %polly.loop_header440.preheader ]
  %212 = add nuw nsw i64 %polly.indvar461, %195
  %polly.access.mul.call1465 = mul nuw nsw i64 %212, 1000
  %polly.access.add.call1466 = add nuw nsw i64 %polly.access.mul.call1465, %191
  %polly.access.call1467 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1466
  %polly.access.call1467.load = load double, double* %polly.access.call1467, align 8, !alias.scope !85, !noalias !92
  %polly.access.Packed_MemRef_call1305470 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.indvar461
  store double %polly.access.call1467.load, double* %polly.access.Packed_MemRef_call1305470, align 8
  %polly.indvar_next462 = add nuw nsw i64 %polly.indvar461, 1
  %polly.loop_cond463.not.not = icmp ult i64 %polly.indvar461, %201
  br i1 %polly.loop_cond463.not.not, label %polly.loop_header457, label %polly.loop_exit459

polly.loop_header471:                             ; preds = %polly.loop_header471.preheader, %polly.loop_exit485.3
  %polly.indvar474 = phi i64 [ %polly.indvar_next475, %polly.loop_exit485.3 ], [ 0, %polly.loop_header471.preheader ]
  %polly.access.mul.Packed_MemRef_call1305489 = mul nuw nsw i64 %polly.indvar474, 1200
  %polly.access.add.Packed_MemRef_call2307494 = add nuw nsw i64 %198, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call2307495 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307494
  %_p_scalar_496 = load double, double* %polly.access.Packed_MemRef_call2307495, align 8
  %polly.access.Packed_MemRef_call1305503 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call2307494
  %_p_scalar_504 = load double, double* %polly.access.Packed_MemRef_call1305503, align 8
  br label %polly.loop_header483

polly.loop_exit485:                               ; preds = %polly.loop_header483
  %polly.access.add.Packed_MemRef_call2307494.1 = add nuw nsw i64 %203, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call2307495.1 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307494.1
  %_p_scalar_496.1 = load double, double* %polly.access.Packed_MemRef_call2307495.1, align 8
  %polly.access.Packed_MemRef_call1305503.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call2307494.1
  %_p_scalar_504.1 = load double, double* %polly.access.Packed_MemRef_call1305503.1, align 8
  br label %polly.loop_header483.1

polly.loop_header483:                             ; preds = %polly.loop_header483, %polly.loop_header471
  %polly.indvar486 = phi i64 [ 0, %polly.loop_header471 ], [ %polly.indvar_next487, %polly.loop_header483 ]
  %213 = add nuw nsw i64 %polly.indvar486, %195
  %polly.access.add.Packed_MemRef_call1305490 = add nuw nsw i64 %polly.indvar486, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call1305491 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305490
  %_p_scalar_492 = load double, double* %polly.access.Packed_MemRef_call1305491, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_496, %_p_scalar_492
  %polly.access.Packed_MemRef_call2307499 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call1305490
  %_p_scalar_500 = load double, double* %polly.access.Packed_MemRef_call2307499, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_504, %_p_scalar_500
  %214 = shl i64 %213, 3
  %215 = add nuw nsw i64 %214, %202
  %scevgep505 = getelementptr i8, i8* %call, i64 %215
  %scevgep505506 = bitcast i8* %scevgep505 to double*
  %_p_scalar_507 = load double, double* %scevgep505506, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_507
  store double %p_add42.i79, double* %scevgep505506, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next487 = add nuw nsw i64 %polly.indvar486, 1
  %exitcond991.not = icmp eq i64 %polly.indvar486, %smin990
  br i1 %exitcond991.not, label %polly.loop_exit485, label %polly.loop_header483

polly.start510:                                   ; preds = %init_array.exit
  %malloccall512 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall514 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header598

polly.exiting511:                                 ; preds = %polly.loop_exit622
  tail call void @free(i8* nonnull %malloccall512)
  tail call void @free(i8* nonnull %malloccall514)
  br label %kernel_syr2k.exit

polly.loop_header598:                             ; preds = %polly.loop_exit606, %polly.start510
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit606 ], [ 0, %polly.start510 ]
  %polly.indvar601 = phi i64 [ %polly.indvar_next602, %polly.loop_exit606 ], [ 1, %polly.start510 ]
  %216 = add i64 %indvar, 1
  %217 = mul nuw nsw i64 %polly.indvar601, 9600
  %scevgep610 = getelementptr i8, i8* %call, i64 %217
  %min.iters.check1218 = icmp ult i64 %216, 4
  br i1 %min.iters.check1218, label %polly.loop_header604.preheader, label %vector.ph1219

vector.ph1219:                                    ; preds = %polly.loop_header598
  %n.vec1221 = and i64 %216, -4
  br label %vector.body1217

vector.body1217:                                  ; preds = %vector.body1217, %vector.ph1219
  %index1222 = phi i64 [ 0, %vector.ph1219 ], [ %index.next1223, %vector.body1217 ]
  %218 = shl nuw nsw i64 %index1222, 3
  %219 = getelementptr i8, i8* %scevgep610, i64 %218
  %220 = bitcast i8* %219 to <4 x double>*
  %wide.load1226 = load <4 x double>, <4 x double>* %220, align 8, !alias.scope !93, !noalias !95
  %221 = fmul fast <4 x double> %wide.load1226, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %222 = bitcast i8* %219 to <4 x double>*
  store <4 x double> %221, <4 x double>* %222, align 8, !alias.scope !93, !noalias !95
  %index.next1223 = add i64 %index1222, 4
  %223 = icmp eq i64 %index.next1223, %n.vec1221
  br i1 %223, label %middle.block1215, label %vector.body1217, !llvm.loop !100

middle.block1215:                                 ; preds = %vector.body1217
  %cmp.n1225 = icmp eq i64 %216, %n.vec1221
  br i1 %cmp.n1225, label %polly.loop_exit606, label %polly.loop_header604.preheader

polly.loop_header604.preheader:                   ; preds = %polly.loop_header598, %middle.block1215
  %polly.indvar607.ph = phi i64 [ 0, %polly.loop_header598 ], [ %n.vec1221, %middle.block1215 ]
  br label %polly.loop_header604

polly.loop_exit606:                               ; preds = %polly.loop_header604, %middle.block1215
  %polly.indvar_next602 = add nuw nsw i64 %polly.indvar601, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar_next602, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1019.not, label %polly.loop_header614.preheader, label %polly.loop_header598

polly.loop_header614.preheader:                   ; preds = %polly.loop_exit606
  %Packed_MemRef_call1513 = bitcast i8* %malloccall512 to double*
  %Packed_MemRef_call2515 = bitcast i8* %malloccall514 to double*
  %polly.access.Packed_MemRef_call1513.1 = getelementptr i8, i8* %malloccall512, i64 8
  %224 = bitcast i8* %polly.access.Packed_MemRef_call1513.1 to double*
  %polly.access.Packed_MemRef_call1513.2 = getelementptr i8, i8* %malloccall512, i64 16
  %225 = bitcast i8* %polly.access.Packed_MemRef_call1513.2 to double*
  %polly.access.Packed_MemRef_call1513.3 = getelementptr i8, i8* %malloccall512, i64 24
  %226 = bitcast i8* %polly.access.Packed_MemRef_call1513.3 to double*
  %polly.access.Packed_MemRef_call1513.11112 = getelementptr i8, i8* %malloccall512, i64 9600
  %227 = bitcast i8* %polly.access.Packed_MemRef_call1513.11112 to double*
  %polly.access.Packed_MemRef_call1513.1.1 = getelementptr i8, i8* %malloccall512, i64 9608
  %228 = bitcast i8* %polly.access.Packed_MemRef_call1513.1.1 to double*
  %polly.access.Packed_MemRef_call1513.2.1 = getelementptr i8, i8* %malloccall512, i64 9616
  %229 = bitcast i8* %polly.access.Packed_MemRef_call1513.2.1 to double*
  %polly.access.Packed_MemRef_call1513.3.1 = getelementptr i8, i8* %malloccall512, i64 9624
  %230 = bitcast i8* %polly.access.Packed_MemRef_call1513.3.1 to double*
  %polly.access.Packed_MemRef_call1513.21117 = getelementptr i8, i8* %malloccall512, i64 19200
  %231 = bitcast i8* %polly.access.Packed_MemRef_call1513.21117 to double*
  %polly.access.Packed_MemRef_call1513.1.2 = getelementptr i8, i8* %malloccall512, i64 19208
  %232 = bitcast i8* %polly.access.Packed_MemRef_call1513.1.2 to double*
  %polly.access.Packed_MemRef_call1513.2.2 = getelementptr i8, i8* %malloccall512, i64 19216
  %233 = bitcast i8* %polly.access.Packed_MemRef_call1513.2.2 to double*
  %polly.access.Packed_MemRef_call1513.3.2 = getelementptr i8, i8* %malloccall512, i64 19224
  %234 = bitcast i8* %polly.access.Packed_MemRef_call1513.3.2 to double*
  %polly.access.Packed_MemRef_call1513.31122 = getelementptr i8, i8* %malloccall512, i64 28800
  %235 = bitcast i8* %polly.access.Packed_MemRef_call1513.31122 to double*
  %polly.access.Packed_MemRef_call1513.1.3 = getelementptr i8, i8* %malloccall512, i64 28808
  %236 = bitcast i8* %polly.access.Packed_MemRef_call1513.1.3 to double*
  %polly.access.Packed_MemRef_call1513.2.3 = getelementptr i8, i8* %malloccall512, i64 28816
  %237 = bitcast i8* %polly.access.Packed_MemRef_call1513.2.3 to double*
  %polly.access.Packed_MemRef_call1513.3.3 = getelementptr i8, i8* %malloccall512, i64 28824
  %238 = bitcast i8* %polly.access.Packed_MemRef_call1513.3.3 to double*
  %polly.access.Packed_MemRef_call1513.us.1 = getelementptr i8, i8* %malloccall512, i64 8
  %239 = bitcast i8* %polly.access.Packed_MemRef_call1513.us.1 to double*
  %polly.access.Packed_MemRef_call1513.us.2 = getelementptr i8, i8* %malloccall512, i64 16
  %240 = bitcast i8* %polly.access.Packed_MemRef_call1513.us.2 to double*
  %polly.access.Packed_MemRef_call1513.us.3 = getelementptr i8, i8* %malloccall512, i64 24
  %241 = bitcast i8* %polly.access.Packed_MemRef_call1513.us.3 to double*
  %polly.access.Packed_MemRef_call1513.us.11126 = getelementptr i8, i8* %malloccall512, i64 9600
  %242 = bitcast i8* %polly.access.Packed_MemRef_call1513.us.11126 to double*
  %polly.access.Packed_MemRef_call1513.us.1.1 = getelementptr i8, i8* %malloccall512, i64 9608
  %243 = bitcast i8* %polly.access.Packed_MemRef_call1513.us.1.1 to double*
  %polly.access.Packed_MemRef_call1513.us.2.1 = getelementptr i8, i8* %malloccall512, i64 9616
  %244 = bitcast i8* %polly.access.Packed_MemRef_call1513.us.2.1 to double*
  %polly.access.Packed_MemRef_call1513.us.3.1 = getelementptr i8, i8* %malloccall512, i64 9624
  %245 = bitcast i8* %polly.access.Packed_MemRef_call1513.us.3.1 to double*
  %polly.access.Packed_MemRef_call1513.us.21130 = getelementptr i8, i8* %malloccall512, i64 19200
  %246 = bitcast i8* %polly.access.Packed_MemRef_call1513.us.21130 to double*
  %polly.access.Packed_MemRef_call1513.us.1.2 = getelementptr i8, i8* %malloccall512, i64 19208
  %247 = bitcast i8* %polly.access.Packed_MemRef_call1513.us.1.2 to double*
  %polly.access.Packed_MemRef_call1513.us.2.2 = getelementptr i8, i8* %malloccall512, i64 19216
  %248 = bitcast i8* %polly.access.Packed_MemRef_call1513.us.2.2 to double*
  %polly.access.Packed_MemRef_call1513.us.3.2 = getelementptr i8, i8* %malloccall512, i64 19224
  %249 = bitcast i8* %polly.access.Packed_MemRef_call1513.us.3.2 to double*
  %polly.access.Packed_MemRef_call1513.us.31134 = getelementptr i8, i8* %malloccall512, i64 28800
  %250 = bitcast i8* %polly.access.Packed_MemRef_call1513.us.31134 to double*
  %polly.access.Packed_MemRef_call1513.us.1.3 = getelementptr i8, i8* %malloccall512, i64 28808
  %251 = bitcast i8* %polly.access.Packed_MemRef_call1513.us.1.3 to double*
  %polly.access.Packed_MemRef_call1513.us.2.3 = getelementptr i8, i8* %malloccall512, i64 28816
  %252 = bitcast i8* %polly.access.Packed_MemRef_call1513.us.2.3 to double*
  %polly.access.Packed_MemRef_call1513.us.3.3 = getelementptr i8, i8* %malloccall512, i64 28824
  %253 = bitcast i8* %polly.access.Packed_MemRef_call1513.us.3.3 to double*
  br label %polly.loop_header614

polly.loop_header604:                             ; preds = %polly.loop_header604.preheader, %polly.loop_header604
  %polly.indvar607 = phi i64 [ %polly.indvar_next608, %polly.loop_header604 ], [ %polly.indvar607.ph, %polly.loop_header604.preheader ]
  %254 = shl nuw nsw i64 %polly.indvar607, 3
  %scevgep611 = getelementptr i8, i8* %scevgep610, i64 %254
  %scevgep611612 = bitcast i8* %scevgep611 to double*
  %_p_scalar_613 = load double, double* %scevgep611612, align 8, !alias.scope !93, !noalias !95
  %p_mul.i = fmul fast double %_p_scalar_613, 1.200000e+00
  store double %p_mul.i, double* %scevgep611612, align 8, !alias.scope !93, !noalias !95
  %polly.indvar_next608 = add nuw nsw i64 %polly.indvar607, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next608, %polly.indvar601
  br i1 %exitcond1018.not, label %polly.loop_exit606, label %polly.loop_header604, !llvm.loop !101

polly.loop_header614:                             ; preds = %polly.loop_header614.preheader, %polly.loop_exit622
  %polly.indvar617 = phi i64 [ %polly.indvar_next618, %polly.loop_exit622 ], [ 0, %polly.loop_header614.preheader ]
  %255 = shl nsw i64 %polly.indvar617, 2
  %256 = or i64 %255, 1
  %257 = or i64 %255, 2
  %258 = or i64 %255, 3
  br label %polly.loop_header620

polly.loop_exit622:                               ; preds = %polly.loop_exit644
  %polly.indvar_next618 = add nuw nsw i64 %polly.indvar617, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar_next618, 250
  br i1 %exitcond1017.not, label %polly.exiting511, label %polly.loop_header614

polly.loop_header620:                             ; preds = %polly.loop_exit644, %polly.loop_header614
  %indvars.iv999 = phi i64 [ %indvars.iv.next1000, %polly.loop_exit644 ], [ 1200, %polly.loop_header614 ]
  %polly.indvar623 = phi i64 [ %polly.indvar_next624, %polly.loop_exit644 ], [ 0, %polly.loop_header614 ]
  %259 = shl nsw i64 %polly.indvar623, 2
  br label %polly.loop_header632

polly.loop_exit644:                               ; preds = %polly.loop_exit681
  %polly.indvar_next624 = add nuw nsw i64 %polly.indvar623, 1
  %indvars.iv.next1000 = add nsw i64 %indvars.iv999, -4
  %exitcond1016.not = icmp eq i64 %polly.indvar_next624, 300
  br i1 %exitcond1016.not, label %polly.loop_exit622, label %polly.loop_header620

polly.loop_header632:                             ; preds = %polly.loop_header632, %polly.loop_header620
  %polly.indvar635 = phi i64 [ 0, %polly.loop_header620 ], [ %polly.indvar_next636, %polly.loop_header632 ]
  %260 = add nuw nsw i64 %polly.indvar635, %259
  %polly.access.mul.call2639 = mul nuw nsw i64 %260, 1000
  %polly.access.add.call2640 = add nuw nsw i64 %255, %polly.access.mul.call2639
  %polly.access.call2641 = getelementptr double, double* %polly.access.cast.call2730, i64 %polly.access.add.call2640
  %polly.access.call2641.load = load double, double* %polly.access.call2641, align 8, !alias.scope !97, !noalias !102
  %polly.access.Packed_MemRef_call2515 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.indvar635
  store double %polly.access.call2641.load, double* %polly.access.Packed_MemRef_call2515, align 8
  %polly.indvar_next636 = add nuw nsw i64 %polly.indvar635, 1
  %exitcond1001.not = icmp eq i64 %polly.indvar_next636, %indvars.iv999
  br i1 %exitcond1001.not, label %polly.loop_header632.1, label %polly.loop_header632

polly.loop_header642:                             ; preds = %polly.loop_exit634.3, %polly.loop_exit681
  %indvars.iv1007 = phi i64 [ 0, %polly.loop_exit634.3 ], [ %indvars.iv.next1008, %polly.loop_exit681 ]
  %polly.indvar645 = phi i64 [ %polly.indvar623, %polly.loop_exit634.3 ], [ %polly.indvar_next646, %polly.loop_exit681 ]
  %261 = shl nsw i64 %polly.indvar645, 2
  %262 = add nsw i64 %261, %414
  %263 = icmp ugt i64 %262, 4
  %264 = select i1 %263, i64 %262, i64 4
  %265 = or i64 %262, 3
  %polly.loop_guard668.not = icmp ugt i64 %264, %265
  br i1 %polly.loop_guard668.not, label %polly.loop_header648.us.preheader, label %polly.loop_header648.preheader

polly.loop_header648.preheader:                   ; preds = %polly.loop_header642
  %polly.access.call1663.load = load double, double* %polly.access.call1663, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load, double* %Packed_MemRef_call1513, align 8
  %polly.access.call1663.load.1 = load double, double* %polly.access.call1663.1, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.1, double* %224, align 8
  %polly.access.call1663.load.2 = load double, double* %polly.access.call1663.2, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.2, double* %225, align 8
  %polly.access.call1663.load.3 = load double, double* %polly.access.call1663.3, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.3, double* %226, align 8
  br label %polly.loop_header665

polly.loop_header648.us.preheader:                ; preds = %polly.loop_header642
  %polly.access.call1663.load.us = load double, double* %polly.access.call1663.us, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.us, double* %Packed_MemRef_call1513, align 8
  %polly.access.call1663.load.us.1 = load double, double* %polly.access.call1663.us.1, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.us.1, double* %239, align 8
  %polly.access.call1663.load.us.2 = load double, double* %polly.access.call1663.us.2, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.us.2, double* %240, align 8
  %polly.access.call1663.load.us.3 = load double, double* %polly.access.call1663.us.3, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.us.3, double* %241, align 8
  %polly.access.call1663.load.us.11125 = load double, double* %polly.access.call1663.us.11124, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.us.11125, double* %242, align 8
  %polly.access.call1663.load.us.1.1 = load double, double* %polly.access.call1663.us.1.1, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.us.1.1, double* %243, align 8
  %polly.access.call1663.load.us.2.1 = load double, double* %polly.access.call1663.us.2.1, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.us.2.1, double* %244, align 8
  %polly.access.call1663.load.us.3.1 = load double, double* %polly.access.call1663.us.3.1, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.us.3.1, double* %245, align 8
  %polly.access.call1663.load.us.21129 = load double, double* %polly.access.call1663.us.21128, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.us.21129, double* %246, align 8
  %polly.access.call1663.load.us.1.2 = load double, double* %polly.access.call1663.us.1.2, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.us.1.2, double* %247, align 8
  %polly.access.call1663.load.us.2.2 = load double, double* %polly.access.call1663.us.2.2, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.us.2.2, double* %248, align 8
  %polly.access.call1663.load.us.3.2 = load double, double* %polly.access.call1663.us.3.2, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.us.3.2, double* %249, align 8
  %polly.access.call1663.load.us.31133 = load double, double* %polly.access.call1663.us.31132, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.us.31133, double* %250, align 8
  %polly.access.call1663.load.us.1.3 = load double, double* %polly.access.call1663.us.1.3, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.us.1.3, double* %251, align 8
  %polly.access.call1663.load.us.2.3 = load double, double* %polly.access.call1663.us.2.3, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.us.2.3, double* %252, align 8
  %polly.access.call1663.load.us.3.3 = load double, double* %polly.access.call1663.us.3.3, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.us.3.3, double* %253, align 8
  br label %polly.loop_header679.preheader

polly.loop_exit681:                               ; preds = %polly.loop_exit693.3
  %polly.indvar_next646 = add nuw nsw i64 %polly.indvar645, 1
  %indvars.iv.next1008 = add nuw nsw i64 %indvars.iv1007, 4
  %exitcond1015.not = icmp eq i64 %polly.indvar_next646, 300
  br i1 %exitcond1015.not, label %polly.loop_exit644, label %polly.loop_header642

polly.loop_exit667:                               ; preds = %polly.loop_header665
  %polly.access.call1663.load.11111 = load double, double* %polly.access.call1663.11110, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.11111, double* %227, align 8
  %polly.access.call1663.load.1.1 = load double, double* %polly.access.call1663.1.1, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.1.1, double* %228, align 8
  %polly.access.call1663.load.2.1 = load double, double* %polly.access.call1663.2.1, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.2.1, double* %229, align 8
  %polly.access.call1663.load.3.1 = load double, double* %polly.access.call1663.3.1, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.3.1, double* %230, align 8
  br label %polly.loop_header665.1

polly.loop_header679.preheader:                   ; preds = %polly.loop_header665.3, %polly.loop_header648.us.preheader
  %smin1011 = call i64 @llvm.smin.i64(i64 %indvars.iv1007, i64 3)
  %266 = mul nsw i64 %polly.indvar645, 38400
  %indvars.iv.next1010 = or i64 %indvars.iv1007, 1
  %smin1011.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next1010, i64 3)
  %267 = or i64 %262, 1
  %268 = or i64 %261, 1
  %269 = mul nuw nsw i64 %268, 9600
  %indvars.iv.next1010.1 = add nuw nsw i64 %indvars.iv.next1010, 1
  %smin1011.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next1010.1, i64 3)
  %270 = or i64 %262, 2
  %271 = or i64 %261, 2
  %272 = mul nuw nsw i64 %271, 9600
  %273 = or i64 %262, 3
  %274 = or i64 %261, 3
  %275 = mul nuw nsw i64 %274, 9600
  br label %polly.loop_header679

polly.loop_header665:                             ; preds = %polly.loop_header648.preheader, %polly.loop_header665
  %polly.indvar669 = phi i64 [ %polly.indvar_next670, %polly.loop_header665 ], [ %264, %polly.loop_header648.preheader ]
  %276 = add nuw nsw i64 %polly.indvar669, %259
  %polly.access.mul.call1673 = mul nuw nsw i64 %276, 1000
  %polly.access.add.call1674 = add nuw nsw i64 %polly.access.mul.call1673, %255
  %polly.access.call1675 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1674
  %polly.access.call1675.load = load double, double* %polly.access.call1675, align 8, !alias.scope !96, !noalias !103
  %polly.access.Packed_MemRef_call1513678 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.indvar669
  store double %polly.access.call1675.load, double* %polly.access.Packed_MemRef_call1513678, align 8
  %polly.indvar_next670 = add nuw nsw i64 %polly.indvar669, 1
  %polly.loop_cond671.not.not = icmp ult i64 %polly.indvar669, %265
  br i1 %polly.loop_cond671.not.not, label %polly.loop_header665, label %polly.loop_exit667

polly.loop_header679:                             ; preds = %polly.loop_header679.preheader, %polly.loop_exit693.3
  %polly.indvar682 = phi i64 [ %polly.indvar_next683, %polly.loop_exit693.3 ], [ 0, %polly.loop_header679.preheader ]
  %polly.access.mul.Packed_MemRef_call1513697 = mul nuw nsw i64 %polly.indvar682, 1200
  %polly.access.add.Packed_MemRef_call2515702 = add nuw nsw i64 %262, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call2515703 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515702
  %_p_scalar_704 = load double, double* %polly.access.Packed_MemRef_call2515703, align 8
  %polly.access.Packed_MemRef_call1513711 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call2515702
  %_p_scalar_712 = load double, double* %polly.access.Packed_MemRef_call1513711, align 8
  br label %polly.loop_header691

polly.loop_exit693:                               ; preds = %polly.loop_header691
  %polly.access.add.Packed_MemRef_call2515702.1 = add nuw nsw i64 %267, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call2515703.1 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515702.1
  %_p_scalar_704.1 = load double, double* %polly.access.Packed_MemRef_call2515703.1, align 8
  %polly.access.Packed_MemRef_call1513711.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call2515702.1
  %_p_scalar_712.1 = load double, double* %polly.access.Packed_MemRef_call1513711.1, align 8
  br label %polly.loop_header691.1

polly.loop_header691:                             ; preds = %polly.loop_header691, %polly.loop_header679
  %polly.indvar694 = phi i64 [ 0, %polly.loop_header679 ], [ %polly.indvar_next695, %polly.loop_header691 ]
  %277 = add nuw nsw i64 %polly.indvar694, %259
  %polly.access.add.Packed_MemRef_call1513698 = add nuw nsw i64 %polly.indvar694, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call1513699 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513698
  %_p_scalar_700 = load double, double* %polly.access.Packed_MemRef_call1513699, align 8
  %p_mul27.i = fmul fast double %_p_scalar_704, %_p_scalar_700
  %polly.access.Packed_MemRef_call2515707 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call1513698
  %_p_scalar_708 = load double, double* %polly.access.Packed_MemRef_call2515707, align 8
  %p_mul37.i = fmul fast double %_p_scalar_712, %_p_scalar_708
  %278 = shl i64 %277, 3
  %279 = add nuw nsw i64 %278, %266
  %scevgep713 = getelementptr i8, i8* %call, i64 %279
  %scevgep713714 = bitcast i8* %scevgep713 to double*
  %_p_scalar_715 = load double, double* %scevgep713714, align 8, !alias.scope !93, !noalias !95
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_715
  store double %p_add42.i, double* %scevgep713714, align 8, !alias.scope !93, !noalias !95
  %polly.indvar_next695 = add nuw nsw i64 %polly.indvar694, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar694, %smin1011
  br i1 %exitcond1012.not, label %polly.loop_exit693, label %polly.loop_header691

polly.loop_header842:                             ; preds = %entry, %polly.loop_exit850
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit850 ], [ 0, %entry ]
  %polly.indvar845 = phi i64 [ %polly.indvar_next846, %polly.loop_exit850 ], [ 0, %entry ]
  %smin1046 = call i64 @llvm.smin.i64(i64 %indvars.iv1044, i64 -1168)
  %280 = shl nsw i64 %polly.indvar845, 5
  %281 = add nsw i64 %smin1046, 1199
  br label %polly.loop_header848

polly.loop_exit850:                               ; preds = %polly.loop_exit856
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %indvars.iv.next1045 = add nsw i64 %indvars.iv1044, -32
  %exitcond1049.not = icmp eq i64 %polly.indvar_next846, 38
  br i1 %exitcond1049.not, label %polly.loop_header869, label %polly.loop_header842

polly.loop_header848:                             ; preds = %polly.loop_exit856, %polly.loop_header842
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit856 ], [ 0, %polly.loop_header842 ]
  %polly.indvar851 = phi i64 [ %polly.indvar_next852, %polly.loop_exit856 ], [ 0, %polly.loop_header842 ]
  %282 = mul nsw i64 %polly.indvar851, -32
  %smin1156 = call i64 @llvm.smin.i64(i64 %282, i64 -1168)
  %283 = add nsw i64 %smin1156, 1200
  %smin1042 = call i64 @llvm.smin.i64(i64 %indvars.iv1040, i64 -1168)
  %284 = shl nsw i64 %polly.indvar851, 5
  %285 = add nsw i64 %smin1042, 1199
  br label %polly.loop_header854

polly.loop_exit856:                               ; preds = %polly.loop_exit862
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %indvars.iv.next1041 = add nsw i64 %indvars.iv1040, -32
  %exitcond1048.not = icmp eq i64 %polly.indvar_next852, 38
  br i1 %exitcond1048.not, label %polly.loop_exit850, label %polly.loop_header848

polly.loop_header854:                             ; preds = %polly.loop_exit862, %polly.loop_header848
  %polly.indvar857 = phi i64 [ 0, %polly.loop_header848 ], [ %polly.indvar_next858, %polly.loop_exit862 ]
  %286 = add nuw nsw i64 %polly.indvar857, %280
  %287 = trunc i64 %286 to i32
  %288 = mul nuw nsw i64 %286, 9600
  %min.iters.check = icmp eq i64 %283, 0
  br i1 %min.iters.check, label %polly.loop_header860, label %vector.ph1157

vector.ph1157:                                    ; preds = %polly.loop_header854
  %broadcast.splatinsert1164 = insertelement <4 x i64> poison, i64 %284, i32 0
  %broadcast.splat1165 = shufflevector <4 x i64> %broadcast.splatinsert1164, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1166 = insertelement <4 x i32> poison, i32 %287, i32 0
  %broadcast.splat1167 = shufflevector <4 x i32> %broadcast.splatinsert1166, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1155

vector.body1155:                                  ; preds = %vector.body1155, %vector.ph1157
  %index1158 = phi i64 [ 0, %vector.ph1157 ], [ %index.next1159, %vector.body1155 ]
  %vec.ind1162 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1157 ], [ %vec.ind.next1163, %vector.body1155 ]
  %289 = add nuw nsw <4 x i64> %vec.ind1162, %broadcast.splat1165
  %290 = trunc <4 x i64> %289 to <4 x i32>
  %291 = mul <4 x i32> %broadcast.splat1167, %290
  %292 = add <4 x i32> %291, <i32 3, i32 3, i32 3, i32 3>
  %293 = urem <4 x i32> %292, <i32 1200, i32 1200, i32 1200, i32 1200>
  %294 = sitofp <4 x i32> %293 to <4 x double>
  %295 = fmul fast <4 x double> %294, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %296 = extractelement <4 x i64> %289, i32 0
  %297 = shl i64 %296, 3
  %298 = add nuw nsw i64 %297, %288
  %299 = getelementptr i8, i8* %call, i64 %298
  %300 = bitcast i8* %299 to <4 x double>*
  store <4 x double> %295, <4 x double>* %300, align 8, !alias.scope !104, !noalias !106
  %index.next1159 = add i64 %index1158, 4
  %vec.ind.next1163 = add <4 x i64> %vec.ind1162, <i64 4, i64 4, i64 4, i64 4>
  %301 = icmp eq i64 %index.next1159, %283
  br i1 %301, label %polly.loop_exit862, label %vector.body1155, !llvm.loop !109

polly.loop_exit862:                               ; preds = %vector.body1155, %polly.loop_header860
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar857, %281
  br i1 %exitcond1047.not, label %polly.loop_exit856, label %polly.loop_header854

polly.loop_header860:                             ; preds = %polly.loop_header854, %polly.loop_header860
  %polly.indvar863 = phi i64 [ %polly.indvar_next864, %polly.loop_header860 ], [ 0, %polly.loop_header854 ]
  %302 = add nuw nsw i64 %polly.indvar863, %284
  %303 = trunc i64 %302 to i32
  %304 = mul i32 %303, %287
  %305 = add i32 %304, 3
  %306 = urem i32 %305, 1200
  %p_conv31.i = sitofp i32 %306 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %307 = shl i64 %302, 3
  %308 = add nuw nsw i64 %307, %288
  %scevgep866 = getelementptr i8, i8* %call, i64 %308
  %scevgep866867 = bitcast i8* %scevgep866 to double*
  store double %p_div33.i, double* %scevgep866867, align 8, !alias.scope !104, !noalias !106
  %polly.indvar_next864 = add nuw nsw i64 %polly.indvar863, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar863, %285
  br i1 %exitcond1043.not, label %polly.loop_exit862, label %polly.loop_header860, !llvm.loop !110

polly.loop_header869:                             ; preds = %polly.loop_exit850, %polly.loop_exit877
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035, %polly.loop_exit877 ], [ 0, %polly.loop_exit850 ]
  %polly.indvar872 = phi i64 [ %polly.indvar_next873, %polly.loop_exit877 ], [ 0, %polly.loop_exit850 ]
  %smin1036 = call i64 @llvm.smin.i64(i64 %indvars.iv1034, i64 -1168)
  %309 = shl nsw i64 %polly.indvar872, 5
  %310 = add nsw i64 %smin1036, 1199
  br label %polly.loop_header875

polly.loop_exit877:                               ; preds = %polly.loop_exit883
  %polly.indvar_next873 = add nuw nsw i64 %polly.indvar872, 1
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, -32
  %exitcond1039.not = icmp eq i64 %polly.indvar_next873, 38
  br i1 %exitcond1039.not, label %polly.loop_header895, label %polly.loop_header869

polly.loop_header875:                             ; preds = %polly.loop_exit883, %polly.loop_header869
  %indvars.iv1030 = phi i64 [ %indvars.iv.next1031, %polly.loop_exit883 ], [ 0, %polly.loop_header869 ]
  %polly.indvar878 = phi i64 [ %polly.indvar_next879, %polly.loop_exit883 ], [ 0, %polly.loop_header869 ]
  %311 = mul nsw i64 %polly.indvar878, -32
  %smin1171 = call i64 @llvm.smin.i64(i64 %311, i64 -968)
  %312 = add nsw i64 %smin1171, 1000
  %smin1032 = call i64 @llvm.smin.i64(i64 %indvars.iv1030, i64 -968)
  %313 = shl nsw i64 %polly.indvar878, 5
  %314 = add nsw i64 %smin1032, 999
  br label %polly.loop_header881

polly.loop_exit883:                               ; preds = %polly.loop_exit889
  %polly.indvar_next879 = add nuw nsw i64 %polly.indvar878, 1
  %indvars.iv.next1031 = add nsw i64 %indvars.iv1030, -32
  %exitcond1038.not = icmp eq i64 %polly.indvar_next879, 32
  br i1 %exitcond1038.not, label %polly.loop_exit877, label %polly.loop_header875

polly.loop_header881:                             ; preds = %polly.loop_exit889, %polly.loop_header875
  %polly.indvar884 = phi i64 [ 0, %polly.loop_header875 ], [ %polly.indvar_next885, %polly.loop_exit889 ]
  %315 = add nuw nsw i64 %polly.indvar884, %309
  %316 = trunc i64 %315 to i32
  %317 = mul nuw nsw i64 %315, 8000
  %min.iters.check1172 = icmp eq i64 %312, 0
  br i1 %min.iters.check1172, label %polly.loop_header887, label %vector.ph1173

vector.ph1173:                                    ; preds = %polly.loop_header881
  %broadcast.splatinsert1182 = insertelement <4 x i64> poison, i64 %313, i32 0
  %broadcast.splat1183 = shufflevector <4 x i64> %broadcast.splatinsert1182, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1184 = insertelement <4 x i32> poison, i32 %316, i32 0
  %broadcast.splat1185 = shufflevector <4 x i32> %broadcast.splatinsert1184, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1170

vector.body1170:                                  ; preds = %vector.body1170, %vector.ph1173
  %index1176 = phi i64 [ 0, %vector.ph1173 ], [ %index.next1177, %vector.body1170 ]
  %vec.ind1180 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1173 ], [ %vec.ind.next1181, %vector.body1170 ]
  %318 = add nuw nsw <4 x i64> %vec.ind1180, %broadcast.splat1183
  %319 = trunc <4 x i64> %318 to <4 x i32>
  %320 = mul <4 x i32> %broadcast.splat1185, %319
  %321 = add <4 x i32> %320, <i32 2, i32 2, i32 2, i32 2>
  %322 = urem <4 x i32> %321, <i32 1000, i32 1000, i32 1000, i32 1000>
  %323 = sitofp <4 x i32> %322 to <4 x double>
  %324 = fmul fast <4 x double> %323, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %325 = extractelement <4 x i64> %318, i32 0
  %326 = shl i64 %325, 3
  %327 = add nuw nsw i64 %326, %317
  %328 = getelementptr i8, i8* %call2, i64 %327
  %329 = bitcast i8* %328 to <4 x double>*
  store <4 x double> %324, <4 x double>* %329, align 8, !alias.scope !108, !noalias !111
  %index.next1177 = add i64 %index1176, 4
  %vec.ind.next1181 = add <4 x i64> %vec.ind1180, <i64 4, i64 4, i64 4, i64 4>
  %330 = icmp eq i64 %index.next1177, %312
  br i1 %330, label %polly.loop_exit889, label %vector.body1170, !llvm.loop !112

polly.loop_exit889:                               ; preds = %vector.body1170, %polly.loop_header887
  %polly.indvar_next885 = add nuw nsw i64 %polly.indvar884, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar884, %310
  br i1 %exitcond1037.not, label %polly.loop_exit883, label %polly.loop_header881

polly.loop_header887:                             ; preds = %polly.loop_header881, %polly.loop_header887
  %polly.indvar890 = phi i64 [ %polly.indvar_next891, %polly.loop_header887 ], [ 0, %polly.loop_header881 ]
  %331 = add nuw nsw i64 %polly.indvar890, %313
  %332 = trunc i64 %331 to i32
  %333 = mul i32 %332, %316
  %334 = add i32 %333, 2
  %335 = urem i32 %334, 1000
  %p_conv10.i = sitofp i32 %335 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %336 = shl i64 %331, 3
  %337 = add nuw nsw i64 %336, %317
  %scevgep893 = getelementptr i8, i8* %call2, i64 %337
  %scevgep893894 = bitcast i8* %scevgep893 to double*
  store double %p_div12.i, double* %scevgep893894, align 8, !alias.scope !108, !noalias !111
  %polly.indvar_next891 = add nuw nsw i64 %polly.indvar890, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar890, %314
  br i1 %exitcond1033.not, label %polly.loop_exit889, label %polly.loop_header887, !llvm.loop !113

polly.loop_header895:                             ; preds = %polly.loop_exit877, %polly.loop_exit903
  %indvars.iv1024 = phi i64 [ %indvars.iv.next1025, %polly.loop_exit903 ], [ 0, %polly.loop_exit877 ]
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_exit903 ], [ 0, %polly.loop_exit877 ]
  %smin1026 = call i64 @llvm.smin.i64(i64 %indvars.iv1024, i64 -1168)
  %338 = shl nsw i64 %polly.indvar898, 5
  %339 = add nsw i64 %smin1026, 1199
  br label %polly.loop_header901

polly.loop_exit903:                               ; preds = %polly.loop_exit909
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %indvars.iv.next1025 = add nsw i64 %indvars.iv1024, -32
  %exitcond1029.not = icmp eq i64 %polly.indvar_next899, 38
  br i1 %exitcond1029.not, label %init_array.exit, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_exit909, %polly.loop_header895
  %indvars.iv1020 = phi i64 [ %indvars.iv.next1021, %polly.loop_exit909 ], [ 0, %polly.loop_header895 ]
  %polly.indvar904 = phi i64 [ %polly.indvar_next905, %polly.loop_exit909 ], [ 0, %polly.loop_header895 ]
  %340 = mul nsw i64 %polly.indvar904, -32
  %smin1189 = call i64 @llvm.smin.i64(i64 %340, i64 -968)
  %341 = add nsw i64 %smin1189, 1000
  %smin1022 = call i64 @llvm.smin.i64(i64 %indvars.iv1020, i64 -968)
  %342 = shl nsw i64 %polly.indvar904, 5
  %343 = add nsw i64 %smin1022, 999
  br label %polly.loop_header907

polly.loop_exit909:                               ; preds = %polly.loop_exit915
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %indvars.iv.next1021 = add nsw i64 %indvars.iv1020, -32
  %exitcond1028.not = icmp eq i64 %polly.indvar_next905, 32
  br i1 %exitcond1028.not, label %polly.loop_exit903, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_exit915, %polly.loop_header901
  %polly.indvar910 = phi i64 [ 0, %polly.loop_header901 ], [ %polly.indvar_next911, %polly.loop_exit915 ]
  %344 = add nuw nsw i64 %polly.indvar910, %338
  %345 = trunc i64 %344 to i32
  %346 = mul nuw nsw i64 %344, 8000
  %min.iters.check1190 = icmp eq i64 %341, 0
  br i1 %min.iters.check1190, label %polly.loop_header913, label %vector.ph1191

vector.ph1191:                                    ; preds = %polly.loop_header907
  %broadcast.splatinsert1200 = insertelement <4 x i64> poison, i64 %342, i32 0
  %broadcast.splat1201 = shufflevector <4 x i64> %broadcast.splatinsert1200, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1202 = insertelement <4 x i32> poison, i32 %345, i32 0
  %broadcast.splat1203 = shufflevector <4 x i32> %broadcast.splatinsert1202, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1188

vector.body1188:                                  ; preds = %vector.body1188, %vector.ph1191
  %index1194 = phi i64 [ 0, %vector.ph1191 ], [ %index.next1195, %vector.body1188 ]
  %vec.ind1198 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1191 ], [ %vec.ind.next1199, %vector.body1188 ]
  %347 = add nuw nsw <4 x i64> %vec.ind1198, %broadcast.splat1201
  %348 = trunc <4 x i64> %347 to <4 x i32>
  %349 = mul <4 x i32> %broadcast.splat1203, %348
  %350 = add <4 x i32> %349, <i32 1, i32 1, i32 1, i32 1>
  %351 = urem <4 x i32> %350, <i32 1200, i32 1200, i32 1200, i32 1200>
  %352 = sitofp <4 x i32> %351 to <4 x double>
  %353 = fmul fast <4 x double> %352, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %354 = extractelement <4 x i64> %347, i32 0
  %355 = shl i64 %354, 3
  %356 = add nuw nsw i64 %355, %346
  %357 = getelementptr i8, i8* %call1, i64 %356
  %358 = bitcast i8* %357 to <4 x double>*
  store <4 x double> %353, <4 x double>* %358, align 8, !alias.scope !107, !noalias !114
  %index.next1195 = add i64 %index1194, 4
  %vec.ind.next1199 = add <4 x i64> %vec.ind1198, <i64 4, i64 4, i64 4, i64 4>
  %359 = icmp eq i64 %index.next1195, %341
  br i1 %359, label %polly.loop_exit915, label %vector.body1188, !llvm.loop !115

polly.loop_exit915:                               ; preds = %vector.body1188, %polly.loop_header913
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar910, %339
  br i1 %exitcond1027.not, label %polly.loop_exit909, label %polly.loop_header907

polly.loop_header913:                             ; preds = %polly.loop_header907, %polly.loop_header913
  %polly.indvar916 = phi i64 [ %polly.indvar_next917, %polly.loop_header913 ], [ 0, %polly.loop_header907 ]
  %360 = add nuw nsw i64 %polly.indvar916, %342
  %361 = trunc i64 %360 to i32
  %362 = mul i32 %361, %345
  %363 = add i32 %362, 1
  %364 = urem i32 %363, 1200
  %p_conv.i = sitofp i32 %364 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %365 = shl i64 %360, 3
  %366 = add nuw nsw i64 %365, %346
  %scevgep920 = getelementptr i8, i8* %call1, i64 %366
  %scevgep920921 = bitcast i8* %scevgep920 to double*
  store double %p_div.i, double* %scevgep920921, align 8, !alias.scope !107, !noalias !114
  %polly.indvar_next917 = add nuw nsw i64 %polly.indvar916, 1
  %exitcond1023.not = icmp eq i64 %polly.indvar916, %343
  br i1 %exitcond1023.not, label %polly.loop_exit915, label %polly.loop_header913, !llvm.loop !116

polly.loop_header218.1:                           ; preds = %polly.loop_header218, %polly.loop_header218.1
  %polly.indvar221.1 = phi i64 [ %polly.indvar_next222.1, %polly.loop_header218.1 ], [ 0, %polly.loop_header218 ]
  %367 = add nuw nsw i64 %polly.indvar221.1, %131
  %polly.access.mul.call2225.1 = mul nuw nsw i64 %367, 1000
  %polly.access.add.call2226.1 = add nuw nsw i64 %128, %polly.access.mul.call2225.1
  %polly.access.call2227.1 = getelementptr double, double* %polly.access.cast.call2730, i64 %polly.access.add.call2226.1
  %polly.access.call2227.load.1 = load double, double* %polly.access.call2227.1, align 8, !alias.scope !74, !noalias !80
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar221.1, 1200
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2227.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next222.1 = add nuw nsw i64 %polly.indvar221.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next222.1, %indvars.iv
  br i1 %exitcond.1.not, label %polly.loop_header218.2, label %polly.loop_header218.1

polly.loop_header218.2:                           ; preds = %polly.loop_header218.1, %polly.loop_header218.2
  %polly.indvar221.2 = phi i64 [ %polly.indvar_next222.2, %polly.loop_header218.2 ], [ 0, %polly.loop_header218.1 ]
  %368 = add nuw nsw i64 %polly.indvar221.2, %131
  %polly.access.mul.call2225.2 = mul nuw nsw i64 %368, 1000
  %polly.access.add.call2226.2 = add nuw nsw i64 %129, %polly.access.mul.call2225.2
  %polly.access.call2227.2 = getelementptr double, double* %polly.access.cast.call2730, i64 %polly.access.add.call2226.2
  %polly.access.call2227.load.2 = load double, double* %polly.access.call2227.2, align 8, !alias.scope !74, !noalias !80
  %polly.access.add.Packed_MemRef_call2.2 = add nuw nsw i64 %polly.indvar221.2, 2400
  %polly.access.Packed_MemRef_call2.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.2
  store double %polly.access.call2227.load.2, double* %polly.access.Packed_MemRef_call2.2, align 8
  %polly.indvar_next222.2 = add nuw nsw i64 %polly.indvar221.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next222.2, %indvars.iv
  br i1 %exitcond.2.not, label %polly.loop_header218.3, label %polly.loop_header218.2

polly.loop_header218.3:                           ; preds = %polly.loop_header218.2, %polly.loop_header218.3
  %polly.indvar221.3 = phi i64 [ %polly.indvar_next222.3, %polly.loop_header218.3 ], [ 0, %polly.loop_header218.2 ]
  %369 = add nuw nsw i64 %polly.indvar221.3, %131
  %polly.access.mul.call2225.3 = mul nuw nsw i64 %369, 1000
  %polly.access.add.call2226.3 = add nuw nsw i64 %130, %polly.access.mul.call2225.3
  %polly.access.call2227.3 = getelementptr double, double* %polly.access.cast.call2730, i64 %polly.access.add.call2226.3
  %polly.access.call2227.load.3 = load double, double* %polly.access.call2227.3, align 8, !alias.scope !74, !noalias !80
  %polly.access.add.Packed_MemRef_call2.3 = add nuw nsw i64 %polly.indvar221.3, 3600
  %polly.access.Packed_MemRef_call2.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.3
  store double %polly.access.call2227.load.3, double* %polly.access.Packed_MemRef_call2.3, align 8
  %polly.indvar_next222.3 = add nuw nsw i64 %polly.indvar221.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next222.3, %indvars.iv
  br i1 %exitcond.3.not, label %polly.loop_exit220.3, label %polly.loop_header218.3

polly.loop_exit220.3:                             ; preds = %polly.loop_header218.3
  %370 = mul nsw i64 %polly.indvar209, -4
  %polly.access.mul.call1247 = mul nsw i64 %polly.indvar209, 4000
  %polly.access.add.call1248 = add nuw nsw i64 %polly.access.mul.call1247, %127
  %polly.access.call1249 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248
  %371 = or i64 %131, 1
  %polly.access.mul.call1247.1 = mul nuw nsw i64 %371, 1000
  %polly.access.add.call1248.1 = add nuw nsw i64 %polly.access.mul.call1247.1, %127
  %polly.access.call1249.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.1
  %372 = or i64 %131, 2
  %polly.access.mul.call1247.2 = mul nuw nsw i64 %372, 1000
  %polly.access.add.call1248.2 = add nuw nsw i64 %polly.access.mul.call1247.2, %127
  %polly.access.call1249.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.2
  %373 = or i64 %131, 3
  %polly.access.mul.call1247.3 = mul nuw nsw i64 %373, 1000
  %polly.access.add.call1248.3 = add nuw nsw i64 %polly.access.mul.call1247.3, %127
  %polly.access.call1249.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.3
  %polly.access.add.call1248.11055 = add nuw nsw i64 %polly.access.mul.call1247, %128
  %polly.access.call1249.11056 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.11055
  %polly.access.add.call1248.1.1 = add nuw nsw i64 %polly.access.mul.call1247.1, %128
  %polly.access.call1249.1.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.1.1
  %polly.access.add.call1248.2.1 = add nuw nsw i64 %polly.access.mul.call1247.2, %128
  %polly.access.call1249.2.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.2.1
  %polly.access.add.call1248.3.1 = add nuw nsw i64 %polly.access.mul.call1247.3, %128
  %polly.access.call1249.3.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.3.1
  %polly.access.add.call1248.21060 = add nuw nsw i64 %polly.access.mul.call1247, %129
  %polly.access.call1249.21061 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.21060
  %polly.access.add.call1248.1.2 = add nuw nsw i64 %polly.access.mul.call1247.1, %129
  %polly.access.call1249.1.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.1.2
  %polly.access.add.call1248.2.2 = add nuw nsw i64 %polly.access.mul.call1247.2, %129
  %polly.access.call1249.2.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.2.2
  %polly.access.add.call1248.3.2 = add nuw nsw i64 %polly.access.mul.call1247.3, %129
  %polly.access.call1249.3.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.3.2
  %polly.access.add.call1248.31065 = add nuw nsw i64 %polly.access.mul.call1247, %130
  %polly.access.call1249.31066 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.31065
  %polly.access.add.call1248.1.3 = add nuw nsw i64 %polly.access.mul.call1247.1, %130
  %polly.access.call1249.1.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.1.3
  %polly.access.add.call1248.2.3 = add nuw nsw i64 %polly.access.mul.call1247.2, %130
  %polly.access.call1249.2.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.2.3
  %polly.access.add.call1248.3.3 = add nuw nsw i64 %polly.access.mul.call1247.3, %130
  %polly.access.call1249.3.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.3.3
  %polly.access.mul.call1247.us = mul nsw i64 %polly.indvar209, 4000
  %polly.access.add.call1248.us = add nuw nsw i64 %polly.access.mul.call1247.us, %127
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us
  %374 = or i64 %131, 1
  %polly.access.mul.call1247.us.1 = mul nuw nsw i64 %374, 1000
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %polly.access.mul.call1247.us.1, %127
  %polly.access.call1249.us.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.1
  %375 = or i64 %131, 2
  %polly.access.mul.call1247.us.2 = mul nuw nsw i64 %375, 1000
  %polly.access.add.call1248.us.2 = add nuw nsw i64 %polly.access.mul.call1247.us.2, %127
  %polly.access.call1249.us.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.2
  %376 = or i64 %131, 3
  %polly.access.mul.call1247.us.3 = mul nuw nsw i64 %376, 1000
  %polly.access.add.call1248.us.3 = add nuw nsw i64 %polly.access.mul.call1247.us.3, %127
  %polly.access.call1249.us.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.3
  %polly.access.add.call1248.us.11069 = add nuw nsw i64 %polly.access.mul.call1247.us, %128
  %polly.access.call1249.us.11070 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.11069
  %polly.access.add.call1248.us.1.1 = add nuw nsw i64 %polly.access.mul.call1247.us.1, %128
  %polly.access.call1249.us.1.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.1.1
  %polly.access.add.call1248.us.2.1 = add nuw nsw i64 %polly.access.mul.call1247.us.2, %128
  %polly.access.call1249.us.2.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.2.1
  %polly.access.add.call1248.us.3.1 = add nuw nsw i64 %polly.access.mul.call1247.us.3, %128
  %polly.access.call1249.us.3.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.3.1
  %polly.access.add.call1248.us.21073 = add nuw nsw i64 %polly.access.mul.call1247.us, %129
  %polly.access.call1249.us.21074 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.21073
  %polly.access.add.call1248.us.1.2 = add nuw nsw i64 %polly.access.mul.call1247.us.1, %129
  %polly.access.call1249.us.1.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.1.2
  %polly.access.add.call1248.us.2.2 = add nuw nsw i64 %polly.access.mul.call1247.us.2, %129
  %polly.access.call1249.us.2.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.2.2
  %polly.access.add.call1248.us.3.2 = add nuw nsw i64 %polly.access.mul.call1247.us.3, %129
  %polly.access.call1249.us.3.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.3.2
  %polly.access.add.call1248.us.31077 = add nuw nsw i64 %polly.access.mul.call1247.us, %130
  %polly.access.call1249.us.31078 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.31077
  %polly.access.add.call1248.us.1.3 = add nuw nsw i64 %polly.access.mul.call1247.us.1, %130
  %polly.access.call1249.us.1.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.1.3
  %polly.access.add.call1248.us.2.3 = add nuw nsw i64 %polly.access.mul.call1247.us.2, %130
  %polly.access.call1249.us.2.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.2.3
  %polly.access.add.call1248.us.3.3 = add nuw nsw i64 %polly.access.mul.call1247.us.3, %130
  %polly.access.call1249.us.3.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.3.3
  br label %polly.loop_header228

polly.loop_header250.1:                           ; preds = %polly.loop_header250.1, %polly.loop_exit252
  %polly.indvar253.1 = phi i64 [ %polly.indvar_next254.1, %polly.loop_header250.1 ], [ %136, %polly.loop_exit252 ]
  %377 = add nuw nsw i64 %polly.indvar253.1, %131
  %polly.access.mul.call1257.1 = mul nuw nsw i64 %377, 1000
  %polly.access.add.call1258.1 = add nuw nsw i64 %polly.access.mul.call1257.1, %128
  %polly.access.call1259.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1258.1
  %polly.access.call1259.load.1 = load double, double* %polly.access.call1259.1, align 8, !alias.scope !73, !noalias !81
  %polly.access.add.Packed_MemRef_call1261.1 = add nuw nsw i64 %polly.indvar253.1, 1200
  %polly.access.Packed_MemRef_call1262.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.1
  store double %polly.access.call1259.load.1, double* %polly.access.Packed_MemRef_call1262.1, align 8
  %polly.indvar_next254.1 = add nuw nsw i64 %polly.indvar253.1, 1
  %polly.loop_cond255.not.not.1 = icmp ult i64 %polly.indvar253.1, %137
  br i1 %polly.loop_cond255.not.not.1, label %polly.loop_header250.1, label %polly.loop_exit252.1

polly.loop_exit252.1:                             ; preds = %polly.loop_header250.1
  %polly.access.call1249.load.21062 = load double, double* %polly.access.call1249.21061, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.21062, double* %103, align 8
  %polly.access.call1249.load.1.2 = load double, double* %polly.access.call1249.1.2, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.1.2, double* %104, align 8
  %polly.access.call1249.load.2.2 = load double, double* %polly.access.call1249.2.2, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.2.2, double* %105, align 8
  %polly.access.call1249.load.3.2 = load double, double* %polly.access.call1249.3.2, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.3.2, double* %106, align 8
  br label %polly.loop_header250.2

polly.loop_header250.2:                           ; preds = %polly.loop_header250.2, %polly.loop_exit252.1
  %polly.indvar253.2 = phi i64 [ %polly.indvar_next254.2, %polly.loop_header250.2 ], [ %136, %polly.loop_exit252.1 ]
  %378 = add nuw nsw i64 %polly.indvar253.2, %131
  %polly.access.mul.call1257.2 = mul nuw nsw i64 %378, 1000
  %polly.access.add.call1258.2 = add nuw nsw i64 %polly.access.mul.call1257.2, %129
  %polly.access.call1259.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1258.2
  %polly.access.call1259.load.2 = load double, double* %polly.access.call1259.2, align 8, !alias.scope !73, !noalias !81
  %polly.access.add.Packed_MemRef_call1261.2 = add nuw nsw i64 %polly.indvar253.2, 2400
  %polly.access.Packed_MemRef_call1262.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.2
  store double %polly.access.call1259.load.2, double* %polly.access.Packed_MemRef_call1262.2, align 8
  %polly.indvar_next254.2 = add nuw nsw i64 %polly.indvar253.2, 1
  %polly.loop_cond255.not.not.2 = icmp ult i64 %polly.indvar253.2, %137
  br i1 %polly.loop_cond255.not.not.2, label %polly.loop_header250.2, label %polly.loop_exit252.2

polly.loop_exit252.2:                             ; preds = %polly.loop_header250.2
  %polly.access.call1249.load.31067 = load double, double* %polly.access.call1249.31066, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.31067, double* %107, align 8
  %polly.access.call1249.load.1.3 = load double, double* %polly.access.call1249.1.3, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.1.3, double* %108, align 8
  %polly.access.call1249.load.2.3 = load double, double* %polly.access.call1249.2.3, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.2.3, double* %109, align 8
  %polly.access.call1249.load.3.3 = load double, double* %polly.access.call1249.3.3, align 8, !alias.scope !73, !noalias !81
  store double %polly.access.call1249.load.3.3, double* %110, align 8
  br label %polly.loop_header250.3

polly.loop_header250.3:                           ; preds = %polly.loop_header250.3, %polly.loop_exit252.2
  %polly.indvar253.3 = phi i64 [ %polly.indvar_next254.3, %polly.loop_header250.3 ], [ %136, %polly.loop_exit252.2 ]
  %379 = add nuw nsw i64 %polly.indvar253.3, %131
  %polly.access.mul.call1257.3 = mul nuw nsw i64 %379, 1000
  %polly.access.add.call1258.3 = add nuw nsw i64 %polly.access.mul.call1257.3, %130
  %polly.access.call1259.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1258.3
  %polly.access.call1259.load.3 = load double, double* %polly.access.call1259.3, align 8, !alias.scope !73, !noalias !81
  %polly.access.add.Packed_MemRef_call1261.3 = add nuw nsw i64 %polly.indvar253.3, 3600
  %polly.access.Packed_MemRef_call1262.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.3
  store double %polly.access.call1259.load.3, double* %polly.access.Packed_MemRef_call1262.3, align 8
  %polly.indvar_next254.3 = add nuw nsw i64 %polly.indvar253.3, 1
  %polly.loop_cond255.not.not.3 = icmp ult i64 %polly.indvar253.3, %137
  br i1 %polly.loop_cond255.not.not.3, label %polly.loop_header250.3, label %polly.loop_header263.preheader

polly.loop_header275.1:                           ; preds = %polly.loop_header275.1, %polly.loop_exit277
  %polly.indvar278.1 = phi i64 [ 0, %polly.loop_exit277 ], [ %polly.indvar_next279.1, %polly.loop_header275.1 ]
  %380 = add nuw nsw i64 %polly.indvar278.1, %131
  %polly.access.add.Packed_MemRef_call1282.1 = add nuw nsw i64 %polly.indvar278.1, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1283.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.1
  %_p_scalar_284.1 = load double, double* %polly.access.Packed_MemRef_call1283.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_288.1, %_p_scalar_284.1
  %polly.access.Packed_MemRef_call2291.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1282.1
  %_p_scalar_292.1 = load double, double* %polly.access.Packed_MemRef_call2291.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_296.1, %_p_scalar_292.1
  %381 = shl i64 %380, 3
  %382 = add nuw nsw i64 %381, %141
  %scevgep297.1 = getelementptr i8, i8* %call, i64 %382
  %scevgep297298.1 = bitcast i8* %scevgep297.1 to double*
  %_p_scalar_299.1 = load double, double* %scevgep297298.1, align 8, !alias.scope !70, !noalias !72
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_299.1
  store double %p_add42.i118.1, double* %scevgep297298.1, align 8, !alias.scope !70, !noalias !72
  %polly.indvar_next279.1 = add nuw nsw i64 %polly.indvar278.1, 1
  %exitcond970.1.not = icmp eq i64 %polly.indvar278.1, %smin.1
  br i1 %exitcond970.1.not, label %polly.loop_exit277.1, label %polly.loop_header275.1

polly.loop_exit277.1:                             ; preds = %polly.loop_header275.1
  %polly.access.add.Packed_MemRef_call2286.2 = add nuw nsw i64 %142, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call2287.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.2
  %_p_scalar_288.2 = load double, double* %polly.access.Packed_MemRef_call2287.2, align 8
  %polly.access.Packed_MemRef_call1295.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2286.2
  %_p_scalar_296.2 = load double, double* %polly.access.Packed_MemRef_call1295.2, align 8
  br label %polly.loop_header275.2

polly.loop_header275.2:                           ; preds = %polly.loop_header275.2, %polly.loop_exit277.1
  %polly.indvar278.2 = phi i64 [ 0, %polly.loop_exit277.1 ], [ %polly.indvar_next279.2, %polly.loop_header275.2 ]
  %383 = add nuw nsw i64 %polly.indvar278.2, %131
  %polly.access.add.Packed_MemRef_call1282.2 = add nuw nsw i64 %polly.indvar278.2, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1283.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.2
  %_p_scalar_284.2 = load double, double* %polly.access.Packed_MemRef_call1283.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_288.2, %_p_scalar_284.2
  %polly.access.Packed_MemRef_call2291.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1282.2
  %_p_scalar_292.2 = load double, double* %polly.access.Packed_MemRef_call2291.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_296.2, %_p_scalar_292.2
  %384 = shl i64 %383, 3
  %385 = add nuw nsw i64 %384, %144
  %scevgep297.2 = getelementptr i8, i8* %call, i64 %385
  %scevgep297298.2 = bitcast i8* %scevgep297.2 to double*
  %_p_scalar_299.2 = load double, double* %scevgep297298.2, align 8, !alias.scope !70, !noalias !72
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_299.2
  store double %p_add42.i118.2, double* %scevgep297298.2, align 8, !alias.scope !70, !noalias !72
  %polly.indvar_next279.2 = add nuw nsw i64 %polly.indvar278.2, 1
  %exitcond970.2.not = icmp eq i64 %polly.indvar278.2, %smin.2
  br i1 %exitcond970.2.not, label %polly.loop_exit277.2, label %polly.loop_header275.2

polly.loop_exit277.2:                             ; preds = %polly.loop_header275.2
  %polly.access.add.Packed_MemRef_call2286.3 = add nuw nsw i64 %145, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call2287.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.3
  %_p_scalar_288.3 = load double, double* %polly.access.Packed_MemRef_call2287.3, align 8
  %polly.access.Packed_MemRef_call1295.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2286.3
  %_p_scalar_296.3 = load double, double* %polly.access.Packed_MemRef_call1295.3, align 8
  br label %polly.loop_header275.3

polly.loop_header275.3:                           ; preds = %polly.loop_header275.3, %polly.loop_exit277.2
  %polly.indvar278.3 = phi i64 [ 0, %polly.loop_exit277.2 ], [ %polly.indvar_next279.3, %polly.loop_header275.3 ]
  %386 = add nuw nsw i64 %polly.indvar278.3, %131
  %polly.access.add.Packed_MemRef_call1282.3 = add nuw nsw i64 %polly.indvar278.3, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1283.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.3
  %_p_scalar_284.3 = load double, double* %polly.access.Packed_MemRef_call1283.3, align 8
  %p_mul27.i112.3 = fmul fast double %_p_scalar_288.3, %_p_scalar_284.3
  %polly.access.Packed_MemRef_call2291.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1282.3
  %_p_scalar_292.3 = load double, double* %polly.access.Packed_MemRef_call2291.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_296.3, %_p_scalar_292.3
  %387 = shl i64 %386, 3
  %388 = add nuw nsw i64 %387, %147
  %scevgep297.3 = getelementptr i8, i8* %call, i64 %388
  %scevgep297298.3 = bitcast i8* %scevgep297.3 to double*
  %_p_scalar_299.3 = load double, double* %scevgep297298.3, align 8, !alias.scope !70, !noalias !72
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_299.3
  store double %p_add42.i118.3, double* %scevgep297298.3, align 8, !alias.scope !70, !noalias !72
  %polly.indvar_next279.3 = add nuw nsw i64 %polly.indvar278.3, 1
  %exitcond970.3.not = icmp eq i64 %polly.indvar_next279.3, 4
  br i1 %exitcond970.3.not, label %polly.loop_exit277.3, label %polly.loop_header275.3

polly.loop_exit277.3:                             ; preds = %polly.loop_header275.3
  %polly.indvar_next267 = add nuw nsw i64 %polly.indvar266, 1
  %exitcond972.not = icmp eq i64 %polly.indvar_next267, 4
  br i1 %exitcond972.not, label %polly.loop_exit265, label %polly.loop_header263

polly.loop_header424.1:                           ; preds = %polly.loop_header424, %polly.loop_header424.1
  %polly.indvar427.1 = phi i64 [ %polly.indvar_next428.1, %polly.loop_header424.1 ], [ 0, %polly.loop_header424 ]
  %389 = add nuw nsw i64 %polly.indvar427.1, %195
  %polly.access.mul.call2431.1 = mul nuw nsw i64 %389, 1000
  %polly.access.add.call2432.1 = add nuw nsw i64 %192, %polly.access.mul.call2431.1
  %polly.access.call2433.1 = getelementptr double, double* %polly.access.cast.call2730, i64 %polly.access.add.call2432.1
  %polly.access.call2433.load.1 = load double, double* %polly.access.call2433.1, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call2307.1 = add nuw nsw i64 %polly.indvar427.1, 1200
  %polly.access.Packed_MemRef_call2307.1 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307.1
  store double %polly.access.call2433.load.1, double* %polly.access.Packed_MemRef_call2307.1, align 8
  %polly.indvar_next428.1 = add nuw nsw i64 %polly.indvar427.1, 1
  %exitcond980.1.not = icmp eq i64 %polly.indvar_next428.1, %indvars.iv978
  br i1 %exitcond980.1.not, label %polly.loop_header424.2, label %polly.loop_header424.1

polly.loop_header424.2:                           ; preds = %polly.loop_header424.1, %polly.loop_header424.2
  %polly.indvar427.2 = phi i64 [ %polly.indvar_next428.2, %polly.loop_header424.2 ], [ 0, %polly.loop_header424.1 ]
  %390 = add nuw nsw i64 %polly.indvar427.2, %195
  %polly.access.mul.call2431.2 = mul nuw nsw i64 %390, 1000
  %polly.access.add.call2432.2 = add nuw nsw i64 %193, %polly.access.mul.call2431.2
  %polly.access.call2433.2 = getelementptr double, double* %polly.access.cast.call2730, i64 %polly.access.add.call2432.2
  %polly.access.call2433.load.2 = load double, double* %polly.access.call2433.2, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call2307.2 = add nuw nsw i64 %polly.indvar427.2, 2400
  %polly.access.Packed_MemRef_call2307.2 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307.2
  store double %polly.access.call2433.load.2, double* %polly.access.Packed_MemRef_call2307.2, align 8
  %polly.indvar_next428.2 = add nuw nsw i64 %polly.indvar427.2, 1
  %exitcond980.2.not = icmp eq i64 %polly.indvar_next428.2, %indvars.iv978
  br i1 %exitcond980.2.not, label %polly.loop_header424.3, label %polly.loop_header424.2

polly.loop_header424.3:                           ; preds = %polly.loop_header424.2, %polly.loop_header424.3
  %polly.indvar427.3 = phi i64 [ %polly.indvar_next428.3, %polly.loop_header424.3 ], [ 0, %polly.loop_header424.2 ]
  %391 = add nuw nsw i64 %polly.indvar427.3, %195
  %polly.access.mul.call2431.3 = mul nuw nsw i64 %391, 1000
  %polly.access.add.call2432.3 = add nuw nsw i64 %194, %polly.access.mul.call2431.3
  %polly.access.call2433.3 = getelementptr double, double* %polly.access.cast.call2730, i64 %polly.access.add.call2432.3
  %polly.access.call2433.load.3 = load double, double* %polly.access.call2433.3, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call2307.3 = add nuw nsw i64 %polly.indvar427.3, 3600
  %polly.access.Packed_MemRef_call2307.3 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307.3
  store double %polly.access.call2433.load.3, double* %polly.access.Packed_MemRef_call2307.3, align 8
  %polly.indvar_next428.3 = add nuw nsw i64 %polly.indvar427.3, 1
  %exitcond980.3.not = icmp eq i64 %polly.indvar_next428.3, %indvars.iv978
  br i1 %exitcond980.3.not, label %polly.loop_exit426.3, label %polly.loop_header424.3

polly.loop_exit426.3:                             ; preds = %polly.loop_header424.3
  %392 = mul nsw i64 %polly.indvar415, -4
  %polly.access.mul.call1453 = mul nsw i64 %polly.indvar415, 4000
  %polly.access.add.call1454 = add nuw nsw i64 %polly.access.mul.call1453, %191
  %polly.access.call1455 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454
  %393 = or i64 %195, 1
  %polly.access.mul.call1453.1 = mul nuw nsw i64 %393, 1000
  %polly.access.add.call1454.1 = add nuw nsw i64 %polly.access.mul.call1453.1, %191
  %polly.access.call1455.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.1
  %394 = or i64 %195, 2
  %polly.access.mul.call1453.2 = mul nuw nsw i64 %394, 1000
  %polly.access.add.call1454.2 = add nuw nsw i64 %polly.access.mul.call1453.2, %191
  %polly.access.call1455.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.2
  %395 = or i64 %195, 3
  %polly.access.mul.call1453.3 = mul nuw nsw i64 %395, 1000
  %polly.access.add.call1454.3 = add nuw nsw i64 %polly.access.mul.call1453.3, %191
  %polly.access.call1455.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.3
  %polly.access.add.call1454.11082 = add nuw nsw i64 %polly.access.mul.call1453, %192
  %polly.access.call1455.11083 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.11082
  %polly.access.add.call1454.1.1 = add nuw nsw i64 %polly.access.mul.call1453.1, %192
  %polly.access.call1455.1.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.1.1
  %polly.access.add.call1454.2.1 = add nuw nsw i64 %polly.access.mul.call1453.2, %192
  %polly.access.call1455.2.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.2.1
  %polly.access.add.call1454.3.1 = add nuw nsw i64 %polly.access.mul.call1453.3, %192
  %polly.access.call1455.3.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.3.1
  %polly.access.add.call1454.21087 = add nuw nsw i64 %polly.access.mul.call1453, %193
  %polly.access.call1455.21088 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.21087
  %polly.access.add.call1454.1.2 = add nuw nsw i64 %polly.access.mul.call1453.1, %193
  %polly.access.call1455.1.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.1.2
  %polly.access.add.call1454.2.2 = add nuw nsw i64 %polly.access.mul.call1453.2, %193
  %polly.access.call1455.2.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.2.2
  %polly.access.add.call1454.3.2 = add nuw nsw i64 %polly.access.mul.call1453.3, %193
  %polly.access.call1455.3.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.3.2
  %polly.access.add.call1454.31092 = add nuw nsw i64 %polly.access.mul.call1453, %194
  %polly.access.call1455.31093 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.31092
  %polly.access.add.call1454.1.3 = add nuw nsw i64 %polly.access.mul.call1453.1, %194
  %polly.access.call1455.1.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.1.3
  %polly.access.add.call1454.2.3 = add nuw nsw i64 %polly.access.mul.call1453.2, %194
  %polly.access.call1455.2.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.2.3
  %polly.access.add.call1454.3.3 = add nuw nsw i64 %polly.access.mul.call1453.3, %194
  %polly.access.call1455.3.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.3.3
  %polly.access.mul.call1453.us = mul nsw i64 %polly.indvar415, 4000
  %polly.access.add.call1454.us = add nuw nsw i64 %polly.access.mul.call1453.us, %191
  %polly.access.call1455.us = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us
  %396 = or i64 %195, 1
  %polly.access.mul.call1453.us.1 = mul nuw nsw i64 %396, 1000
  %polly.access.add.call1454.us.1 = add nuw nsw i64 %polly.access.mul.call1453.us.1, %191
  %polly.access.call1455.us.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.1
  %397 = or i64 %195, 2
  %polly.access.mul.call1453.us.2 = mul nuw nsw i64 %397, 1000
  %polly.access.add.call1454.us.2 = add nuw nsw i64 %polly.access.mul.call1453.us.2, %191
  %polly.access.call1455.us.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.2
  %398 = or i64 %195, 3
  %polly.access.mul.call1453.us.3 = mul nuw nsw i64 %398, 1000
  %polly.access.add.call1454.us.3 = add nuw nsw i64 %polly.access.mul.call1453.us.3, %191
  %polly.access.call1455.us.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.3
  %polly.access.add.call1454.us.11096 = add nuw nsw i64 %polly.access.mul.call1453.us, %192
  %polly.access.call1455.us.11097 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.11096
  %polly.access.add.call1454.us.1.1 = add nuw nsw i64 %polly.access.mul.call1453.us.1, %192
  %polly.access.call1455.us.1.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.1.1
  %polly.access.add.call1454.us.2.1 = add nuw nsw i64 %polly.access.mul.call1453.us.2, %192
  %polly.access.call1455.us.2.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.2.1
  %polly.access.add.call1454.us.3.1 = add nuw nsw i64 %polly.access.mul.call1453.us.3, %192
  %polly.access.call1455.us.3.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.3.1
  %polly.access.add.call1454.us.21100 = add nuw nsw i64 %polly.access.mul.call1453.us, %193
  %polly.access.call1455.us.21101 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.21100
  %polly.access.add.call1454.us.1.2 = add nuw nsw i64 %polly.access.mul.call1453.us.1, %193
  %polly.access.call1455.us.1.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.1.2
  %polly.access.add.call1454.us.2.2 = add nuw nsw i64 %polly.access.mul.call1453.us.2, %193
  %polly.access.call1455.us.2.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.2.2
  %polly.access.add.call1454.us.3.2 = add nuw nsw i64 %polly.access.mul.call1453.us.3, %193
  %polly.access.call1455.us.3.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.3.2
  %polly.access.add.call1454.us.31104 = add nuw nsw i64 %polly.access.mul.call1453.us, %194
  %polly.access.call1455.us.31105 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.31104
  %polly.access.add.call1454.us.1.3 = add nuw nsw i64 %polly.access.mul.call1453.us.1, %194
  %polly.access.call1455.us.1.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.1.3
  %polly.access.add.call1454.us.2.3 = add nuw nsw i64 %polly.access.mul.call1453.us.2, %194
  %polly.access.call1455.us.2.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.2.3
  %polly.access.add.call1454.us.3.3 = add nuw nsw i64 %polly.access.mul.call1453.us.3, %194
  %polly.access.call1455.us.3.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.3.3
  br label %polly.loop_header434

polly.loop_header457.1:                           ; preds = %polly.loop_header457.1, %polly.loop_exit459
  %polly.indvar461.1 = phi i64 [ %polly.indvar_next462.1, %polly.loop_header457.1 ], [ %200, %polly.loop_exit459 ]
  %399 = add nuw nsw i64 %polly.indvar461.1, %195
  %polly.access.mul.call1465.1 = mul nuw nsw i64 %399, 1000
  %polly.access.add.call1466.1 = add nuw nsw i64 %polly.access.mul.call1465.1, %192
  %polly.access.call1467.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1466.1
  %polly.access.call1467.load.1 = load double, double* %polly.access.call1467.1, align 8, !alias.scope !85, !noalias !92
  %polly.access.add.Packed_MemRef_call1305469.1 = add nuw nsw i64 %polly.indvar461.1, 1200
  %polly.access.Packed_MemRef_call1305470.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305469.1
  store double %polly.access.call1467.load.1, double* %polly.access.Packed_MemRef_call1305470.1, align 8
  %polly.indvar_next462.1 = add nuw nsw i64 %polly.indvar461.1, 1
  %polly.loop_cond463.not.not.1 = icmp ult i64 %polly.indvar461.1, %201
  br i1 %polly.loop_cond463.not.not.1, label %polly.loop_header457.1, label %polly.loop_exit459.1

polly.loop_exit459.1:                             ; preds = %polly.loop_header457.1
  %polly.access.call1455.load.21089 = load double, double* %polly.access.call1455.21088, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.21089, double* %167, align 8
  %polly.access.call1455.load.1.2 = load double, double* %polly.access.call1455.1.2, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.1.2, double* %168, align 8
  %polly.access.call1455.load.2.2 = load double, double* %polly.access.call1455.2.2, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.2.2, double* %169, align 8
  %polly.access.call1455.load.3.2 = load double, double* %polly.access.call1455.3.2, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.3.2, double* %170, align 8
  br label %polly.loop_header457.2

polly.loop_header457.2:                           ; preds = %polly.loop_header457.2, %polly.loop_exit459.1
  %polly.indvar461.2 = phi i64 [ %polly.indvar_next462.2, %polly.loop_header457.2 ], [ %200, %polly.loop_exit459.1 ]
  %400 = add nuw nsw i64 %polly.indvar461.2, %195
  %polly.access.mul.call1465.2 = mul nuw nsw i64 %400, 1000
  %polly.access.add.call1466.2 = add nuw nsw i64 %polly.access.mul.call1465.2, %193
  %polly.access.call1467.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1466.2
  %polly.access.call1467.load.2 = load double, double* %polly.access.call1467.2, align 8, !alias.scope !85, !noalias !92
  %polly.access.add.Packed_MemRef_call1305469.2 = add nuw nsw i64 %polly.indvar461.2, 2400
  %polly.access.Packed_MemRef_call1305470.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305469.2
  store double %polly.access.call1467.load.2, double* %polly.access.Packed_MemRef_call1305470.2, align 8
  %polly.indvar_next462.2 = add nuw nsw i64 %polly.indvar461.2, 1
  %polly.loop_cond463.not.not.2 = icmp ult i64 %polly.indvar461.2, %201
  br i1 %polly.loop_cond463.not.not.2, label %polly.loop_header457.2, label %polly.loop_exit459.2

polly.loop_exit459.2:                             ; preds = %polly.loop_header457.2
  %polly.access.call1455.load.31094 = load double, double* %polly.access.call1455.31093, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.31094, double* %171, align 8
  %polly.access.call1455.load.1.3 = load double, double* %polly.access.call1455.1.3, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.1.3, double* %172, align 8
  %polly.access.call1455.load.2.3 = load double, double* %polly.access.call1455.2.3, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.2.3, double* %173, align 8
  %polly.access.call1455.load.3.3 = load double, double* %polly.access.call1455.3.3, align 8, !alias.scope !85, !noalias !92
  store double %polly.access.call1455.load.3.3, double* %174, align 8
  br label %polly.loop_header457.3

polly.loop_header457.3:                           ; preds = %polly.loop_header457.3, %polly.loop_exit459.2
  %polly.indvar461.3 = phi i64 [ %polly.indvar_next462.3, %polly.loop_header457.3 ], [ %200, %polly.loop_exit459.2 ]
  %401 = add nuw nsw i64 %polly.indvar461.3, %195
  %polly.access.mul.call1465.3 = mul nuw nsw i64 %401, 1000
  %polly.access.add.call1466.3 = add nuw nsw i64 %polly.access.mul.call1465.3, %194
  %polly.access.call1467.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1466.3
  %polly.access.call1467.load.3 = load double, double* %polly.access.call1467.3, align 8, !alias.scope !85, !noalias !92
  %polly.access.add.Packed_MemRef_call1305469.3 = add nuw nsw i64 %polly.indvar461.3, 3600
  %polly.access.Packed_MemRef_call1305470.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305469.3
  store double %polly.access.call1467.load.3, double* %polly.access.Packed_MemRef_call1305470.3, align 8
  %polly.indvar_next462.3 = add nuw nsw i64 %polly.indvar461.3, 1
  %polly.loop_cond463.not.not.3 = icmp ult i64 %polly.indvar461.3, %201
  br i1 %polly.loop_cond463.not.not.3, label %polly.loop_header457.3, label %polly.loop_header471.preheader

polly.loop_header483.1:                           ; preds = %polly.loop_header483.1, %polly.loop_exit485
  %polly.indvar486.1 = phi i64 [ 0, %polly.loop_exit485 ], [ %polly.indvar_next487.1, %polly.loop_header483.1 ]
  %402 = add nuw nsw i64 %polly.indvar486.1, %195
  %polly.access.add.Packed_MemRef_call1305490.1 = add nuw nsw i64 %polly.indvar486.1, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call1305491.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305490.1
  %_p_scalar_492.1 = load double, double* %polly.access.Packed_MemRef_call1305491.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_496.1, %_p_scalar_492.1
  %polly.access.Packed_MemRef_call2307499.1 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call1305490.1
  %_p_scalar_500.1 = load double, double* %polly.access.Packed_MemRef_call2307499.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_504.1, %_p_scalar_500.1
  %403 = shl i64 %402, 3
  %404 = add nuw nsw i64 %403, %205
  %scevgep505.1 = getelementptr i8, i8* %call, i64 %404
  %scevgep505506.1 = bitcast i8* %scevgep505.1 to double*
  %_p_scalar_507.1 = load double, double* %scevgep505506.1, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_507.1
  store double %p_add42.i79.1, double* %scevgep505506.1, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next487.1 = add nuw nsw i64 %polly.indvar486.1, 1
  %exitcond991.1.not = icmp eq i64 %polly.indvar486.1, %smin990.1
  br i1 %exitcond991.1.not, label %polly.loop_exit485.1, label %polly.loop_header483.1

polly.loop_exit485.1:                             ; preds = %polly.loop_header483.1
  %polly.access.add.Packed_MemRef_call2307494.2 = add nuw nsw i64 %206, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call2307495.2 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307494.2
  %_p_scalar_496.2 = load double, double* %polly.access.Packed_MemRef_call2307495.2, align 8
  %polly.access.Packed_MemRef_call1305503.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call2307494.2
  %_p_scalar_504.2 = load double, double* %polly.access.Packed_MemRef_call1305503.2, align 8
  br label %polly.loop_header483.2

polly.loop_header483.2:                           ; preds = %polly.loop_header483.2, %polly.loop_exit485.1
  %polly.indvar486.2 = phi i64 [ 0, %polly.loop_exit485.1 ], [ %polly.indvar_next487.2, %polly.loop_header483.2 ]
  %405 = add nuw nsw i64 %polly.indvar486.2, %195
  %polly.access.add.Packed_MemRef_call1305490.2 = add nuw nsw i64 %polly.indvar486.2, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call1305491.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305490.2
  %_p_scalar_492.2 = load double, double* %polly.access.Packed_MemRef_call1305491.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_496.2, %_p_scalar_492.2
  %polly.access.Packed_MemRef_call2307499.2 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call1305490.2
  %_p_scalar_500.2 = load double, double* %polly.access.Packed_MemRef_call2307499.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_504.2, %_p_scalar_500.2
  %406 = shl i64 %405, 3
  %407 = add nuw nsw i64 %406, %208
  %scevgep505.2 = getelementptr i8, i8* %call, i64 %407
  %scevgep505506.2 = bitcast i8* %scevgep505.2 to double*
  %_p_scalar_507.2 = load double, double* %scevgep505506.2, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_507.2
  store double %p_add42.i79.2, double* %scevgep505506.2, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next487.2 = add nuw nsw i64 %polly.indvar486.2, 1
  %exitcond991.2.not = icmp eq i64 %polly.indvar486.2, %smin990.2
  br i1 %exitcond991.2.not, label %polly.loop_exit485.2, label %polly.loop_header483.2

polly.loop_exit485.2:                             ; preds = %polly.loop_header483.2
  %polly.access.add.Packed_MemRef_call2307494.3 = add nuw nsw i64 %209, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call2307495.3 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307494.3
  %_p_scalar_496.3 = load double, double* %polly.access.Packed_MemRef_call2307495.3, align 8
  %polly.access.Packed_MemRef_call1305503.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call2307494.3
  %_p_scalar_504.3 = load double, double* %polly.access.Packed_MemRef_call1305503.3, align 8
  br label %polly.loop_header483.3

polly.loop_header483.3:                           ; preds = %polly.loop_header483.3, %polly.loop_exit485.2
  %polly.indvar486.3 = phi i64 [ 0, %polly.loop_exit485.2 ], [ %polly.indvar_next487.3, %polly.loop_header483.3 ]
  %408 = add nuw nsw i64 %polly.indvar486.3, %195
  %polly.access.add.Packed_MemRef_call1305490.3 = add nuw nsw i64 %polly.indvar486.3, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call1305491.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305490.3
  %_p_scalar_492.3 = load double, double* %polly.access.Packed_MemRef_call1305491.3, align 8
  %p_mul27.i73.3 = fmul fast double %_p_scalar_496.3, %_p_scalar_492.3
  %polly.access.Packed_MemRef_call2307499.3 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call1305490.3
  %_p_scalar_500.3 = load double, double* %polly.access.Packed_MemRef_call2307499.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_504.3, %_p_scalar_500.3
  %409 = shl i64 %408, 3
  %410 = add nuw nsw i64 %409, %211
  %scevgep505.3 = getelementptr i8, i8* %call, i64 %410
  %scevgep505506.3 = bitcast i8* %scevgep505.3 to double*
  %_p_scalar_507.3 = load double, double* %scevgep505506.3, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_507.3
  store double %p_add42.i79.3, double* %scevgep505506.3, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next487.3 = add nuw nsw i64 %polly.indvar486.3, 1
  %exitcond991.3.not = icmp eq i64 %polly.indvar_next487.3, 4
  br i1 %exitcond991.3.not, label %polly.loop_exit485.3, label %polly.loop_header483.3

polly.loop_exit485.3:                             ; preds = %polly.loop_header483.3
  %polly.indvar_next475 = add nuw nsw i64 %polly.indvar474, 1
  %exitcond993.not = icmp eq i64 %polly.indvar_next475, 4
  br i1 %exitcond993.not, label %polly.loop_exit473, label %polly.loop_header471

polly.loop_header632.1:                           ; preds = %polly.loop_header632, %polly.loop_header632.1
  %polly.indvar635.1 = phi i64 [ %polly.indvar_next636.1, %polly.loop_header632.1 ], [ 0, %polly.loop_header632 ]
  %411 = add nuw nsw i64 %polly.indvar635.1, %259
  %polly.access.mul.call2639.1 = mul nuw nsw i64 %411, 1000
  %polly.access.add.call2640.1 = add nuw nsw i64 %256, %polly.access.mul.call2639.1
  %polly.access.call2641.1 = getelementptr double, double* %polly.access.cast.call2730, i64 %polly.access.add.call2640.1
  %polly.access.call2641.load.1 = load double, double* %polly.access.call2641.1, align 8, !alias.scope !97, !noalias !102
  %polly.access.add.Packed_MemRef_call2515.1 = add nuw nsw i64 %polly.indvar635.1, 1200
  %polly.access.Packed_MemRef_call2515.1 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515.1
  store double %polly.access.call2641.load.1, double* %polly.access.Packed_MemRef_call2515.1, align 8
  %polly.indvar_next636.1 = add nuw nsw i64 %polly.indvar635.1, 1
  %exitcond1001.1.not = icmp eq i64 %polly.indvar_next636.1, %indvars.iv999
  br i1 %exitcond1001.1.not, label %polly.loop_header632.2, label %polly.loop_header632.1

polly.loop_header632.2:                           ; preds = %polly.loop_header632.1, %polly.loop_header632.2
  %polly.indvar635.2 = phi i64 [ %polly.indvar_next636.2, %polly.loop_header632.2 ], [ 0, %polly.loop_header632.1 ]
  %412 = add nuw nsw i64 %polly.indvar635.2, %259
  %polly.access.mul.call2639.2 = mul nuw nsw i64 %412, 1000
  %polly.access.add.call2640.2 = add nuw nsw i64 %257, %polly.access.mul.call2639.2
  %polly.access.call2641.2 = getelementptr double, double* %polly.access.cast.call2730, i64 %polly.access.add.call2640.2
  %polly.access.call2641.load.2 = load double, double* %polly.access.call2641.2, align 8, !alias.scope !97, !noalias !102
  %polly.access.add.Packed_MemRef_call2515.2 = add nuw nsw i64 %polly.indvar635.2, 2400
  %polly.access.Packed_MemRef_call2515.2 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515.2
  store double %polly.access.call2641.load.2, double* %polly.access.Packed_MemRef_call2515.2, align 8
  %polly.indvar_next636.2 = add nuw nsw i64 %polly.indvar635.2, 1
  %exitcond1001.2.not = icmp eq i64 %polly.indvar_next636.2, %indvars.iv999
  br i1 %exitcond1001.2.not, label %polly.loop_header632.3, label %polly.loop_header632.2

polly.loop_header632.3:                           ; preds = %polly.loop_header632.2, %polly.loop_header632.3
  %polly.indvar635.3 = phi i64 [ %polly.indvar_next636.3, %polly.loop_header632.3 ], [ 0, %polly.loop_header632.2 ]
  %413 = add nuw nsw i64 %polly.indvar635.3, %259
  %polly.access.mul.call2639.3 = mul nuw nsw i64 %413, 1000
  %polly.access.add.call2640.3 = add nuw nsw i64 %258, %polly.access.mul.call2639.3
  %polly.access.call2641.3 = getelementptr double, double* %polly.access.cast.call2730, i64 %polly.access.add.call2640.3
  %polly.access.call2641.load.3 = load double, double* %polly.access.call2641.3, align 8, !alias.scope !97, !noalias !102
  %polly.access.add.Packed_MemRef_call2515.3 = add nuw nsw i64 %polly.indvar635.3, 3600
  %polly.access.Packed_MemRef_call2515.3 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515.3
  store double %polly.access.call2641.load.3, double* %polly.access.Packed_MemRef_call2515.3, align 8
  %polly.indvar_next636.3 = add nuw nsw i64 %polly.indvar635.3, 1
  %exitcond1001.3.not = icmp eq i64 %polly.indvar_next636.3, %indvars.iv999
  br i1 %exitcond1001.3.not, label %polly.loop_exit634.3, label %polly.loop_header632.3

polly.loop_exit634.3:                             ; preds = %polly.loop_header632.3
  %414 = mul nsw i64 %polly.indvar623, -4
  %polly.access.mul.call1661 = mul nsw i64 %polly.indvar623, 4000
  %polly.access.add.call1662 = add nuw nsw i64 %polly.access.mul.call1661, %255
  %polly.access.call1663 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662
  %415 = or i64 %259, 1
  %polly.access.mul.call1661.1 = mul nuw nsw i64 %415, 1000
  %polly.access.add.call1662.1 = add nuw nsw i64 %polly.access.mul.call1661.1, %255
  %polly.access.call1663.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.1
  %416 = or i64 %259, 2
  %polly.access.mul.call1661.2 = mul nuw nsw i64 %416, 1000
  %polly.access.add.call1662.2 = add nuw nsw i64 %polly.access.mul.call1661.2, %255
  %polly.access.call1663.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.2
  %417 = or i64 %259, 3
  %polly.access.mul.call1661.3 = mul nuw nsw i64 %417, 1000
  %polly.access.add.call1662.3 = add nuw nsw i64 %polly.access.mul.call1661.3, %255
  %polly.access.call1663.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.3
  %polly.access.add.call1662.11109 = add nuw nsw i64 %polly.access.mul.call1661, %256
  %polly.access.call1663.11110 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.11109
  %polly.access.add.call1662.1.1 = add nuw nsw i64 %polly.access.mul.call1661.1, %256
  %polly.access.call1663.1.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.1.1
  %polly.access.add.call1662.2.1 = add nuw nsw i64 %polly.access.mul.call1661.2, %256
  %polly.access.call1663.2.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.2.1
  %polly.access.add.call1662.3.1 = add nuw nsw i64 %polly.access.mul.call1661.3, %256
  %polly.access.call1663.3.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.3.1
  %polly.access.add.call1662.21114 = add nuw nsw i64 %polly.access.mul.call1661, %257
  %polly.access.call1663.21115 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.21114
  %polly.access.add.call1662.1.2 = add nuw nsw i64 %polly.access.mul.call1661.1, %257
  %polly.access.call1663.1.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.1.2
  %polly.access.add.call1662.2.2 = add nuw nsw i64 %polly.access.mul.call1661.2, %257
  %polly.access.call1663.2.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.2.2
  %polly.access.add.call1662.3.2 = add nuw nsw i64 %polly.access.mul.call1661.3, %257
  %polly.access.call1663.3.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.3.2
  %polly.access.add.call1662.31119 = add nuw nsw i64 %polly.access.mul.call1661, %258
  %polly.access.call1663.31120 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.31119
  %polly.access.add.call1662.1.3 = add nuw nsw i64 %polly.access.mul.call1661.1, %258
  %polly.access.call1663.1.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.1.3
  %polly.access.add.call1662.2.3 = add nuw nsw i64 %polly.access.mul.call1661.2, %258
  %polly.access.call1663.2.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.2.3
  %polly.access.add.call1662.3.3 = add nuw nsw i64 %polly.access.mul.call1661.3, %258
  %polly.access.call1663.3.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.3.3
  %polly.access.mul.call1661.us = mul nsw i64 %polly.indvar623, 4000
  %polly.access.add.call1662.us = add nuw nsw i64 %polly.access.mul.call1661.us, %255
  %polly.access.call1663.us = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us
  %418 = or i64 %259, 1
  %polly.access.mul.call1661.us.1 = mul nuw nsw i64 %418, 1000
  %polly.access.add.call1662.us.1 = add nuw nsw i64 %polly.access.mul.call1661.us.1, %255
  %polly.access.call1663.us.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.1
  %419 = or i64 %259, 2
  %polly.access.mul.call1661.us.2 = mul nuw nsw i64 %419, 1000
  %polly.access.add.call1662.us.2 = add nuw nsw i64 %polly.access.mul.call1661.us.2, %255
  %polly.access.call1663.us.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.2
  %420 = or i64 %259, 3
  %polly.access.mul.call1661.us.3 = mul nuw nsw i64 %420, 1000
  %polly.access.add.call1662.us.3 = add nuw nsw i64 %polly.access.mul.call1661.us.3, %255
  %polly.access.call1663.us.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.3
  %polly.access.add.call1662.us.11123 = add nuw nsw i64 %polly.access.mul.call1661.us, %256
  %polly.access.call1663.us.11124 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.11123
  %polly.access.add.call1662.us.1.1 = add nuw nsw i64 %polly.access.mul.call1661.us.1, %256
  %polly.access.call1663.us.1.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.1.1
  %polly.access.add.call1662.us.2.1 = add nuw nsw i64 %polly.access.mul.call1661.us.2, %256
  %polly.access.call1663.us.2.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.2.1
  %polly.access.add.call1662.us.3.1 = add nuw nsw i64 %polly.access.mul.call1661.us.3, %256
  %polly.access.call1663.us.3.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.3.1
  %polly.access.add.call1662.us.21127 = add nuw nsw i64 %polly.access.mul.call1661.us, %257
  %polly.access.call1663.us.21128 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.21127
  %polly.access.add.call1662.us.1.2 = add nuw nsw i64 %polly.access.mul.call1661.us.1, %257
  %polly.access.call1663.us.1.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.1.2
  %polly.access.add.call1662.us.2.2 = add nuw nsw i64 %polly.access.mul.call1661.us.2, %257
  %polly.access.call1663.us.2.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.2.2
  %polly.access.add.call1662.us.3.2 = add nuw nsw i64 %polly.access.mul.call1661.us.3, %257
  %polly.access.call1663.us.3.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.3.2
  %polly.access.add.call1662.us.31131 = add nuw nsw i64 %polly.access.mul.call1661.us, %258
  %polly.access.call1663.us.31132 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.31131
  %polly.access.add.call1662.us.1.3 = add nuw nsw i64 %polly.access.mul.call1661.us.1, %258
  %polly.access.call1663.us.1.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.1.3
  %polly.access.add.call1662.us.2.3 = add nuw nsw i64 %polly.access.mul.call1661.us.2, %258
  %polly.access.call1663.us.2.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.2.3
  %polly.access.add.call1662.us.3.3 = add nuw nsw i64 %polly.access.mul.call1661.us.3, %258
  %polly.access.call1663.us.3.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.3.3
  br label %polly.loop_header642

polly.loop_header665.1:                           ; preds = %polly.loop_header665.1, %polly.loop_exit667
  %polly.indvar669.1 = phi i64 [ %polly.indvar_next670.1, %polly.loop_header665.1 ], [ %264, %polly.loop_exit667 ]
  %421 = add nuw nsw i64 %polly.indvar669.1, %259
  %polly.access.mul.call1673.1 = mul nuw nsw i64 %421, 1000
  %polly.access.add.call1674.1 = add nuw nsw i64 %polly.access.mul.call1673.1, %256
  %polly.access.call1675.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1674.1
  %polly.access.call1675.load.1 = load double, double* %polly.access.call1675.1, align 8, !alias.scope !96, !noalias !103
  %polly.access.add.Packed_MemRef_call1513677.1 = add nuw nsw i64 %polly.indvar669.1, 1200
  %polly.access.Packed_MemRef_call1513678.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513677.1
  store double %polly.access.call1675.load.1, double* %polly.access.Packed_MemRef_call1513678.1, align 8
  %polly.indvar_next670.1 = add nuw nsw i64 %polly.indvar669.1, 1
  %polly.loop_cond671.not.not.1 = icmp ult i64 %polly.indvar669.1, %265
  br i1 %polly.loop_cond671.not.not.1, label %polly.loop_header665.1, label %polly.loop_exit667.1

polly.loop_exit667.1:                             ; preds = %polly.loop_header665.1
  %polly.access.call1663.load.21116 = load double, double* %polly.access.call1663.21115, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.21116, double* %231, align 8
  %polly.access.call1663.load.1.2 = load double, double* %polly.access.call1663.1.2, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.1.2, double* %232, align 8
  %polly.access.call1663.load.2.2 = load double, double* %polly.access.call1663.2.2, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.2.2, double* %233, align 8
  %polly.access.call1663.load.3.2 = load double, double* %polly.access.call1663.3.2, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.3.2, double* %234, align 8
  br label %polly.loop_header665.2

polly.loop_header665.2:                           ; preds = %polly.loop_header665.2, %polly.loop_exit667.1
  %polly.indvar669.2 = phi i64 [ %polly.indvar_next670.2, %polly.loop_header665.2 ], [ %264, %polly.loop_exit667.1 ]
  %422 = add nuw nsw i64 %polly.indvar669.2, %259
  %polly.access.mul.call1673.2 = mul nuw nsw i64 %422, 1000
  %polly.access.add.call1674.2 = add nuw nsw i64 %polly.access.mul.call1673.2, %257
  %polly.access.call1675.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1674.2
  %polly.access.call1675.load.2 = load double, double* %polly.access.call1675.2, align 8, !alias.scope !96, !noalias !103
  %polly.access.add.Packed_MemRef_call1513677.2 = add nuw nsw i64 %polly.indvar669.2, 2400
  %polly.access.Packed_MemRef_call1513678.2 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513677.2
  store double %polly.access.call1675.load.2, double* %polly.access.Packed_MemRef_call1513678.2, align 8
  %polly.indvar_next670.2 = add nuw nsw i64 %polly.indvar669.2, 1
  %polly.loop_cond671.not.not.2 = icmp ult i64 %polly.indvar669.2, %265
  br i1 %polly.loop_cond671.not.not.2, label %polly.loop_header665.2, label %polly.loop_exit667.2

polly.loop_exit667.2:                             ; preds = %polly.loop_header665.2
  %polly.access.call1663.load.31121 = load double, double* %polly.access.call1663.31120, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.31121, double* %235, align 8
  %polly.access.call1663.load.1.3 = load double, double* %polly.access.call1663.1.3, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.1.3, double* %236, align 8
  %polly.access.call1663.load.2.3 = load double, double* %polly.access.call1663.2.3, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.2.3, double* %237, align 8
  %polly.access.call1663.load.3.3 = load double, double* %polly.access.call1663.3.3, align 8, !alias.scope !96, !noalias !103
  store double %polly.access.call1663.load.3.3, double* %238, align 8
  br label %polly.loop_header665.3

polly.loop_header665.3:                           ; preds = %polly.loop_header665.3, %polly.loop_exit667.2
  %polly.indvar669.3 = phi i64 [ %polly.indvar_next670.3, %polly.loop_header665.3 ], [ %264, %polly.loop_exit667.2 ]
  %423 = add nuw nsw i64 %polly.indvar669.3, %259
  %polly.access.mul.call1673.3 = mul nuw nsw i64 %423, 1000
  %polly.access.add.call1674.3 = add nuw nsw i64 %polly.access.mul.call1673.3, %258
  %polly.access.call1675.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1674.3
  %polly.access.call1675.load.3 = load double, double* %polly.access.call1675.3, align 8, !alias.scope !96, !noalias !103
  %polly.access.add.Packed_MemRef_call1513677.3 = add nuw nsw i64 %polly.indvar669.3, 3600
  %polly.access.Packed_MemRef_call1513678.3 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513677.3
  store double %polly.access.call1675.load.3, double* %polly.access.Packed_MemRef_call1513678.3, align 8
  %polly.indvar_next670.3 = add nuw nsw i64 %polly.indvar669.3, 1
  %polly.loop_cond671.not.not.3 = icmp ult i64 %polly.indvar669.3, %265
  br i1 %polly.loop_cond671.not.not.3, label %polly.loop_header665.3, label %polly.loop_header679.preheader

polly.loop_header691.1:                           ; preds = %polly.loop_header691.1, %polly.loop_exit693
  %polly.indvar694.1 = phi i64 [ 0, %polly.loop_exit693 ], [ %polly.indvar_next695.1, %polly.loop_header691.1 ]
  %424 = add nuw nsw i64 %polly.indvar694.1, %259
  %polly.access.add.Packed_MemRef_call1513698.1 = add nuw nsw i64 %polly.indvar694.1, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call1513699.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513698.1
  %_p_scalar_700.1 = load double, double* %polly.access.Packed_MemRef_call1513699.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_704.1, %_p_scalar_700.1
  %polly.access.Packed_MemRef_call2515707.1 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call1513698.1
  %_p_scalar_708.1 = load double, double* %polly.access.Packed_MemRef_call2515707.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_712.1, %_p_scalar_708.1
  %425 = shl i64 %424, 3
  %426 = add nuw nsw i64 %425, %269
  %scevgep713.1 = getelementptr i8, i8* %call, i64 %426
  %scevgep713714.1 = bitcast i8* %scevgep713.1 to double*
  %_p_scalar_715.1 = load double, double* %scevgep713714.1, align 8, !alias.scope !93, !noalias !95
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_715.1
  store double %p_add42.i.1, double* %scevgep713714.1, align 8, !alias.scope !93, !noalias !95
  %polly.indvar_next695.1 = add nuw nsw i64 %polly.indvar694.1, 1
  %exitcond1012.1.not = icmp eq i64 %polly.indvar694.1, %smin1011.1
  br i1 %exitcond1012.1.not, label %polly.loop_exit693.1, label %polly.loop_header691.1

polly.loop_exit693.1:                             ; preds = %polly.loop_header691.1
  %polly.access.add.Packed_MemRef_call2515702.2 = add nuw nsw i64 %270, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call2515703.2 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515702.2
  %_p_scalar_704.2 = load double, double* %polly.access.Packed_MemRef_call2515703.2, align 8
  %polly.access.Packed_MemRef_call1513711.2 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call2515702.2
  %_p_scalar_712.2 = load double, double* %polly.access.Packed_MemRef_call1513711.2, align 8
  br label %polly.loop_header691.2

polly.loop_header691.2:                           ; preds = %polly.loop_header691.2, %polly.loop_exit693.1
  %polly.indvar694.2 = phi i64 [ 0, %polly.loop_exit693.1 ], [ %polly.indvar_next695.2, %polly.loop_header691.2 ]
  %427 = add nuw nsw i64 %polly.indvar694.2, %259
  %polly.access.add.Packed_MemRef_call1513698.2 = add nuw nsw i64 %polly.indvar694.2, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call1513699.2 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513698.2
  %_p_scalar_700.2 = load double, double* %polly.access.Packed_MemRef_call1513699.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_704.2, %_p_scalar_700.2
  %polly.access.Packed_MemRef_call2515707.2 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call1513698.2
  %_p_scalar_708.2 = load double, double* %polly.access.Packed_MemRef_call2515707.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_712.2, %_p_scalar_708.2
  %428 = shl i64 %427, 3
  %429 = add nuw nsw i64 %428, %272
  %scevgep713.2 = getelementptr i8, i8* %call, i64 %429
  %scevgep713714.2 = bitcast i8* %scevgep713.2 to double*
  %_p_scalar_715.2 = load double, double* %scevgep713714.2, align 8, !alias.scope !93, !noalias !95
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_715.2
  store double %p_add42.i.2, double* %scevgep713714.2, align 8, !alias.scope !93, !noalias !95
  %polly.indvar_next695.2 = add nuw nsw i64 %polly.indvar694.2, 1
  %exitcond1012.2.not = icmp eq i64 %polly.indvar694.2, %smin1011.2
  br i1 %exitcond1012.2.not, label %polly.loop_exit693.2, label %polly.loop_header691.2

polly.loop_exit693.2:                             ; preds = %polly.loop_header691.2
  %polly.access.add.Packed_MemRef_call2515702.3 = add nuw nsw i64 %273, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call2515703.3 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515702.3
  %_p_scalar_704.3 = load double, double* %polly.access.Packed_MemRef_call2515703.3, align 8
  %polly.access.Packed_MemRef_call1513711.3 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call2515702.3
  %_p_scalar_712.3 = load double, double* %polly.access.Packed_MemRef_call1513711.3, align 8
  br label %polly.loop_header691.3

polly.loop_header691.3:                           ; preds = %polly.loop_header691.3, %polly.loop_exit693.2
  %polly.indvar694.3 = phi i64 [ 0, %polly.loop_exit693.2 ], [ %polly.indvar_next695.3, %polly.loop_header691.3 ]
  %430 = add nuw nsw i64 %polly.indvar694.3, %259
  %polly.access.add.Packed_MemRef_call1513698.3 = add nuw nsw i64 %polly.indvar694.3, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call1513699.3 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513698.3
  %_p_scalar_700.3 = load double, double* %polly.access.Packed_MemRef_call1513699.3, align 8
  %p_mul27.i.3 = fmul fast double %_p_scalar_704.3, %_p_scalar_700.3
  %polly.access.Packed_MemRef_call2515707.3 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call1513698.3
  %_p_scalar_708.3 = load double, double* %polly.access.Packed_MemRef_call2515707.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_712.3, %_p_scalar_708.3
  %431 = shl i64 %430, 3
  %432 = add nuw nsw i64 %431, %275
  %scevgep713.3 = getelementptr i8, i8* %call, i64 %432
  %scevgep713714.3 = bitcast i8* %scevgep713.3 to double*
  %_p_scalar_715.3 = load double, double* %scevgep713714.3, align 8, !alias.scope !93, !noalias !95
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_715.3
  store double %p_add42.i.3, double* %scevgep713714.3, align 8, !alias.scope !93, !noalias !95
  %polly.indvar_next695.3 = add nuw nsw i64 %polly.indvar694.3, 1
  %exitcond1012.3.not = icmp eq i64 %polly.indvar_next695.3, 4
  br i1 %exitcond1012.3.not, label %polly.loop_exit693.3, label %polly.loop_header691.3

polly.loop_exit693.3:                             ; preds = %polly.loop_header691.3
  %polly.indvar_next683 = add nuw nsw i64 %polly.indvar682, 1
  %exitcond1014.not = icmp eq i64 %polly.indvar_next683, 4
  br i1 %exitcond1014.not, label %polly.loop_exit681, label %polly.loop_header679
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
!46 = distinct !{!46, !12, !24, !47, !48, !49, !26, !50, !59}
!47 = !{!"llvm.loop.id", !"i"}
!48 = !{!"llvm.loop.tile.enable", i1 true}
!49 = !{!"llvm.loop.tile.depth", i32 3}
!50 = !{!"llvm.loop.tile.followup_floor", !51}
!51 = distinct !{!51, !12, !24, !52, !53, !54, !55, !56}
!52 = !{!"llvm.loop.id", !"i1"}
!53 = !{!"llvm.loop.interchange.enable", i1 true}
!54 = !{!"llvm.loop.interchange.depth", i32 5}
!55 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!56 = !{!"llvm.loop.interchange.followup_interchanged", !57}
!57 = distinct !{!57, !12, !24, !52, !43, !58, !45}
!58 = !{!"llvm.data.pack.array", !22}
!59 = !{!"llvm.loop.tile.followup_tile", !60}
!60 = distinct !{!60, !12, !24, !61}
!61 = !{!"llvm.loop.id", !"i2"}
!62 = distinct !{!62, !12, !13}
!63 = distinct !{!63, !12, !13}
!64 = distinct !{!64, !12, !13}
!65 = distinct !{!65, !12, !13}
!66 = !{!67, !67, i64 0}
!67 = !{!"any pointer", !4, i64 0}
!68 = distinct !{!68, !12}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !71, !"polly.alias.scope.MemRef_call"}
!71 = distinct !{!71, !"polly.alias.scope.domain"}
!72 = !{!73, !74, !75, !76}
!73 = distinct !{!73, !71, !"polly.alias.scope.MemRef_call1"}
!74 = distinct !{!74, !71, !"polly.alias.scope.MemRef_call2"}
!75 = distinct !{!75, !71, !"polly.alias.scope.Packed_MemRef_call1"}
!76 = distinct !{!76, !71, !"polly.alias.scope.Packed_MemRef_call2"}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !79, !13}
!79 = !{!"llvm.loop.unroll.runtime.disable"}
!80 = !{!70, !73, !75, !76}
!81 = !{!70, !74, !75, !76}
!82 = distinct !{!82, !83, !"polly.alias.scope.MemRef_call"}
!83 = distinct !{!83, !"polly.alias.scope.domain"}
!84 = !{!85, !86, !87, !88}
!85 = distinct !{!85, !83, !"polly.alias.scope.MemRef_call1"}
!86 = distinct !{!86, !83, !"polly.alias.scope.MemRef_call2"}
!87 = distinct !{!87, !83, !"polly.alias.scope.Packed_MemRef_call1"}
!88 = distinct !{!88, !83, !"polly.alias.scope.Packed_MemRef_call2"}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !79, !13}
!91 = !{!82, !85, !87, !88}
!92 = !{!82, !86, !87, !88}
!93 = distinct !{!93, !94, !"polly.alias.scope.MemRef_call"}
!94 = distinct !{!94, !"polly.alias.scope.domain"}
!95 = !{!96, !97, !98, !99}
!96 = distinct !{!96, !94, !"polly.alias.scope.MemRef_call1"}
!97 = distinct !{!97, !94, !"polly.alias.scope.MemRef_call2"}
!98 = distinct !{!98, !94, !"polly.alias.scope.Packed_MemRef_call1"}
!99 = distinct !{!99, !94, !"polly.alias.scope.Packed_MemRef_call2"}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !79, !13}
!102 = !{!93, !96, !98, !99}
!103 = !{!93, !97, !98, !99}
!104 = distinct !{!104, !105, !"polly.alias.scope.MemRef_call"}
!105 = distinct !{!105, !"polly.alias.scope.domain"}
!106 = !{!107, !108}
!107 = distinct !{!107, !105, !"polly.alias.scope.MemRef_call1"}
!108 = distinct !{!108, !105, !"polly.alias.scope.MemRef_call2"}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !79, !13}
!111 = !{!107, !104}
!112 = distinct !{!112, !13}
!113 = distinct !{!113, !79, !13}
!114 = !{!108, !104}
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !79, !13}
