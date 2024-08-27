; ModuleID = 'syr2k_exhaustive/mmp_all_XL_3990.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_3990.c"
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
  %call823 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1675 = bitcast i8* %call1 to double*
  %polly.access.call1684 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1684, %call2
  %polly.access.call2704 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2704, %call1
  %2 = or i1 %0, %1
  %polly.access.call724 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call724, %call2
  %4 = icmp ule i8* %polly.access.call2704, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call724, %call1
  %8 = icmp ule i8* %polly.access.call1684, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header797, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1114 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1113 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1112 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1111 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1111, %scevgep1114
  %bound1 = icmp ult i8* %scevgep1113, %scevgep1112
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
  br i1 %exitcond18.not.i, label %vector.ph1118, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1118:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1125 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1126 = shufflevector <4 x i64> %broadcast.splatinsert1125, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1117

vector.body1117:                                  ; preds = %vector.body1117, %vector.ph1118
  %index1119 = phi i64 [ 0, %vector.ph1118 ], [ %index.next1120, %vector.body1117 ]
  %vec.ind1123 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1118 ], [ %vec.ind.next1124, %vector.body1117 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1123, %broadcast.splat1126
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call823, i64 %indvars.iv7.i, i64 %index1119
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1120 = add i64 %index1119, 4
  %vec.ind.next1124 = add <4 x i64> %vec.ind1123, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1120, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1117, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1117
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1118, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit858
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start480, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1181 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1181, label %for.body3.i46.preheader1261, label %vector.ph1182

vector.ph1182:                                    ; preds = %for.body3.i46.preheader
  %n.vec1184 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1180

vector.body1180:                                  ; preds = %vector.body1180, %vector.ph1182
  %index1185 = phi i64 [ 0, %vector.ph1182 ], [ %index.next1186, %vector.body1180 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call823, i64 %indvars.iv21.i, i64 %index1185
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1186 = add i64 %index1185, 4
  %46 = icmp eq i64 %index.next1186, %n.vec1184
  br i1 %46, label %middle.block1178, label %vector.body1180, !llvm.loop !18

middle.block1178:                                 ; preds = %vector.body1180
  %cmp.n1188 = icmp eq i64 %indvars.iv21.i, %n.vec1184
  br i1 %cmp.n1188, label %for.inc6.i, label %for.body3.i46.preheader1261

for.body3.i46.preheader1261:                      ; preds = %for.body3.i46.preheader, %middle.block1178
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1184, %middle.block1178 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1261, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1261 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call823, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1178, %for.cond1.preheader.i45
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
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call823, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !22

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 1000
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !32

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 1200
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !46

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting481
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start287, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1204 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1204, label %for.body3.i60.preheader1258, label %vector.ph1205

vector.ph1205:                                    ; preds = %for.body3.i60.preheader
  %n.vec1207 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1203

vector.body1203:                                  ; preds = %vector.body1203, %vector.ph1205
  %index1208 = phi i64 [ 0, %vector.ph1205 ], [ %index.next1209, %vector.body1203 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call823, i64 %indvars.iv21.i52, i64 %index1208
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1212 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1212, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1209 = add i64 %index1208, 4
  %57 = icmp eq i64 %index.next1209, %n.vec1207
  br i1 %57, label %middle.block1201, label %vector.body1203, !llvm.loop !60

middle.block1201:                                 ; preds = %vector.body1203
  %cmp.n1211 = icmp eq i64 %indvars.iv21.i52, %n.vec1207
  br i1 %cmp.n1211, label %for.inc6.i63, label %for.body3.i60.preheader1258

for.body3.i60.preheader1258:                      ; preds = %for.body3.i60.preheader, %middle.block1201
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1207, %middle.block1201 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1258, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1258 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call823, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1201, %for.cond1.preheader.i54
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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call823, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !22

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 1000
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !32

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 1200
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !46

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting288
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1230 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1230, label %for.body3.i99.preheader1255, label %vector.ph1231

vector.ph1231:                                    ; preds = %for.body3.i99.preheader
  %n.vec1233 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1229

vector.body1229:                                  ; preds = %vector.body1229, %vector.ph1231
  %index1234 = phi i64 [ 0, %vector.ph1231 ], [ %index.next1235, %vector.body1229 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call823, i64 %indvars.iv21.i91, i64 %index1234
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1238 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1238, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1235 = add i64 %index1234, 4
  %68 = icmp eq i64 %index.next1235, %n.vec1233
  br i1 %68, label %middle.block1227, label %vector.body1229, !llvm.loop !62

middle.block1227:                                 ; preds = %vector.body1229
  %cmp.n1237 = icmp eq i64 %indvars.iv21.i91, %n.vec1233
  br i1 %cmp.n1237, label %for.inc6.i102, label %for.body3.i99.preheader1255

for.body3.i99.preheader1255:                      ; preds = %for.body3.i99.preheader, %middle.block1227
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1233, %middle.block1227 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1255, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1255 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call823, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1227, %for.cond1.preheader.i93
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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call823, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !22

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 1000
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !32

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
  %75 = load i8*, i8** %argv, align 8, !tbaa !64
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call823, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !66

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !67

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1242 = phi i64 [ %indvar.next1243, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1242, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1244 = icmp ult i64 %88, 4
  br i1 %min.iters.check1244, label %polly.loop_header191.preheader, label %vector.ph1245

vector.ph1245:                                    ; preds = %polly.loop_header
  %n.vec1247 = and i64 %88, -4
  br label %vector.body1241

vector.body1241:                                  ; preds = %vector.body1241, %vector.ph1245
  %index1248 = phi i64 [ 0, %vector.ph1245 ], [ %index.next1249, %vector.body1241 ]
  %90 = shl nuw nsw i64 %index1248, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1252 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1252, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1249 = add i64 %index1248, 4
  %95 = icmp eq i64 %index.next1249, %n.vec1247
  br i1 %95, label %middle.block1239, label %vector.body1241, !llvm.loop !74

middle.block1239:                                 ; preds = %vector.body1241
  %cmp.n1251 = icmp eq i64 %88, %n.vec1247
  br i1 %cmp.n1251, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1239
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1247, %middle.block1239 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1239
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1015.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1243 = add i64 %indvar1242, 1
  br i1 %exitcond1015.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond1014.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1014.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv1005 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next1006, %polly.loop_exit207 ]
  %indvars.iv1001 = phi i64 [ 31, %polly.loop_header199.preheader ], [ %indvars.iv.next1002, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = shl nuw nsw i64 %indvars.iv1001, 2
  %98 = and i64 %97, 9223372036854775680
  %99 = mul nuw nsw i64 %polly.indvar202, 7
  %100 = add nuw nsw i64 %99, 31
  %pexp.p_div_q = lshr i64 %100, 5
  %101 = sub nsw i64 %polly.indvar202, %pexp.p_div_q
  %polly.loop_guard = icmp slt i64 %101, 10
  br i1 %polly.loop_guard, label %polly.loop_header205.preheader, label %polly.loop_exit207

polly.loop_header205.preheader:                   ; preds = %polly.loop_header199
  %102 = sub nsw i64 %indvars.iv1005, %98
  %103 = add i64 %indvars.iv, %98
  %104 = mul nsw i64 %polly.indvar202, -100
  %105 = mul nuw nsw i64 %polly.indvar202, 100
  %106 = add nsw i64 %104, 1199
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit246, %polly.loop_header199
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -28
  %indvars.iv.next1002 = add nuw nsw i64 %indvars.iv1001, 7
  %indvars.iv.next1006 = add nuw nsw i64 %indvars.iv1005, 28
  %exitcond1013.not = icmp eq i64 %polly.indvar_next203, 12
  br i1 %exitcond1013.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205.preheader, %polly.loop_exit246
  %indvars.iv1007 = phi i64 [ %102, %polly.loop_header205.preheader ], [ %indvars.iv.next1008, %polly.loop_exit246 ]
  %indvars.iv1003 = phi i64 [ %103, %polly.loop_header205.preheader ], [ %indvars.iv.next1004, %polly.loop_exit246 ]
  %polly.indvar208 = phi i64 [ %101, %polly.loop_header205.preheader ], [ %polly.indvar_next209, %polly.loop_exit246 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1003, i64 0)
  %107 = add i64 %smax, %indvars.iv1007
  %108 = shl nsw i64 %polly.indvar208, 7
  %109 = add nsw i64 %108, %104
  %110 = add nsw i64 %109, -1
  %.inv = icmp sgt i64 %109, 99
  %111 = select i1 %.inv, i64 99, i64 %110
  %polly.loop_guard221 = icmp sgt i64 %111, -1
  %112 = icmp sgt i64 %109, 0
  %113 = select i1 %112, i64 %109, i64 0
  %114 = add nsw i64 %109, 127
  %115 = icmp slt i64 %106, %114
  %116 = select i1 %115, i64 %106, i64 %114
  %polly.loop_guard233.not = icmp sgt i64 %113, %116
  br i1 %polly.loop_guard221, label %polly.loop_header211.us, label %polly.loop_header205.split

polly.loop_header211.us:                          ; preds = %polly.loop_header205, %polly.loop_exit232.us
  %polly.indvar214.us = phi i64 [ %polly.indvar_next215.us, %polly.loop_exit232.us ], [ 0, %polly.loop_header205 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar214.us, 1200
  br label %polly.loop_header218.us

polly.loop_header218.us:                          ; preds = %polly.loop_header211.us, %polly.loop_header218.us
  %polly.indvar222.us = phi i64 [ %polly.indvar_next223.us, %polly.loop_header218.us ], [ 0, %polly.loop_header211.us ]
  %117 = add nuw nsw i64 %polly.indvar222.us, %105
  %polly.access.mul.call1226.us = mul nuw nsw i64 %117, 1000
  %polly.access.add.call1227.us = add nuw nsw i64 %polly.access.mul.call1226.us, %polly.indvar214.us
  %polly.access.call1228.us = getelementptr double, double* %polly.access.cast.call1675, i64 %polly.access.add.call1227.us
  %polly.access.call1228.load.us = load double, double* %polly.access.call1228.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar222.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1228.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next223.us = add nuw i64 %polly.indvar222.us, 1
  %exitcond999.not = icmp eq i64 %polly.indvar222.us, %111
  br i1 %exitcond999.not, label %polly.loop_exit220.loopexit.us, label %polly.loop_header218.us

polly.loop_header230.us:                          ; preds = %polly.loop_exit220.loopexit.us, %polly.loop_header230.us
  %polly.indvar234.us = phi i64 [ %polly.indvar_next235.us, %polly.loop_header230.us ], [ %113, %polly.loop_exit220.loopexit.us ]
  %118 = add nuw nsw i64 %polly.indvar234.us, %105
  %polly.access.mul.call1238.us = mul nsw i64 %118, 1000
  %polly.access.add.call1239.us = add nuw nsw i64 %polly.access.mul.call1238.us, %polly.indvar214.us
  %polly.access.call1240.us = getelementptr double, double* %polly.access.cast.call1675, i64 %polly.access.add.call1239.us
  %polly.access.call1240.load.us = load double, double* %polly.access.call1240.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1242.us = add nuw nsw i64 %polly.indvar234.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1243.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1242.us
  store double %polly.access.call1240.load.us, double* %polly.access.Packed_MemRef_call1243.us, align 8
  %polly.indvar_next235.us = add nuw nsw i64 %polly.indvar234.us, 1
  %polly.loop_cond236.not.not.us = icmp slt i64 %polly.indvar234.us, %116
  br i1 %polly.loop_cond236.not.not.us, label %polly.loop_header230.us, label %polly.loop_exit232.us

polly.loop_exit232.us:                            ; preds = %polly.loop_header230.us, %polly.loop_exit220.loopexit.us
  %polly.indvar_next215.us = add nuw nsw i64 %polly.indvar214.us, 1
  %exitcond1000.not = icmp eq i64 %polly.indvar_next215.us, 1000
  br i1 %exitcond1000.not, label %polly.loop_header244.preheader, label %polly.loop_header211.us

polly.loop_exit220.loopexit.us:                   ; preds = %polly.loop_header218.us
  br i1 %polly.loop_guard233.not, label %polly.loop_exit232.us, label %polly.loop_header230.us

polly.loop_header205.split:                       ; preds = %polly.loop_header205
  br i1 %polly.loop_guard233.not, label %polly.loop_header244.preheader, label %polly.loop_header211

polly.loop_exit246:                               ; preds = %polly.loop_exit253, %polly.loop_header244.preheader
  %polly.indvar_next209 = add nsw i64 %polly.indvar208, 1
  %polly.loop_cond210 = icmp slt i64 %polly.indvar208, 9
  %indvars.iv.next1004 = add i64 %indvars.iv1003, -128
  %indvars.iv.next1008 = add i64 %indvars.iv1007, 128
  br i1 %polly.loop_cond210, label %polly.loop_header205, label %polly.loop_exit207

polly.loop_header211:                             ; preds = %polly.loop_header205.split, %polly.loop_exit232
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit232 ], [ 0, %polly.loop_header205.split ]
  %polly.access.mul.Packed_MemRef_call1241 = mul nuw nsw i64 %polly.indvar214, 1200
  br label %polly.loop_header230

polly.loop_exit232:                               ; preds = %polly.loop_header230
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next215, 1000
  br i1 %exitcond.not, label %polly.loop_header244.preheader, label %polly.loop_header211

polly.loop_header244.preheader:                   ; preds = %polly.loop_exit232, %polly.loop_exit232.us, %polly.loop_header205.split
  %119 = sub nsw i64 %105, %108
  %120 = icmp sgt i64 %119, 0
  %121 = select i1 %120, i64 %119, i64 0
  %122 = mul nsw i64 %polly.indvar208, -128
  %123 = icmp slt i64 %122, -1072
  %124 = select i1 %123, i64 %122, i64 -1072
  %125 = add nsw i64 %124, 1199
  %polly.loop_guard254.not = icmp sgt i64 %121, %125
  br i1 %polly.loop_guard254.not, label %polly.loop_exit246, label %polly.loop_header244

polly.loop_header230:                             ; preds = %polly.loop_header211, %polly.loop_header230
  %polly.indvar234 = phi i64 [ %polly.indvar_next235, %polly.loop_header230 ], [ %113, %polly.loop_header211 ]
  %126 = add nuw nsw i64 %polly.indvar234, %105
  %polly.access.mul.call1238 = mul nsw i64 %126, 1000
  %polly.access.add.call1239 = add nuw nsw i64 %polly.access.mul.call1238, %polly.indvar214
  %polly.access.call1240 = getelementptr double, double* %polly.access.cast.call1675, i64 %polly.access.add.call1239
  %polly.access.call1240.load = load double, double* %polly.access.call1240, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1242 = add nuw nsw i64 %polly.indvar234, %polly.access.mul.Packed_MemRef_call1241
  %polly.access.Packed_MemRef_call1243 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1242
  store double %polly.access.call1240.load, double* %polly.access.Packed_MemRef_call1243, align 8
  %polly.indvar_next235 = add nuw nsw i64 %polly.indvar234, 1
  %polly.loop_cond236.not.not = icmp slt i64 %polly.indvar234, %116
  br i1 %polly.loop_cond236.not.not, label %polly.loop_header230, label %polly.loop_exit232

polly.loop_header244:                             ; preds = %polly.loop_header244.preheader, %polly.loop_exit253
  %polly.indvar247 = phi i64 [ %polly.indvar_next248, %polly.loop_exit253 ], [ 0, %polly.loop_header244.preheader ]
  %127 = shl nuw nsw i64 %polly.indvar247, 3
  %scevgep270 = getelementptr i8, i8* %call2, i64 %127
  %polly.access.mul.Packed_MemRef_call1266 = mul nuw nsw i64 %polly.indvar247, 1200
  br label %polly.loop_header251

polly.loop_exit253:                               ; preds = %polly.loop_exit261
  %polly.indvar_next248 = add nuw nsw i64 %polly.indvar247, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar_next248, 1000
  br i1 %exitcond1012.not, label %polly.loop_exit246, label %polly.loop_header244

polly.loop_header251:                             ; preds = %polly.loop_exit261, %polly.loop_header244
  %indvars.iv1009 = phi i64 [ %indvars.iv.next1010, %polly.loop_exit261 ], [ %107, %polly.loop_header244 ]
  %polly.indvar255 = phi i64 [ %polly.indvar_next256, %polly.loop_exit261 ], [ %121, %polly.loop_header244 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1009, i64 99)
  %128 = add nsw i64 %polly.indvar255, %109
  %polly.loop_guard2621097 = icmp sgt i64 %128, -1
  br i1 %polly.loop_guard2621097, label %polly.loop_header259.preheader, label %polly.loop_exit261

polly.loop_header259.preheader:                   ; preds = %polly.loop_header251
  %129 = add nsw i64 %polly.indvar255, %108
  %130 = mul i64 %129, 8000
  %scevgep271 = getelementptr i8, i8* %scevgep270, i64 %130
  %scevgep271272 = bitcast i8* %scevgep271 to double*
  %_p_scalar_273 = load double, double* %scevgep271272, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1279 = add nsw i64 %128, %polly.access.mul.Packed_MemRef_call1266
  %polly.access.Packed_MemRef_call1280 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1279
  %_p_scalar_281 = load double, double* %polly.access.Packed_MemRef_call1280, align 8
  %131 = mul i64 %129, 9600
  br label %polly.loop_header259

polly.loop_exit261:                               ; preds = %polly.loop_header259, %polly.loop_header251
  %polly.indvar_next256 = add nuw nsw i64 %polly.indvar255, 1
  %polly.loop_cond257.not.not = icmp slt i64 %polly.indvar255, %125
  %indvars.iv.next1010 = add i64 %indvars.iv1009, 1
  br i1 %polly.loop_cond257.not.not, label %polly.loop_header251, label %polly.loop_exit253

polly.loop_header259:                             ; preds = %polly.loop_header259.preheader, %polly.loop_header259
  %polly.indvar263 = phi i64 [ %polly.indvar_next264, %polly.loop_header259 ], [ 0, %polly.loop_header259.preheader ]
  %132 = add nuw nsw i64 %polly.indvar263, %105
  %polly.access.add.Packed_MemRef_call1267 = add nuw nsw i64 %polly.indvar263, %polly.access.mul.Packed_MemRef_call1266
  %polly.access.Packed_MemRef_call1268 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1267
  %_p_scalar_269 = load double, double* %polly.access.Packed_MemRef_call1268, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_273, %_p_scalar_269
  %133 = mul nuw nsw i64 %132, 8000
  %scevgep275 = getelementptr i8, i8* %scevgep270, i64 %133
  %scevgep275276 = bitcast i8* %scevgep275 to double*
  %_p_scalar_277 = load double, double* %scevgep275276, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114 = fmul fast double %_p_scalar_281, %_p_scalar_277
  %134 = shl i64 %132, 3
  %135 = add i64 %134, %131
  %scevgep282 = getelementptr i8, i8* %call, i64 %135
  %scevgep282283 = bitcast i8* %scevgep282 to double*
  %_p_scalar_284 = load double, double* %scevgep282283, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_284
  store double %p_add42.i118, double* %scevgep282283, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next264 = add nuw nsw i64 %polly.indvar263, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar263, %smin
  br i1 %exitcond1011.not, label %polly.loop_exit261, label %polly.loop_header259

polly.start287:                                   ; preds = %kernel_syr2k.exit
  %malloccall289 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header373

polly.exiting288:                                 ; preds = %polly.loop_exit399
  tail call void @free(i8* %malloccall289)
  br label %kernel_syr2k.exit90

polly.loop_header373:                             ; preds = %polly.loop_exit381, %polly.start287
  %indvar1216 = phi i64 [ %indvar.next1217, %polly.loop_exit381 ], [ 0, %polly.start287 ]
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_exit381 ], [ 1, %polly.start287 ]
  %136 = add i64 %indvar1216, 1
  %137 = mul nuw nsw i64 %polly.indvar376, 9600
  %scevgep385 = getelementptr i8, i8* %call, i64 %137
  %min.iters.check1218 = icmp ult i64 %136, 4
  br i1 %min.iters.check1218, label %polly.loop_header379.preheader, label %vector.ph1219

vector.ph1219:                                    ; preds = %polly.loop_header373
  %n.vec1221 = and i64 %136, -4
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %vector.ph1219
  %index1222 = phi i64 [ 0, %vector.ph1219 ], [ %index.next1223, %vector.body1215 ]
  %138 = shl nuw nsw i64 %index1222, 3
  %139 = getelementptr i8, i8* %scevgep385, i64 %138
  %140 = bitcast i8* %139 to <4 x double>*
  %wide.load1226 = load <4 x double>, <4 x double>* %140, align 8, !alias.scope !79, !noalias !81
  %141 = fmul fast <4 x double> %wide.load1226, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %142 = bitcast i8* %139 to <4 x double>*
  store <4 x double> %141, <4 x double>* %142, align 8, !alias.scope !79, !noalias !81
  %index.next1223 = add i64 %index1222, 4
  %143 = icmp eq i64 %index.next1223, %n.vec1221
  br i1 %143, label %middle.block1213, label %vector.body1215, !llvm.loop !85

middle.block1213:                                 ; preds = %vector.body1215
  %cmp.n1225 = icmp eq i64 %136, %n.vec1221
  br i1 %cmp.n1225, label %polly.loop_exit381, label %polly.loop_header379.preheader

polly.loop_header379.preheader:                   ; preds = %polly.loop_header373, %middle.block1213
  %polly.indvar382.ph = phi i64 [ 0, %polly.loop_header373 ], [ %n.vec1221, %middle.block1213 ]
  br label %polly.loop_header379

polly.loop_exit381:                               ; preds = %polly.loop_header379, %middle.block1213
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar_next377, 1200
  %indvar.next1217 = add i64 %indvar1216, 1
  br i1 %exitcond1037.not, label %polly.loop_header389.preheader, label %polly.loop_header373

polly.loop_header389.preheader:                   ; preds = %polly.loop_exit381
  %Packed_MemRef_call1290 = bitcast i8* %malloccall289 to double*
  br label %polly.loop_header389

polly.loop_header379:                             ; preds = %polly.loop_header379.preheader, %polly.loop_header379
  %polly.indvar382 = phi i64 [ %polly.indvar_next383, %polly.loop_header379 ], [ %polly.indvar382.ph, %polly.loop_header379.preheader ]
  %144 = shl nuw nsw i64 %polly.indvar382, 3
  %scevgep386 = getelementptr i8, i8* %scevgep385, i64 %144
  %scevgep386387 = bitcast i8* %scevgep386 to double*
  %_p_scalar_388 = load double, double* %scevgep386387, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_388, 1.200000e+00
  store double %p_mul.i57, double* %scevgep386387, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next383 = add nuw nsw i64 %polly.indvar382, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar_next383, %polly.indvar376
  br i1 %exitcond1036.not, label %polly.loop_exit381, label %polly.loop_header379, !llvm.loop !86

polly.loop_header389:                             ; preds = %polly.loop_header389.preheader, %polly.loop_exit399
  %indvars.iv1026 = phi i64 [ 0, %polly.loop_header389.preheader ], [ %indvars.iv.next1027, %polly.loop_exit399 ]
  %indvars.iv1021 = phi i64 [ 31, %polly.loop_header389.preheader ], [ %indvars.iv.next1022, %polly.loop_exit399 ]
  %indvars.iv1019 = phi i64 [ 0, %polly.loop_header389.preheader ], [ %indvars.iv.next1020, %polly.loop_exit399 ]
  %polly.indvar392 = phi i64 [ 0, %polly.loop_header389.preheader ], [ %polly.indvar_next393, %polly.loop_exit399 ]
  %145 = shl nuw nsw i64 %indvars.iv1021, 2
  %146 = and i64 %145, 9223372036854775680
  %147 = mul nuw nsw i64 %polly.indvar392, 7
  %148 = add nuw nsw i64 %147, 31
  %pexp.p_div_q395 = lshr i64 %148, 5
  %149 = sub nsw i64 %polly.indvar392, %pexp.p_div_q395
  %polly.loop_guard400 = icmp slt i64 %149, 10
  br i1 %polly.loop_guard400, label %polly.loop_header397.preheader, label %polly.loop_exit399

polly.loop_header397.preheader:                   ; preds = %polly.loop_header389
  %150 = sub nsw i64 %indvars.iv1026, %146
  %151 = add i64 %indvars.iv1019, %146
  %152 = mul nsw i64 %polly.indvar392, -100
  %153 = mul nuw nsw i64 %polly.indvar392, 100
  %154 = add nsw i64 %152, 1199
  br label %polly.loop_header397

polly.loop_exit399:                               ; preds = %polly.loop_exit439, %polly.loop_header389
  %polly.indvar_next393 = add nuw nsw i64 %polly.indvar392, 1
  %indvars.iv.next1020 = add nsw i64 %indvars.iv1019, -28
  %indvars.iv.next1022 = add nuw nsw i64 %indvars.iv1021, 7
  %indvars.iv.next1027 = add nuw nsw i64 %indvars.iv1026, 28
  %exitcond1035.not = icmp eq i64 %polly.indvar_next393, 12
  br i1 %exitcond1035.not, label %polly.exiting288, label %polly.loop_header389

polly.loop_header397:                             ; preds = %polly.loop_header397.preheader, %polly.loop_exit439
  %indvars.iv1028 = phi i64 [ %150, %polly.loop_header397.preheader ], [ %indvars.iv.next1029, %polly.loop_exit439 ]
  %indvars.iv1023 = phi i64 [ %151, %polly.loop_header397.preheader ], [ %indvars.iv.next1024, %polly.loop_exit439 ]
  %polly.indvar401 = phi i64 [ %149, %polly.loop_header397.preheader ], [ %polly.indvar_next402, %polly.loop_exit439 ]
  %smax1025 = call i64 @llvm.smax.i64(i64 %indvars.iv1023, i64 0)
  %155 = add i64 %smax1025, %indvars.iv1028
  %156 = shl nsw i64 %polly.indvar401, 7
  %157 = add nsw i64 %156, %152
  %158 = add nsw i64 %157, -1
  %.inv877 = icmp sgt i64 %157, 99
  %159 = select i1 %.inv877, i64 99, i64 %158
  %polly.loop_guard414 = icmp sgt i64 %159, -1
  %160 = icmp sgt i64 %157, 0
  %161 = select i1 %160, i64 %157, i64 0
  %162 = add nsw i64 %157, 127
  %163 = icmp slt i64 %154, %162
  %164 = select i1 %163, i64 %154, i64 %162
  %polly.loop_guard426.not = icmp sgt i64 %161, %164
  br i1 %polly.loop_guard414, label %polly.loop_header404.us, label %polly.loop_header397.split

polly.loop_header404.us:                          ; preds = %polly.loop_header397, %polly.loop_exit425.us
  %polly.indvar407.us = phi i64 [ %polly.indvar_next408.us, %polly.loop_exit425.us ], [ 0, %polly.loop_header397 ]
  %polly.access.mul.Packed_MemRef_call1290.us = mul nuw nsw i64 %polly.indvar407.us, 1200
  br label %polly.loop_header411.us

polly.loop_header411.us:                          ; preds = %polly.loop_header404.us, %polly.loop_header411.us
  %polly.indvar415.us = phi i64 [ %polly.indvar_next416.us, %polly.loop_header411.us ], [ 0, %polly.loop_header404.us ]
  %165 = add nuw nsw i64 %polly.indvar415.us, %153
  %polly.access.mul.call1419.us = mul nuw nsw i64 %165, 1000
  %polly.access.add.call1420.us = add nuw nsw i64 %polly.access.mul.call1419.us, %polly.indvar407.us
  %polly.access.call1421.us = getelementptr double, double* %polly.access.cast.call1675, i64 %polly.access.add.call1420.us
  %polly.access.call1421.load.us = load double, double* %polly.access.call1421.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us = add nuw nsw i64 %polly.indvar415.us, %polly.access.mul.Packed_MemRef_call1290.us
  %polly.access.Packed_MemRef_call1290.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us
  store double %polly.access.call1421.load.us, double* %polly.access.Packed_MemRef_call1290.us, align 8
  %polly.indvar_next416.us = add nuw i64 %polly.indvar415.us, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar415.us, %159
  br i1 %exitcond1017.not, label %polly.loop_exit413.loopexit.us, label %polly.loop_header411.us

polly.loop_header423.us:                          ; preds = %polly.loop_exit413.loopexit.us, %polly.loop_header423.us
  %polly.indvar427.us = phi i64 [ %polly.indvar_next428.us, %polly.loop_header423.us ], [ %161, %polly.loop_exit413.loopexit.us ]
  %166 = add nuw nsw i64 %polly.indvar427.us, %153
  %polly.access.mul.call1431.us = mul nsw i64 %166, 1000
  %polly.access.add.call1432.us = add nuw nsw i64 %polly.access.mul.call1431.us, %polly.indvar407.us
  %polly.access.call1433.us = getelementptr double, double* %polly.access.cast.call1675, i64 %polly.access.add.call1432.us
  %polly.access.call1433.load.us = load double, double* %polly.access.call1433.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290435.us = add nuw nsw i64 %polly.indvar427.us, %polly.access.mul.Packed_MemRef_call1290.us
  %polly.access.Packed_MemRef_call1290436.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290435.us
  store double %polly.access.call1433.load.us, double* %polly.access.Packed_MemRef_call1290436.us, align 8
  %polly.indvar_next428.us = add nuw nsw i64 %polly.indvar427.us, 1
  %polly.loop_cond429.not.not.us = icmp slt i64 %polly.indvar427.us, %164
  br i1 %polly.loop_cond429.not.not.us, label %polly.loop_header423.us, label %polly.loop_exit425.us

polly.loop_exit425.us:                            ; preds = %polly.loop_header423.us, %polly.loop_exit413.loopexit.us
  %polly.indvar_next408.us = add nuw nsw i64 %polly.indvar407.us, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next408.us, 1000
  br i1 %exitcond1018.not, label %polly.loop_header437.preheader, label %polly.loop_header404.us

polly.loop_exit413.loopexit.us:                   ; preds = %polly.loop_header411.us
  br i1 %polly.loop_guard426.not, label %polly.loop_exit425.us, label %polly.loop_header423.us

polly.loop_header397.split:                       ; preds = %polly.loop_header397
  br i1 %polly.loop_guard426.not, label %polly.loop_header437.preheader, label %polly.loop_header404

polly.loop_exit439:                               ; preds = %polly.loop_exit446, %polly.loop_header437.preheader
  %polly.indvar_next402 = add nsw i64 %polly.indvar401, 1
  %polly.loop_cond403 = icmp slt i64 %polly.indvar401, 9
  %indvars.iv.next1024 = add i64 %indvars.iv1023, -128
  %indvars.iv.next1029 = add i64 %indvars.iv1028, 128
  br i1 %polly.loop_cond403, label %polly.loop_header397, label %polly.loop_exit399

polly.loop_header404:                             ; preds = %polly.loop_header397.split, %polly.loop_exit425
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_exit425 ], [ 0, %polly.loop_header397.split ]
  %polly.access.mul.Packed_MemRef_call1290434 = mul nuw nsw i64 %polly.indvar407, 1200
  br label %polly.loop_header423

polly.loop_exit425:                               ; preds = %polly.loop_header423
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1016.not = icmp eq i64 %polly.indvar_next408, 1000
  br i1 %exitcond1016.not, label %polly.loop_header437.preheader, label %polly.loop_header404

polly.loop_header437.preheader:                   ; preds = %polly.loop_exit425, %polly.loop_exit425.us, %polly.loop_header397.split
  %167 = sub nsw i64 %153, %156
  %168 = icmp sgt i64 %167, 0
  %169 = select i1 %168, i64 %167, i64 0
  %170 = mul nsw i64 %polly.indvar401, -128
  %171 = icmp slt i64 %170, -1072
  %172 = select i1 %171, i64 %170, i64 -1072
  %173 = add nsw i64 %172, 1199
  %polly.loop_guard447.not = icmp sgt i64 %169, %173
  br i1 %polly.loop_guard447.not, label %polly.loop_exit439, label %polly.loop_header437

polly.loop_header423:                             ; preds = %polly.loop_header404, %polly.loop_header423
  %polly.indvar427 = phi i64 [ %polly.indvar_next428, %polly.loop_header423 ], [ %161, %polly.loop_header404 ]
  %174 = add nuw nsw i64 %polly.indvar427, %153
  %polly.access.mul.call1431 = mul nsw i64 %174, 1000
  %polly.access.add.call1432 = add nuw nsw i64 %polly.access.mul.call1431, %polly.indvar407
  %polly.access.call1433 = getelementptr double, double* %polly.access.cast.call1675, i64 %polly.access.add.call1432
  %polly.access.call1433.load = load double, double* %polly.access.call1433, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290435 = add nuw nsw i64 %polly.indvar427, %polly.access.mul.Packed_MemRef_call1290434
  %polly.access.Packed_MemRef_call1290436 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290435
  store double %polly.access.call1433.load, double* %polly.access.Packed_MemRef_call1290436, align 8
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %polly.loop_cond429.not.not = icmp slt i64 %polly.indvar427, %164
  br i1 %polly.loop_cond429.not.not, label %polly.loop_header423, label %polly.loop_exit425

polly.loop_header437:                             ; preds = %polly.loop_header437.preheader, %polly.loop_exit446
  %polly.indvar440 = phi i64 [ %polly.indvar_next441, %polly.loop_exit446 ], [ 0, %polly.loop_header437.preheader ]
  %175 = shl nuw nsw i64 %polly.indvar440, 3
  %scevgep463 = getelementptr i8, i8* %call2, i64 %175
  %polly.access.mul.Packed_MemRef_call1290459 = mul nuw nsw i64 %polly.indvar440, 1200
  br label %polly.loop_header444

polly.loop_exit446:                               ; preds = %polly.loop_exit454
  %polly.indvar_next441 = add nuw nsw i64 %polly.indvar440, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next441, 1000
  br i1 %exitcond1034.not, label %polly.loop_exit439, label %polly.loop_header437

polly.loop_header444:                             ; preds = %polly.loop_exit454, %polly.loop_header437
  %indvars.iv1030 = phi i64 [ %indvars.iv.next1031, %polly.loop_exit454 ], [ %155, %polly.loop_header437 ]
  %polly.indvar448 = phi i64 [ %polly.indvar_next449, %polly.loop_exit454 ], [ %169, %polly.loop_header437 ]
  %smin1032 = call i64 @llvm.smin.i64(i64 %indvars.iv1030, i64 99)
  %176 = add nsw i64 %polly.indvar448, %157
  %polly.loop_guard4551098 = icmp sgt i64 %176, -1
  br i1 %polly.loop_guard4551098, label %polly.loop_header452.preheader, label %polly.loop_exit454

polly.loop_header452.preheader:                   ; preds = %polly.loop_header444
  %177 = add nsw i64 %polly.indvar448, %156
  %178 = mul i64 %177, 8000
  %scevgep464 = getelementptr i8, i8* %scevgep463, i64 %178
  %scevgep464465 = bitcast i8* %scevgep464 to double*
  %_p_scalar_466 = load double, double* %scevgep464465, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1290472 = add nsw i64 %176, %polly.access.mul.Packed_MemRef_call1290459
  %polly.access.Packed_MemRef_call1290473 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290472
  %_p_scalar_474 = load double, double* %polly.access.Packed_MemRef_call1290473, align 8
  %179 = mul i64 %177, 9600
  br label %polly.loop_header452

polly.loop_exit454:                               ; preds = %polly.loop_header452, %polly.loop_header444
  %polly.indvar_next449 = add nuw nsw i64 %polly.indvar448, 1
  %polly.loop_cond450.not.not = icmp slt i64 %polly.indvar448, %173
  %indvars.iv.next1031 = add i64 %indvars.iv1030, 1
  br i1 %polly.loop_cond450.not.not, label %polly.loop_header444, label %polly.loop_exit446

polly.loop_header452:                             ; preds = %polly.loop_header452.preheader, %polly.loop_header452
  %polly.indvar456 = phi i64 [ %polly.indvar_next457, %polly.loop_header452 ], [ 0, %polly.loop_header452.preheader ]
  %180 = add nuw nsw i64 %polly.indvar456, %153
  %polly.access.add.Packed_MemRef_call1290460 = add nuw nsw i64 %polly.indvar456, %polly.access.mul.Packed_MemRef_call1290459
  %polly.access.Packed_MemRef_call1290461 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290460
  %_p_scalar_462 = load double, double* %polly.access.Packed_MemRef_call1290461, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_466, %_p_scalar_462
  %181 = mul nuw nsw i64 %180, 8000
  %scevgep468 = getelementptr i8, i8* %scevgep463, i64 %181
  %scevgep468469 = bitcast i8* %scevgep468 to double*
  %_p_scalar_470 = load double, double* %scevgep468469, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75 = fmul fast double %_p_scalar_474, %_p_scalar_470
  %182 = shl i64 %180, 3
  %183 = add i64 %182, %179
  %scevgep475 = getelementptr i8, i8* %call, i64 %183
  %scevgep475476 = bitcast i8* %scevgep475 to double*
  %_p_scalar_477 = load double, double* %scevgep475476, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_477
  store double %p_add42.i79, double* %scevgep475476, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next457 = add nuw nsw i64 %polly.indvar456, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar456, %smin1032
  br i1 %exitcond1033.not, label %polly.loop_exit454, label %polly.loop_header452

polly.start480:                                   ; preds = %init_array.exit
  %malloccall482 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header566

polly.exiting481:                                 ; preds = %polly.loop_exit592
  tail call void @free(i8* %malloccall482)
  br label %kernel_syr2k.exit

polly.loop_header566:                             ; preds = %polly.loop_exit574, %polly.start480
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit574 ], [ 0, %polly.start480 ]
  %polly.indvar569 = phi i64 [ %polly.indvar_next570, %polly.loop_exit574 ], [ 1, %polly.start480 ]
  %184 = add i64 %indvar, 1
  %185 = mul nuw nsw i64 %polly.indvar569, 9600
  %scevgep578 = getelementptr i8, i8* %call, i64 %185
  %min.iters.check1192 = icmp ult i64 %184, 4
  br i1 %min.iters.check1192, label %polly.loop_header572.preheader, label %vector.ph1193

vector.ph1193:                                    ; preds = %polly.loop_header566
  %n.vec1195 = and i64 %184, -4
  br label %vector.body1191

vector.body1191:                                  ; preds = %vector.body1191, %vector.ph1193
  %index1196 = phi i64 [ 0, %vector.ph1193 ], [ %index.next1197, %vector.body1191 ]
  %186 = shl nuw nsw i64 %index1196, 3
  %187 = getelementptr i8, i8* %scevgep578, i64 %186
  %188 = bitcast i8* %187 to <4 x double>*
  %wide.load1200 = load <4 x double>, <4 x double>* %188, align 8, !alias.scope !89, !noalias !91
  %189 = fmul fast <4 x double> %wide.load1200, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %190 = bitcast i8* %187 to <4 x double>*
  store <4 x double> %189, <4 x double>* %190, align 8, !alias.scope !89, !noalias !91
  %index.next1197 = add i64 %index1196, 4
  %191 = icmp eq i64 %index.next1197, %n.vec1195
  br i1 %191, label %middle.block1189, label %vector.body1191, !llvm.loop !95

middle.block1189:                                 ; preds = %vector.body1191
  %cmp.n1199 = icmp eq i64 %184, %n.vec1195
  br i1 %cmp.n1199, label %polly.loop_exit574, label %polly.loop_header572.preheader

polly.loop_header572.preheader:                   ; preds = %polly.loop_header566, %middle.block1189
  %polly.indvar575.ph = phi i64 [ 0, %polly.loop_header566 ], [ %n.vec1195, %middle.block1189 ]
  br label %polly.loop_header572

polly.loop_exit574:                               ; preds = %polly.loop_header572, %middle.block1189
  %polly.indvar_next570 = add nuw nsw i64 %polly.indvar569, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar_next570, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1059.not, label %polly.loop_header582.preheader, label %polly.loop_header566

polly.loop_header582.preheader:                   ; preds = %polly.loop_exit574
  %Packed_MemRef_call1483 = bitcast i8* %malloccall482 to double*
  br label %polly.loop_header582

polly.loop_header572:                             ; preds = %polly.loop_header572.preheader, %polly.loop_header572
  %polly.indvar575 = phi i64 [ %polly.indvar_next576, %polly.loop_header572 ], [ %polly.indvar575.ph, %polly.loop_header572.preheader ]
  %192 = shl nuw nsw i64 %polly.indvar575, 3
  %scevgep579 = getelementptr i8, i8* %scevgep578, i64 %192
  %scevgep579580 = bitcast i8* %scevgep579 to double*
  %_p_scalar_581 = load double, double* %scevgep579580, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_581, 1.200000e+00
  store double %p_mul.i, double* %scevgep579580, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next576 = add nuw nsw i64 %polly.indvar575, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar_next576, %polly.indvar569
  br i1 %exitcond1058.not, label %polly.loop_exit574, label %polly.loop_header572, !llvm.loop !96

polly.loop_header582:                             ; preds = %polly.loop_header582.preheader, %polly.loop_exit592
  %indvars.iv1048 = phi i64 [ 0, %polly.loop_header582.preheader ], [ %indvars.iv.next1049, %polly.loop_exit592 ]
  %indvars.iv1043 = phi i64 [ 31, %polly.loop_header582.preheader ], [ %indvars.iv.next1044, %polly.loop_exit592 ]
  %indvars.iv1041 = phi i64 [ 0, %polly.loop_header582.preheader ], [ %indvars.iv.next1042, %polly.loop_exit592 ]
  %polly.indvar585 = phi i64 [ 0, %polly.loop_header582.preheader ], [ %polly.indvar_next586, %polly.loop_exit592 ]
  %193 = shl nuw nsw i64 %indvars.iv1043, 2
  %194 = and i64 %193, 9223372036854775680
  %195 = mul nuw nsw i64 %polly.indvar585, 7
  %196 = add nuw nsw i64 %195, 31
  %pexp.p_div_q588 = lshr i64 %196, 5
  %197 = sub nsw i64 %polly.indvar585, %pexp.p_div_q588
  %polly.loop_guard593 = icmp slt i64 %197, 10
  br i1 %polly.loop_guard593, label %polly.loop_header590.preheader, label %polly.loop_exit592

polly.loop_header590.preheader:                   ; preds = %polly.loop_header582
  %198 = sub nsw i64 %indvars.iv1048, %194
  %199 = add i64 %indvars.iv1041, %194
  %200 = mul nsw i64 %polly.indvar585, -100
  %201 = mul nuw nsw i64 %polly.indvar585, 100
  %202 = add nsw i64 %200, 1199
  br label %polly.loop_header590

polly.loop_exit592:                               ; preds = %polly.loop_exit632, %polly.loop_header582
  %polly.indvar_next586 = add nuw nsw i64 %polly.indvar585, 1
  %indvars.iv.next1042 = add nsw i64 %indvars.iv1041, -28
  %indvars.iv.next1044 = add nuw nsw i64 %indvars.iv1043, 7
  %indvars.iv.next1049 = add nuw nsw i64 %indvars.iv1048, 28
  %exitcond1057.not = icmp eq i64 %polly.indvar_next586, 12
  br i1 %exitcond1057.not, label %polly.exiting481, label %polly.loop_header582

polly.loop_header590:                             ; preds = %polly.loop_header590.preheader, %polly.loop_exit632
  %indvars.iv1050 = phi i64 [ %198, %polly.loop_header590.preheader ], [ %indvars.iv.next1051, %polly.loop_exit632 ]
  %indvars.iv1045 = phi i64 [ %199, %polly.loop_header590.preheader ], [ %indvars.iv.next1046, %polly.loop_exit632 ]
  %polly.indvar594 = phi i64 [ %197, %polly.loop_header590.preheader ], [ %polly.indvar_next595, %polly.loop_exit632 ]
  %smax1047 = call i64 @llvm.smax.i64(i64 %indvars.iv1045, i64 0)
  %203 = add i64 %smax1047, %indvars.iv1050
  %204 = shl nsw i64 %polly.indvar594, 7
  %205 = add nsw i64 %204, %200
  %206 = add nsw i64 %205, -1
  %.inv878 = icmp sgt i64 %205, 99
  %207 = select i1 %.inv878, i64 99, i64 %206
  %polly.loop_guard607 = icmp sgt i64 %207, -1
  %208 = icmp sgt i64 %205, 0
  %209 = select i1 %208, i64 %205, i64 0
  %210 = add nsw i64 %205, 127
  %211 = icmp slt i64 %202, %210
  %212 = select i1 %211, i64 %202, i64 %210
  %polly.loop_guard619.not = icmp sgt i64 %209, %212
  br i1 %polly.loop_guard607, label %polly.loop_header597.us, label %polly.loop_header590.split

polly.loop_header597.us:                          ; preds = %polly.loop_header590, %polly.loop_exit618.us
  %polly.indvar600.us = phi i64 [ %polly.indvar_next601.us, %polly.loop_exit618.us ], [ 0, %polly.loop_header590 ]
  %polly.access.mul.Packed_MemRef_call1483.us = mul nuw nsw i64 %polly.indvar600.us, 1200
  br label %polly.loop_header604.us

polly.loop_header604.us:                          ; preds = %polly.loop_header597.us, %polly.loop_header604.us
  %polly.indvar608.us = phi i64 [ %polly.indvar_next609.us, %polly.loop_header604.us ], [ 0, %polly.loop_header597.us ]
  %213 = add nuw nsw i64 %polly.indvar608.us, %201
  %polly.access.mul.call1612.us = mul nuw nsw i64 %213, 1000
  %polly.access.add.call1613.us = add nuw nsw i64 %polly.access.mul.call1612.us, %polly.indvar600.us
  %polly.access.call1614.us = getelementptr double, double* %polly.access.cast.call1675, i64 %polly.access.add.call1613.us
  %polly.access.call1614.load.us = load double, double* %polly.access.call1614.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1483.us = add nuw nsw i64 %polly.indvar608.us, %polly.access.mul.Packed_MemRef_call1483.us
  %polly.access.Packed_MemRef_call1483.us = getelementptr double, double* %Packed_MemRef_call1483, i64 %polly.access.add.Packed_MemRef_call1483.us
  store double %polly.access.call1614.load.us, double* %polly.access.Packed_MemRef_call1483.us, align 8
  %polly.indvar_next609.us = add nuw i64 %polly.indvar608.us, 1
  %exitcond1039.not = icmp eq i64 %polly.indvar608.us, %207
  br i1 %exitcond1039.not, label %polly.loop_exit606.loopexit.us, label %polly.loop_header604.us

polly.loop_header616.us:                          ; preds = %polly.loop_exit606.loopexit.us, %polly.loop_header616.us
  %polly.indvar620.us = phi i64 [ %polly.indvar_next621.us, %polly.loop_header616.us ], [ %209, %polly.loop_exit606.loopexit.us ]
  %214 = add nuw nsw i64 %polly.indvar620.us, %201
  %polly.access.mul.call1624.us = mul nsw i64 %214, 1000
  %polly.access.add.call1625.us = add nuw nsw i64 %polly.access.mul.call1624.us, %polly.indvar600.us
  %polly.access.call1626.us = getelementptr double, double* %polly.access.cast.call1675, i64 %polly.access.add.call1625.us
  %polly.access.call1626.load.us = load double, double* %polly.access.call1626.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1483628.us = add nuw nsw i64 %polly.indvar620.us, %polly.access.mul.Packed_MemRef_call1483.us
  %polly.access.Packed_MemRef_call1483629.us = getelementptr double, double* %Packed_MemRef_call1483, i64 %polly.access.add.Packed_MemRef_call1483628.us
  store double %polly.access.call1626.load.us, double* %polly.access.Packed_MemRef_call1483629.us, align 8
  %polly.indvar_next621.us = add nuw nsw i64 %polly.indvar620.us, 1
  %polly.loop_cond622.not.not.us = icmp slt i64 %polly.indvar620.us, %212
  br i1 %polly.loop_cond622.not.not.us, label %polly.loop_header616.us, label %polly.loop_exit618.us

polly.loop_exit618.us:                            ; preds = %polly.loop_header616.us, %polly.loop_exit606.loopexit.us
  %polly.indvar_next601.us = add nuw nsw i64 %polly.indvar600.us, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar_next601.us, 1000
  br i1 %exitcond1040.not, label %polly.loop_header630.preheader, label %polly.loop_header597.us

polly.loop_exit606.loopexit.us:                   ; preds = %polly.loop_header604.us
  br i1 %polly.loop_guard619.not, label %polly.loop_exit618.us, label %polly.loop_header616.us

polly.loop_header590.split:                       ; preds = %polly.loop_header590
  br i1 %polly.loop_guard619.not, label %polly.loop_header630.preheader, label %polly.loop_header597

polly.loop_exit632:                               ; preds = %polly.loop_exit639, %polly.loop_header630.preheader
  %polly.indvar_next595 = add nsw i64 %polly.indvar594, 1
  %polly.loop_cond596 = icmp slt i64 %polly.indvar594, 9
  %indvars.iv.next1046 = add i64 %indvars.iv1045, -128
  %indvars.iv.next1051 = add i64 %indvars.iv1050, 128
  br i1 %polly.loop_cond596, label %polly.loop_header590, label %polly.loop_exit592

polly.loop_header597:                             ; preds = %polly.loop_header590.split, %polly.loop_exit618
  %polly.indvar600 = phi i64 [ %polly.indvar_next601, %polly.loop_exit618 ], [ 0, %polly.loop_header590.split ]
  %polly.access.mul.Packed_MemRef_call1483627 = mul nuw nsw i64 %polly.indvar600, 1200
  br label %polly.loop_header616

polly.loop_exit618:                               ; preds = %polly.loop_header616
  %polly.indvar_next601 = add nuw nsw i64 %polly.indvar600, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar_next601, 1000
  br i1 %exitcond1038.not, label %polly.loop_header630.preheader, label %polly.loop_header597

polly.loop_header630.preheader:                   ; preds = %polly.loop_exit618, %polly.loop_exit618.us, %polly.loop_header590.split
  %215 = sub nsw i64 %201, %204
  %216 = icmp sgt i64 %215, 0
  %217 = select i1 %216, i64 %215, i64 0
  %218 = mul nsw i64 %polly.indvar594, -128
  %219 = icmp slt i64 %218, -1072
  %220 = select i1 %219, i64 %218, i64 -1072
  %221 = add nsw i64 %220, 1199
  %polly.loop_guard640.not = icmp sgt i64 %217, %221
  br i1 %polly.loop_guard640.not, label %polly.loop_exit632, label %polly.loop_header630

polly.loop_header616:                             ; preds = %polly.loop_header597, %polly.loop_header616
  %polly.indvar620 = phi i64 [ %polly.indvar_next621, %polly.loop_header616 ], [ %209, %polly.loop_header597 ]
  %222 = add nuw nsw i64 %polly.indvar620, %201
  %polly.access.mul.call1624 = mul nsw i64 %222, 1000
  %polly.access.add.call1625 = add nuw nsw i64 %polly.access.mul.call1624, %polly.indvar600
  %polly.access.call1626 = getelementptr double, double* %polly.access.cast.call1675, i64 %polly.access.add.call1625
  %polly.access.call1626.load = load double, double* %polly.access.call1626, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1483628 = add nuw nsw i64 %polly.indvar620, %polly.access.mul.Packed_MemRef_call1483627
  %polly.access.Packed_MemRef_call1483629 = getelementptr double, double* %Packed_MemRef_call1483, i64 %polly.access.add.Packed_MemRef_call1483628
  store double %polly.access.call1626.load, double* %polly.access.Packed_MemRef_call1483629, align 8
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %polly.loop_cond622.not.not = icmp slt i64 %polly.indvar620, %212
  br i1 %polly.loop_cond622.not.not, label %polly.loop_header616, label %polly.loop_exit618

polly.loop_header630:                             ; preds = %polly.loop_header630.preheader, %polly.loop_exit639
  %polly.indvar633 = phi i64 [ %polly.indvar_next634, %polly.loop_exit639 ], [ 0, %polly.loop_header630.preheader ]
  %223 = shl nuw nsw i64 %polly.indvar633, 3
  %scevgep656 = getelementptr i8, i8* %call2, i64 %223
  %polly.access.mul.Packed_MemRef_call1483652 = mul nuw nsw i64 %polly.indvar633, 1200
  br label %polly.loop_header637

polly.loop_exit639:                               ; preds = %polly.loop_exit647
  %polly.indvar_next634 = add nuw nsw i64 %polly.indvar633, 1
  %exitcond1056.not = icmp eq i64 %polly.indvar_next634, 1000
  br i1 %exitcond1056.not, label %polly.loop_exit632, label %polly.loop_header630

polly.loop_header637:                             ; preds = %polly.loop_exit647, %polly.loop_header630
  %indvars.iv1052 = phi i64 [ %indvars.iv.next1053, %polly.loop_exit647 ], [ %203, %polly.loop_header630 ]
  %polly.indvar641 = phi i64 [ %polly.indvar_next642, %polly.loop_exit647 ], [ %217, %polly.loop_header630 ]
  %smin1054 = call i64 @llvm.smin.i64(i64 %indvars.iv1052, i64 99)
  %224 = add nsw i64 %polly.indvar641, %205
  %polly.loop_guard6481099 = icmp sgt i64 %224, -1
  br i1 %polly.loop_guard6481099, label %polly.loop_header645.preheader, label %polly.loop_exit647

polly.loop_header645.preheader:                   ; preds = %polly.loop_header637
  %225 = add nsw i64 %polly.indvar641, %204
  %226 = mul i64 %225, 8000
  %scevgep657 = getelementptr i8, i8* %scevgep656, i64 %226
  %scevgep657658 = bitcast i8* %scevgep657 to double*
  %_p_scalar_659 = load double, double* %scevgep657658, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1483665 = add nsw i64 %224, %polly.access.mul.Packed_MemRef_call1483652
  %polly.access.Packed_MemRef_call1483666 = getelementptr double, double* %Packed_MemRef_call1483, i64 %polly.access.add.Packed_MemRef_call1483665
  %_p_scalar_667 = load double, double* %polly.access.Packed_MemRef_call1483666, align 8
  %227 = mul i64 %225, 9600
  br label %polly.loop_header645

polly.loop_exit647:                               ; preds = %polly.loop_header645, %polly.loop_header637
  %polly.indvar_next642 = add nuw nsw i64 %polly.indvar641, 1
  %polly.loop_cond643.not.not = icmp slt i64 %polly.indvar641, %221
  %indvars.iv.next1053 = add i64 %indvars.iv1052, 1
  br i1 %polly.loop_cond643.not.not, label %polly.loop_header637, label %polly.loop_exit639

polly.loop_header645:                             ; preds = %polly.loop_header645.preheader, %polly.loop_header645
  %polly.indvar649 = phi i64 [ %polly.indvar_next650, %polly.loop_header645 ], [ 0, %polly.loop_header645.preheader ]
  %228 = add nuw nsw i64 %polly.indvar649, %201
  %polly.access.add.Packed_MemRef_call1483653 = add nuw nsw i64 %polly.indvar649, %polly.access.mul.Packed_MemRef_call1483652
  %polly.access.Packed_MemRef_call1483654 = getelementptr double, double* %Packed_MemRef_call1483, i64 %polly.access.add.Packed_MemRef_call1483653
  %_p_scalar_655 = load double, double* %polly.access.Packed_MemRef_call1483654, align 8
  %p_mul27.i = fmul fast double %_p_scalar_659, %_p_scalar_655
  %229 = mul nuw nsw i64 %228, 8000
  %scevgep661 = getelementptr i8, i8* %scevgep656, i64 %229
  %scevgep661662 = bitcast i8* %scevgep661 to double*
  %_p_scalar_663 = load double, double* %scevgep661662, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i = fmul fast double %_p_scalar_667, %_p_scalar_663
  %230 = shl i64 %228, 3
  %231 = add i64 %230, %227
  %scevgep668 = getelementptr i8, i8* %call, i64 %231
  %scevgep668669 = bitcast i8* %scevgep668 to double*
  %_p_scalar_670 = load double, double* %scevgep668669, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_670
  store double %p_add42.i, double* %scevgep668669, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next650 = add nuw nsw i64 %polly.indvar649, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar649, %smin1054
  br i1 %exitcond1055.not, label %polly.loop_exit647, label %polly.loop_header645

polly.loop_header797:                             ; preds = %entry, %polly.loop_exit805
  %indvars.iv1084 = phi i64 [ %indvars.iv.next1085, %polly.loop_exit805 ], [ 0, %entry ]
  %polly.indvar800 = phi i64 [ %polly.indvar_next801, %polly.loop_exit805 ], [ 0, %entry ]
  %smin1086 = call i64 @llvm.smin.i64(i64 %indvars.iv1084, i64 -1168)
  %232 = shl nsw i64 %polly.indvar800, 5
  %233 = add nsw i64 %smin1086, 1199
  br label %polly.loop_header803

polly.loop_exit805:                               ; preds = %polly.loop_exit811
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %indvars.iv.next1085 = add nsw i64 %indvars.iv1084, -32
  %exitcond1089.not = icmp eq i64 %polly.indvar_next801, 38
  br i1 %exitcond1089.not, label %polly.loop_header824, label %polly.loop_header797

polly.loop_header803:                             ; preds = %polly.loop_exit811, %polly.loop_header797
  %indvars.iv1080 = phi i64 [ %indvars.iv.next1081, %polly.loop_exit811 ], [ 0, %polly.loop_header797 ]
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_exit811 ], [ 0, %polly.loop_header797 ]
  %234 = mul nsw i64 %polly.indvar806, -32
  %smin1130 = call i64 @llvm.smin.i64(i64 %234, i64 -1168)
  %235 = add nsw i64 %smin1130, 1200
  %smin1082 = call i64 @llvm.smin.i64(i64 %indvars.iv1080, i64 -1168)
  %236 = shl nsw i64 %polly.indvar806, 5
  %237 = add nsw i64 %smin1082, 1199
  br label %polly.loop_header809

polly.loop_exit811:                               ; preds = %polly.loop_exit817
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %indvars.iv.next1081 = add nsw i64 %indvars.iv1080, -32
  %exitcond1088.not = icmp eq i64 %polly.indvar_next807, 38
  br i1 %exitcond1088.not, label %polly.loop_exit805, label %polly.loop_header803

polly.loop_header809:                             ; preds = %polly.loop_exit817, %polly.loop_header803
  %polly.indvar812 = phi i64 [ 0, %polly.loop_header803 ], [ %polly.indvar_next813, %polly.loop_exit817 ]
  %238 = add nuw nsw i64 %polly.indvar812, %232
  %239 = trunc i64 %238 to i32
  %240 = mul nuw nsw i64 %238, 9600
  %min.iters.check = icmp eq i64 %235, 0
  br i1 %min.iters.check, label %polly.loop_header815, label %vector.ph1131

vector.ph1131:                                    ; preds = %polly.loop_header809
  %broadcast.splatinsert1138 = insertelement <4 x i64> poison, i64 %236, i32 0
  %broadcast.splat1139 = shufflevector <4 x i64> %broadcast.splatinsert1138, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1140 = insertelement <4 x i32> poison, i32 %239, i32 0
  %broadcast.splat1141 = shufflevector <4 x i32> %broadcast.splatinsert1140, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1129

vector.body1129:                                  ; preds = %vector.body1129, %vector.ph1131
  %index1132 = phi i64 [ 0, %vector.ph1131 ], [ %index.next1133, %vector.body1129 ]
  %vec.ind1136 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1131 ], [ %vec.ind.next1137, %vector.body1129 ]
  %241 = add nuw nsw <4 x i64> %vec.ind1136, %broadcast.splat1139
  %242 = trunc <4 x i64> %241 to <4 x i32>
  %243 = mul <4 x i32> %broadcast.splat1141, %242
  %244 = add <4 x i32> %243, <i32 3, i32 3, i32 3, i32 3>
  %245 = urem <4 x i32> %244, <i32 1200, i32 1200, i32 1200, i32 1200>
  %246 = sitofp <4 x i32> %245 to <4 x double>
  %247 = fmul fast <4 x double> %246, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %248 = extractelement <4 x i64> %241, i32 0
  %249 = shl i64 %248, 3
  %250 = add nuw nsw i64 %249, %240
  %251 = getelementptr i8, i8* %call, i64 %250
  %252 = bitcast i8* %251 to <4 x double>*
  store <4 x double> %247, <4 x double>* %252, align 8, !alias.scope !99, !noalias !101
  %index.next1133 = add i64 %index1132, 4
  %vec.ind.next1137 = add <4 x i64> %vec.ind1136, <i64 4, i64 4, i64 4, i64 4>
  %253 = icmp eq i64 %index.next1133, %235
  br i1 %253, label %polly.loop_exit817, label %vector.body1129, !llvm.loop !104

