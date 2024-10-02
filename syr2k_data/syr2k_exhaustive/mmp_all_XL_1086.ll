; ModuleID = 'syr2k_exhaustive/mmp_all_XL_1086.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_1086.c"
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
  %call915 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1767 = bitcast i8* %call1 to double*
  %polly.access.call1776 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2777 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1776, %call2
  %polly.access.call2796 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2796, %call1
  %2 = or i1 %0, %1
  %polly.access.call816 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call816, %call2
  %4 = icmp ule i8* %polly.access.call2796, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call816, %call1
  %8 = icmp ule i8* %polly.access.call1776, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header889, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1142 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1141 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1140 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1139 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1139, %scevgep1142
  %bound1 = icmp ult i8* %scevgep1141, %scevgep1140
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
  br i1 %exitcond18.not.i, label %vector.ph1146, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1146:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1153 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1154 = shufflevector <4 x i64> %broadcast.splatinsert1153, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1145

vector.body1145:                                  ; preds = %vector.body1145, %vector.ph1146
  %index1147 = phi i64 [ 0, %vector.ph1146 ], [ %index.next1148, %vector.body1145 ]
  %vec.ind1151 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1146 ], [ %vec.ind.next1152, %vector.body1145 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1151, %broadcast.splat1154
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call915, i64 %indvars.iv7.i, i64 %index1147
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1148 = add i64 %index1147, 4
  %vec.ind.next1152 = add <4 x i64> %vec.ind1151, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1148, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1145, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1145
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1146, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit950
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start540, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1209 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1209, label %for.body3.i46.preheader1364, label %vector.ph1210

vector.ph1210:                                    ; preds = %for.body3.i46.preheader
  %n.vec1212 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1208

vector.body1208:                                  ; preds = %vector.body1208, %vector.ph1210
  %index1213 = phi i64 [ 0, %vector.ph1210 ], [ %index.next1214, %vector.body1208 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call915, i64 %indvars.iv21.i, i64 %index1213
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1214 = add i64 %index1213, 4
  %46 = icmp eq i64 %index.next1214, %n.vec1212
  br i1 %46, label %middle.block1206, label %vector.body1208, !llvm.loop !18

middle.block1206:                                 ; preds = %vector.body1208
  %cmp.n1216 = icmp eq i64 %indvars.iv21.i, %n.vec1212
  br i1 %cmp.n1216, label %for.inc6.i, label %for.body3.i46.preheader1364

for.body3.i46.preheader1364:                      ; preds = %for.body3.i46.preheader, %middle.block1206
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1212, %middle.block1206 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1364, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1364 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call915, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1206, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call915, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting541
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start315, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1256 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1256, label %for.body3.i60.preheader1360, label %vector.ph1257

vector.ph1257:                                    ; preds = %for.body3.i60.preheader
  %n.vec1259 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %vector.ph1257
  %index1260 = phi i64 [ 0, %vector.ph1257 ], [ %index.next1261, %vector.body1255 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call915, i64 %indvars.iv21.i52, i64 %index1260
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1264 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1264, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1261 = add i64 %index1260, 4
  %57 = icmp eq i64 %index.next1261, %n.vec1259
  br i1 %57, label %middle.block1253, label %vector.body1255, !llvm.loop !64

middle.block1253:                                 ; preds = %vector.body1255
  %cmp.n1263 = icmp eq i64 %indvars.iv21.i52, %n.vec1259
  br i1 %cmp.n1263, label %for.inc6.i63, label %for.body3.i60.preheader1360

for.body3.i60.preheader1360:                      ; preds = %for.body3.i60.preheader, %middle.block1253
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1259, %middle.block1253 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1360, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1360 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call915, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call915, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting316
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1306 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1306, label %for.body3.i99.preheader1356, label %vector.ph1307

vector.ph1307:                                    ; preds = %for.body3.i99.preheader
  %n.vec1309 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1305

vector.body1305:                                  ; preds = %vector.body1305, %vector.ph1307
  %index1310 = phi i64 [ 0, %vector.ph1307 ], [ %index.next1311, %vector.body1305 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call915, i64 %indvars.iv21.i91, i64 %index1310
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1314 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1314, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1311 = add i64 %index1310, 4
  %68 = icmp eq i64 %index.next1311, %n.vec1309
  br i1 %68, label %middle.block1303, label %vector.body1305, !llvm.loop !66

middle.block1303:                                 ; preds = %vector.body1305
  %cmp.n1313 = icmp eq i64 %indvars.iv21.i91, %n.vec1309
  br i1 %cmp.n1313, label %for.inc6.i102, label %for.body3.i99.preheader1356

for.body3.i99.preheader1356:                      ; preds = %for.body3.i99.preheader, %middle.block1303
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1309, %middle.block1303 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1356, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1356 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call915, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1303, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call915, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call915, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1318 = phi i64 [ %indvar.next1319, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1318, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1320 = icmp ult i64 %88, 4
  br i1 %min.iters.check1320, label %polly.loop_header192.preheader, label %vector.ph1321

vector.ph1321:                                    ; preds = %polly.loop_header
  %n.vec1323 = and i64 %88, -4
  br label %vector.body1317

vector.body1317:                                  ; preds = %vector.body1317, %vector.ph1321
  %index1324 = phi i64 [ 0, %vector.ph1321 ], [ %index.next1325, %vector.body1317 ]
  %90 = shl nuw nsw i64 %index1324, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1328 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1328, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1325 = add i64 %index1324, 4
  %95 = icmp eq i64 %index.next1325, %n.vec1323
  br i1 %95, label %middle.block1315, label %vector.body1317, !llvm.loop !79

middle.block1315:                                 ; preds = %vector.body1317
  %cmp.n1327 = icmp eq i64 %88, %n.vec1323
  br i1 %cmp.n1327, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1315
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1323, %middle.block1315 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1315
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1319 = add i64 %indvar1318, 1
  br i1 %exitcond1031.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1030.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1030.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit224
  %indvars.iv1020 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1021, %polly.loop_exit224 ]
  %indvars.iv1016 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1017, %polly.loop_exit224 ]
  %indvars.iv1010 = phi i64 [ 96, %polly.loop_header200.preheader ], [ %indvars.iv.next1011, %polly.loop_exit224 ]
  %indvars.iv = phi i64 [ 1200, %polly.loop_header200.preheader ], [ %indvars.iv.next, %polly.loop_exit224 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %101, %polly.loop_exit224 ]
  %97 = shl nuw nsw i64 %polly.indvar203, 2
  %98 = mul nsw i64 %polly.indvar203, -4
  %99 = mul nsw i64 %polly.indvar203, -100
  %100 = mul nuw nsw i64 %polly.indvar203, 100
  br label %polly.loop_header206

polly.loop_exit224:                               ; preds = %polly.loop_exit274
  %101 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -100
  %indvars.iv.next1011 = add nsw i64 %indvars.iv1010, -4
  %indvars.iv.next1017 = add nuw nsw i64 %indvars.iv1016, 4
  %indvars.iv.next1021 = add nsw i64 %indvars.iv1020, -4
  %exitcond1029.not = icmp eq i64 %101, 12
  br i1 %exitcond1029.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit214, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_exit214 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar209, 1200
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_header212
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1009.not = icmp eq i64 %polly.indvar_next210, 1000
  br i1 %exitcond1009.not, label %polly.loop_header222.preheader, label %polly.loop_header206

polly.loop_header222.preheader:                   ; preds = %polly.loop_exit214
  %102 = add nsw i64 %99, 1199
  br label %polly.loop_header222

polly.loop_header212:                             ; preds = %polly.loop_header212, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_header212 ]
  %103 = add nuw nsw i64 %polly.indvar215, %100
  %polly.access.mul.call2219 = mul nuw nsw i64 %103, 1000
  %polly.access.add.call2220 = add nuw nsw i64 %polly.access.mul.call2219, %polly.indvar209
  %polly.access.call2221 = getelementptr double, double* %polly.access.cast.call2777, i64 %polly.access.add.call2220
  %polly.access.call2221.load = load double, double* %polly.access.call2221, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar215, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2221.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next216, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header222:                             ; preds = %polly.loop_header222.preheader, %polly.loop_exit274
  %indvar1332 = phi i64 [ 0, %polly.loop_header222.preheader ], [ %indvar.next1333, %polly.loop_exit274 ]
  %indvars.iv1022 = phi i64 [ %indvars.iv1020, %polly.loop_header222.preheader ], [ %indvars.iv.next1023, %polly.loop_exit274 ]
  %indvars.iv1018 = phi i64 [ %indvars.iv1016, %polly.loop_header222.preheader ], [ %indvars.iv.next1019, %polly.loop_exit274 ]
  %polly.indvar225 = phi i64 [ %polly.indvar203, %polly.loop_header222.preheader ], [ %polly.indvar_next226, %polly.loop_exit274 ]
  %104 = mul nsw i64 %indvar1332, -96
  %105 = add i64 %97, %104
  %smax1334 = call i64 @llvm.smax.i64(i64 %105, i64 0)
  %106 = mul nuw nsw i64 %indvar1332, 96
  %107 = add i64 %98, %106
  %108 = add i64 %smax1334, %107
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1018, i64 0)
  %109 = add i64 %smax, %indvars.iv1022
  %.not.not = icmp ugt i64 %polly.indvar225, %polly.indvar203
  %110 = mul nuw nsw i64 %polly.indvar225, 96
  %111 = add nsw i64 %110, %99
  %112 = add nsw i64 %111, -1
  %.inv = icmp sgt i64 %111, 99
  %113 = select i1 %.inv, i64 99, i64 %112
  %polly.loop_guard = icmp sgt i64 %113, -1
  %114 = add nsw i64 %111, 95
  %115 = icmp ult i64 %102, %114
  %116 = select i1 %115, i64 %102, i64 %114
  %polly.loop_guard248.not = icmp sgt i64 %111, %116
  br i1 %.not.not, label %polly.loop_header228.us, label %polly.loop_header228

polly.loop_header228.us:                          ; preds = %polly.loop_header222, %polly.merge.us
  %polly.indvar231.us = phi i64 [ %polly.indvar_next232.us, %polly.merge.us ], [ 0, %polly.loop_header222 ]
  br i1 %polly.loop_guard, label %polly.loop_header234.preheader.us, label %polly.loop_exit236.us

polly.loop_header234.us:                          ; preds = %polly.loop_header234.preheader.us, %polly.loop_header234.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_header234.us ], [ 0, %polly.loop_header234.preheader.us ]
  %117 = add nuw nsw i64 %polly.indvar237.us, %100
  %polly.access.mul.call1241.us = mul nuw nsw i64 %117, 1000
  %polly.access.add.call1242.us = add nuw nsw i64 %polly.access.mul.call1241.us, %polly.indvar231.us
  %polly.access.call1243.us = getelementptr double, double* %polly.access.cast.call1767, i64 %polly.access.add.call1242.us
  %polly.access.call1243.load.us = load double, double* %polly.access.call1243.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1243.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next238.us = add nuw i64 %polly.indvar237.us, 1
  %exitcond1014.not = icmp eq i64 %polly.indvar237.us, %113
  br i1 %exitcond1014.not, label %polly.loop_exit236.us, label %polly.loop_header234.us

polly.loop_exit236.us:                            ; preds = %polly.loop_header234.us, %polly.loop_header228.us
  br i1 %polly.loop_guard248.not, label %polly.merge.us, label %polly.loop_header245.preheader.us

