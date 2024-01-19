; ModuleID = 'syr2k_exhaustive/mmp_all_SM_5040.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_5040.c"
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
  %call811 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1663 = bitcast i8* %call1 to double*
  %polly.access.call1672 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1672, %call2
  %polly.access.call2692 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2692, %call1
  %2 = or i1 %0, %1
  %polly.access.call712 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call712, %call2
  %4 = icmp ule i8* %polly.access.call2692, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call712, %call1
  %8 = icmp ule i8* %polly.access.call1672, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header785, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1110 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1109 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1108 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1107 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1107, %scevgep1110
  %bound1 = icmp ult i8* %scevgep1109, %scevgep1108
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
  br i1 %exitcond18.not.i, label %vector.ph1114, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1114:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1121 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1122 = shufflevector <4 x i64> %broadcast.splatinsert1121, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1113

vector.body1113:                                  ; preds = %vector.body1113, %vector.ph1114
  %index1115 = phi i64 [ 0, %vector.ph1114 ], [ %index.next1116, %vector.body1113 ]
  %vec.ind1119 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1114 ], [ %vec.ind.next1120, %vector.body1113 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1119, %broadcast.splat1122
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv7.i, i64 %index1115
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1116 = add i64 %index1115, 4
  %vec.ind.next1120 = add <4 x i64> %vec.ind1119, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1116, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1113, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1113
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1114, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit846
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start471, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1176 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1176, label %for.body3.i46.preheader1253, label %vector.ph1177

vector.ph1177:                                    ; preds = %for.body3.i46.preheader
  %n.vec1179 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1175

vector.body1175:                                  ; preds = %vector.body1175, %vector.ph1177
  %index1180 = phi i64 [ 0, %vector.ph1177 ], [ %index.next1181, %vector.body1175 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv21.i, i64 %index1180
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1181 = add i64 %index1180, 4
  %46 = icmp eq i64 %index.next1181, %n.vec1179
  br i1 %46, label %middle.block1173, label %vector.body1175, !llvm.loop !18

middle.block1173:                                 ; preds = %vector.body1175
  %cmp.n1183 = icmp eq i64 %indvars.iv21.i, %n.vec1179
  br i1 %cmp.n1183, label %for.inc6.i, label %for.body3.i46.preheader1253

for.body3.i46.preheader1253:                      ; preds = %for.body3.i46.preheader, %middle.block1173
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1179, %middle.block1173 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1253, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1253 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1173, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !44

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting472
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start281, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1199 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1199, label %for.body3.i60.preheader1251, label %vector.ph1200

vector.ph1200:                                    ; preds = %for.body3.i60.preheader
  %n.vec1202 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1198

vector.body1198:                                  ; preds = %vector.body1198, %vector.ph1200
  %index1203 = phi i64 [ 0, %vector.ph1200 ], [ %index.next1204, %vector.body1198 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv21.i52, i64 %index1203
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1207 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1207, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1204 = add i64 %index1203, 4
  %57 = icmp eq i64 %index.next1204, %n.vec1202
  br i1 %57, label %middle.block1196, label %vector.body1198, !llvm.loop !55

middle.block1196:                                 ; preds = %vector.body1198
  %cmp.n1206 = icmp eq i64 %indvars.iv21.i52, %n.vec1202
  br i1 %cmp.n1206, label %for.inc6.i63, label %for.body3.i60.preheader1251

for.body3.i60.preheader1251:                      ; preds = %for.body3.i60.preheader, %middle.block1196
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1202, %middle.block1196 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1251, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1251 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1196, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !44

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting282
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1225 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1225, label %for.body3.i99.preheader1249, label %vector.ph1226

vector.ph1226:                                    ; preds = %for.body3.i99.preheader
  %n.vec1228 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1224

vector.body1224:                                  ; preds = %vector.body1224, %vector.ph1226
  %index1229 = phi i64 [ 0, %vector.ph1226 ], [ %index.next1230, %vector.body1224 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv21.i91, i64 %index1229
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1233 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1233, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1230 = add i64 %index1229, 4
  %68 = icmp eq i64 %index.next1230, %n.vec1228
  br i1 %68, label %middle.block1222, label %vector.body1224, !llvm.loop !57

middle.block1222:                                 ; preds = %vector.body1224
  %cmp.n1232 = icmp eq i64 %indvars.iv21.i91, %n.vec1228
  br i1 %cmp.n1232, label %for.inc6.i102, label %for.body3.i99.preheader1249

for.body3.i99.preheader1249:                      ; preds = %for.body3.i99.preheader, %middle.block1222
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1228, %middle.block1222 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1249, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1249 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1222, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !44

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !59
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !61

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !62

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(768000) i8* @malloc(i64 768000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1237 = phi i64 [ %indvar.next1238, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1237, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1239 = icmp ult i64 %88, 4
  br i1 %min.iters.check1239, label %polly.loop_header191.preheader, label %vector.ph1240

vector.ph1240:                                    ; preds = %polly.loop_header
  %n.vec1242 = and i64 %88, -4
  br label %vector.body1236

vector.body1236:                                  ; preds = %vector.body1236, %vector.ph1240
  %index1243 = phi i64 [ 0, %vector.ph1240 ], [ %index.next1244, %vector.body1236 ]
  %90 = shl nuw nsw i64 %index1243, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1247 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1247, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1244 = add i64 %index1243, 4
  %95 = icmp eq i64 %index.next1244, %n.vec1242
  br i1 %95, label %middle.block1234, label %vector.body1236, !llvm.loop !69

middle.block1234:                                 ; preds = %vector.body1236
  %cmp.n1246 = icmp eq i64 %88, %n.vec1242
  br i1 %cmp.n1246, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1234
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1242, %middle.block1234 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1234
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond999.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1238 = add i64 %indvar1237, 1
  br i1 %exitcond999.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond998.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond998.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv993 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next994, %polly.loop_exit207 ]
  %indvars.iv979 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next980, %polly.loop_exit207 ]
  %indvars.iv975 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next976, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %umin = call i64 @llvm.umin.i64(i64 %indvars.iv993, i64 69)
  %97 = mul nsw i64 %polly.indvar202, -96
  %98 = icmp slt i64 %97, -1104
  %99 = select i1 %98, i64 %97, i64 -1104
  %100 = add nsw i64 %99, 1199
  %101 = mul nuw nsw i64 %polly.indvar202, 96
  %102 = add nuw nsw i64 %umin, 5
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next976 = add nsw i64 %indvars.iv975, -96
  %indvars.iv.next980 = add nuw nsw i64 %indvars.iv979, 96
  %indvars.iv.next994 = add nuw nsw i64 %indvars.iv993, 6
  %exitcond997.not = icmp eq i64 %polly.indvar_next203, 13
  br i1 %exitcond997.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %smin991 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -920)
  %103 = add nsw i64 %smin991, 1000
  %104 = mul nuw nsw i64 %polly.indvar208, 80
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -80
  %exitcond996.not = icmp eq i64 %polly.indvar_next209, 13
  br i1 %exitcond996.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv981 = phi i64 [ %indvars.iv.next982, %polly.loop_exit219 ], [ %indvars.iv979, %polly.loop_header205 ]
  %indvars.iv977 = phi i64 [ %indvars.iv.next978, %polly.loop_exit219 ], [ %indvars.iv975, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %105 = shl nsw i64 %polly.indvar214, 4
  %106 = add nsw i64 %105, %97
  %107 = icmp sgt i64 %106, 0
  %108 = select i1 %107, i64 %106, i64 0
  %polly.loop_guard.not = icmp sgt i64 %108, %100
  br i1 %polly.loop_guard.not, label %polly.loop_exit219, label %polly.loop_header217.preheader

polly.loop_header217.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv977, i64 0)
  %109 = add i64 %smax, %indvars.iv981
  %110 = sub nsw i64 %101, %105
  %111 = add nuw nsw i64 %105, 16
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit250, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next978 = add nsw i64 %indvars.iv977, 16
  %indvars.iv.next982 = add nsw i64 %indvars.iv981, -16
  %exitcond995.not = icmp eq i64 %polly.indvar214, %102
  br i1 %exitcond995.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217.preheader, %polly.loop_exit250
  %indvars.iv983 = phi i64 [ %109, %polly.loop_header217.preheader ], [ %indvars.iv.next984, %polly.loop_exit250 ]
  %polly.indvar220 = phi i64 [ %108, %polly.loop_header217.preheader ], [ %polly.indvar_next221, %polly.loop_exit250 ]
  %smin989 = call i64 @llvm.smin.i64(i64 %indvars.iv983, i64 15)
  %112 = add nsw i64 %polly.indvar220, %110
  %polly.loop_guard2331096 = icmp sgt i64 %112, -1
  %113 = add nuw nsw i64 %polly.indvar220, %101
  %.not = icmp ult i64 %113, %111
  %polly.access.mul.call1242 = mul nsw i64 %113, 1000
  %114 = add nuw i64 %polly.access.mul.call1242, %104
  br i1 %polly.loop_guard2331096, label %polly.loop_header223.us, label %polly.loop_header217.split

polly.loop_header223.us:                          ; preds = %polly.loop_header217, %polly.merge.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.merge.us ], [ 0, %polly.loop_header217 ]
  %115 = add nuw nsw i64 %polly.indvar226.us, %104
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar226.us, 1200
  br label %polly.loop_header230.us

polly.loop_header230.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header230.us
  %polly.indvar234.us = phi i64 [ %polly.indvar_next235.us, %polly.loop_header230.us ], [ 0, %polly.loop_header223.us ]
  %116 = add nuw nsw i64 %polly.indvar234.us, %105
  %polly.access.mul.call1238.us = mul nuw nsw i64 %116, 1000
  %polly.access.add.call1239.us = add nuw nsw i64 %115, %polly.access.mul.call1238.us
  %polly.access.call1240.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1239.us
  %polly.access.call1240.load.us = load double, double* %polly.access.call1240.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar234.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1240.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next235.us = add nuw nsw i64 %polly.indvar234.us, 1
  %exitcond986.not = icmp eq i64 %polly.indvar234.us, %smin989
  br i1 %exitcond986.not, label %polly.cond.loopexit.us, label %polly.loop_header230.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1243.us = add nuw nsw i64 %114, %polly.indvar226.us
  %polly.access.call1244.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.us
  %polly.access.call1244.load.us = load double, double* %polly.access.call1244.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %112
  %polly.access.Packed_MemRef_call1247.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us
  store double %polly.access.call1244.load.us, double* %polly.access.Packed_MemRef_call1247.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond988.not = icmp eq i64 %polly.indvar_next227.us, %103
  br i1 %exitcond988.not, label %polly.loop_header248.preheader, label %polly.loop_header223.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header230.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header217.split:                       ; preds = %polly.loop_header217
  br i1 %.not, label %polly.loop_exit250, label %polly.loop_header223

polly.loop_exit250:                               ; preds = %polly.loop_exit257.loopexit.us, %polly.loop_header217.split, %polly.loop_header248.preheader
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %polly.loop_cond222.not.not = icmp ult i64 %polly.indvar220, %100
  %indvars.iv.next984 = add i64 %indvars.iv983, 1
  br i1 %polly.loop_cond222.not.not, label %polly.loop_header217, label %polly.loop_exit219

polly.loop_header223:                             ; preds = %polly.loop_header217.split, %polly.loop_header223
  %polly.indvar226 = phi i64 [ %polly.indvar_next227, %polly.loop_header223 ], [ 0, %polly.loop_header217.split ]
  %polly.access.add.call1243 = add nuw nsw i64 %114, %polly.indvar226
  %polly.access.call1244 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243
  %polly.access.call1244.load = load double, double* %polly.access.call1244, align 8, !alias.scope !66, !noalias !72
  %polly.access.mul.Packed_MemRef_call1245 = mul nuw nsw i64 %polly.indvar226, 1200
  %polly.access.add.Packed_MemRef_call1246 = add nsw i64 %polly.access.mul.Packed_MemRef_call1245, %112
  %polly.access.Packed_MemRef_call1247 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246
  store double %polly.access.call1244.load, double* %polly.access.Packed_MemRef_call1247, align 8
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next227, %103
  br i1 %exitcond.not, label %polly.loop_header248.preheader, label %polly.loop_header223

polly.loop_header248.preheader:                   ; preds = %polly.loop_header223, %polly.merge.us
  %117 = mul i64 %113, 8000
  %118 = mul i64 %113, 9600
  br i1 %polly.loop_guard2331096, label %polly.loop_header248.us, label %polly.loop_exit250

polly.loop_header248.us:                          ; preds = %polly.loop_header248.preheader, %polly.loop_exit257.loopexit.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_exit257.loopexit.us ], [ 0, %polly.loop_header248.preheader ]
  %119 = add nuw nsw i64 %polly.indvar251.us, %104
  %polly.access.mul.Packed_MemRef_call1262.us = mul nuw nsw i64 %polly.indvar251.us, 1200
  %120 = shl i64 %119, 3
  %121 = add i64 %120, %117
  %scevgep266.us = getelementptr i8, i8* %call2, i64 %121
  %scevgep266267.us = bitcast i8* %scevgep266.us to double*
  %_p_scalar_268.us = load double, double* %scevgep266267.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1273.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1262.us, %112
  %polly.access.Packed_MemRef_call1274.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273.us
  %_p_scalar_275.us = load double, double* %polly.access.Packed_MemRef_call1274.us, align 8
  br label %polly.loop_header255.us

polly.loop_header255.us:                          ; preds = %polly.loop_header248.us, %polly.loop_header255.us
  %polly.indvar259.us = phi i64 [ %polly.indvar_next260.us, %polly.loop_header255.us ], [ 0, %polly.loop_header248.us ]
  %122 = add nuw nsw i64 %polly.indvar259.us, %105
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar259.us, %polly.access.mul.Packed_MemRef_call1262.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  %_p_scalar_265.us = load double, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_268.us, %_p_scalar_265.us
  %123 = mul nuw nsw i64 %122, 8000
  %124 = add nuw nsw i64 %123, %120
  %scevgep269.us = getelementptr i8, i8* %call2, i64 %124
  %scevgep269270.us = bitcast i8* %scevgep269.us to double*
  %_p_scalar_271.us = load double, double* %scevgep269270.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_275.us, %_p_scalar_271.us
  %125 = shl i64 %122, 3
  %126 = add i64 %125, %118
  %scevgep276.us = getelementptr i8, i8* %call, i64 %126
  %scevgep276277.us = bitcast i8* %scevgep276.us to double*
  %_p_scalar_278.us = load double, double* %scevgep276277.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_278.us
  store double %p_add42.i118.us, double* %scevgep276277.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next260.us = add nuw nsw i64 %polly.indvar259.us, 1
  %exitcond990.not = icmp eq i64 %polly.indvar259.us, %smin989
  br i1 %exitcond990.not, label %polly.loop_exit257.loopexit.us, label %polly.loop_header255.us

polly.loop_exit257.loopexit.us:                   ; preds = %polly.loop_header255.us
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond992.not = icmp eq i64 %polly.indvar_next252.us, %103
  br i1 %exitcond992.not, label %polly.loop_exit250, label %polly.loop_header248.us

polly.start281:                                   ; preds = %kernel_syr2k.exit
  %malloccall283 = tail call dereferenceable_or_null(768000) i8* @malloc(i64 768000) #6
  br label %polly.loop_header367

polly.exiting282:                                 ; preds = %polly.loop_exit391
  tail call void @free(i8* %malloccall283)
  br label %kernel_syr2k.exit90

polly.loop_header367:                             ; preds = %polly.loop_exit375, %polly.start281
  %indvar1211 = phi i64 [ %indvar.next1212, %polly.loop_exit375 ], [ 0, %polly.start281 ]
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_exit375 ], [ 1, %polly.start281 ]
  %127 = add i64 %indvar1211, 1
  %128 = mul nuw nsw i64 %polly.indvar370, 9600
  %scevgep379 = getelementptr i8, i8* %call, i64 %128
  %min.iters.check1213 = icmp ult i64 %127, 4
  br i1 %min.iters.check1213, label %polly.loop_header373.preheader, label %vector.ph1214