polly.loop_exit817:                               ; preds = %vector.body1129, %polly.loop_header815
  %polly.indvar_next813 = add nuw nsw i64 %polly.indvar812, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar812, %233
  br i1 %exitcond1087.not, label %polly.loop_exit811, label %polly.loop_header809

polly.loop_header815:                             ; preds = %polly.loop_header809, %polly.loop_header815
  %polly.indvar818 = phi i64 [ %polly.indvar_next819, %polly.loop_header815 ], [ 0, %polly.loop_header809 ]
  %254 = add nuw nsw i64 %polly.indvar818, %236
  %255 = trunc i64 %254 to i32
  %256 = mul i32 %255, %239
  %257 = add i32 %256, 3
  %258 = urem i32 %257, 1200
  %p_conv31.i = sitofp i32 %258 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %259 = shl i64 %254, 3
  %260 = add nuw nsw i64 %259, %240
  %scevgep821 = getelementptr i8, i8* %call, i64 %260
  %scevgep821822 = bitcast i8* %scevgep821 to double*
  store double %p_div33.i, double* %scevgep821822, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next819 = add nuw nsw i64 %polly.indvar818, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar818, %237
  br i1 %exitcond1083.not, label %polly.loop_exit817, label %polly.loop_header815, !llvm.loop !105