polly.loop_header245.us:                          ; preds = %polly.loop_header245.preheader.us, %polly.loop_header245.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_header245.us ], [ %111, %polly.loop_header245.preheader.us ]
  %118 = add nsw i64 %polly.indvar249.us, %100
  %polly.access.mul.call1253.us = mul nuw nsw i64 %118, 1000
  %polly.access.add.call1254.us = add nuw nsw i64 %polly.access.mul.call1253.us, %polly.indvar231.us
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1767, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257.us = add nsw i64 %polly.indvar249.us, %polly.access.mul.Packed_MemRef_call1256.us
  %polly.access.Packed_MemRef_call1258.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1258.us, align 8
  %polly.indvar_next250.us = add nsw i64 %polly.indvar249.us, 1
  %polly.loop_cond251.not.not.us = icmp slt i64 %polly.indvar249.us, %116
  br i1 %polly.loop_cond251.not.not.us, label %polly.loop_header245.us, label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.loop_header245.us, %polly.loop_exit236.us
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %exitcond1015.not = icmp eq i64 %polly.indvar_next232.us, 1000
  br i1 %exitcond1015.not, label %polly.loop_header272.preheader, label %polly.loop_header228.us

polly.loop_header245.preheader.us:                ; preds = %polly.loop_exit236.us
  %polly.access.mul.Packed_MemRef_call1256.us = mul nuw nsw i64 %polly.indvar231.us, 1200
  br label %polly.loop_header245.us

polly.loop_header234.preheader.us:                ; preds = %polly.loop_header228.us
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar231.us, 1200
  br label %polly.loop_header234.us

polly.loop_exit274:                               ; preds = %polly.loop_exit281, %polly.loop_header272.preheader
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next1019 = add nsw i64 %indvars.iv1018, -96
  %indvars.iv.next1023 = add nsw i64 %indvars.iv1022, 96
  %exitcond1028.not = icmp eq i64 %polly.indvar_next226, 13
  %indvar.next1333 = add i64 %indvar1332, 1
  br i1 %exitcond1028.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header222, %polly.merge
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.merge ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1269 = mul nuw nsw i64 %polly.indvar231, 1200
  br label %polly.loop_header259

polly.merge:                                      ; preds = %polly.loop_header259
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond1013.not = icmp eq i64 %polly.indvar_next232, 1000
  br i1 %exitcond1013.not, label %polly.loop_header272.preheader, label %polly.loop_header228

polly.loop_header272.preheader:                   ; preds = %polly.merge, %polly.merge.us
  %119 = sub nsw i64 %100, %110
  %120 = icmp sgt i64 %119, 0
  %121 = select i1 %120, i64 %119, i64 0
  %122 = mul nsw i64 %polly.indvar225, -96
  %123 = icmp slt i64 %122, -1104
  %124 = select i1 %123, i64 %122, i64 -1104
  %125 = add nsw i64 %124, 1199
  %polly.loop_guard282.not = icmp sgt i64 %121, %125
  br i1 %polly.loop_guard282.not, label %polly.loop_exit274, label %polly.loop_header272

polly.loop_header259:                             ; preds = %polly.loop_header259, %polly.loop_header228
  %polly.indvar262 = phi i64 [ 0, %polly.loop_header228 ], [ %polly.indvar_next263, %polly.loop_header259 ]
  %126 = add nuw nsw i64 %polly.indvar262, %100
  %polly.access.mul.call1266 = mul nuw nsw i64 %126, 1000
  %polly.access.add.call1267 = add nuw nsw i64 %polly.access.mul.call1266, %polly.indvar231
  %polly.access.call1268 = getelementptr double, double* %polly.access.cast.call1767, i64 %polly.access.add.call1267
  %polly.access.call1268.load = load double, double* %polly.access.call1268, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1270 = add nuw nsw i64 %polly.indvar262, %polly.access.mul.Packed_MemRef_call1269
  %polly.access.Packed_MemRef_call1271 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1270
  store double %polly.access.call1268.load, double* %polly.access.Packed_MemRef_call1271, align 8
  %polly.indvar_next263 = add nuw nsw i64 %polly.indvar262, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar_next263, %indvars.iv1010
  br i1 %exitcond1012.not, label %polly.merge, label %polly.loop_header259

polly.loop_header272:                             ; preds = %polly.loop_header272.preheader, %polly.loop_exit281
  %polly.indvar275 = phi i64 [ %polly.indvar_next276, %polly.loop_exit281 ], [ 0, %polly.loop_header272.preheader ]
  %polly.access.mul.Packed_MemRef_call1294 = mul nuw nsw i64 %polly.indvar275, 1200
  br label %polly.loop_header279

polly.loop_exit281:                               ; preds = %polly.loop_exit289
  %polly.indvar_next276 = add nuw nsw i64 %polly.indvar275, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar_next276, 1000
  br i1 %exitcond1027.not, label %polly.loop_exit274, label %polly.loop_header272

polly.loop_header279:                             ; preds = %polly.loop_header272, %polly.loop_exit289
  %indvar1335 = phi i64 [ 0, %polly.loop_header272 ], [ %indvar.next1336, %polly.loop_exit289 ]
  %indvars.iv1024 = phi i64 [ %109, %polly.loop_header272 ], [ %indvars.iv.next1025, %polly.loop_exit289 ]
  %polly.indvar283 = phi i64 [ %121, %polly.loop_header272 ], [ %polly.indvar_next284, %polly.loop_exit289 ]
  %127 = add i64 %108, %indvar1335
  %smin1337 = call i64 @llvm.smin.i64(i64 %127, i64 99)
  %128 = add nsw i64 %smin1337, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1024, i64 99)
  %129 = add nuw i64 %polly.indvar283, %110
  %130 = add i64 %129, %99
  %polly.loop_guard2901125 = icmp sgt i64 %130, -1
  br i1 %polly.loop_guard2901125, label %polly.loop_header287.preheader, label %polly.loop_exit289

polly.loop_header287.preheader:                   ; preds = %polly.loop_header279
  %polly.access.add.Packed_MemRef_call2299 = add nsw i64 %polly.access.mul.Packed_MemRef_call1294, %130
  %polly.access.Packed_MemRef_call2300 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2299
  %_p_scalar_301 = load double, double* %polly.access.Packed_MemRef_call2300, align 8
  %polly.access.Packed_MemRef_call1308 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2299
  %_p_scalar_309 = load double, double* %polly.access.Packed_MemRef_call1308, align 8
  %131 = mul i64 %129, 9600
  %min.iters.check1338 = icmp ult i64 %128, 4
  br i1 %min.iters.check1338, label %polly.loop_header287.preheader1353, label %vector.ph1339

vector.ph1339:                                    ; preds = %polly.loop_header287.preheader
  %n.vec1341 = and i64 %128, -4
  %broadcast.splatinsert1347 = insertelement <4 x double> poison, double %_p_scalar_301, i32 0
  %broadcast.splat1348 = shufflevector <4 x double> %broadcast.splatinsert1347, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1350 = insertelement <4 x double> poison, double %_p_scalar_309, i32 0
  %broadcast.splat1351 = shufflevector <4 x double> %broadcast.splatinsert1350, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1331

vector.body1331:                                  ; preds = %vector.body1331, %vector.ph1339
  %index1342 = phi i64 [ 0, %vector.ph1339 ], [ %index.next1343, %vector.body1331 ]
  %132 = add nuw nsw i64 %index1342, %100
  %133 = add nuw nsw i64 %index1342, %polly.access.mul.Packed_MemRef_call1294
  %134 = getelementptr double, double* %Packed_MemRef_call1, i64 %133
  %135 = bitcast double* %134 to <4 x double>*
  %wide.load1346 = load <4 x double>, <4 x double>* %135, align 8
  %136 = fmul fast <4 x double> %broadcast.splat1348, %wide.load1346
  %137 = getelementptr double, double* %Packed_MemRef_call2, i64 %133
  %138 = bitcast double* %137 to <4 x double>*
  %wide.load1349 = load <4 x double>, <4 x double>* %138, align 8
  %139 = fmul fast <4 x double> %broadcast.splat1351, %wide.load1349
  %140 = shl i64 %132, 3
  %141 = add i64 %140, %131
  %142 = getelementptr i8, i8* %call, i64 %141
  %143 = bitcast i8* %142 to <4 x double>*
  %wide.load1352 = load <4 x double>, <4 x double>* %143, align 8, !alias.scope !72, !noalias !74
  %144 = fadd fast <4 x double> %139, %136
  %145 = fmul fast <4 x double> %144, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %146 = fadd fast <4 x double> %145, %wide.load1352
  %147 = bitcast i8* %142 to <4 x double>*
  store <4 x double> %146, <4 x double>* %147, align 8, !alias.scope !72, !noalias !74
  %index.next1343 = add i64 %index1342, 4
  %148 = icmp eq i64 %index.next1343, %n.vec1341
  br i1 %148, label %middle.block1329, label %vector.body1331, !llvm.loop !84

middle.block1329:                                 ; preds = %vector.body1331
  %cmp.n1345 = icmp eq i64 %128, %n.vec1341
  br i1 %cmp.n1345, label %polly.loop_exit289, label %polly.loop_header287.preheader1353

polly.loop_header287.preheader1353:               ; preds = %polly.loop_header287.preheader, %middle.block1329
  %polly.indvar291.ph = phi i64 [ 0, %polly.loop_header287.preheader ], [ %n.vec1341, %middle.block1329 ]
  br label %polly.loop_header287

polly.loop_exit289:                               ; preds = %polly.loop_header287, %middle.block1329, %polly.loop_header279
  %polly.indvar_next284 = add nuw nsw i64 %polly.indvar283, 1
  %polly.loop_cond285.not.not = icmp slt i64 %polly.indvar283, %125
  %indvars.iv.next1025 = add i64 %indvars.iv1024, 1
  %indvar.next1336 = add i64 %indvar1335, 1
  br i1 %polly.loop_cond285.not.not, label %polly.loop_header279, label %polly.loop_exit281

polly.loop_header287:                             ; preds = %polly.loop_header287.preheader1353, %polly.loop_header287
  %polly.indvar291 = phi i64 [ %polly.indvar_next292, %polly.loop_header287 ], [ %polly.indvar291.ph, %polly.loop_header287.preheader1353 ]
  %149 = add nuw nsw i64 %polly.indvar291, %100
  %polly.access.add.Packed_MemRef_call1295 = add nuw nsw i64 %polly.indvar291, %polly.access.mul.Packed_MemRef_call1294
  %polly.access.Packed_MemRef_call1296 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1295
  %_p_scalar_297 = load double, double* %polly.access.Packed_MemRef_call1296, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_301, %_p_scalar_297
  %polly.access.Packed_MemRef_call2304 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1295
  %_p_scalar_305 = load double, double* %polly.access.Packed_MemRef_call2304, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_309, %_p_scalar_305
  %150 = shl i64 %149, 3
  %151 = add i64 %150, %131
  %scevgep310 = getelementptr i8, i8* %call, i64 %151
  %scevgep310311 = bitcast i8* %scevgep310 to double*
  %_p_scalar_312 = load double, double* %scevgep310311, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_312
  store double %p_add42.i118, double* %scevgep310311, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next292 = add nuw nsw i64 %polly.indvar291, 1
  %exitcond1026.not = icmp eq i64 %polly.indvar291, %smin
  br i1 %exitcond1026.not, label %polly.loop_exit289, label %polly.loop_header287, !llvm.loop !85