vector.ph1214:                                    ; preds = %polly.loop_header367
  %n.vec1216 = and i64 %127, -4
  br label %vector.body1210

vector.body1210:                                  ; preds = %vector.body1210, %vector.ph1214
  %index1217 = phi i64 [ 0, %vector.ph1214 ], [ %index.next1218, %vector.body1210 ]
  %129 = shl nuw nsw i64 %index1217, 3
  %130 = getelementptr i8, i8* %scevgep379, i64 %129
  %131 = bitcast i8* %130 to <4 x double>*
  %wide.load1221 = load <4 x double>, <4 x double>* %131, align 8, !alias.scope !74, !noalias !76
  %132 = fmul fast <4 x double> %wide.load1221, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %133 = bitcast i8* %130 to <4 x double>*
  store <4 x double> %132, <4 x double>* %133, align 8, !alias.scope !74, !noalias !76
  %index.next1218 = add i64 %index1217, 4
  %134 = icmp eq i64 %index.next1218, %n.vec1216
  br i1 %134, label %middle.block1208, label %vector.body1210, !llvm.loop !80

middle.block1208:                                 ; preds = %vector.body1210
  %cmp.n1220 = icmp eq i64 %127, %n.vec1216
  br i1 %cmp.n1220, label %polly.loop_exit375, label %polly.loop_header373.preheader