polly.loop_header824:                             ; preds = %polly.loop_exit805, %polly.loop_exit832
  %indvars.iv1074 = phi i64 [ %indvars.iv.next1075, %polly.loop_exit832 ], [ 0, %polly.loop_exit805 ]
  %polly.indvar827 = phi i64 [ %polly.indvar_next828, %polly.loop_exit832 ], [ 0, %polly.loop_exit805 ]
  %smin1076 = call i64 @llvm.smin.i64(i64 %indvars.iv1074, i64 -1168)
  %261 = shl nsw i64 %polly.indvar827, 5
  %262 = add nsw i64 %smin1076, 1199
  br label %polly.loop_header830

polly.loop_exit832:                               ; preds = %polly.loop_exit838
  %polly.indvar_next828 = add nuw nsw i64 %polly.indvar827, 1
  %indvars.iv.next1075 = add nsw i64 %indvars.iv1074, -32
  %exitcond1079.not = icmp eq i64 %polly.indvar_next828, 38
  br i1 %exitcond1079.not, label %polly.loop_header850, label %polly.loop_header824

polly.loop_header830:                             ; preds = %polly.loop_exit838, %polly.loop_header824
  %indvars.iv1070 = phi i64 [ %indvars.iv.next1071, %polly.loop_exit838 ], [ 0, %polly.loop_header824 ]
  %polly.indvar833 = phi i64 [ %polly.indvar_next834, %polly.loop_exit838 ], [ 0, %polly.loop_header824 ]
  %263 = mul nsw i64 %polly.indvar833, -32
  %smin1145 = call i64 @llvm.smin.i64(i64 %263, i64 -968)
  %264 = add nsw i64 %smin1145, 1000
  %smin1072 = call i64 @llvm.smin.i64(i64 %indvars.iv1070, i64 -968)
  %265 = shl nsw i64 %polly.indvar833, 5
  %266 = add nsw i64 %smin1072, 999
  br label %polly.loop_header836