polly.start315:                                   ; preds = %kernel_syr2k.exit
  %malloccall317 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall319 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header403

polly.exiting316:                                 ; preds = %polly.loop_exit443
  tail call void @free(i8* %malloccall317)
  tail call void @free(i8* %malloccall319)
  br label %kernel_syr2k.exit90

polly.loop_header403:                             ; preds = %polly.loop_exit411, %polly.start315
  %indvar1268 = phi i64 [ %indvar.next1269, %polly.loop_exit411 ], [ 0, %polly.start315 ]
  %polly.indvar406 = phi i64 [ %polly.indvar_next407, %polly.loop_exit411 ], [ 1, %polly.start315 ]
  %152 = add i64 %indvar1268, 1
  %153 = mul nuw nsw i64 %polly.indvar406, 9600
  %scevgep415 = getelementptr i8, i8* %call, i64 %153
  %min.iters.check1270 = icmp ult i64 %152, 4
  br i1 %min.iters.check1270, label %polly.loop_header409.preheader, label %vector.ph1271

vector.ph1271:                                    ; preds = %polly.loop_header403
  %n.vec1273 = and i64 %152, -4
  br label %vector.body1267

vector.body1267:                                  ; preds = %vector.body1267, %vector.ph1271
  %index1274 = phi i64 [ 0, %vector.ph1271 ], [ %index.next1275, %vector.body1267 ]
  %154 = shl nuw nsw i64 %index1274, 3
  %155 = getelementptr i8, i8* %scevgep415, i64 %154
  %156 = bitcast i8* %155 to <4 x double>*
  %wide.load1278 = load <4 x double>, <4 x double>* %156, align 8, !alias.scope !86, !noalias !88
  %157 = fmul fast <4 x double> %wide.load1278, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %158 = bitcast i8* %155 to <4 x double>*
  store <4 x double> %157, <4 x double>* %158, align 8, !alias.scope !86, !noalias !88
  %index.next1275 = add i64 %index1274, 4
  %159 = icmp eq i64 %index.next1275, %n.vec1273
  br i1 %159, label %middle.block1265, label %vector.body1267, !llvm.loop !93

middle.block1265:                                 ; preds = %vector.body1267
  %cmp.n1277 = icmp eq i64 %152, %n.vec1273
  br i1 %cmp.n1277, label %polly.loop_exit411, label %polly.loop_header409.preheader

polly.loop_header409.preheader:                   ; preds = %polly.loop_header403, %middle.block1265
  %polly.indvar412.ph = phi i64 [ 0, %polly.loop_header403 ], [ %n.vec1273, %middle.block1265 ]
  br label %polly.loop_header409

polly.loop_exit411:                               ; preds = %polly.loop_header409, %middle.block1265
  %polly.indvar_next407 = add nuw nsw i64 %polly.indvar406, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar_next407, 1200
  %indvar.next1269 = add i64 %indvar1268, 1
  br i1 %exitcond1059.not, label %polly.loop_header419.preheader, label %polly.loop_header403

polly.loop_header419.preheader:                   ; preds = %polly.loop_exit411
  %Packed_MemRef_call1318 = bitcast i8* %malloccall317 to double*
  %Packed_MemRef_call2320 = bitcast i8* %malloccall319 to double*
  br label %polly.loop_header419

polly.loop_header409:                             ; preds = %polly.loop_header409.preheader, %polly.loop_header409
  %polly.indvar412 = phi i64 [ %polly.indvar_next413, %polly.loop_header409 ], [ %polly.indvar412.ph, %polly.loop_header409.preheader ]
  %160 = shl nuw nsw i64 %polly.indvar412, 3
  %scevgep416 = getelementptr i8, i8* %scevgep415, i64 %160
  %scevgep416417 = bitcast i8* %scevgep416 to double*
  %_p_scalar_418 = load double, double* %scevgep416417, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_418, 1.200000e+00
  store double %p_mul.i57, double* %scevgep416417, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next413 = add nuw nsw i64 %polly.indvar412, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar_next413, %polly.indvar406
  br i1 %exitcond1058.not, label %polly.loop_exit411, label %polly.loop_header409, !llvm.loop !94

polly.loop_header419:                             ; preds = %polly.loop_header419.preheader, %polly.loop_exit443
  %indvars.iv1047 = phi i64 [ 0, %polly.loop_header419.preheader ], [ %indvars.iv.next1048, %polly.loop_exit443 ]
  %indvars.iv1042 = phi i64 [ 0, %polly.loop_header419.preheader ], [ %indvars.iv.next1043, %polly.loop_exit443 ]
  %indvars.iv1036 = phi i64 [ 96, %polly.loop_header419.preheader ], [ %indvars.iv.next1037, %polly.loop_exit443 ]
  %indvars.iv1032 = phi i64 [ 1200, %polly.loop_header419.preheader ], [ %indvars.iv.next1033, %polly.loop_exit443 ]
  %polly.indvar422 = phi i64 [ 0, %polly.loop_header419.preheader ], [ %165, %polly.loop_exit443 ]
  %161 = shl nuw nsw i64 %polly.indvar422, 2
  %162 = mul nsw i64 %polly.indvar422, -4
  %163 = mul nsw i64 %polly.indvar422, -100
  %164 = mul nuw nsw i64 %polly.indvar422, 100
  br label %polly.loop_header425

polly.loop_exit443:                               ; preds = %polly.loop_exit499
  %165 = add nuw nsw i64 %polly.indvar422, 1
  %indvars.iv.next1033 = add nsw i64 %indvars.iv1032, -100
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, -4
  %indvars.iv.next1043 = add nuw nsw i64 %indvars.iv1042, 4
  %indvars.iv.next1048 = add nsw i64 %indvars.iv1047, -4
  %exitcond1057.not = icmp eq i64 %165, 12
  br i1 %exitcond1057.not, label %polly.exiting316, label %polly.loop_header419

polly.loop_header425:                             ; preds = %polly.loop_exit433, %polly.loop_header419
  %polly.indvar428 = phi i64 [ 0, %polly.loop_header419 ], [ %polly.indvar_next429, %polly.loop_exit433 ]
  %polly.access.mul.Packed_MemRef_call2320 = mul nuw nsw i64 %polly.indvar428, 1200
  br label %polly.loop_header431

polly.loop_exit433:                               ; preds = %polly.loop_header431
  %polly.indvar_next429 = add nuw nsw i64 %polly.indvar428, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar_next429, 1000
  br i1 %exitcond1035.not, label %polly.loop_header441.preheader, label %polly.loop_header425

polly.loop_header441.preheader:                   ; preds = %polly.loop_exit433
  %166 = add nsw i64 %163, 1199
  br label %polly.loop_header441

polly.loop_header431:                             ; preds = %polly.loop_header431, %polly.loop_header425
  %polly.indvar434 = phi i64 [ 0, %polly.loop_header425 ], [ %polly.indvar_next435, %polly.loop_header431 ]
  %167 = add nuw nsw i64 %polly.indvar434, %164
  %polly.access.mul.call2438 = mul nuw nsw i64 %167, 1000
  %polly.access.add.call2439 = add nuw nsw i64 %polly.access.mul.call2438, %polly.indvar428
  %polly.access.call2440 = getelementptr double, double* %polly.access.cast.call2777, i64 %polly.access.add.call2439
  %polly.access.call2440.load = load double, double* %polly.access.call2440, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2320 = add nuw nsw i64 %polly.indvar434, %polly.access.mul.Packed_MemRef_call2320
  %polly.access.Packed_MemRef_call2320 = getelementptr double, double* %Packed_MemRef_call2320, i64 %polly.access.add.Packed_MemRef_call2320
  store double %polly.access.call2440.load, double* %polly.access.Packed_MemRef_call2320, align 8
  %polly.indvar_next435 = add nuw nsw i64 %polly.indvar434, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next435, %indvars.iv1032
  br i1 %exitcond1034.not, label %polly.loop_exit433, label %polly.loop_header431

polly.loop_header441:                             ; preds = %polly.loop_header441.preheader, %polly.loop_exit499
  %indvar1282 = phi i64 [ 0, %polly.loop_header441.preheader ], [ %indvar.next1283, %polly.loop_exit499 ]
  %indvars.iv1049 = phi i64 [ %indvars.iv1047, %polly.loop_header441.preheader ], [ %indvars.iv.next1050, %polly.loop_exit499 ]
  %indvars.iv1044 = phi i64 [ %indvars.iv1042, %polly.loop_header441.preheader ], [ %indvars.iv.next1045, %polly.loop_exit499 ]
  %polly.indvar444 = phi i64 [ %polly.indvar422, %polly.loop_header441.preheader ], [ %polly.indvar_next445, %polly.loop_exit499 ]
  %168 = mul nsw i64 %indvar1282, -96
  %169 = add i64 %161, %168
  %smax1284 = call i64 @llvm.smax.i64(i64 %169, i64 0)
  %170 = mul nuw nsw i64 %indvar1282, 96
  %171 = add i64 %162, %170
  %172 = add i64 %smax1284, %171
  %smax1046 = call i64 @llvm.smax.i64(i64 %indvars.iv1044, i64 0)
  %173 = add i64 %smax1046, %indvars.iv1049
  %.not.not969 = icmp ugt i64 %polly.indvar444, %polly.indvar422
  %174 = mul nuw nsw i64 %polly.indvar444, 96
  %175 = add nsw i64 %174, %163
  %176 = add nsw i64 %175, -1
  %.inv970 = icmp sgt i64 %175, 99
  %177 = select i1 %.inv970, i64 99, i64 %176
  %polly.loop_guard461 = icmp sgt i64 %177, -1
  %178 = add nsw i64 %175, 95
  %179 = icmp ult i64 %166, %178
  %180 = select i1 %179, i64 %166, i64 %178
  %polly.loop_guard473.not = icmp sgt i64 %175, %180
  br i1 %.not.not969, label %polly.loop_header447.us, label %polly.loop_header447

polly.loop_header447.us:                          ; preds = %polly.loop_header441, %polly.merge454.us
  %polly.indvar450.us = phi i64 [ %polly.indvar_next451.us, %polly.merge454.us ], [ 0, %polly.loop_header441 ]
  br i1 %polly.loop_guard461, label %polly.loop_header458.preheader.us, label %polly.loop_exit460.us

polly.loop_header458.us:                          ; preds = %polly.loop_header458.preheader.us, %polly.loop_header458.us
  %polly.indvar462.us = phi i64 [ %polly.indvar_next463.us, %polly.loop_header458.us ], [ 0, %polly.loop_header458.preheader.us ]
  %181 = add nuw nsw i64 %polly.indvar462.us, %164
  %polly.access.mul.call1466.us = mul nuw nsw i64 %181, 1000
  %polly.access.add.call1467.us = add nuw nsw i64 %polly.access.mul.call1466.us, %polly.indvar450.us
  %polly.access.call1468.us = getelementptr double, double* %polly.access.cast.call1767, i64 %polly.access.add.call1467.us
  %polly.access.call1468.load.us = load double, double* %polly.access.call1468.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1318.us = add nuw nsw i64 %polly.indvar462.us, %polly.access.mul.Packed_MemRef_call1318.us
  %polly.access.Packed_MemRef_call1318.us = getelementptr double, double* %Packed_MemRef_call1318, i64 %polly.access.add.Packed_MemRef_call1318.us
  store double %polly.access.call1468.load.us, double* %polly.access.Packed_MemRef_call1318.us, align 8
  %polly.indvar_next463.us = add nuw i64 %polly.indvar462.us, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar462.us, %177
  br i1 %exitcond1040.not, label %polly.loop_exit460.us, label %polly.loop_header458.us