polly.loop_header373.preheader:                   ; preds = %polly.loop_header367, %middle.block1208
  %polly.indvar376.ph = phi i64 [ 0, %polly.loop_header367 ], [ %n.vec1216, %middle.block1208 ]
  br label %polly.loop_header373

polly.loop_exit375:                               ; preds = %polly.loop_header373, %middle.block1208
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %exitcond1030.not = icmp eq i64 %polly.indvar_next371, 1200
  %indvar.next1212 = add i64 %indvar1211, 1
  br i1 %exitcond1030.not, label %polly.loop_header383.preheader, label %polly.loop_header367

polly.loop_header383.preheader:                   ; preds = %polly.loop_exit375
  %Packed_MemRef_call1284 = bitcast i8* %malloccall283 to double*
  br label %polly.loop_header383

polly.loop_header373:                             ; preds = %polly.loop_header373.preheader, %polly.loop_header373
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_header373 ], [ %polly.indvar376.ph, %polly.loop_header373.preheader ]
  %135 = shl nuw nsw i64 %polly.indvar376, 3
  %scevgep380 = getelementptr i8, i8* %scevgep379, i64 %135
  %scevgep380381 = bitcast i8* %scevgep380 to double*
  %_p_scalar_382 = load double, double* %scevgep380381, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_382, 1.200000e+00
  store double %p_mul.i57, double* %scevgep380381, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond1029.not = icmp eq i64 %polly.indvar_next377, %polly.indvar370
  br i1 %exitcond1029.not, label %polly.loop_exit375, label %polly.loop_header373, !llvm.loop !81

polly.loop_header383:                             ; preds = %polly.loop_header383.preheader, %polly.loop_exit391
  %indvars.iv1023 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %indvars.iv.next1024, %polly.loop_exit391 ]
  %indvars.iv1009 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %indvars.iv.next1010, %polly.loop_exit391 ]
  %indvars.iv1004 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %indvars.iv.next1005, %polly.loop_exit391 ]
  %polly.indvar386 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %polly.indvar_next387, %polly.loop_exit391 ]
  %umin1025 = call i64 @llvm.umin.i64(i64 %indvars.iv1023, i64 69)
  %136 = mul nsw i64 %polly.indvar386, -96
  %137 = icmp slt i64 %136, -1104
  %138 = select i1 %137, i64 %136, i64 -1104
  %139 = add nsw i64 %138, 1199
  %140 = mul nuw nsw i64 %polly.indvar386, 96
  %141 = add nuw nsw i64 %umin1025, 5
  br label %polly.loop_header389

polly.loop_exit391:                               ; preds = %polly.loop_exit397
  %polly.indvar_next387 = add nuw nsw i64 %polly.indvar386, 1
  %indvars.iv.next1005 = add nsw i64 %indvars.iv1004, -96
  %indvars.iv.next1010 = add nuw nsw i64 %indvars.iv1009, 96
  %indvars.iv.next1024 = add nuw nsw i64 %indvars.iv1023, 6
  %exitcond1028.not = icmp eq i64 %polly.indvar_next387, 13
  br i1 %exitcond1028.not, label %polly.exiting282, label %polly.loop_header383

polly.loop_header389:                             ; preds = %polly.loop_exit397, %polly.loop_header383
  %indvars.iv1000 = phi i64 [ %indvars.iv.next1001, %polly.loop_exit397 ], [ 0, %polly.loop_header383 ]
  %polly.indvar392 = phi i64 [ %polly.indvar_next393, %polly.loop_exit397 ], [ 0, %polly.loop_header383 ]
  %smin1021 = call i64 @llvm.smin.i64(i64 %indvars.iv1000, i64 -920)
  %142 = add nsw i64 %smin1021, 1000
  %143 = mul nuw nsw i64 %polly.indvar392, 80
  br label %polly.loop_header395

polly.loop_exit397:                               ; preds = %polly.loop_exit404
  %polly.indvar_next393 = add nuw nsw i64 %polly.indvar392, 1
  %indvars.iv.next1001 = add nsw i64 %indvars.iv1000, -80
  %exitcond1027.not = icmp eq i64 %polly.indvar_next393, 13
  br i1 %exitcond1027.not, label %polly.loop_exit391, label %polly.loop_header389

polly.loop_header395:                             ; preds = %polly.loop_exit404, %polly.loop_header389
  %indvars.iv1011 = phi i64 [ %indvars.iv.next1012, %polly.loop_exit404 ], [ %indvars.iv1009, %polly.loop_header389 ]
  %indvars.iv1006 = phi i64 [ %indvars.iv.next1007, %polly.loop_exit404 ], [ %indvars.iv1004, %polly.loop_header389 ]
  %polly.indvar398 = phi i64 [ %polly.indvar_next399, %polly.loop_exit404 ], [ 0, %polly.loop_header389 ]
  %144 = shl nsw i64 %polly.indvar398, 4
  %145 = add nsw i64 %144, %136
  %146 = icmp sgt i64 %145, 0
  %147 = select i1 %146, i64 %145, i64 0
  %polly.loop_guard405.not = icmp sgt i64 %147, %139
  br i1 %polly.loop_guard405.not, label %polly.loop_exit404, label %polly.loop_header402.preheader

polly.loop_header402.preheader:                   ; preds = %polly.loop_header395
  %smax1008 = call i64 @llvm.smax.i64(i64 %indvars.iv1006, i64 0)
  %148 = add i64 %smax1008, %indvars.iv1011
  %149 = sub nsw i64 %140, %144
  %150 = add nuw nsw i64 %144, 16
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_exit440, %polly.loop_header395
  %polly.indvar_next399 = add nuw nsw i64 %polly.indvar398, 1
  %indvars.iv.next1007 = add nsw i64 %indvars.iv1006, 16
  %indvars.iv.next1012 = add nsw i64 %indvars.iv1011, -16
  %exitcond1026.not = icmp eq i64 %polly.indvar398, %141
  br i1 %exitcond1026.not, label %polly.loop_exit397, label %polly.loop_header395

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_exit440
  %indvars.iv1013 = phi i64 [ %148, %polly.loop_header402.preheader ], [ %indvars.iv.next1014, %polly.loop_exit440 ]
  %polly.indvar406 = phi i64 [ %147, %polly.loop_header402.preheader ], [ %polly.indvar_next407, %polly.loop_exit440 ]
  %smin1019 = call i64 @llvm.smin.i64(i64 %indvars.iv1013, i64 15)
  %151 = add nsw i64 %polly.indvar406, %149
  %polly.loop_guard4191097 = icmp sgt i64 %151, -1
  %152 = add nuw nsw i64 %polly.indvar406, %140
  %.not865 = icmp ult i64 %152, %150
  %polly.access.mul.call1432 = mul nsw i64 %152, 1000
  %153 = add nuw i64 %polly.access.mul.call1432, %143
  br i1 %polly.loop_guard4191097, label %polly.loop_header409.us, label %polly.loop_header402.split

polly.loop_header409.us:                          ; preds = %polly.loop_header402, %polly.merge428.us
  %polly.indvar412.us = phi i64 [ %polly.indvar_next413.us, %polly.merge428.us ], [ 0, %polly.loop_header402 ]
  %154 = add nuw nsw i64 %polly.indvar412.us, %143
  %polly.access.mul.Packed_MemRef_call1284.us = mul nuw nsw i64 %polly.indvar412.us, 1200
  br label %polly.loop_header416.us

polly.loop_header416.us:                          ; preds = %polly.loop_header409.us, %polly.loop_header416.us
  %polly.indvar420.us = phi i64 [ %polly.indvar_next421.us, %polly.loop_header416.us ], [ 0, %polly.loop_header409.us ]
  %155 = add nuw nsw i64 %polly.indvar420.us, %144
  %polly.access.mul.call1424.us = mul nuw nsw i64 %155, 1000
  %polly.access.add.call1425.us = add nuw nsw i64 %154, %polly.access.mul.call1424.us
  %polly.access.call1426.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1425.us
  %polly.access.call1426.load.us = load double, double* %polly.access.call1426.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284.us = add nuw nsw i64 %polly.indvar420.us, %polly.access.mul.Packed_MemRef_call1284.us
  %polly.access.Packed_MemRef_call1284.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284.us
  store double %polly.access.call1426.load.us, double* %polly.access.Packed_MemRef_call1284.us, align 8
  %polly.indvar_next421.us = add nuw nsw i64 %polly.indvar420.us, 1
  %exitcond1016.not = icmp eq i64 %polly.indvar420.us, %smin1019
  br i1 %exitcond1016.not, label %polly.cond427.loopexit.us, label %polly.loop_header416.us