polly.loop_exit838:                               ; preds = %polly.loop_exit844
  %polly.indvar_next834 = add nuw nsw i64 %polly.indvar833, 1
  %indvars.iv.next1071 = add nsw i64 %indvars.iv1070, -32
  %exitcond1078.not = icmp eq i64 %polly.indvar_next834, 32
  br i1 %exitcond1078.not, label %polly.loop_exit832, label %polly.loop_header830

polly.loop_header836:                             ; preds = %polly.loop_exit844, %polly.loop_header830
  %polly.indvar839 = phi i64 [ 0, %polly.loop_header830 ], [ %polly.indvar_next840, %polly.loop_exit844 ]
  %267 = add nuw nsw i64 %polly.indvar839, %261
  %268 = trunc i64 %267 to i32
  %269 = mul nuw nsw i64 %267, 8000
  %min.iters.check1146 = icmp eq i64 %264, 0
  br i1 %min.iters.check1146, label %polly.loop_header842, label %vector.ph1147

vector.ph1147:                                    ; preds = %polly.loop_header836
  %broadcast.splatinsert1156 = insertelement <4 x i64> poison, i64 %265, i32 0
  %broadcast.splat1157 = shufflevector <4 x i64> %broadcast.splatinsert1156, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1158 = insertelement <4 x i32> poison, i32 %268, i32 0
  %broadcast.splat1159 = shufflevector <4 x i32> %broadcast.splatinsert1158, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1144