polly.loop_exit460.us:                            ; preds = %polly.loop_header458.us, %polly.loop_header447.us
  br i1 %polly.loop_guard473.not, label %polly.merge454.us, label %polly.loop_header470.preheader.us

polly.loop_header470.us:                          ; preds = %polly.loop_header470.preheader.us, %polly.loop_header470.us
  %polly.indvar474.us = phi i64 [ %polly.indvar_next475.us, %polly.loop_header470.us ], [ %175, %polly.loop_header470.preheader.us ]
  %182 = add nsw i64 %polly.indvar474.us, %164
  %polly.access.mul.call1478.us = mul nuw nsw i64 %182, 1000
  %polly.access.add.call1479.us = add nuw nsw i64 %polly.access.mul.call1478.us, %polly.indvar450.us
  %polly.access.call1480.us = getelementptr double, double* %polly.access.cast.call1767, i64 %polly.access.add.call1479.us
  %polly.access.call1480.load.us = load double, double* %polly.access.call1480.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1318482.us = add nsw i64 %polly.indvar474.us, %polly.access.mul.Packed_MemRef_call1318481.us
  %polly.access.Packed_MemRef_call1318483.us = getelementptr double, double* %Packed_MemRef_call1318, i64 %polly.access.add.Packed_MemRef_call1318482.us
  store double %polly.access.call1480.load.us, double* %polly.access.Packed_MemRef_call1318483.us, align 8
  %polly.indvar_next475.us = add nsw i64 %polly.indvar474.us, 1
  %polly.loop_cond476.not.not.us = icmp slt i64 %polly.indvar474.us, %180
  br i1 %polly.loop_cond476.not.not.us, label %polly.loop_header470.us, label %polly.merge454.us

polly.merge454.us:                                ; preds = %polly.loop_header470.us, %polly.loop_exit460.us
  %polly.indvar_next451.us = add nuw nsw i64 %polly.indvar450.us, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar_next451.us, 1000
  br i1 %exitcond1041.not, label %polly.loop_header497.preheader, label %polly.loop_header447.us

polly.loop_header470.preheader.us:                ; preds = %polly.loop_exit460.us
  %polly.access.mul.Packed_MemRef_call1318481.us = mul nuw nsw i64 %polly.indvar450.us, 1200
  br label %polly.loop_header470.us

polly.loop_header458.preheader.us:                ; preds = %polly.loop_header447.us
  %polly.access.mul.Packed_MemRef_call1318.us = mul nuw nsw i64 %polly.indvar450.us, 1200
  br label %polly.loop_header458.us

polly.loop_exit499:                               ; preds = %polly.loop_exit506, %polly.loop_header497.preheader
  %polly.indvar_next445 = add nuw nsw i64 %polly.indvar444, 1
  %indvars.iv.next1045 = add nsw i64 %indvars.iv1044, -96
  %indvars.iv.next1050 = add nsw i64 %indvars.iv1049, 96
  %exitcond1056.not = icmp eq i64 %polly.indvar_next445, 13
  %indvar.next1283 = add i64 %indvar1282, 1
  br i1 %exitcond1056.not, label %polly.loop_exit443, label %polly.loop_header441

polly.loop_header447:                             ; preds = %polly.loop_header441, %polly.merge454
  %polly.indvar450 = phi i64 [ %polly.indvar_next451, %polly.merge454 ], [ 0, %polly.loop_header441 ]
  %polly.access.mul.Packed_MemRef_call1318494 = mul nuw nsw i64 %polly.indvar450, 1200
  br label %polly.loop_header484

polly.merge454:                                   ; preds = %polly.loop_header484
  %polly.indvar_next451 = add nuw nsw i64 %polly.indvar450, 1
  %exitcond1039.not = icmp eq i64 %polly.indvar_next451, 1000
  br i1 %exitcond1039.not, label %polly.loop_header497.preheader, label %polly.loop_header447

polly.loop_header497.preheader:                   ; preds = %polly.merge454, %polly.merge454.us
  %183 = sub nsw i64 %164, %174
  %184 = icmp sgt i64 %183, 0
  %185 = select i1 %184, i64 %183, i64 0
  %186 = mul nsw i64 %polly.indvar444, -96
  %187 = icmp slt i64 %186, -1104
  %188 = select i1 %187, i64 %186, i64 -1104
  %189 = add nsw i64 %188, 1199
  %polly.loop_guard507.not = icmp sgt i64 %185, %189
  br i1 %polly.loop_guard507.not, label %polly.loop_exit499, label %polly.loop_header497

polly.loop_header484:                             ; preds = %polly.loop_header484, %polly.loop_header447
  %polly.indvar487 = phi i64 [ 0, %polly.loop_header447 ], [ %polly.indvar_next488, %polly.loop_header484 ]
  %190 = add nuw nsw i64 %polly.indvar487, %164
  %polly.access.mul.call1491 = mul nuw nsw i64 %190, 1000
  %polly.access.add.call1492 = add nuw nsw i64 %polly.access.mul.call1491, %polly.indvar450
  %polly.access.call1493 = getelementptr double, double* %polly.access.cast.call1767, i64 %polly.access.add.call1492
  %polly.access.call1493.load = load double, double* %polly.access.call1493, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1318495 = add nuw nsw i64 %polly.indvar487, %polly.access.mul.Packed_MemRef_call1318494
  %polly.access.Packed_MemRef_call1318496 = getelementptr double, double* %Packed_MemRef_call1318, i64 %polly.access.add.Packed_MemRef_call1318495
  store double %polly.access.call1493.load, double* %polly.access.Packed_MemRef_call1318496, align 8
  %polly.indvar_next488 = add nuw nsw i64 %polly.indvar487, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar_next488, %indvars.iv1036
  br i1 %exitcond1038.not, label %polly.merge454, label %polly.loop_header484

polly.loop_header497:                             ; preds = %polly.loop_header497.preheader, %polly.loop_exit506
  %polly.indvar500 = phi i64 [ %polly.indvar_next501, %polly.loop_exit506 ], [ 0, %polly.loop_header497.preheader ]
  %polly.access.mul.Packed_MemRef_call1318519 = mul nuw nsw i64 %polly.indvar500, 1200
  br label %polly.loop_header504

polly.loop_exit506:                               ; preds = %polly.loop_exit514
  %polly.indvar_next501 = add nuw nsw i64 %polly.indvar500, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar_next501, 1000
  br i1 %exitcond1055.not, label %polly.loop_exit499, label %polly.loop_header497

polly.loop_header504:                             ; preds = %polly.loop_header497, %polly.loop_exit514
  %indvar1285 = phi i64 [ 0, %polly.loop_header497 ], [ %indvar.next1286, %polly.loop_exit514 ]
  %indvars.iv1051 = phi i64 [ %173, %polly.loop_header497 ], [ %indvars.iv.next1052, %polly.loop_exit514 ]
  %polly.indvar508 = phi i64 [ %185, %polly.loop_header497 ], [ %polly.indvar_next509, %polly.loop_exit514 ]
  %191 = add i64 %172, %indvar1285
  %smin1287 = call i64 @llvm.smin.i64(i64 %191, i64 99)
  %192 = add nsw i64 %smin1287, 1
  %smin1053 = call i64 @llvm.smin.i64(i64 %indvars.iv1051, i64 99)
  %193 = add nuw i64 %polly.indvar508, %174
  %194 = add i64 %193, %163
  %polly.loop_guard5151126 = icmp sgt i64 %194, -1
  br i1 %polly.loop_guard5151126, label %polly.loop_header512.preheader, label %polly.loop_exit514

polly.loop_header512.preheader:                   ; preds = %polly.loop_header504
  %polly.access.add.Packed_MemRef_call2320524 = add nsw i64 %polly.access.mul.Packed_MemRef_call1318519, %194
  %polly.access.Packed_MemRef_call2320525 = getelementptr double, double* %Packed_MemRef_call2320, i64 %polly.access.add.Packed_MemRef_call2320524
  %_p_scalar_526 = load double, double* %polly.access.Packed_MemRef_call2320525, align 8
  %polly.access.Packed_MemRef_call1318533 = getelementptr double, double* %Packed_MemRef_call1318, i64 %polly.access.add.Packed_MemRef_call2320524
  %_p_scalar_534 = load double, double* %polly.access.Packed_MemRef_call1318533, align 8
  %195 = mul i64 %193, 9600
  %min.iters.check1288 = icmp ult i64 %192, 4
  br i1 %min.iters.check1288, label %polly.loop_header512.preheader1357, label %vector.ph1289

vector.ph1289:                                    ; preds = %polly.loop_header512.preheader
  %n.vec1291 = and i64 %192, -4
  %broadcast.splatinsert1297 = insertelement <4 x double> poison, double %_p_scalar_526, i32 0
  %broadcast.splat1298 = shufflevector <4 x double> %broadcast.splatinsert1297, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1300 = insertelement <4 x double> poison, double %_p_scalar_534, i32 0
  %broadcast.splat1301 = shufflevector <4 x double> %broadcast.splatinsert1300, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1281

vector.body1281:                                  ; preds = %vector.body1281, %vector.ph1289
  %index1292 = phi i64 [ 0, %vector.ph1289 ], [ %index.next1293, %vector.body1281 ]
  %196 = add nuw nsw i64 %index1292, %164
  %197 = add nuw nsw i64 %index1292, %polly.access.mul.Packed_MemRef_call1318519
  %198 = getelementptr double, double* %Packed_MemRef_call1318, i64 %197
  %199 = bitcast double* %198 to <4 x double>*
  %wide.load1296 = load <4 x double>, <4 x double>* %199, align 8
  %200 = fmul fast <4 x double> %broadcast.splat1298, %wide.load1296
  %201 = getelementptr double, double* %Packed_MemRef_call2320, i64 %197
  %202 = bitcast double* %201 to <4 x double>*
  %wide.load1299 = load <4 x double>, <4 x double>* %202, align 8
  %203 = fmul fast <4 x double> %broadcast.splat1301, %wide.load1299
  %204 = shl i64 %196, 3
  %205 = add i64 %204, %195
  %206 = getelementptr i8, i8* %call, i64 %205
  %207 = bitcast i8* %206 to <4 x double>*
  %wide.load1302 = load <4 x double>, <4 x double>* %207, align 8, !alias.scope !86, !noalias !88
  %208 = fadd fast <4 x double> %203, %200
  %209 = fmul fast <4 x double> %208, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %210 = fadd fast <4 x double> %209, %wide.load1302
  %211 = bitcast i8* %206 to <4 x double>*
  store <4 x double> %210, <4 x double>* %211, align 8, !alias.scope !86, !noalias !88
  %index.next1293 = add i64 %index1292, 4
  %212 = icmp eq i64 %index.next1293, %n.vec1291
  br i1 %212, label %middle.block1279, label %vector.body1281, !llvm.loop !97