polly.then429.us:                                 ; preds = %polly.cond427.loopexit.us
  %polly.access.add.call1433.us = add nuw nsw i64 %153, %polly.indvar412.us
  %polly.access.call1434.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.us
  %polly.access.call1434.load.us = load double, double* %polly.access.call1434.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1284.us, %151
  %polly.access.Packed_MemRef_call1284437.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.us
  store double %polly.access.call1434.load.us, double* %polly.access.Packed_MemRef_call1284437.us, align 8
  br label %polly.merge428.us

polly.merge428.us:                                ; preds = %polly.then429.us, %polly.cond427.loopexit.us
  %polly.indvar_next413.us = add nuw nsw i64 %polly.indvar412.us, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next413.us, %142
  br i1 %exitcond1018.not, label %polly.loop_header438.preheader, label %polly.loop_header409.us

polly.cond427.loopexit.us:                        ; preds = %polly.loop_header416.us
  br i1 %.not865, label %polly.merge428.us, label %polly.then429.us

polly.loop_header402.split:                       ; preds = %polly.loop_header402
  br i1 %.not865, label %polly.loop_exit440, label %polly.loop_header409

polly.loop_exit440:                               ; preds = %polly.loop_exit447.loopexit.us, %polly.loop_header402.split, %polly.loop_header438.preheader
  %polly.indvar_next407 = add nuw nsw i64 %polly.indvar406, 1
  %polly.loop_cond408.not.not = icmp ult i64 %polly.indvar406, %139
  %indvars.iv.next1014 = add i64 %indvars.iv1013, 1
  br i1 %polly.loop_cond408.not.not, label %polly.loop_header402, label %polly.loop_exit404

polly.loop_header409:                             ; preds = %polly.loop_header402.split, %polly.loop_header409
  %polly.indvar412 = phi i64 [ %polly.indvar_next413, %polly.loop_header409 ], [ 0, %polly.loop_header402.split ]
  %polly.access.add.call1433 = add nuw nsw i64 %153, %polly.indvar412
  %polly.access.call1434 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433
  %polly.access.call1434.load = load double, double* %polly.access.call1434, align 8, !alias.scope !77, !noalias !82
  %polly.access.mul.Packed_MemRef_call1284435 = mul nuw nsw i64 %polly.indvar412, 1200
  %polly.access.add.Packed_MemRef_call1284436 = add nsw i64 %polly.access.mul.Packed_MemRef_call1284435, %151
  %polly.access.Packed_MemRef_call1284437 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436
  store double %polly.access.call1434.load, double* %polly.access.Packed_MemRef_call1284437, align 8
  %polly.indvar_next413 = add nuw nsw i64 %polly.indvar412, 1
  %exitcond1003.not = icmp eq i64 %polly.indvar_next413, %142
  br i1 %exitcond1003.not, label %polly.loop_header438.preheader, label %polly.loop_header409

polly.loop_header438.preheader:                   ; preds = %polly.loop_header409, %polly.merge428.us
  %156 = mul i64 %152, 8000
  %157 = mul i64 %152, 9600
  br i1 %polly.loop_guard4191097, label %polly.loop_header438.us, label %polly.loop_exit440

polly.loop_header438.us:                          ; preds = %polly.loop_header438.preheader, %polly.loop_exit447.loopexit.us
  %polly.indvar441.us = phi i64 [ %polly.indvar_next442.us, %polly.loop_exit447.loopexit.us ], [ 0, %polly.loop_header438.preheader ]
  %158 = add nuw nsw i64 %polly.indvar441.us, %143
  %polly.access.mul.Packed_MemRef_call1284452.us = mul nuw nsw i64 %polly.indvar441.us, 1200
  %159 = shl i64 %158, 3
  %160 = add i64 %159, %156
  %scevgep456.us = getelementptr i8, i8* %call2, i64 %160
  %scevgep456457.us = bitcast i8* %scevgep456.us to double*
  %_p_scalar_458.us = load double, double* %scevgep456457.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1284463.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1284452.us, %151
  %polly.access.Packed_MemRef_call1284464.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284463.us
  %_p_scalar_465.us = load double, double* %polly.access.Packed_MemRef_call1284464.us, align 8
  br label %polly.loop_header445.us

polly.loop_header445.us:                          ; preds = %polly.loop_header438.us, %polly.loop_header445.us
  %polly.indvar449.us = phi i64 [ %polly.indvar_next450.us, %polly.loop_header445.us ], [ 0, %polly.loop_header438.us ]
  %161 = add nuw nsw i64 %polly.indvar449.us, %144
  %polly.access.add.Packed_MemRef_call1284453.us = add nuw nsw i64 %polly.indvar449.us, %polly.access.mul.Packed_MemRef_call1284452.us
  %polly.access.Packed_MemRef_call1284454.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284453.us
  %_p_scalar_455.us = load double, double* %polly.access.Packed_MemRef_call1284454.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_458.us, %_p_scalar_455.us
  %162 = mul nuw nsw i64 %161, 8000
  %163 = add nuw nsw i64 %162, %159
  %scevgep459.us = getelementptr i8, i8* %call2, i64 %163
  %scevgep459460.us = bitcast i8* %scevgep459.us to double*
  %_p_scalar_461.us = load double, double* %scevgep459460.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_465.us, %_p_scalar_461.us
  %164 = shl i64 %161, 3
  %165 = add i64 %164, %157
  %scevgep466.us = getelementptr i8, i8* %call, i64 %165
  %scevgep466467.us = bitcast i8* %scevgep466.us to double*
  %_p_scalar_468.us = load double, double* %scevgep466467.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_468.us
  store double %p_add42.i79.us, double* %scevgep466467.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next450.us = add nuw nsw i64 %polly.indvar449.us, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar449.us, %smin1019
  br i1 %exitcond1020.not, label %polly.loop_exit447.loopexit.us, label %polly.loop_header445.us

polly.loop_exit447.loopexit.us:                   ; preds = %polly.loop_header445.us
  %polly.indvar_next442.us = add nuw nsw i64 %polly.indvar441.us, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar_next442.us, %142
  br i1 %exitcond1022.not, label %polly.loop_exit440, label %polly.loop_header438.us

polly.start471:                                   ; preds = %init_array.exit
  %malloccall473 = tail call dereferenceable_or_null(768000) i8* @malloc(i64 768000) #6
  br label %polly.loop_header557

polly.exiting472:                                 ; preds = %polly.loop_exit581
  tail call void @free(i8* %malloccall473)
  br label %kernel_syr2k.exit

polly.loop_header557:                             ; preds = %polly.loop_exit565, %polly.start471
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit565 ], [ 0, %polly.start471 ]
  %polly.indvar560 = phi i64 [ %polly.indvar_next561, %polly.loop_exit565 ], [ 1, %polly.start471 ]
  %166 = add i64 %indvar, 1
  %167 = mul nuw nsw i64 %polly.indvar560, 9600
  %scevgep569 = getelementptr i8, i8* %call, i64 %167
  %min.iters.check1187 = icmp ult i64 %166, 4
  br i1 %min.iters.check1187, label %polly.loop_header563.preheader, label %vector.ph1188

vector.ph1188:                                    ; preds = %polly.loop_header557
  %n.vec1190 = and i64 %166, -4
  br label %vector.body1186

vector.body1186:                                  ; preds = %vector.body1186, %vector.ph1188
  %index1191 = phi i64 [ 0, %vector.ph1188 ], [ %index.next1192, %vector.body1186 ]
  %168 = shl nuw nsw i64 %index1191, 3
  %169 = getelementptr i8, i8* %scevgep569, i64 %168
  %170 = bitcast i8* %169 to <4 x double>*
  %wide.load1195 = load <4 x double>, <4 x double>* %170, align 8, !alias.scope !84, !noalias !86
  %171 = fmul fast <4 x double> %wide.load1195, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %172 = bitcast i8* %169 to <4 x double>*
  store <4 x double> %171, <4 x double>* %172, align 8, !alias.scope !84, !noalias !86
  %index.next1192 = add i64 %index1191, 4
  %173 = icmp eq i64 %index.next1192, %n.vec1190
  br i1 %173, label %middle.block1184, label %vector.body1186, !llvm.loop !90

middle.block1184:                                 ; preds = %vector.body1186
  %cmp.n1194 = icmp eq i64 %166, %n.vec1190
  br i1 %cmp.n1194, label %polly.loop_exit565, label %polly.loop_header563.preheader