vector.body1144:                                  ; preds = %vector.body1144, %vector.ph1147
  %index1150 = phi i64 [ 0, %vector.ph1147 ], [ %index.next1151, %vector.body1144 ]
  %vec.ind1154 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1147 ], [ %vec.ind.next1155, %vector.body1144 ]
  %270 = add nuw nsw <4 x i64> %vec.ind1154, %broadcast.splat1157
  %271 = trunc <4 x i64> %270 to <4 x i32>
  %272 = mul <4 x i32> %broadcast.splat1159, %271
  %273 = add <4 x i32> %272, <i32 2, i32 2, i32 2, i32 2>
  %274 = urem <4 x i32> %273, <i32 1000, i32 1000, i32 1000, i32 1000>
  %275 = sitofp <4 x i32> %274 to <4 x double>
  %276 = fmul fast <4 x double> %275, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %277 = extractelement <4 x i64> %270, i32 0
  %278 = shl i64 %277, 3
  %279 = add nuw nsw i64 %278, %269
  %280 = getelementptr i8, i8* %call2, i64 %279
  %281 = bitcast i8* %280 to <4 x double>*
  store <4 x double> %276, <4 x double>* %281, align 8, !alias.scope !103, !noalias !106
  %index.next1151 = add i64 %index1150, 4
  %vec.ind.next1155 = add <4 x i64> %vec.ind1154, <i64 4, i64 4, i64 4, i64 4>
  %282 = icmp eq i64 %index.next1151, %264
  br i1 %282, label %polly.loop_exit844, label %vector.body1144, !llvm.loop !107