middle.block1279:                                 ; preds = %vector.body1281
  %cmp.n1295 = icmp eq i64 %192, %n.vec1291
  br i1 %cmp.n1295, label %polly.loop_exit514, label %polly.loop_header512.preheader1357

polly.loop_header512.preheader1357:               ; preds = %polly.loop_header512.preheader, %middle.block1279
  %polly.indvar516.ph = phi i64 [ 0, %polly.loop_header512.preheader ], [ %n.vec1291, %middle.block1279 ]
  br label %polly.loop_header512

polly.loop_exit514:                               ; preds = %polly.loop_header512, %middle.block1279, %polly.loop_header504
  %polly.indvar_next509 = add nuw nsw i64 %polly.indvar508, 1
  %polly.loop_cond510.not.not = icmp slt i64 %polly.indvar508, %189
  %indvars.iv.next1052 = add i64 %indvars.iv1051, 1
  %indvar.next1286 = add i64 %indvar1285, 1
  br i1 %polly.loop_cond510.not.not, label %polly.loop_header504, label %polly.loop_exit506

polly.loop_header512:                             ; preds = %polly.loop_header512.preheader1357, %polly.loop_header512
  %polly.indvar516 = phi i64 [ %polly.indvar_next517, %polly.loop_header512 ], [ %polly.indvar516.ph, %polly.loop_header512.preheader1357 ]
  %213 = add nuw nsw i64 %polly.indvar516, %164
  %polly.access.add.Packed_MemRef_call1318520 = add nuw nsw i64 %polly.indvar516, %polly.access.mul.Packed_MemRef_call1318519
  %polly.access.Packed_MemRef_call1318521 = getelementptr double, double* %Packed_MemRef_call1318, i64 %polly.access.add.Packed_MemRef_call1318520
  %_p_scalar_522 = load double, double* %polly.access.Packed_MemRef_call1318521, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_526, %_p_scalar_522
  %polly.access.Packed_MemRef_call2320529 = getelementptr double, double* %Packed_MemRef_call2320, i64 %polly.access.add.Packed_MemRef_call1318520
  %_p_scalar_530 = load double, double* %polly.access.Packed_MemRef_call2320529, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_534, %_p_scalar_530
  %214 = shl i64 %213, 3
  %215 = add i64 %214, %195
  %scevgep535 = getelementptr i8, i8* %call, i64 %215
  %scevgep535536 = bitcast i8* %scevgep535 to double*
  %_p_scalar_537 = load double, double* %scevgep535536, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_537
  store double %p_add42.i79, double* %scevgep535536, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next517 = add nuw nsw i64 %polly.indvar516, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar516, %smin1053
  br i1 %exitcond1054.not, label %polly.loop_exit514, label %polly.loop_header512, !llvm.loop !98

polly.start540:                                   ; preds = %init_array.exit
  %malloccall542 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall544 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header628

polly.exiting541:                                 ; preds = %polly.loop_exit668
  tail call void @free(i8* %malloccall542)
  tail call void @free(i8* %malloccall544)
  br label %kernel_syr2k.exit

polly.loop_header628:                             ; preds = %polly.loop_exit636, %polly.start540
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit636 ], [ 0, %polly.start540 ]
  %polly.indvar631 = phi i64 [ %polly.indvar_next632, %polly.loop_exit636 ], [ 1, %polly.start540 ]
  %216 = add i64 %indvar, 1
  %217 = mul nuw nsw i64 %polly.indvar631, 9600
  %scevgep640 = getelementptr i8, i8* %call, i64 %217
  %min.iters.check1220 = icmp ult i64 %216, 4
  br i1 %min.iters.check1220, label %polly.loop_header634.preheader, label %vector.ph1221

vector.ph1221:                                    ; preds = %polly.loop_header628
  %n.vec1223 = and i64 %216, -4
  br label %vector.body1219

vector.body1219:                                  ; preds = %vector.body1219, %vector.ph1221
  %index1224 = phi i64 [ 0, %vector.ph1221 ], [ %index.next1225, %vector.body1219 ]
  %218 = shl nuw nsw i64 %index1224, 3
  %219 = getelementptr i8, i8* %scevgep640, i64 %218
  %220 = bitcast i8* %219 to <4 x double>*
  %wide.load1228 = load <4 x double>, <4 x double>* %220, align 8, !alias.scope !99, !noalias !101
  %221 = fmul fast <4 x double> %wide.load1228, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %222 = bitcast i8* %219 to <4 x double>*
  store <4 x double> %221, <4 x double>* %222, align 8, !alias.scope !99, !noalias !101
  %index.next1225 = add i64 %index1224, 4
  %223 = icmp eq i64 %index.next1225, %n.vec1223
  br i1 %223, label %middle.block1217, label %vector.body1219, !llvm.loop !106

middle.block1217:                                 ; preds = %vector.body1219
  %cmp.n1227 = icmp eq i64 %216, %n.vec1223
  br i1 %cmp.n1227, label %polly.loop_exit636, label %polly.loop_header634.preheader

polly.loop_header634.preheader:                   ; preds = %polly.loop_header628, %middle.block1217
  %polly.indvar637.ph = phi i64 [ 0, %polly.loop_header628 ], [ %n.vec1223, %middle.block1217 ]
  br label %polly.loop_header634

polly.loop_exit636:                               ; preds = %polly.loop_header634, %middle.block1217
  %polly.indvar_next632 = add nuw nsw i64 %polly.indvar631, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar_next632, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1087.not, label %polly.loop_header644.preheader, label %polly.loop_header628

polly.loop_header644.preheader:                   ; preds = %polly.loop_exit636
  %Packed_MemRef_call1543 = bitcast i8* %malloccall542 to double*
  %Packed_MemRef_call2545 = bitcast i8* %malloccall544 to double*
  br label %polly.loop_header644

polly.loop_header634:                             ; preds = %polly.loop_header634.preheader, %polly.loop_header634
  %polly.indvar637 = phi i64 [ %polly.indvar_next638, %polly.loop_header634 ], [ %polly.indvar637.ph, %polly.loop_header634.preheader ]
  %224 = shl nuw nsw i64 %polly.indvar637, 3
  %scevgep641 = getelementptr i8, i8* %scevgep640, i64 %224
  %scevgep641642 = bitcast i8* %scevgep641 to double*
  %_p_scalar_643 = load double, double* %scevgep641642, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_643, 1.200000e+00
  store double %p_mul.i, double* %scevgep641642, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next638 = add nuw nsw i64 %polly.indvar637, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar_next638, %polly.indvar631
  br i1 %exitcond1086.not, label %polly.loop_exit636, label %polly.loop_header634, !llvm.loop !107

polly.loop_header644:                             ; preds = %polly.loop_header644.preheader, %polly.loop_exit668
  %indvars.iv1075 = phi i64 [ 0, %polly.loop_header644.preheader ], [ %indvars.iv.next1076, %polly.loop_exit668 ]
  %indvars.iv1070 = phi i64 [ 0, %polly.loop_header644.preheader ], [ %indvars.iv.next1071, %polly.loop_exit668 ]
  %indvars.iv1064 = phi i64 [ 96, %polly.loop_header644.preheader ], [ %indvars.iv.next1065, %polly.loop_exit668 ]
  %indvars.iv1060 = phi i64 [ 1200, %polly.loop_header644.preheader ], [ %indvars.iv.next1061, %polly.loop_exit668 ]
  %polly.indvar647 = phi i64 [ 0, %polly.loop_header644.preheader ], [ %229, %polly.loop_exit668 ]
  %225 = shl nuw nsw i64 %polly.indvar647, 2
  %226 = mul nsw i64 %polly.indvar647, -4
  %227 = mul nsw i64 %polly.indvar647, -100
  %228 = mul nuw nsw i64 %polly.indvar647, 100
  br label %polly.loop_header650

polly.loop_exit668:                               ; preds = %polly.loop_exit724
  %229 = add nuw nsw i64 %polly.indvar647, 1
  %indvars.iv.next1061 = add nsw i64 %indvars.iv1060, -100
  %indvars.iv.next1065 = add nsw i64 %indvars.iv1064, -4
  %indvars.iv.next1071 = add nuw nsw i64 %indvars.iv1070, 4
  %indvars.iv.next1076 = add nsw i64 %indvars.iv1075, -4
  %exitcond1085.not = icmp eq i64 %229, 12
  br i1 %exitcond1085.not, label %polly.exiting541, label %polly.loop_header644

polly.loop_header650:                             ; preds = %polly.loop_exit658, %polly.loop_header644
  %polly.indvar653 = phi i64 [ 0, %polly.loop_header644 ], [ %polly.indvar_next654, %polly.loop_exit658 ]
  %polly.access.mul.Packed_MemRef_call2545 = mul nuw nsw i64 %polly.indvar653, 1200
  br label %polly.loop_header656

polly.loop_exit658:                               ; preds = %polly.loop_header656
  %polly.indvar_next654 = add nuw nsw i64 %polly.indvar653, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar_next654, 1000
  br i1 %exitcond1063.not, label %polly.loop_header666.preheader, label %polly.loop_header650

polly.loop_header666.preheader:                   ; preds = %polly.loop_exit658
  %230 = add nsw i64 %227, 1199
  br label %polly.loop_header666

polly.loop_header656:                             ; preds = %polly.loop_header656, %polly.loop_header650
  %polly.indvar659 = phi i64 [ 0, %polly.loop_header650 ], [ %polly.indvar_next660, %polly.loop_header656 ]
  %231 = add nuw nsw i64 %polly.indvar659, %228
  %polly.access.mul.call2663 = mul nuw nsw i64 %231, 1000
  %polly.access.add.call2664 = add nuw nsw i64 %polly.access.mul.call2663, %polly.indvar653
  %polly.access.call2665 = getelementptr double, double* %polly.access.cast.call2777, i64 %polly.access.add.call2664
  %polly.access.call2665.load = load double, double* %polly.access.call2665, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2545 = add nuw nsw i64 %polly.indvar659, %polly.access.mul.Packed_MemRef_call2545
  %polly.access.Packed_MemRef_call2545 = getelementptr double, double* %Packed_MemRef_call2545, i64 %polly.access.add.Packed_MemRef_call2545
  store double %polly.access.call2665.load, double* %polly.access.Packed_MemRef_call2545, align 8
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar_next660, %indvars.iv1060
  br i1 %exitcond1062.not, label %polly.loop_exit658, label %polly.loop_header656