polly.loop_header563.preheader:                   ; preds = %polly.loop_header557, %middle.block1184
  %polly.indvar566.ph = phi i64 [ 0, %polly.loop_header557 ], [ %n.vec1190, %middle.block1184 ]
  br label %polly.loop_header563

polly.loop_exit565:                               ; preds = %polly.loop_header563, %middle.block1184
  %polly.indvar_next561 = add nuw nsw i64 %polly.indvar560, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar_next561, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1061.not, label %polly.loop_header573.preheader, label %polly.loop_header557

polly.loop_header573.preheader:                   ; preds = %polly.loop_exit565
  %Packed_MemRef_call1474 = bitcast i8* %malloccall473 to double*
  br label %polly.loop_header573

polly.loop_header563:                             ; preds = %polly.loop_header563.preheader, %polly.loop_header563
  %polly.indvar566 = phi i64 [ %polly.indvar_next567, %polly.loop_header563 ], [ %polly.indvar566.ph, %polly.loop_header563.preheader ]
  %174 = shl nuw nsw i64 %polly.indvar566, 3
  %scevgep570 = getelementptr i8, i8* %scevgep569, i64 %174
  %scevgep570571 = bitcast i8* %scevgep570 to double*
  %_p_scalar_572 = load double, double* %scevgep570571, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_572, 1.200000e+00
  store double %p_mul.i, double* %scevgep570571, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next567 = add nuw nsw i64 %polly.indvar566, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar_next567, %polly.indvar560
  br i1 %exitcond1060.not, label %polly.loop_exit565, label %polly.loop_header563, !llvm.loop !91

polly.loop_header573:                             ; preds = %polly.loop_header573.preheader, %polly.loop_exit581
  %indvars.iv1054 = phi i64 [ 0, %polly.loop_header573.preheader ], [ %indvars.iv.next1055, %polly.loop_exit581 ]
  %indvars.iv1040 = phi i64 [ 0, %polly.loop_header573.preheader ], [ %indvars.iv.next1041, %polly.loop_exit581 ]
  %indvars.iv1035 = phi i64 [ 0, %polly.loop_header573.preheader ], [ %indvars.iv.next1036, %polly.loop_exit581 ]
  %polly.indvar576 = phi i64 [ 0, %polly.loop_header573.preheader ], [ %polly.indvar_next577, %polly.loop_exit581 ]
  %umin1056 = call i64 @llvm.umin.i64(i64 %indvars.iv1054, i64 69)
  %175 = mul nsw i64 %polly.indvar576, -96
  %176 = icmp slt i64 %175, -1104
  %177 = select i1 %176, i64 %175, i64 -1104
  %178 = add nsw i64 %177, 1199
  %179 = mul nuw nsw i64 %polly.indvar576, 96
  %180 = add nuw nsw i64 %umin1056, 5
  br label %polly.loop_header579

polly.loop_exit581:                               ; preds = %polly.loop_exit587
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %indvars.iv.next1036 = add nsw i64 %indvars.iv1035, -96
  %indvars.iv.next1041 = add nuw nsw i64 %indvars.iv1040, 96
  %indvars.iv.next1055 = add nuw nsw i64 %indvars.iv1054, 6
  %exitcond1059.not = icmp eq i64 %polly.indvar_next577, 13
  br i1 %exitcond1059.not, label %polly.exiting472, label %polly.loop_header573

polly.loop_header579:                             ; preds = %polly.loop_exit587, %polly.loop_header573
  %indvars.iv1031 = phi i64 [ %indvars.iv.next1032, %polly.loop_exit587 ], [ 0, %polly.loop_header573 ]
  %polly.indvar582 = phi i64 [ %polly.indvar_next583, %polly.loop_exit587 ], [ 0, %polly.loop_header573 ]
  %smin1052 = call i64 @llvm.smin.i64(i64 %indvars.iv1031, i64 -920)
  %181 = add nsw i64 %smin1052, 1000
  %182 = mul nuw nsw i64 %polly.indvar582, 80
  br label %polly.loop_header585

polly.loop_exit587:                               ; preds = %polly.loop_exit594
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %indvars.iv.next1032 = add nsw i64 %indvars.iv1031, -80
  %exitcond1058.not = icmp eq i64 %polly.indvar_next583, 13
  br i1 %exitcond1058.not, label %polly.loop_exit581, label %polly.loop_header579

polly.loop_header585:                             ; preds = %polly.loop_exit594, %polly.loop_header579
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %polly.loop_exit594 ], [ %indvars.iv1040, %polly.loop_header579 ]
  %indvars.iv1037 = phi i64 [ %indvars.iv.next1038, %polly.loop_exit594 ], [ %indvars.iv1035, %polly.loop_header579 ]
  %polly.indvar588 = phi i64 [ %polly.indvar_next589, %polly.loop_exit594 ], [ 0, %polly.loop_header579 ]
  %183 = shl nsw i64 %polly.indvar588, 4
  %184 = add nsw i64 %183, %175
  %185 = icmp sgt i64 %184, 0
  %186 = select i1 %185, i64 %184, i64 0
  %polly.loop_guard595.not = icmp sgt i64 %186, %178
  br i1 %polly.loop_guard595.not, label %polly.loop_exit594, label %polly.loop_header592.preheader

polly.loop_header592.preheader:                   ; preds = %polly.loop_header585
  %smax1039 = call i64 @llvm.smax.i64(i64 %indvars.iv1037, i64 0)
  %187 = add i64 %smax1039, %indvars.iv1042
  %188 = sub nsw i64 %179, %183
  %189 = add nuw nsw i64 %183, 16
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_exit630, %polly.loop_header585
  %polly.indvar_next589 = add nuw nsw i64 %polly.indvar588, 1
  %indvars.iv.next1038 = add nsw i64 %indvars.iv1037, 16
  %indvars.iv.next1043 = add nsw i64 %indvars.iv1042, -16
  %exitcond1057.not = icmp eq i64 %polly.indvar588, %180
  br i1 %exitcond1057.not, label %polly.loop_exit587, label %polly.loop_header585

polly.loop_header592:                             ; preds = %polly.loop_header592.preheader, %polly.loop_exit630
  %indvars.iv1044 = phi i64 [ %187, %polly.loop_header592.preheader ], [ %indvars.iv.next1045, %polly.loop_exit630 ]
  %polly.indvar596 = phi i64 [ %186, %polly.loop_header592.preheader ], [ %polly.indvar_next597, %polly.loop_exit630 ]
  %smin1050 = call i64 @llvm.smin.i64(i64 %indvars.iv1044, i64 15)
  %190 = add nsw i64 %polly.indvar596, %188
  %polly.loop_guard6091098 = icmp sgt i64 %190, -1
  %191 = add nuw nsw i64 %polly.indvar596, %179
  %.not866 = icmp ult i64 %191, %189
  %polly.access.mul.call1622 = mul nsw i64 %191, 1000
  %192 = add nuw i64 %polly.access.mul.call1622, %182
  br i1 %polly.loop_guard6091098, label %polly.loop_header599.us, label %polly.loop_header592.split

polly.loop_header599.us:                          ; preds = %polly.loop_header592, %polly.merge618.us
  %polly.indvar602.us = phi i64 [ %polly.indvar_next603.us, %polly.merge618.us ], [ 0, %polly.loop_header592 ]
  %193 = add nuw nsw i64 %polly.indvar602.us, %182
  %polly.access.mul.Packed_MemRef_call1474.us = mul nuw nsw i64 %polly.indvar602.us, 1200
  br label %polly.loop_header606.us

polly.loop_header606.us:                          ; preds = %polly.loop_header599.us, %polly.loop_header606.us
  %polly.indvar610.us = phi i64 [ %polly.indvar_next611.us, %polly.loop_header606.us ], [ 0, %polly.loop_header599.us ]
  %194 = add nuw nsw i64 %polly.indvar610.us, %183
  %polly.access.mul.call1614.us = mul nuw nsw i64 %194, 1000
  %polly.access.add.call1615.us = add nuw nsw i64 %193, %polly.access.mul.call1614.us
  %polly.access.call1616.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1615.us
  %polly.access.call1616.load.us = load double, double* %polly.access.call1616.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474.us = add nuw nsw i64 %polly.indvar610.us, %polly.access.mul.Packed_MemRef_call1474.us
  %polly.access.Packed_MemRef_call1474.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us
  store double %polly.access.call1616.load.us, double* %polly.access.Packed_MemRef_call1474.us, align 8
  %polly.indvar_next611.us = add nuw nsw i64 %polly.indvar610.us, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar610.us, %smin1050
  br i1 %exitcond1047.not, label %polly.cond617.loopexit.us, label %polly.loop_header606.us