polly.loop_exit844:                               ; preds = %vector.body1144, %polly.loop_header842
  %polly.indvar_next840 = add nuw nsw i64 %polly.indvar839, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar839, %262
  br i1 %exitcond1077.not, label %polly.loop_exit838, label %polly.loop_header836

polly.loop_header842:                             ; preds = %polly.loop_header836, %polly.loop_header842
  %polly.indvar845 = phi i64 [ %polly.indvar_next846, %polly.loop_header842 ], [ 0, %polly.loop_header836 ]
  %283 = add nuw nsw i64 %polly.indvar845, %265
  %284 = trunc i64 %283 to i32
  %285 = mul i32 %284, %268
  %286 = add i32 %285, 2
  %287 = urem i32 %286, 1000
  %p_conv10.i = sitofp i32 %287 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %288 = shl i64 %283, 3
  %289 = add nuw nsw i64 %288, %269
  %scevgep848 = getelementptr i8, i8* %call2, i64 %289
  %scevgep848849 = bitcast i8* %scevgep848 to double*
  store double %p_div12.i, double* %scevgep848849, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %exitcond1073.not = icmp eq i64 %polly.indvar845, %266
  br i1 %exitcond1073.not, label %polly.loop_exit844, label %polly.loop_header842, !llvm.loop !108