polly.loop_header666:                             ; preds = %polly.loop_header666.preheader, %polly.loop_exit724
  %indvar1232 = phi i64 [ 0, %polly.loop_header666.preheader ], [ %indvar.next1233, %polly.loop_exit724 ]
  %indvars.iv1077 = phi i64 [ %indvars.iv1075, %polly.loop_header666.preheader ], [ %indvars.iv.next1078, %polly.loop_exit724 ]
  %indvars.iv1072 = phi i64 [ %indvars.iv1070, %polly.loop_header666.preheader ], [ %indvars.iv.next1073, %polly.loop_exit724 ]
  %polly.indvar669 = phi i64 [ %polly.indvar647, %polly.loop_header666.preheader ], [ %polly.indvar_next670, %polly.loop_exit724 ]
  %232 = mul nsw i64 %indvar1232, -96
  %233 = add i64 %225, %232
  %smax1234 = call i64 @llvm.smax.i64(i64 %233, i64 0)
  %234 = mul nuw nsw i64 %indvar1232, 96
  %235 = add i64 %226, %234
  %236 = add i64 %smax1234, %235
  %smax1074 = call i64 @llvm.smax.i64(i64 %indvars.iv1072, i64 0)
  %237 = add i64 %smax1074, %indvars.iv1077
  %.not.not971 = icmp ugt i64 %polly.indvar669, %polly.indvar647
  %238 = mul nuw nsw i64 %polly.indvar669, 96
  %239 = add nsw i64 %238, %227
  %240 = add nsw i64 %239, -1
  %.inv972 = icmp sgt i64 %239, 99
  %241 = select i1 %.inv972, i64 99, i64 %240
  %polly.loop_guard686 = icmp sgt i64 %241, -1
  %242 = add nsw i64 %239, 95
  %243 = icmp ult i64 %230, %242
  %244 = select i1 %243, i64 %230, i64 %242
  %polly.loop_guard698.not = icmp sgt i64 %239, %244
  br i1 %.not.not971, label %polly.loop_header672.us, label %polly.loop_header672

polly.loop_header672.us:                          ; preds = %polly.loop_header666, %polly.merge679.us
  %polly.indvar675.us = phi i64 [ %polly.indvar_next676.us, %polly.merge679.us ], [ 0, %polly.loop_header666 ]
  br i1 %polly.loop_guard686, label %polly.loop_header683.preheader.us, label %polly.loop_exit685.us

polly.loop_header683.us:                          ; preds = %polly.loop_header683.preheader.us, %polly.loop_header683.us
  %polly.indvar687.us = phi i64 [ %polly.indvar_next688.us, %polly.loop_header683.us ], [ 0, %polly.loop_header683.preheader.us ]
  %245 = add nuw nsw i64 %polly.indvar687.us, %228
  %polly.access.mul.call1691.us = mul nuw nsw i64 %245, 1000
  %polly.access.add.call1692.us = add nuw nsw i64 %polly.access.mul.call1691.us, %polly.indvar675.us
  %polly.access.call1693.us = getelementptr double, double* %polly.access.cast.call1767, i64 %polly.access.add.call1692.us
  %polly.access.call1693.load.us = load double, double* %polly.access.call1693.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1543.us = add nuw nsw i64 %polly.indvar687.us, %polly.access.mul.Packed_MemRef_call1543.us
  %polly.access.Packed_MemRef_call1543.us = getelementptr double, double* %Packed_MemRef_call1543, i64 %polly.access.add.Packed_MemRef_call1543.us
  store double %polly.access.call1693.load.us, double* %polly.access.Packed_MemRef_call1543.us, align 8
  %polly.indvar_next688.us = add nuw i64 %polly.indvar687.us, 1
  %exitcond1068.not = icmp eq i64 %polly.indvar687.us, %241
  br i1 %exitcond1068.not, label %polly.loop_exit685.us, label %polly.loop_header683.us

polly.loop_exit685.us:                            ; preds = %polly.loop_header683.us, %polly.loop_header672.us
  br i1 %polly.loop_guard698.not, label %polly.merge679.us, label %polly.loop_header695.preheader.us

polly.loop_header695.us:                          ; preds = %polly.loop_header695.preheader.us, %polly.loop_header695.us
  %polly.indvar699.us = phi i64 [ %polly.indvar_next700.us, %polly.loop_header695.us ], [ %239, %polly.loop_header695.preheader.us ]
  %246 = add nsw i64 %polly.indvar699.us, %228
  %polly.access.mul.call1703.us = mul nuw nsw i64 %246, 1000
  %polly.access.add.call1704.us = add nuw nsw i64 %polly.access.mul.call1703.us, %polly.indvar675.us
  %polly.access.call1705.us = getelementptr double, double* %polly.access.cast.call1767, i64 %polly.access.add.call1704.us
  %polly.access.call1705.load.us = load double, double* %polly.access.call1705.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1543707.us = add nsw i64 %polly.indvar699.us, %polly.access.mul.Packed_MemRef_call1543706.us
  %polly.access.Packed_MemRef_call1543708.us = getelementptr double, double* %Packed_MemRef_call1543, i64 %polly.access.add.Packed_MemRef_call1543707.us
  store double %polly.access.call1705.load.us, double* %polly.access.Packed_MemRef_call1543708.us, align 8
  %polly.indvar_next700.us = add nsw i64 %polly.indvar699.us, 1
  %polly.loop_cond701.not.not.us = icmp slt i64 %polly.indvar699.us, %244
  br i1 %polly.loop_cond701.not.not.us, label %polly.loop_header695.us, label %polly.merge679.us

polly.merge679.us:                                ; preds = %polly.loop_header695.us, %polly.loop_exit685.us
  %polly.indvar_next676.us = add nuw nsw i64 %polly.indvar675.us, 1
  %exitcond1069.not = icmp eq i64 %polly.indvar_next676.us, 1000
  br i1 %exitcond1069.not, label %polly.loop_header722.preheader, label %polly.loop_header672.us

polly.loop_header695.preheader.us:                ; preds = %polly.loop_exit685.us
  %polly.access.mul.Packed_MemRef_call1543706.us = mul nuw nsw i64 %polly.indvar675.us, 1200
  br label %polly.loop_header695.us

polly.loop_header683.preheader.us:                ; preds = %polly.loop_header672.us
  %polly.access.mul.Packed_MemRef_call1543.us = mul nuw nsw i64 %polly.indvar675.us, 1200
  br label %polly.loop_header683.us

polly.loop_exit724:                               ; preds = %polly.loop_exit731, %polly.loop_header722.preheader
  %polly.indvar_next670 = add nuw nsw i64 %polly.indvar669, 1
  %indvars.iv.next1073 = add nsw i64 %indvars.iv1072, -96
  %indvars.iv.next1078 = add nsw i64 %indvars.iv1077, 96
  %exitcond1084.not = icmp eq i64 %polly.indvar_next670, 13
  %indvar.next1233 = add i64 %indvar1232, 1
  br i1 %exitcond1084.not, label %polly.loop_exit668, label %polly.loop_header666

polly.loop_header672:                             ; preds = %polly.loop_header666, %polly.merge679
  %polly.indvar675 = phi i64 [ %polly.indvar_next676, %polly.merge679 ], [ 0, %polly.loop_header666 ]
  %polly.access.mul.Packed_MemRef_call1543719 = mul nuw nsw i64 %polly.indvar675, 1200
  br label %polly.loop_header709

polly.merge679:                                   ; preds = %polly.loop_header709
  %polly.indvar_next676 = add nuw nsw i64 %polly.indvar675, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar_next676, 1000
  br i1 %exitcond1067.not, label %polly.loop_header722.preheader, label %polly.loop_header672

polly.loop_header722.preheader:                   ; preds = %polly.merge679, %polly.merge679.us
  %247 = sub nsw i64 %228, %238
  %248 = icmp sgt i64 %247, 0
  %249 = select i1 %248, i64 %247, i64 0
  %250 = mul nsw i64 %polly.indvar669, -96
  %251 = icmp slt i64 %250, -1104
  %252 = select i1 %251, i64 %250, i64 -1104
  %253 = add nsw i64 %252, 1199
  %polly.loop_guard732.not = icmp sgt i64 %249, %253
  br i1 %polly.loop_guard732.not, label %polly.loop_exit724, label %polly.loop_header722

polly.loop_header709:                             ; preds = %polly.loop_header709, %polly.loop_header672
  %polly.indvar712 = phi i64 [ 0, %polly.loop_header672 ], [ %polly.indvar_next713, %polly.loop_header709 ]
  %254 = add nuw nsw i64 %polly.indvar712, %228
  %polly.access.mul.call1716 = mul nuw nsw i64 %254, 1000
  %polly.access.add.call1717 = add nuw nsw i64 %polly.access.mul.call1716, %polly.indvar675
  %polly.access.call1718 = getelementptr double, double* %polly.access.cast.call1767, i64 %polly.access.add.call1717
  %polly.access.call1718.load = load double, double* %polly.access.call1718, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1543720 = add nuw nsw i64 %polly.indvar712, %polly.access.mul.Packed_MemRef_call1543719
  %polly.access.Packed_MemRef_call1543721 = getelementptr double, double* %Packed_MemRef_call1543, i64 %polly.access.add.Packed_MemRef_call1543720
  store double %polly.access.call1718.load, double* %polly.access.Packed_MemRef_call1543721, align 8
  %polly.indvar_next713 = add nuw nsw i64 %polly.indvar712, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar_next713, %indvars.iv1064
  br i1 %exitcond1066.not, label %polly.merge679, label %polly.loop_header709

polly.loop_header722:                             ; preds = %polly.loop_header722.preheader, %polly.loop_exit731
  %polly.indvar725 = phi i64 [ %polly.indvar_next726, %polly.loop_exit731 ], [ 0, %polly.loop_header722.preheader ]
  %polly.access.mul.Packed_MemRef_call1543744 = mul nuw nsw i64 %polly.indvar725, 1200
  br label %polly.loop_header729

polly.loop_exit731:                               ; preds = %polly.loop_exit739
  %polly.indvar_next726 = add nuw nsw i64 %polly.indvar725, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next726, 1000
  br i1 %exitcond1083.not, label %polly.loop_exit724, label %polly.loop_header722

polly.loop_header729:                             ; preds = %polly.loop_header722, %polly.loop_exit739
  %indvar1235 = phi i64 [ 0, %polly.loop_header722 ], [ %indvar.next1236, %polly.loop_exit739 ]
  %indvars.iv1079 = phi i64 [ %237, %polly.loop_header722 ], [ %indvars.iv.next1080, %polly.loop_exit739 ]
  %polly.indvar733 = phi i64 [ %249, %polly.loop_header722 ], [ %polly.indvar_next734, %polly.loop_exit739 ]
  %255 = add i64 %236, %indvar1235
  %smin1237 = call i64 @llvm.smin.i64(i64 %255, i64 99)
  %256 = add nsw i64 %smin1237, 1
  %smin1081 = call i64 @llvm.smin.i64(i64 %indvars.iv1079, i64 99)
  %257 = add nuw i64 %polly.indvar733, %238
  %258 = add i64 %257, %227
  %polly.loop_guard7401127 = icmp sgt i64 %258, -1
  br i1 %polly.loop_guard7401127, label %polly.loop_header737.preheader, label %polly.loop_exit739

polly.loop_header737.preheader:                   ; preds = %polly.loop_header729
  %polly.access.add.Packed_MemRef_call2545749 = add nsw i64 %polly.access.mul.Packed_MemRef_call1543744, %258
  %polly.access.Packed_MemRef_call2545750 = getelementptr double, double* %Packed_MemRef_call2545, i64 %polly.access.add.Packed_MemRef_call2545749
  %_p_scalar_751 = load double, double* %polly.access.Packed_MemRef_call2545750, align 8
  %polly.access.Packed_MemRef_call1543758 = getelementptr double, double* %Packed_MemRef_call1543, i64 %polly.access.add.Packed_MemRef_call2545749
  %_p_scalar_759 = load double, double* %polly.access.Packed_MemRef_call1543758, align 8
  %259 = mul i64 %257, 9600
  %min.iters.check1238 = icmp ult i64 %256, 4
  br i1 %min.iters.check1238, label %polly.loop_header737.preheader1361, label %vector.ph1239