polly.then619.us:                                 ; preds = %polly.cond617.loopexit.us
  %polly.access.add.call1623.us = add nuw nsw i64 %192, %polly.indvar602.us
  %polly.access.call1624.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.us
  %polly.access.call1624.load.us = load double, double* %polly.access.call1624.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1474.us, %190
  %polly.access.Packed_MemRef_call1474627.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.us
  store double %polly.access.call1624.load.us, double* %polly.access.Packed_MemRef_call1474627.us, align 8
  br label %polly.merge618.us

polly.merge618.us:                                ; preds = %polly.then619.us, %polly.cond617.loopexit.us
  %polly.indvar_next603.us = add nuw nsw i64 %polly.indvar602.us, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar_next603.us, %181
  br i1 %exitcond1049.not, label %polly.loop_header628.preheader, label %polly.loop_header599.us

polly.cond617.loopexit.us:                        ; preds = %polly.loop_header606.us
  br i1 %.not866, label %polly.merge618.us, label %polly.then619.us

polly.loop_header592.split:                       ; preds = %polly.loop_header592
  br i1 %.not866, label %polly.loop_exit630, label %polly.loop_header599

polly.loop_exit630:                               ; preds = %polly.loop_exit637.loopexit.us, %polly.loop_header592.split, %polly.loop_header628.preheader
  %polly.indvar_next597 = add nuw nsw i64 %polly.indvar596, 1
  %polly.loop_cond598.not.not = icmp ult i64 %polly.indvar596, %178
  %indvars.iv.next1045 = add i64 %indvars.iv1044, 1
  br i1 %polly.loop_cond598.not.not, label %polly.loop_header592, label %polly.loop_exit594

polly.loop_header599:                             ; preds = %polly.loop_header592.split, %polly.loop_header599
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_header599 ], [ 0, %polly.loop_header592.split ]
  %polly.access.add.call1623 = add nuw nsw i64 %192, %polly.indvar602
  %polly.access.call1624 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623
  %polly.access.call1624.load = load double, double* %polly.access.call1624, align 8, !alias.scope !87, !noalias !92
  %polly.access.mul.Packed_MemRef_call1474625 = mul nuw nsw i64 %polly.indvar602, 1200
  %polly.access.add.Packed_MemRef_call1474626 = add nsw i64 %polly.access.mul.Packed_MemRef_call1474625, %190
  %polly.access.Packed_MemRef_call1474627 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626
  store double %polly.access.call1624.load, double* %polly.access.Packed_MemRef_call1474627, align 8
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next603, %181
  br i1 %exitcond1034.not, label %polly.loop_header628.preheader, label %polly.loop_header599

polly.loop_header628.preheader:                   ; preds = %polly.loop_header599, %polly.merge618.us
  %195 = mul i64 %191, 8000
  %196 = mul i64 %191, 9600
  br i1 %polly.loop_guard6091098, label %polly.loop_header628.us, label %polly.loop_exit630

polly.loop_header628.us:                          ; preds = %polly.loop_header628.preheader, %polly.loop_exit637.loopexit.us
  %polly.indvar631.us = phi i64 [ %polly.indvar_next632.us, %polly.loop_exit637.loopexit.us ], [ 0, %polly.loop_header628.preheader ]
  %197 = add nuw nsw i64 %polly.indvar631.us, %182
  %polly.access.mul.Packed_MemRef_call1474642.us = mul nuw nsw i64 %polly.indvar631.us, 1200
  %198 = shl i64 %197, 3
  %199 = add i64 %198, %195
  %scevgep646.us = getelementptr i8, i8* %call2, i64 %199
  %scevgep646647.us = bitcast i8* %scevgep646.us to double*
  %_p_scalar_648.us = load double, double* %scevgep646647.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1474653.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1474642.us, %190
  %polly.access.Packed_MemRef_call1474654.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474653.us
  %_p_scalar_655.us = load double, double* %polly.access.Packed_MemRef_call1474654.us, align 8
  br label %polly.loop_header635.us

polly.loop_header635.us:                          ; preds = %polly.loop_header628.us, %polly.loop_header635.us
  %polly.indvar639.us = phi i64 [ %polly.indvar_next640.us, %polly.loop_header635.us ], [ 0, %polly.loop_header628.us ]
  %200 = add nuw nsw i64 %polly.indvar639.us, %183
  %polly.access.add.Packed_MemRef_call1474643.us = add nuw nsw i64 %polly.indvar639.us, %polly.access.mul.Packed_MemRef_call1474642.us
  %polly.access.Packed_MemRef_call1474644.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474643.us
  %_p_scalar_645.us = load double, double* %polly.access.Packed_MemRef_call1474644.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_648.us, %_p_scalar_645.us
  %201 = mul nuw nsw i64 %200, 8000
  %202 = add nuw nsw i64 %201, %198
  %scevgep649.us = getelementptr i8, i8* %call2, i64 %202
  %scevgep649650.us = bitcast i8* %scevgep649.us to double*
  %_p_scalar_651.us = load double, double* %scevgep649650.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_655.us, %_p_scalar_651.us
  %203 = shl i64 %200, 3
  %204 = add i64 %203, %196
  %scevgep656.us = getelementptr i8, i8* %call, i64 %204
  %scevgep656657.us = bitcast i8* %scevgep656.us to double*
  %_p_scalar_658.us = load double, double* %scevgep656657.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_658.us
  store double %p_add42.i.us, double* %scevgep656657.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next640.us = add nuw nsw i64 %polly.indvar639.us, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar639.us, %smin1050
  br i1 %exitcond1051.not, label %polly.loop_exit637.loopexit.us, label %polly.loop_header635.us

polly.loop_exit637.loopexit.us:                   ; preds = %polly.loop_header635.us
  %polly.indvar_next632.us = add nuw nsw i64 %polly.indvar631.us, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar_next632.us, %181
  br i1 %exitcond1053.not, label %polly.loop_exit630, label %polly.loop_header628.us

polly.loop_header785:                             ; preds = %entry, %polly.loop_exit793
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087, %polly.loop_exit793 ], [ 0, %entry ]
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_exit793 ], [ 0, %entry ]
  %smin1088 = call i64 @llvm.smin.i64(i64 %indvars.iv1086, i64 -1168)
  %205 = shl nsw i64 %polly.indvar788, 5
  %206 = add nsw i64 %smin1088, 1199
  br label %polly.loop_header791

polly.loop_exit793:                               ; preds = %polly.loop_exit799
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %indvars.iv.next1087 = add nsw i64 %indvars.iv1086, -32
  %exitcond1091.not = icmp eq i64 %polly.indvar_next789, 38
  br i1 %exitcond1091.not, label %polly.loop_header812, label %polly.loop_header785

polly.loop_header791:                             ; preds = %polly.loop_exit799, %polly.loop_header785
  %indvars.iv1082 = phi i64 [ %indvars.iv.next1083, %polly.loop_exit799 ], [ 0, %polly.loop_header785 ]
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_exit799 ], [ 0, %polly.loop_header785 ]
  %207 = mul nsw i64 %polly.indvar794, -32
  %smin = call i64 @llvm.smin.i64(i64 %207, i64 -1168)
  %208 = add nsw i64 %smin, 1200
  %smin1084 = call i64 @llvm.smin.i64(i64 %indvars.iv1082, i64 -1168)
  %209 = shl nsw i64 %polly.indvar794, 5
  %210 = add nsw i64 %smin1084, 1199
  br label %polly.loop_header797

polly.loop_exit799:                               ; preds = %polly.loop_exit805
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %indvars.iv.next1083 = add nsw i64 %indvars.iv1082, -32
  %exitcond1090.not = icmp eq i64 %polly.indvar_next795, 38
  br i1 %exitcond1090.not, label %polly.loop_exit793, label %polly.loop_header791

polly.loop_header797:                             ; preds = %polly.loop_exit805, %polly.loop_header791
  %polly.indvar800 = phi i64 [ 0, %polly.loop_header791 ], [ %polly.indvar_next801, %polly.loop_exit805 ]
  %211 = add nuw nsw i64 %polly.indvar800, %205
  %212 = trunc i64 %211 to i32
  %213 = mul nuw nsw i64 %211, 9600
  %min.iters.check = icmp eq i64 %208, 0
  br i1 %min.iters.check, label %polly.loop_header803, label %vector.ph1126

vector.ph1126:                                    ; preds = %polly.loop_header797
  %broadcast.splatinsert1133 = insertelement <4 x i64> poison, i64 %209, i32 0
  %broadcast.splat1134 = shufflevector <4 x i64> %broadcast.splatinsert1133, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1135 = insertelement <4 x i32> poison, i32 %212, i32 0
  %broadcast.splat1136 = shufflevector <4 x i32> %broadcast.splatinsert1135, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1125