polly.loop_header850:                             ; preds = %polly.loop_exit832, %polly.loop_exit858
  %indvars.iv1064 = phi i64 [ %indvars.iv.next1065, %polly.loop_exit858 ], [ 0, %polly.loop_exit832 ]
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_exit858 ], [ 0, %polly.loop_exit832 ]
  %smin1066 = call i64 @llvm.smin.i64(i64 %indvars.iv1064, i64 -1168)
  %290 = shl nsw i64 %polly.indvar853, 5
  %291 = add nsw i64 %smin1066, 1199
  br label %polly.loop_header856

polly.loop_exit858:                               ; preds = %polly.loop_exit864
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %indvars.iv.next1065 = add nsw i64 %indvars.iv1064, -32
  %exitcond1069.not = icmp eq i64 %polly.indvar_next854, 38
  br i1 %exitcond1069.not, label %init_array.exit, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_exit864, %polly.loop_header850
  %indvars.iv1060 = phi i64 [ %indvars.iv.next1061, %polly.loop_exit864 ], [ 0, %polly.loop_header850 ]
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_exit864 ], [ 0, %polly.loop_header850 ]
  %292 = mul nsw i64 %polly.indvar859, -32
  %smin1163 = call i64 @llvm.smin.i64(i64 %292, i64 -968)
  %293 = add nsw i64 %smin1163, 1000
  %smin1062 = call i64 @llvm.smin.i64(i64 %indvars.iv1060, i64 -968)
  %294 = shl nsw i64 %polly.indvar859, 5
  %295 = add nsw i64 %smin1062, 999
  br label %polly.loop_header862