vector.ph1239:                                    ; preds = %polly.loop_header737.preheader
  %n.vec1241 = and i64 %256, -4
  %broadcast.splatinsert1247 = insertelement <4 x double> poison, double %_p_scalar_751, i32 0
  %broadcast.splat1248 = shufflevector <4 x double> %broadcast.splatinsert1247, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1250 = insertelement <4 x double> poison, double %_p_scalar_759, i32 0
  %broadcast.splat1251 = shufflevector <4 x double> %broadcast.splatinsert1250, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1231

vector.body1231:                                  ; preds = %vector.body1231, %vector.ph1239
  %index1242 = phi i64 [ 0, %vector.ph1239 ], [ %index.next1243, %vector.body1231 ]
  %260 = add nuw nsw i64 %index1242, %228
  %261 = add nuw nsw i64 %index1242, %polly.access.mul.Packed_MemRef_call1543744
  %262 = getelementptr double, double* %Packed_MemRef_call1543, i64 %261
  %263 = bitcast double* %262 to <4 x double>*
  %wide.load1246 = load <4 x double>, <4 x double>* %263, align 8
  %264 = fmul fast <4 x double> %broadcast.splat1248, %wide.load1246
  %265 = getelementptr double, double* %Packed_MemRef_call2545, i64 %261
  %266 = bitcast double* %265 to <4 x double>*
  %wide.load1249 = load <4 x double>, <4 x double>* %266, align 8
  %267 = fmul fast <4 x double> %broadcast.splat1251, %wide.load1249
  %268 = shl i64 %260, 3
  %269 = add i64 %268, %259
  %270 = getelementptr i8, i8* %call, i64 %269
  %271 = bitcast i8* %270 to <4 x double>*
  %wide.load1252 = load <4 x double>, <4 x double>* %271, align 8, !alias.scope !99, !noalias !101
  %272 = fadd fast <4 x double> %267, %264
  %273 = fmul fast <4 x double> %272, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %274 = fadd fast <4 x double> %273, %wide.load1252
  %275 = bitcast i8* %270 to <4 x double>*
  store <4 x double> %274, <4 x double>* %275, align 8, !alias.scope !99, !noalias !101
  %index.next1243 = add i64 %index1242, 4
  %276 = icmp eq i64 %index.next1243, %n.vec1241
  br i1 %276, label %middle.block1229, label %vector.body1231, !llvm.loop !110

middle.block1229:                                 ; preds = %vector.body1231
  %cmp.n1245 = icmp eq i64 %256, %n.vec1241
  br i1 %cmp.n1245, label %polly.loop_exit739, label %polly.loop_header737.preheader1361

polly.loop_header737.preheader1361:               ; preds = %polly.loop_header737.preheader, %middle.block1229
  %polly.indvar741.ph = phi i64 [ 0, %polly.loop_header737.preheader ], [ %n.vec1241, %middle.block1229 ]
  br label %polly.loop_header737

polly.loop_exit739:                               ; preds = %polly.loop_header737, %middle.block1229, %polly.loop_header729
  %polly.indvar_next734 = add nuw nsw i64 %polly.indvar733, 1
  %polly.loop_cond735.not.not = icmp slt i64 %polly.indvar733, %253
  %indvars.iv.next1080 = add i64 %indvars.iv1079, 1
  %indvar.next1236 = add i64 %indvar1235, 1
  br i1 %polly.loop_cond735.not.not, label %polly.loop_header729, label %polly.loop_exit731

polly.loop_header737:                             ; preds = %polly.loop_header737.preheader1361, %polly.loop_header737
  %polly.indvar741 = phi i64 [ %polly.indvar_next742, %polly.loop_header737 ], [ %polly.indvar741.ph, %polly.loop_header737.preheader1361 ]
  %277 = add nuw nsw i64 %polly.indvar741, %228
  %polly.access.add.Packed_MemRef_call1543745 = add nuw nsw i64 %polly.indvar741, %polly.access.mul.Packed_MemRef_call1543744
  %polly.access.Packed_MemRef_call1543746 = getelementptr double, double* %Packed_MemRef_call1543, i64 %polly.access.add.Packed_MemRef_call1543745
  %_p_scalar_747 = load double, double* %polly.access.Packed_MemRef_call1543746, align 8
  %p_mul27.i = fmul fast double %_p_scalar_751, %_p_scalar_747
  %polly.access.Packed_MemRef_call2545754 = getelementptr double, double* %Packed_MemRef_call2545, i64 %polly.access.add.Packed_MemRef_call1543745
  %_p_scalar_755 = load double, double* %polly.access.Packed_MemRef_call2545754, align 8
  %p_mul37.i = fmul fast double %_p_scalar_759, %_p_scalar_755
  %278 = shl i64 %277, 3
  %279 = add i64 %278, %259
  %scevgep760 = getelementptr i8, i8* %call, i64 %279
  %scevgep760761 = bitcast i8* %scevgep760 to double*
  %_p_scalar_762 = load double, double* %scevgep760761, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_762
  store double %p_add42.i, double* %scevgep760761, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next742 = add nuw nsw i64 %polly.indvar741, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar741, %smin1081
  br i1 %exitcond1082.not, label %polly.loop_exit739, label %polly.loop_header737, !llvm.loop !111

polly.loop_header889:                             ; preds = %entry, %polly.loop_exit897
  %indvars.iv1112 = phi i64 [ %indvars.iv.next1113, %polly.loop_exit897 ], [ 0, %entry ]
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_exit897 ], [ 0, %entry ]
  %smin1114 = call i64 @llvm.smin.i64(i64 %indvars.iv1112, i64 -1168)
  %280 = shl nsw i64 %polly.indvar892, 5
  %281 = add nsw i64 %smin1114, 1199
  br label %polly.loop_header895

polly.loop_exit897:                               ; preds = %polly.loop_exit903
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %indvars.iv.next1113 = add nsw i64 %indvars.iv1112, -32
  %exitcond1117.not = icmp eq i64 %polly.indvar_next893, 38
  br i1 %exitcond1117.not, label %polly.loop_header916, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_exit903, %polly.loop_header889
  %indvars.iv1108 = phi i64 [ %indvars.iv.next1109, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %282 = mul nsw i64 %polly.indvar898, -32
  %smin1158 = call i64 @llvm.smin.i64(i64 %282, i64 -1168)
  %283 = add nsw i64 %smin1158, 1200
  %smin1110 = call i64 @llvm.smin.i64(i64 %indvars.iv1108, i64 -1168)
  %284 = shl nsw i64 %polly.indvar898, 5
  %285 = add nsw i64 %smin1110, 1199
  br label %polly.loop_header901

polly.loop_exit903:                               ; preds = %polly.loop_exit909
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %indvars.iv.next1109 = add nsw i64 %indvars.iv1108, -32
  %exitcond1116.not = icmp eq i64 %polly.indvar_next899, 38
  br i1 %exitcond1116.not, label %polly.loop_exit897, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_exit909, %polly.loop_header895
  %polly.indvar904 = phi i64 [ 0, %polly.loop_header895 ], [ %polly.indvar_next905, %polly.loop_exit909 ]
  %286 = add nuw nsw i64 %polly.indvar904, %280
  %287 = trunc i64 %286 to i32
  %288 = mul nuw nsw i64 %286, 9600
  %min.iters.check = icmp eq i64 %283, 0
  br i1 %min.iters.check, label %polly.loop_header907, label %vector.ph1159

vector.ph1159:                                    ; preds = %polly.loop_header901
  %broadcast.splatinsert1166 = insertelement <4 x i64> poison, i64 %284, i32 0
  %broadcast.splat1167 = shufflevector <4 x i64> %broadcast.splatinsert1166, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1168 = insertelement <4 x i32> poison, i32 %287, i32 0
  %broadcast.splat1169 = shufflevector <4 x i32> %broadcast.splatinsert1168, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1157

vector.body1157:                                  ; preds = %vector.body1157, %vector.ph1159
  %index1160 = phi i64 [ 0, %vector.ph1159 ], [ %index.next1161, %vector.body1157 ]
  %vec.ind1164 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1159 ], [ %vec.ind.next1165, %vector.body1157 ]
  %289 = add nuw nsw <4 x i64> %vec.ind1164, %broadcast.splat1167
  %290 = trunc <4 x i64> %289 to <4 x i32>
  %291 = mul <4 x i32> %broadcast.splat1169, %290
  %292 = add <4 x i32> %291, <i32 3, i32 3, i32 3, i32 3>
  %293 = urem <4 x i32> %292, <i32 1200, i32 1200, i32 1200, i32 1200>
  %294 = sitofp <4 x i32> %293 to <4 x double>
  %295 = fmul fast <4 x double> %294, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %296 = extractelement <4 x i64> %289, i32 0
  %297 = shl i64 %296, 3
  %298 = add nuw nsw i64 %297, %288
  %299 = getelementptr i8, i8* %call, i64 %298
  %300 = bitcast i8* %299 to <4 x double>*
  store <4 x double> %295, <4 x double>* %300, align 8, !alias.scope !112, !noalias !114
  %index.next1161 = add i64 %index1160, 4
  %vec.ind.next1165 = add <4 x i64> %vec.ind1164, <i64 4, i64 4, i64 4, i64 4>
  %301 = icmp eq i64 %index.next1161, %283
  br i1 %301, label %polly.loop_exit909, label %vector.body1157, !llvm.loop !117

polly.loop_exit909:                               ; preds = %vector.body1157, %polly.loop_header907
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar904, %281
  br i1 %exitcond1115.not, label %polly.loop_exit903, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_header901, %polly.loop_header907
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_header907 ], [ 0, %polly.loop_header901 ]
  %302 = add nuw nsw i64 %polly.indvar910, %284
  %303 = trunc i64 %302 to i32
  %304 = mul i32 %303, %287
  %305 = add i32 %304, 3
  %306 = urem i32 %305, 1200
  %p_conv31.i = sitofp i32 %306 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %307 = shl i64 %302, 3
  %308 = add nuw nsw i64 %307, %288
  %scevgep913 = getelementptr i8, i8* %call, i64 %308
  %scevgep913914 = bitcast i8* %scevgep913 to double*
  store double %p_div33.i, double* %scevgep913914, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar910, %285
  br i1 %exitcond1111.not, label %polly.loop_exit909, label %polly.loop_header907, !llvm.loop !118

polly.loop_header916:                             ; preds = %polly.loop_exit897, %polly.loop_exit924
  %indvars.iv1102 = phi i64 [ %indvars.iv.next1103, %polly.loop_exit924 ], [ 0, %polly.loop_exit897 ]
  %polly.indvar919 = phi i64 [ %polly.indvar_next920, %polly.loop_exit924 ], [ 0, %polly.loop_exit897 ]
  %smin1104 = call i64 @llvm.smin.i64(i64 %indvars.iv1102, i64 -1168)
  %309 = shl nsw i64 %polly.indvar919, 5
  %310 = add nsw i64 %smin1104, 1199
  br label %polly.loop_header922

polly.loop_exit924:                               ; preds = %polly.loop_exit930
  %polly.indvar_next920 = add nuw nsw i64 %polly.indvar919, 1
  %indvars.iv.next1103 = add nsw i64 %indvars.iv1102, -32
  %exitcond1107.not = icmp eq i64 %polly.indvar_next920, 38
  br i1 %exitcond1107.not, label %polly.loop_header942, label %polly.loop_header916