vector.body1125:                                  ; preds = %vector.body1125, %vector.ph1126
  %index1127 = phi i64 [ 0, %vector.ph1126 ], [ %index.next1128, %vector.body1125 ]
  %vec.ind1131 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1126 ], [ %vec.ind.next1132, %vector.body1125 ]
  %214 = add nuw nsw <4 x i64> %vec.ind1131, %broadcast.splat1134
  %215 = trunc <4 x i64> %214 to <4 x i32>
  %216 = mul <4 x i32> %broadcast.splat1136, %215
  %217 = add <4 x i32> %216, <i32 3, i32 3, i32 3, i32 3>
  %218 = urem <4 x i32> %217, <i32 1200, i32 1200, i32 1200, i32 1200>
  %219 = sitofp <4 x i32> %218 to <4 x double>
  %220 = fmul fast <4 x double> %219, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %221 = extractelement <4 x i64> %214, i32 0
  %222 = shl i64 %221, 3
  %223 = add nuw nsw i64 %222, %213
  %224 = getelementptr i8, i8* %call, i64 %223
  %225 = bitcast i8* %224 to <4 x double>*
  store <4 x double> %220, <4 x double>* %225, align 8, !alias.scope !94, !noalias !96
  %index.next1128 = add i64 %index1127, 4
  %vec.ind.next1132 = add <4 x i64> %vec.ind1131, <i64 4, i64 4, i64 4, i64 4>
  %226 = icmp eq i64 %index.next1128, %208
  br i1 %226, label %polly.loop_exit805, label %vector.body1125, !llvm.loop !99

polly.loop_exit805:                               ; preds = %vector.body1125, %polly.loop_header803
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar800, %206
  br i1 %exitcond1089.not, label %polly.loop_exit799, label %polly.loop_header797

polly.loop_header803:                             ; preds = %polly.loop_header797, %polly.loop_header803
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_header803 ], [ 0, %polly.loop_header797 ]
  %227 = add nuw nsw i64 %polly.indvar806, %209
  %228 = trunc i64 %227 to i32
  %229 = mul i32 %228, %212
  %230 = add i32 %229, 3
  %231 = urem i32 %230, 1200
  %p_conv31.i = sitofp i32 %231 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %232 = shl i64 %227, 3
  %233 = add nuw nsw i64 %232, %213
  %scevgep809 = getelementptr i8, i8* %call, i64 %233
  %scevgep809810 = bitcast i8* %scevgep809 to double*
  store double %p_div33.i, double* %scevgep809810, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar806, %210
  br i1 %exitcond1085.not, label %polly.loop_exit805, label %polly.loop_header803, !llvm.loop !100

polly.loop_header812:                             ; preds = %polly.loop_exit793, %polly.loop_exit820
  %indvars.iv1076 = phi i64 [ %indvars.iv.next1077, %polly.loop_exit820 ], [ 0, %polly.loop_exit793 ]
  %polly.indvar815 = phi i64 [ %polly.indvar_next816, %polly.loop_exit820 ], [ 0, %polly.loop_exit793 ]
  %smin1078 = call i64 @llvm.smin.i64(i64 %indvars.iv1076, i64 -1168)
  %234 = shl nsw i64 %polly.indvar815, 5
  %235 = add nsw i64 %smin1078, 1199
  br label %polly.loop_header818

polly.loop_exit820:                               ; preds = %polly.loop_exit826
  %polly.indvar_next816 = add nuw nsw i64 %polly.indvar815, 1
  %indvars.iv.next1077 = add nsw i64 %indvars.iv1076, -32
  %exitcond1081.not = icmp eq i64 %polly.indvar_next816, 38
  br i1 %exitcond1081.not, label %polly.loop_header838, label %polly.loop_header812

polly.loop_header818:                             ; preds = %polly.loop_exit826, %polly.loop_header812
  %indvars.iv1072 = phi i64 [ %indvars.iv.next1073, %polly.loop_exit826 ], [ 0, %polly.loop_header812 ]
  %polly.indvar821 = phi i64 [ %polly.indvar_next822, %polly.loop_exit826 ], [ 0, %polly.loop_header812 ]
  %236 = mul nsw i64 %polly.indvar821, -32
  %smin1140 = call i64 @llvm.smin.i64(i64 %236, i64 -968)
  %237 = add nsw i64 %smin1140, 1000
  %smin1074 = call i64 @llvm.smin.i64(i64 %indvars.iv1072, i64 -968)
  %238 = shl nsw i64 %polly.indvar821, 5
  %239 = add nsw i64 %smin1074, 999
  br label %polly.loop_header824

polly.loop_exit826:                               ; preds = %polly.loop_exit832
  %polly.indvar_next822 = add nuw nsw i64 %polly.indvar821, 1
  %indvars.iv.next1073 = add nsw i64 %indvars.iv1072, -32
  %exitcond1080.not = icmp eq i64 %polly.indvar_next822, 32
  br i1 %exitcond1080.not, label %polly.loop_exit820, label %polly.loop_header818

polly.loop_header824:                             ; preds = %polly.loop_exit832, %polly.loop_header818
  %polly.indvar827 = phi i64 [ 0, %polly.loop_header818 ], [ %polly.indvar_next828, %polly.loop_exit832 ]
  %240 = add nuw nsw i64 %polly.indvar827, %234
  %241 = trunc i64 %240 to i32
  %242 = mul nuw nsw i64 %240, 8000
  %min.iters.check1141 = icmp eq i64 %237, 0
  br i1 %min.iters.check1141, label %polly.loop_header830, label %vector.ph1142

vector.ph1142:                                    ; preds = %polly.loop_header824
  %broadcast.splatinsert1151 = insertelement <4 x i64> poison, i64 %238, i32 0
  %broadcast.splat1152 = shufflevector <4 x i64> %broadcast.splatinsert1151, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1153 = insertelement <4 x i32> poison, i32 %241, i32 0
  %broadcast.splat1154 = shufflevector <4 x i32> %broadcast.splatinsert1153, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1139

vector.body1139:                                  ; preds = %vector.body1139, %vector.ph1142
  %index1145 = phi i64 [ 0, %vector.ph1142 ], [ %index.next1146, %vector.body1139 ]
  %vec.ind1149 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1142 ], [ %vec.ind.next1150, %vector.body1139 ]
  %243 = add nuw nsw <4 x i64> %vec.ind1149, %broadcast.splat1152
  %244 = trunc <4 x i64> %243 to <4 x i32>
  %245 = mul <4 x i32> %broadcast.splat1154, %244
  %246 = add <4 x i32> %245, <i32 2, i32 2, i32 2, i32 2>
  %247 = urem <4 x i32> %246, <i32 1000, i32 1000, i32 1000, i32 1000>
  %248 = sitofp <4 x i32> %247 to <4 x double>
  %249 = fmul fast <4 x double> %248, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %250 = extractelement <4 x i64> %243, i32 0
  %251 = shl i64 %250, 3
  %252 = add nuw nsw i64 %251, %242
  %253 = getelementptr i8, i8* %call2, i64 %252
  %254 = bitcast i8* %253 to <4 x double>*
  store <4 x double> %249, <4 x double>* %254, align 8, !alias.scope !98, !noalias !101
  %index.next1146 = add i64 %index1145, 4
  %vec.ind.next1150 = add <4 x i64> %vec.ind1149, <i64 4, i64 4, i64 4, i64 4>
  %255 = icmp eq i64 %index.next1146, %237
  br i1 %255, label %polly.loop_exit832, label %vector.body1139, !llvm.loop !102

polly.loop_exit832:                               ; preds = %vector.body1139, %polly.loop_header830
  %polly.indvar_next828 = add nuw nsw i64 %polly.indvar827, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar827, %235
  br i1 %exitcond1079.not, label %polly.loop_exit826, label %polly.loop_header824

polly.loop_header830:                             ; preds = %polly.loop_header824, %polly.loop_header830
  %polly.indvar833 = phi i64 [ %polly.indvar_next834, %polly.loop_header830 ], [ 0, %polly.loop_header824 ]
  %256 = add nuw nsw i64 %polly.indvar833, %238
  %257 = trunc i64 %256 to i32
  %258 = mul i32 %257, %241
  %259 = add i32 %258, 2
  %260 = urem i32 %259, 1000
  %p_conv10.i = sitofp i32 %260 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %261 = shl i64 %256, 3
  %262 = add nuw nsw i64 %261, %242
  %scevgep836 = getelementptr i8, i8* %call2, i64 %262
  %scevgep836837 = bitcast i8* %scevgep836 to double*
  store double %p_div12.i, double* %scevgep836837, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next834 = add nuw nsw i64 %polly.indvar833, 1
  %exitcond1075.not = icmp eq i64 %polly.indvar833, %239
  br i1 %exitcond1075.not, label %polly.loop_exit832, label %polly.loop_header830, !llvm.loop !103