polly.loop_exit864:                               ; preds = %polly.loop_exit870
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %indvars.iv.next1061 = add nsw i64 %indvars.iv1060, -32
  %exitcond1068.not = icmp eq i64 %polly.indvar_next860, 32
  br i1 %exitcond1068.not, label %polly.loop_exit858, label %polly.loop_header856

polly.loop_header862:                             ; preds = %polly.loop_exit870, %polly.loop_header856
  %polly.indvar865 = phi i64 [ 0, %polly.loop_header856 ], [ %polly.indvar_next866, %polly.loop_exit870 ]
  %296 = add nuw nsw i64 %polly.indvar865, %290
  %297 = trunc i64 %296 to i32
  %298 = mul nuw nsw i64 %296, 8000
  %min.iters.check1164 = icmp eq i64 %293, 0
  br i1 %min.iters.check1164, label %polly.loop_header868, label %vector.ph1165

vector.ph1165:                                    ; preds = %polly.loop_header862
  %broadcast.splatinsert1174 = insertelement <4 x i64> poison, i64 %294, i32 0
  %broadcast.splat1175 = shufflevector <4 x i64> %broadcast.splatinsert1174, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1176 = insertelement <4 x i32> poison, i32 %297, i32 0
  %broadcast.splat1177 = shufflevector <4 x i32> %broadcast.splatinsert1176, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1162

vector.body1162:                                  ; preds = %vector.body1162, %vector.ph1165
  %index1168 = phi i64 [ 0, %vector.ph1165 ], [ %index.next1169, %vector.body1162 ]
  %vec.ind1172 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1165 ], [ %vec.ind.next1173, %vector.body1162 ]
  %299 = add nuw nsw <4 x i64> %vec.ind1172, %broadcast.splat1175
  %300 = trunc <4 x i64> %299 to <4 x i32>
  %301 = mul <4 x i32> %broadcast.splat1177, %300
  %302 = add <4 x i32> %301, <i32 1, i32 1, i32 1, i32 1>
  %303 = urem <4 x i32> %302, <i32 1200, i32 1200, i32 1200, i32 1200>
  %304 = sitofp <4 x i32> %303 to <4 x double>
  %305 = fmul fast <4 x double> %304, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %306 = extractelement <4 x i64> %299, i32 0
  %307 = shl i64 %306, 3
  %308 = add nuw nsw i64 %307, %298
  %309 = getelementptr i8, i8* %call1, i64 %308
  %310 = bitcast i8* %309 to <4 x double>*
  store <4 x double> %305, <4 x double>* %310, align 8, !alias.scope !102, !noalias !109
  %index.next1169 = add i64 %index1168, 4
  %vec.ind.next1173 = add <4 x i64> %vec.ind1172, <i64 4, i64 4, i64 4, i64 4>
  %311 = icmp eq i64 %index.next1169, %293
  br i1 %311, label %polly.loop_exit870, label %vector.body1162, !llvm.loop !110

polly.loop_exit870:                               ; preds = %vector.body1162, %polly.loop_header868
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar865, %291
  br i1 %exitcond1067.not, label %polly.loop_exit864, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_header862, %polly.loop_header868
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_header868 ], [ 0, %polly.loop_header862 ]
  %312 = add nuw nsw i64 %polly.indvar871, %294
  %313 = trunc i64 %312 to i32
  %314 = mul i32 %313, %297
  %315 = add i32 %314, 1
  %316 = urem i32 %315, 1200
  %p_conv.i = sitofp i32 %316 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %317 = shl i64 %312, 3
  %318 = add nuw nsw i64 %317, %298
  %scevgep875 = getelementptr i8, i8* %call1, i64 %318
  %scevgep875876 = bitcast i8* %scevgep875 to double*
  store double %p_div.i, double* %scevgep875876, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar871, %295
  br i1 %exitcond1063.not, label %polly.loop_exit870, label %polly.loop_header868, !llvm.loop !111
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
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 100}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 2048}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !23, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.loop.interchange.followup_interchanged", !42}
!42 = distinct !{!42, !12, !23, !40, !43, !44, !45}
!43 = !{!"llvm.data.pack.enable", i1 true}
!44 = !{!"llvm.data.pack.array", !21}
!45 = !{!"llvm.data.pack.allocate", !"malloc"}
!46 = distinct !{!46, !12, !23, !47, !48, !49, !50, !51, !57}
!47 = !{!"llvm.loop.id", !"i"}
!48 = !{!"llvm.loop.tile.enable", i1 true}
!49 = !{!"llvm.loop.tile.depth", i32 3}
!50 = !{!"llvm.loop.tile.size", i32 128}
!51 = !{!"llvm.loop.tile.followup_floor", !52}
!52 = distinct !{!52, !12, !23, !53, !54, !55, !56}
!53 = !{!"llvm.loop.id", !"i1"}
!54 = !{!"llvm.loop.interchange.enable", i1 true}
!55 = !{!"llvm.loop.interchange.depth", i32 5}
!56 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!57 = !{!"llvm.loop.tile.followup_tile", !58}
!58 = distinct !{!58, !12, !23, !59}
!59 = !{!"llvm.loop.id", !"i2"}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = distinct !{!63, !12, !13}
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !4, i64 0}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !69, !"polly.alias.scope.MemRef_call"}
!69 = distinct !{!69, !"polly.alias.scope.domain"}
!70 = !{!71, !72, !73}
!71 = distinct !{!71, !69, !"polly.alias.scope.MemRef_call1"}
!72 = distinct !{!72, !69, !"polly.alias.scope.MemRef_call2"}
!73 = distinct !{!73, !69, !"polly.alias.scope.Packed_MemRef_call1"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !76, !13}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!68, !72, !73}
!78 = !{!68, !71, !73}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call1"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !76, !13}
!87 = !{!79, !83, !84}
!88 = !{!79, !82, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93, !94}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !90, !"polly.alias.scope.Packed_MemRef_call1"}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !76, !13}
!97 = !{!89, !93, !94}
!98 = !{!89, !92, !94}
!99 = distinct !{!99, !100, !"polly.alias.scope.MemRef_call"}
!100 = distinct !{!100, !"polly.alias.scope.domain"}
!101 = !{!102, !103}
!102 = distinct !{!102, !100, !"polly.alias.scope.MemRef_call1"}
!103 = distinct !{!103, !100, !"polly.alias.scope.MemRef_call2"}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !76, !13}
!106 = !{!102, !99}
!107 = distinct !{!107, !13}
!108 = distinct !{!108, !76, !13}
!109 = !{!103, !99}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !76, !13}