polly.loop_header922:                             ; preds = %polly.loop_exit930, %polly.loop_header916
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit930 ], [ 0, %polly.loop_header916 ]
  %polly.indvar925 = phi i64 [ %polly.indvar_next926, %polly.loop_exit930 ], [ 0, %polly.loop_header916 ]
  %311 = mul nsw i64 %polly.indvar925, -32
  %smin1173 = call i64 @llvm.smin.i64(i64 %311, i64 -968)
  %312 = add nsw i64 %smin1173, 1000
  %smin1100 = call i64 @llvm.smin.i64(i64 %indvars.iv1098, i64 -968)
  %313 = shl nsw i64 %polly.indvar925, 5
  %314 = add nsw i64 %smin1100, 999
  br label %polly.loop_header928

polly.loop_exit930:                               ; preds = %polly.loop_exit936
  %polly.indvar_next926 = add nuw nsw i64 %polly.indvar925, 1
  %indvars.iv.next1099 = add nsw i64 %indvars.iv1098, -32
  %exitcond1106.not = icmp eq i64 %polly.indvar_next926, 32
  br i1 %exitcond1106.not, label %polly.loop_exit924, label %polly.loop_header922

polly.loop_header928:                             ; preds = %polly.loop_exit936, %polly.loop_header922
  %polly.indvar931 = phi i64 [ 0, %polly.loop_header922 ], [ %polly.indvar_next932, %polly.loop_exit936 ]
  %315 = add nuw nsw i64 %polly.indvar931, %309
  %316 = trunc i64 %315 to i32
  %317 = mul nuw nsw i64 %315, 8000
  %min.iters.check1174 = icmp eq i64 %312, 0
  br i1 %min.iters.check1174, label %polly.loop_header934, label %vector.ph1175

vector.ph1175:                                    ; preds = %polly.loop_header928
  %broadcast.splatinsert1184 = insertelement <4 x i64> poison, i64 %313, i32 0
  %broadcast.splat1185 = shufflevector <4 x i64> %broadcast.splatinsert1184, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1186 = insertelement <4 x i32> poison, i32 %316, i32 0
  %broadcast.splat1187 = shufflevector <4 x i32> %broadcast.splatinsert1186, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1172

vector.body1172:                                  ; preds = %vector.body1172, %vector.ph1175
  %index1178 = phi i64 [ 0, %vector.ph1175 ], [ %index.next1179, %vector.body1172 ]
  %vec.ind1182 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1175 ], [ %vec.ind.next1183, %vector.body1172 ]
  %318 = add nuw nsw <4 x i64> %vec.ind1182, %broadcast.splat1185
  %319 = trunc <4 x i64> %318 to <4 x i32>
  %320 = mul <4 x i32> %broadcast.splat1187, %319
  %321 = add <4 x i32> %320, <i32 2, i32 2, i32 2, i32 2>
  %322 = urem <4 x i32> %321, <i32 1000, i32 1000, i32 1000, i32 1000>
  %323 = sitofp <4 x i32> %322 to <4 x double>
  %324 = fmul fast <4 x double> %323, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %325 = extractelement <4 x i64> %318, i32 0
  %326 = shl i64 %325, 3
  %327 = add nuw nsw i64 %326, %317
  %328 = getelementptr i8, i8* %call2, i64 %327
  %329 = bitcast i8* %328 to <4 x double>*
  store <4 x double> %324, <4 x double>* %329, align 8, !alias.scope !116, !noalias !119
  %index.next1179 = add i64 %index1178, 4
  %vec.ind.next1183 = add <4 x i64> %vec.ind1182, <i64 4, i64 4, i64 4, i64 4>
  %330 = icmp eq i64 %index.next1179, %312
  br i1 %330, label %polly.loop_exit936, label %vector.body1172, !llvm.loop !120

polly.loop_exit936:                               ; preds = %vector.body1172, %polly.loop_header934
  %polly.indvar_next932 = add nuw nsw i64 %polly.indvar931, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar931, %310
  br i1 %exitcond1105.not, label %polly.loop_exit930, label %polly.loop_header928

polly.loop_header934:                             ; preds = %polly.loop_header928, %polly.loop_header934
  %polly.indvar937 = phi i64 [ %polly.indvar_next938, %polly.loop_header934 ], [ 0, %polly.loop_header928 ]
  %331 = add nuw nsw i64 %polly.indvar937, %313
  %332 = trunc i64 %331 to i32
  %333 = mul i32 %332, %316
  %334 = add i32 %333, 2
  %335 = urem i32 %334, 1000
  %p_conv10.i = sitofp i32 %335 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %336 = shl i64 %331, 3
  %337 = add nuw nsw i64 %336, %317
  %scevgep940 = getelementptr i8, i8* %call2, i64 %337
  %scevgep940941 = bitcast i8* %scevgep940 to double*
  store double %p_div12.i, double* %scevgep940941, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next938 = add nuw nsw i64 %polly.indvar937, 1
  %exitcond1101.not = icmp eq i64 %polly.indvar937, %314
  br i1 %exitcond1101.not, label %polly.loop_exit936, label %polly.loop_header934, !llvm.loop !121

polly.loop_header942:                             ; preds = %polly.loop_exit924, %polly.loop_exit950
  %indvars.iv1092 = phi i64 [ %indvars.iv.next1093, %polly.loop_exit950 ], [ 0, %polly.loop_exit924 ]
  %polly.indvar945 = phi i64 [ %polly.indvar_next946, %polly.loop_exit950 ], [ 0, %polly.loop_exit924 ]
  %smin1094 = call i64 @llvm.smin.i64(i64 %indvars.iv1092, i64 -1168)
  %338 = shl nsw i64 %polly.indvar945, 5
  %339 = add nsw i64 %smin1094, 1199
  br label %polly.loop_header948

polly.loop_exit950:                               ; preds = %polly.loop_exit956
  %polly.indvar_next946 = add nuw nsw i64 %polly.indvar945, 1
  %indvars.iv.next1093 = add nsw i64 %indvars.iv1092, -32
  %exitcond1097.not = icmp eq i64 %polly.indvar_next946, 38
  br i1 %exitcond1097.not, label %init_array.exit, label %polly.loop_header942

polly.loop_header948:                             ; preds = %polly.loop_exit956, %polly.loop_header942
  %indvars.iv1088 = phi i64 [ %indvars.iv.next1089, %polly.loop_exit956 ], [ 0, %polly.loop_header942 ]
  %polly.indvar951 = phi i64 [ %polly.indvar_next952, %polly.loop_exit956 ], [ 0, %polly.loop_header942 ]
  %340 = mul nsw i64 %polly.indvar951, -32
  %smin1191 = call i64 @llvm.smin.i64(i64 %340, i64 -968)
  %341 = add nsw i64 %smin1191, 1000
  %smin1090 = call i64 @llvm.smin.i64(i64 %indvars.iv1088, i64 -968)
  %342 = shl nsw i64 %polly.indvar951, 5
  %343 = add nsw i64 %smin1090, 999
  br label %polly.loop_header954

polly.loop_exit956:                               ; preds = %polly.loop_exit962
  %polly.indvar_next952 = add nuw nsw i64 %polly.indvar951, 1
  %indvars.iv.next1089 = add nsw i64 %indvars.iv1088, -32
  %exitcond1096.not = icmp eq i64 %polly.indvar_next952, 32
  br i1 %exitcond1096.not, label %polly.loop_exit950, label %polly.loop_header948

polly.loop_header954:                             ; preds = %polly.loop_exit962, %polly.loop_header948
  %polly.indvar957 = phi i64 [ 0, %polly.loop_header948 ], [ %polly.indvar_next958, %polly.loop_exit962 ]
  %344 = add nuw nsw i64 %polly.indvar957, %338
  %345 = trunc i64 %344 to i32
  %346 = mul nuw nsw i64 %344, 8000
  %min.iters.check1192 = icmp eq i64 %341, 0
  br i1 %min.iters.check1192, label %polly.loop_header960, label %vector.ph1193

vector.ph1193:                                    ; preds = %polly.loop_header954
  %broadcast.splatinsert1202 = insertelement <4 x i64> poison, i64 %342, i32 0
  %broadcast.splat1203 = shufflevector <4 x i64> %broadcast.splatinsert1202, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1204 = insertelement <4 x i32> poison, i32 %345, i32 0
  %broadcast.splat1205 = shufflevector <4 x i32> %broadcast.splatinsert1204, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1190

vector.body1190:                                  ; preds = %vector.body1190, %vector.ph1193
  %index1196 = phi i64 [ 0, %vector.ph1193 ], [ %index.next1197, %vector.body1190 ]
  %vec.ind1200 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1193 ], [ %vec.ind.next1201, %vector.body1190 ]
  %347 = add nuw nsw <4 x i64> %vec.ind1200, %broadcast.splat1203
  %348 = trunc <4 x i64> %347 to <4 x i32>
  %349 = mul <4 x i32> %broadcast.splat1205, %348
  %350 = add <4 x i32> %349, <i32 1, i32 1, i32 1, i32 1>
  %351 = urem <4 x i32> %350, <i32 1200, i32 1200, i32 1200, i32 1200>
  %352 = sitofp <4 x i32> %351 to <4 x double>
  %353 = fmul fast <4 x double> %352, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %354 = extractelement <4 x i64> %347, i32 0
  %355 = shl i64 %354, 3
  %356 = add nuw nsw i64 %355, %346
  %357 = getelementptr i8, i8* %call1, i64 %356
  %358 = bitcast i8* %357 to <4 x double>*
  store <4 x double> %353, <4 x double>* %358, align 8, !alias.scope !115, !noalias !122
  %index.next1197 = add i64 %index1196, 4
  %vec.ind.next1201 = add <4 x i64> %vec.ind1200, <i64 4, i64 4, i64 4, i64 4>
  %359 = icmp eq i64 %index.next1197, %341
  br i1 %359, label %polly.loop_exit962, label %vector.body1190, !llvm.loop !123

polly.loop_exit962:                               ; preds = %vector.body1190, %polly.loop_header960
  %polly.indvar_next958 = add nuw nsw i64 %polly.indvar957, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar957, %339
  br i1 %exitcond1095.not, label %polly.loop_exit956, label %polly.loop_header954

polly.loop_header960:                             ; preds = %polly.loop_header954, %polly.loop_header960
  %polly.indvar963 = phi i64 [ %polly.indvar_next964, %polly.loop_header960 ], [ 0, %polly.loop_header954 ]
  %360 = add nuw nsw i64 %polly.indvar963, %342
  %361 = trunc i64 %360 to i32
  %362 = mul i32 %361, %345
  %363 = add i32 %362, 1
  %364 = urem i32 %363, 1200
  %p_conv.i = sitofp i32 %364 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %365 = shl i64 %360, 3
  %366 = add nuw nsw i64 %365, %346
  %scevgep967 = getelementptr i8, i8* %call1, i64 %366
  %scevgep967968 = bitcast i8* %scevgep967 to double*
  store double %p_div.i, double* %scevgep967968, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next964 = add nuw nsw i64 %polly.indvar963, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar963, %343
  br i1 %exitcond1091.not, label %polly.loop_exit962, label %polly.loop_header960, !llvm.loop !124
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
!26 = !{!"llvm.loop.tile.size", i32 100}
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