polly.loop_header838:                             ; preds = %polly.loop_exit820, %polly.loop_exit846
  %indvars.iv1066 = phi i64 [ %indvars.iv.next1067, %polly.loop_exit846 ], [ 0, %polly.loop_exit820 ]
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_exit846 ], [ 0, %polly.loop_exit820 ]
  %smin1068 = call i64 @llvm.smin.i64(i64 %indvars.iv1066, i64 -1168)
  %263 = shl nsw i64 %polly.indvar841, 5
  %264 = add nsw i64 %smin1068, 1199
  br label %polly.loop_header844

polly.loop_exit846:                               ; preds = %polly.loop_exit852
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %indvars.iv.next1067 = add nsw i64 %indvars.iv1066, -32
  %exitcond1071.not = icmp eq i64 %polly.indvar_next842, 38
  br i1 %exitcond1071.not, label %init_array.exit, label %polly.loop_header838

polly.loop_header844:                             ; preds = %polly.loop_exit852, %polly.loop_header838
  %indvars.iv1062 = phi i64 [ %indvars.iv.next1063, %polly.loop_exit852 ], [ 0, %polly.loop_header838 ]
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %polly.loop_header838 ]
  %265 = mul nsw i64 %polly.indvar847, -32
  %smin1158 = call i64 @llvm.smin.i64(i64 %265, i64 -968)
  %266 = add nsw i64 %smin1158, 1000
  %smin1064 = call i64 @llvm.smin.i64(i64 %indvars.iv1062, i64 -968)
  %267 = shl nsw i64 %polly.indvar847, 5
  %268 = add nsw i64 %smin1064, 999
  br label %polly.loop_header850

polly.loop_exit852:                               ; preds = %polly.loop_exit858
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %indvars.iv.next1063 = add nsw i64 %indvars.iv1062, -32
  %exitcond1070.not = icmp eq i64 %polly.indvar_next848, 32
  br i1 %exitcond1070.not, label %polly.loop_exit846, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_exit858, %polly.loop_header844
  %polly.indvar853 = phi i64 [ 0, %polly.loop_header844 ], [ %polly.indvar_next854, %polly.loop_exit858 ]
  %269 = add nuw nsw i64 %polly.indvar853, %263
  %270 = trunc i64 %269 to i32
  %271 = mul nuw nsw i64 %269, 8000
  %min.iters.check1159 = icmp eq i64 %266, 0
  br i1 %min.iters.check1159, label %polly.loop_header856, label %vector.ph1160

vector.ph1160:                                    ; preds = %polly.loop_header850
  %broadcast.splatinsert1169 = insertelement <4 x i64> poison, i64 %267, i32 0
  %broadcast.splat1170 = shufflevector <4 x i64> %broadcast.splatinsert1169, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1171 = insertelement <4 x i32> poison, i32 %270, i32 0
  %broadcast.splat1172 = shufflevector <4 x i32> %broadcast.splatinsert1171, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1157

vector.body1157:                                  ; preds = %vector.body1157, %vector.ph1160
  %index1163 = phi i64 [ 0, %vector.ph1160 ], [ %index.next1164, %vector.body1157 ]
  %vec.ind1167 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1160 ], [ %vec.ind.next1168, %vector.body1157 ]
  %272 = add nuw nsw <4 x i64> %vec.ind1167, %broadcast.splat1170
  %273 = trunc <4 x i64> %272 to <4 x i32>
  %274 = mul <4 x i32> %broadcast.splat1172, %273
  %275 = add <4 x i32> %274, <i32 1, i32 1, i32 1, i32 1>
  %276 = urem <4 x i32> %275, <i32 1200, i32 1200, i32 1200, i32 1200>
  %277 = sitofp <4 x i32> %276 to <4 x double>
  %278 = fmul fast <4 x double> %277, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %279 = extractelement <4 x i64> %272, i32 0
  %280 = shl i64 %279, 3
  %281 = add nuw nsw i64 %280, %271
  %282 = getelementptr i8, i8* %call1, i64 %281
  %283 = bitcast i8* %282 to <4 x double>*
  store <4 x double> %278, <4 x double>* %283, align 8, !alias.scope !97, !noalias !104
  %index.next1164 = add i64 %index1163, 4
  %vec.ind.next1168 = add <4 x i64> %vec.ind1167, <i64 4, i64 4, i64 4, i64 4>
  %284 = icmp eq i64 %index.next1164, %266
  br i1 %284, label %polly.loop_exit858, label %vector.body1157, !llvm.loop !105

polly.loop_exit858:                               ; preds = %vector.body1157, %polly.loop_header856
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %exitcond1069.not = icmp eq i64 %polly.indvar853, %264
  br i1 %exitcond1069.not, label %polly.loop_exit852, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_header850, %polly.loop_header856
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_header856 ], [ 0, %polly.loop_header850 ]
  %285 = add nuw nsw i64 %polly.indvar859, %267
  %286 = trunc i64 %285 to i32
  %287 = mul i32 %286, %270
  %288 = add i32 %287, 1
  %289 = urem i32 %288, 1200
  %p_conv.i = sitofp i32 %289 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %290 = shl i64 %285, 3
  %291 = add nuw nsw i64 %290, %271
  %scevgep863 = getelementptr i8, i8* %call1, i64 %291
  %scevgep863864 = bitcast i8* %scevgep863 to double*
  store double %p_div.i, double* %scevgep863864, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar859, %268
  br i1 %exitcond1065.not, label %polly.loop_exit858, label %polly.loop_header856, !llvm.loop !106
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
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 16}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 80}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41, !42, !43}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.data.pack.enable", i1 true}
!42 = !{!"llvm.data.pack.array", !21}
!43 = !{!"llvm.data.pack.allocate", !"malloc"}
!44 = distinct !{!44, !12, !23, !45, !46, !47, !48, !49, !52}
!45 = !{!"llvm.loop.id", !"i"}
!46 = !{!"llvm.loop.tile.enable", i1 true}
!47 = !{!"llvm.loop.tile.depth", i32 3}
!48 = !{!"llvm.loop.tile.size", i32 96}
!49 = !{!"llvm.loop.tile.followup_floor", !50}
!50 = distinct !{!50, !12, !51}
!51 = !{!"llvm.loop.id", !"i1"}
!52 = !{!"llvm.loop.tile.followup_tile", !53}
!53 = distinct !{!53, !12, !54}
!54 = !{!"llvm.loop.id", !"i2"}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = !{!60, !60, i64 0}
!60 = !{!"any pointer", !4, i64 0}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !64, !"polly.alias.scope.MemRef_call"}
!64 = distinct !{!64, !"polly.alias.scope.domain"}
!65 = !{!66, !67, !68}
!66 = distinct !{!66, !64, !"polly.alias.scope.MemRef_call1"}
!67 = distinct !{!67, !64, !"polly.alias.scope.MemRef_call2"}
!68 = distinct !{!68, !64, !"polly.alias.scope.Packed_MemRef_call1"}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !71, !13}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!63, !67, !68}
!73 = !{!63, !66, !68}
!74 = distinct !{!74, !75, !"polly.alias.scope.MemRef_call"}
!75 = distinct !{!75, !"polly.alias.scope.domain"}
!76 = !{!77, !78, !79}
!77 = distinct !{!77, !75, !"polly.alias.scope.MemRef_call1"}
!78 = distinct !{!78, !75, !"polly.alias.scope.MemRef_call2"}
!79 = distinct !{!79, !75, !"polly.alias.scope.Packed_MemRef_call1"}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !71, !13}
!82 = !{!74, !78, !79}
!83 = !{!74, !77, !79}
!84 = distinct !{!84, !85, !"polly.alias.scope.MemRef_call"}
!85 = distinct !{!85, !"polly.alias.scope.domain"}
!86 = !{!87, !88, !89}
!87 = distinct !{!87, !85, !"polly.alias.scope.MemRef_call1"}
!88 = distinct !{!88, !85, !"polly.alias.scope.MemRef_call2"}
!89 = distinct !{!89, !85, !"polly.alias.scope.Packed_MemRef_call1"}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !71, !13}
!92 = !{!84, !88, !89}
!93 = !{!84, !87, !89}
!94 = distinct !{!94, !95, !"polly.alias.scope.MemRef_call"}
!95 = distinct !{!95, !"polly.alias.scope.domain"}
!96 = !{!97, !98}
!97 = distinct !{!97, !95, !"polly.alias.scope.MemRef_call1"}
!98 = distinct !{!98, !95, !"polly.alias.scope.MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !71, !13}
!101 = !{!97, !94}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !71, !13}
!104 = !{!98, !94}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !71, !13}
