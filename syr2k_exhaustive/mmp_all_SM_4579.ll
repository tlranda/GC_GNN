; ModuleID = 'syr2k_exhaustive/mmp_all_SM_4579.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_4579.c"
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
  %call819 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1671 = bitcast i8* %call1 to double*
  %polly.access.call1680 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1680, %call2
  %polly.access.call2700 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2700, %call1
  %2 = or i1 %0, %1
  %polly.access.call720 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call720, %call2
  %4 = icmp ule i8* %polly.access.call2700, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call720, %call1
  %8 = icmp ule i8* %polly.access.call1680, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header793, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1112 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1111 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1110 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1109 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1109, %scevgep1112
  %bound1 = icmp ult i8* %scevgep1111, %scevgep1110
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
  br i1 %exitcond18.not.i, label %vector.ph1116, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1116:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1123 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1124 = shufflevector <4 x i64> %broadcast.splatinsert1123, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1115

vector.body1115:                                  ; preds = %vector.body1115, %vector.ph1116
  %index1117 = phi i64 [ 0, %vector.ph1116 ], [ %index.next1118, %vector.body1115 ]
  %vec.ind1121 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1116 ], [ %vec.ind.next1122, %vector.body1115 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1121, %broadcast.splat1124
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv7.i, i64 %index1117
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1118 = add i64 %index1117, 4
  %vec.ind.next1122 = add <4 x i64> %vec.ind1121, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1118, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1115, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1115
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1116, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit854
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start476, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1178 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1178, label %for.body3.i46.preheader1255, label %vector.ph1179

vector.ph1179:                                    ; preds = %for.body3.i46.preheader
  %n.vec1181 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1177

vector.body1177:                                  ; preds = %vector.body1177, %vector.ph1179
  %index1182 = phi i64 [ 0, %vector.ph1179 ], [ %index.next1183, %vector.body1177 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i, i64 %index1182
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1183 = add i64 %index1182, 4
  %46 = icmp eq i64 %index.next1183, %n.vec1181
  br i1 %46, label %middle.block1175, label %vector.body1177, !llvm.loop !18

middle.block1175:                                 ; preds = %vector.body1177
  %cmp.n1185 = icmp eq i64 %indvars.iv21.i, %n.vec1181
  br i1 %cmp.n1185, label %for.inc6.i, label %for.body3.i46.preheader1255

for.body3.i46.preheader1255:                      ; preds = %for.body3.i46.preheader, %middle.block1175
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1181, %middle.block1175 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1255, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1255 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1175, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting477
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start283, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1201 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1201, label %for.body3.i60.preheader1253, label %vector.ph1202

vector.ph1202:                                    ; preds = %for.body3.i60.preheader
  %n.vec1204 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %vector.ph1202
  %index1205 = phi i64 [ 0, %vector.ph1202 ], [ %index.next1206, %vector.body1200 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i52, i64 %index1205
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1209 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1209, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1206 = add i64 %index1205, 4
  %57 = icmp eq i64 %index.next1206, %n.vec1204
  br i1 %57, label %middle.block1198, label %vector.body1200, !llvm.loop !55

middle.block1198:                                 ; preds = %vector.body1200
  %cmp.n1208 = icmp eq i64 %indvars.iv21.i52, %n.vec1204
  br i1 %cmp.n1208, label %for.inc6.i63, label %for.body3.i60.preheader1253

for.body3.i60.preheader1253:                      ; preds = %for.body3.i60.preheader, %middle.block1198
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1204, %middle.block1198 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1253, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1253 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1198, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting284
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1227 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1227, label %for.body3.i99.preheader1251, label %vector.ph1228

vector.ph1228:                                    ; preds = %for.body3.i99.preheader
  %n.vec1230 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %vector.ph1228
  %index1231 = phi i64 [ 0, %vector.ph1228 ], [ %index.next1232, %vector.body1226 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i91, i64 %index1231
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1235 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1235, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1232 = add i64 %index1231, 4
  %68 = icmp eq i64 %index.next1232, %n.vec1230
  br i1 %68, label %middle.block1224, label %vector.body1226, !llvm.loop !57

middle.block1224:                                 ; preds = %vector.body1226
  %cmp.n1234 = icmp eq i64 %indvars.iv21.i91, %n.vec1230
  br i1 %cmp.n1234, label %for.inc6.i102, label %for.body3.i99.preheader1251

for.body3.i99.preheader1251:                      ; preds = %for.body3.i99.preheader, %middle.block1224
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1230, %middle.block1224 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1251, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1251 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1224, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1239 = phi i64 [ %indvar.next1240, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1239, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1241 = icmp ult i64 %88, 4
  br i1 %min.iters.check1241, label %polly.loop_header191.preheader, label %vector.ph1242

vector.ph1242:                                    ; preds = %polly.loop_header
  %n.vec1244 = and i64 %88, -4
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.body1238, %vector.ph1242
  %index1245 = phi i64 [ 0, %vector.ph1242 ], [ %index.next1246, %vector.body1238 ]
  %90 = shl nuw nsw i64 %index1245, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1249 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1249, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1246 = add i64 %index1245, 4
  %95 = icmp eq i64 %index.next1246, %n.vec1244
  br i1 %95, label %middle.block1236, label %vector.body1238, !llvm.loop !69

middle.block1236:                                 ; preds = %vector.body1238
  %cmp.n1248 = icmp eq i64 %88, %n.vec1244
  br i1 %cmp.n1248, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1236
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1244, %middle.block1236 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1236
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1007.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1240 = add i64 %indvar1239, 1
  br i1 %exitcond1007.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond1006.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1006.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv989 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next990, %polly.loop_exit207 ]
  %indvars.iv985 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next986, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = shl nuw nsw i64 %polly.indvar202, 1
  %98 = add nuw nsw i64 %97, 2
  %pexp.p_div_q = udiv i64 %98, 5
  %99 = sub nsw i64 %97, %pexp.p_div_q
  %100 = add nsw i64 %99, 1
  %.inv = icmp slt i64 %99, 59
  %101 = select i1 %.inv, i64 %100, i64 59
  %polly.loop_guard = icmp sgt i64 %101, -1
  %102 = mul nsw i64 %polly.indvar202, -32
  %103 = icmp slt i64 %102, -1168
  %104 = select i1 %103, i64 %102, i64 -1168
  %105 = add nsw i64 %104, 1199
  %106 = shl nsw i64 %polly.indvar202, 5
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next986 = add nsw i64 %indvars.iv985, -32
  %indvars.iv.next990 = add nuw nsw i64 %indvars.iv989, 32
  %exitcond1005.not = icmp eq i64 %polly.indvar_next203, 38
  br i1 %exitcond1005.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %smin1001 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -872)
  %107 = add nsw i64 %smin1001, 1000
  br i1 %polly.loop_guard, label %polly.loop_header211.preheader, label %polly.loop_exit213

polly.loop_header211.preheader:                   ; preds = %polly.loop_header205
  %108 = shl nsw i64 %polly.indvar208, 7
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit220, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -128
  %exitcond1004.not = icmp eq i64 %polly.indvar_next209, 8
  br i1 %exitcond1004.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211.preheader, %polly.loop_exit220
  %indvars.iv991 = phi i64 [ %indvars.iv989, %polly.loop_header211.preheader ], [ %indvars.iv.next992, %polly.loop_exit220 ]
  %indvars.iv987 = phi i64 [ %indvars.iv985, %polly.loop_header211.preheader ], [ %indvars.iv.next988, %polly.loop_exit220 ]
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header211.preheader ], [ %polly.indvar_next215, %polly.loop_exit220 ]
  %109 = mul nsw i64 %polly.indvar214, 20
  %110 = add nsw i64 %109, %102
  %111 = icmp sgt i64 %110, 0
  %112 = select i1 %111, i64 %110, i64 0
  %polly.loop_guard221.not = icmp sgt i64 %112, %105
  br i1 %polly.loop_guard221.not, label %polly.loop_exit220, label %polly.loop_header218.preheader

polly.loop_header218.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv987, i64 0)
  %113 = add i64 %smax, %indvars.iv991
  %114 = sub nsw i64 %106, %109
  %115 = add nuw nsw i64 %109, 20
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_exit252, %polly.loop_header211
  %polly.indvar_next215 = add nuw i64 %polly.indvar214, 1
  %indvars.iv.next988 = add i64 %indvars.iv987, 20
  %indvars.iv.next992 = add i64 %indvars.iv991, -20
  %exitcond1003.not = icmp eq i64 %polly.indvar214, %101
  br i1 %exitcond1003.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header218:                             ; preds = %polly.loop_header218.preheader, %polly.loop_exit252
  %indvars.iv993 = phi i64 [ %113, %polly.loop_header218.preheader ], [ %indvars.iv.next994, %polly.loop_exit252 ]
  %polly.indvar222 = phi i64 [ %112, %polly.loop_header218.preheader ], [ %polly.indvar_next223, %polly.loop_exit252 ]
  %smin999 = call i64 @llvm.smin.i64(i64 %indvars.iv993, i64 19)
  %116 = add nsw i64 %polly.indvar222, %114
  %polly.loop_guard2351098 = icmp sgt i64 %116, -1
  %117 = add nuw nsw i64 %polly.indvar222, %106
  %.not = icmp ult i64 %117, %115
  %polly.access.mul.call1244 = mul nsw i64 %117, 1000
  %118 = add nuw i64 %polly.access.mul.call1244, %108
  br i1 %polly.loop_guard2351098, label %polly.loop_header225.us, label %polly.loop_header218.split

polly.loop_header225.us:                          ; preds = %polly.loop_header218, %polly.merge.us
  %polly.indvar228.us = phi i64 [ %polly.indvar_next229.us, %polly.merge.us ], [ 0, %polly.loop_header218 ]
  %119 = add nuw nsw i64 %polly.indvar228.us, %108
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar228.us, 1200
  br label %polly.loop_header232.us

polly.loop_header232.us:                          ; preds = %polly.loop_header225.us, %polly.loop_header232.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_header232.us ], [ 0, %polly.loop_header225.us ]
  %120 = add nuw nsw i64 %polly.indvar236.us, %109
  %polly.access.mul.call1240.us = mul nsw i64 %120, 1000
  %polly.access.add.call1241.us = add nuw nsw i64 %119, %polly.access.mul.call1240.us
  %polly.access.call1242.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1241.us
  %polly.access.call1242.load.us = load double, double* %polly.access.call1242.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar236.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1242.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %exitcond996.not = icmp eq i64 %polly.indvar236.us, %smin999
  br i1 %exitcond996.not, label %polly.cond.loopexit.us, label %polly.loop_header232.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1245.us = add i64 %118, %polly.indvar228.us
  %polly.access.call1246.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.us
  %polly.access.call1246.load.us = load double, double* %polly.access.call1246.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1248.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %116
  %polly.access.Packed_MemRef_call1249.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.us
  store double %polly.access.call1246.load.us, double* %polly.access.Packed_MemRef_call1249.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next229.us = add nuw nsw i64 %polly.indvar228.us, 1
  %exitcond998.not = icmp eq i64 %polly.indvar_next229.us, %107
  br i1 %exitcond998.not, label %polly.loop_header250.preheader, label %polly.loop_header225.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header232.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header218.split:                       ; preds = %polly.loop_header218
  br i1 %.not, label %polly.loop_exit252, label %polly.loop_header225

polly.loop_exit252:                               ; preds = %polly.loop_exit259.loopexit.us, %polly.loop_header218.split, %polly.loop_header250.preheader
  %polly.indvar_next223 = add nuw nsw i64 %polly.indvar222, 1
  %polly.loop_cond224.not.not = icmp ult i64 %polly.indvar222, %105
  %indvars.iv.next994 = add i64 %indvars.iv993, 1
  br i1 %polly.loop_cond224.not.not, label %polly.loop_header218, label %polly.loop_exit220

polly.loop_header225:                             ; preds = %polly.loop_header218.split, %polly.loop_header225
  %polly.indvar228 = phi i64 [ %polly.indvar_next229, %polly.loop_header225 ], [ 0, %polly.loop_header218.split ]
  %polly.access.add.call1245 = add i64 %118, %polly.indvar228
  %polly.access.call1246 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245
  %polly.access.call1246.load = load double, double* %polly.access.call1246, align 8, !alias.scope !66, !noalias !72
  %polly.access.mul.Packed_MemRef_call1247 = mul nuw nsw i64 %polly.indvar228, 1200
  %polly.access.add.Packed_MemRef_call1248 = add nsw i64 %polly.access.mul.Packed_MemRef_call1247, %116
  %polly.access.Packed_MemRef_call1249 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248
  store double %polly.access.call1246.load, double* %polly.access.Packed_MemRef_call1249, align 8
  %polly.indvar_next229 = add nuw nsw i64 %polly.indvar228, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next229, %107
  br i1 %exitcond.not, label %polly.loop_header250.preheader, label %polly.loop_header225

polly.loop_header250.preheader:                   ; preds = %polly.loop_header225, %polly.merge.us
  %121 = mul i64 %117, 8000
  %122 = mul i64 %117, 9600
  br i1 %polly.loop_guard2351098, label %polly.loop_header250.us, label %polly.loop_exit252

polly.loop_header250.us:                          ; preds = %polly.loop_header250.preheader, %polly.loop_exit259.loopexit.us
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_exit259.loopexit.us ], [ 0, %polly.loop_header250.preheader ]
  %123 = add nuw nsw i64 %polly.indvar253.us, %108
  %polly.access.mul.Packed_MemRef_call1264.us = mul nuw nsw i64 %polly.indvar253.us, 1200
  %124 = shl i64 %123, 3
  %125 = add i64 %124, %121
  %scevgep268.us = getelementptr i8, i8* %call2, i64 %125
  %scevgep268269.us = bitcast i8* %scevgep268.us to double*
  %_p_scalar_270.us = load double, double* %scevgep268269.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1275.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1264.us, %116
  %polly.access.Packed_MemRef_call1276.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.us
  %_p_scalar_277.us = load double, double* %polly.access.Packed_MemRef_call1276.us, align 8
  br label %polly.loop_header257.us

polly.loop_header257.us:                          ; preds = %polly.loop_header250.us, %polly.loop_header257.us
  %polly.indvar261.us = phi i64 [ %polly.indvar_next262.us, %polly.loop_header257.us ], [ 0, %polly.loop_header250.us ]
  %126 = add nuw nsw i64 %polly.indvar261.us, %109
  %polly.access.add.Packed_MemRef_call1265.us = add nuw nsw i64 %polly.indvar261.us, %polly.access.mul.Packed_MemRef_call1264.us
  %polly.access.Packed_MemRef_call1266.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us
  %_p_scalar_267.us = load double, double* %polly.access.Packed_MemRef_call1266.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_270.us, %_p_scalar_267.us
  %127 = mul i64 %126, 8000
  %128 = add i64 %127, %124
  %scevgep271.us = getelementptr i8, i8* %call2, i64 %128
  %scevgep271272.us = bitcast i8* %scevgep271.us to double*
  %_p_scalar_273.us = load double, double* %scevgep271272.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_277.us, %_p_scalar_273.us
  %129 = shl i64 %126, 3
  %130 = add i64 %129, %122
  %scevgep278.us = getelementptr i8, i8* %call, i64 %130
  %scevgep278279.us = bitcast i8* %scevgep278.us to double*
  %_p_scalar_280.us = load double, double* %scevgep278279.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_280.us
  store double %p_add42.i118.us, double* %scevgep278279.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next262.us = add nuw nsw i64 %polly.indvar261.us, 1
  %exitcond1000.not = icmp eq i64 %polly.indvar261.us, %smin999
  br i1 %exitcond1000.not, label %polly.loop_exit259.loopexit.us, label %polly.loop_header257.us

polly.loop_exit259.loopexit.us:                   ; preds = %polly.loop_header257.us
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %exitcond1002.not = icmp eq i64 %polly.indvar_next254.us, %107
  br i1 %exitcond1002.not, label %polly.loop_exit252, label %polly.loop_header250.us

polly.start283:                                   ; preds = %kernel_syr2k.exit
  %malloccall285 = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  br label %polly.loop_header369

polly.exiting284:                                 ; preds = %polly.loop_exit393
  tail call void @free(i8* %malloccall285)
  br label %kernel_syr2k.exit90

polly.loop_header369:                             ; preds = %polly.loop_exit377, %polly.start283
  %indvar1213 = phi i64 [ %indvar.next1214, %polly.loop_exit377 ], [ 0, %polly.start283 ]
  %polly.indvar372 = phi i64 [ %polly.indvar_next373, %polly.loop_exit377 ], [ 1, %polly.start283 ]
  %131 = add i64 %indvar1213, 1
  %132 = mul nuw nsw i64 %polly.indvar372, 9600
  %scevgep381 = getelementptr i8, i8* %call, i64 %132
  %min.iters.check1215 = icmp ult i64 %131, 4
  br i1 %min.iters.check1215, label %polly.loop_header375.preheader, label %vector.ph1216

vector.ph1216:                                    ; preds = %polly.loop_header369
  %n.vec1218 = and i64 %131, -4
  br label %vector.body1212

vector.body1212:                                  ; preds = %vector.body1212, %vector.ph1216
  %index1219 = phi i64 [ 0, %vector.ph1216 ], [ %index.next1220, %vector.body1212 ]
  %133 = shl nuw nsw i64 %index1219, 3
  %134 = getelementptr i8, i8* %scevgep381, i64 %133
  %135 = bitcast i8* %134 to <4 x double>*
  %wide.load1223 = load <4 x double>, <4 x double>* %135, align 8, !alias.scope !74, !noalias !76
  %136 = fmul fast <4 x double> %wide.load1223, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %137 = bitcast i8* %134 to <4 x double>*
  store <4 x double> %136, <4 x double>* %137, align 8, !alias.scope !74, !noalias !76
  %index.next1220 = add i64 %index1219, 4
  %138 = icmp eq i64 %index.next1220, %n.vec1218
  br i1 %138, label %middle.block1210, label %vector.body1212, !llvm.loop !80

middle.block1210:                                 ; preds = %vector.body1212
  %cmp.n1222 = icmp eq i64 %131, %n.vec1218
  br i1 %cmp.n1222, label %polly.loop_exit377, label %polly.loop_header375.preheader

polly.loop_header375.preheader:                   ; preds = %polly.loop_header369, %middle.block1210
  %polly.indvar378.ph = phi i64 [ 0, %polly.loop_header369 ], [ %n.vec1218, %middle.block1210 ]
  br label %polly.loop_header375

polly.loop_exit377:                               ; preds = %polly.loop_header375, %middle.block1210
  %polly.indvar_next373 = add nuw nsw i64 %polly.indvar372, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar_next373, 1200
  %indvar.next1214 = add i64 %indvar1213, 1
  br i1 %exitcond1035.not, label %polly.loop_header385.preheader, label %polly.loop_header369

polly.loop_header385.preheader:                   ; preds = %polly.loop_exit377
  %Packed_MemRef_call1286 = bitcast i8* %malloccall285 to double*
  br label %polly.loop_header385

polly.loop_header375:                             ; preds = %polly.loop_header375.preheader, %polly.loop_header375
  %polly.indvar378 = phi i64 [ %polly.indvar_next379, %polly.loop_header375 ], [ %polly.indvar378.ph, %polly.loop_header375.preheader ]
  %139 = shl nuw nsw i64 %polly.indvar378, 3
  %scevgep382 = getelementptr i8, i8* %scevgep381, i64 %139
  %scevgep382383 = bitcast i8* %scevgep382 to double*
  %_p_scalar_384 = load double, double* %scevgep382383, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_384, 1.200000e+00
  store double %p_mul.i57, double* %scevgep382383, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next379 = add nuw nsw i64 %polly.indvar378, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next379, %polly.indvar372
  br i1 %exitcond1034.not, label %polly.loop_exit377, label %polly.loop_header375, !llvm.loop !81

polly.loop_header385:                             ; preds = %polly.loop_header385.preheader, %polly.loop_exit393
  %indvars.iv1017 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %indvars.iv.next1018, %polly.loop_exit393 ]
  %indvars.iv1012 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %indvars.iv.next1013, %polly.loop_exit393 ]
  %polly.indvar388 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %polly.indvar_next389, %polly.loop_exit393 ]
  %140 = shl nuw nsw i64 %polly.indvar388, 1
  %141 = add nuw nsw i64 %140, 2
  %pexp.p_div_q397 = udiv i64 %141, 5
  %142 = sub nsw i64 %140, %pexp.p_div_q397
  %143 = add nsw i64 %142, 1
  %.inv873 = icmp slt i64 %142, 59
  %144 = select i1 %.inv873, i64 %143, i64 59
  %polly.loop_guard402 = icmp sgt i64 %144, -1
  %145 = mul nsw i64 %polly.indvar388, -32
  %146 = icmp slt i64 %145, -1168
  %147 = select i1 %146, i64 %145, i64 -1168
  %148 = add nsw i64 %147, 1199
  %149 = shl nsw i64 %polly.indvar388, 5
  br label %polly.loop_header391

polly.loop_exit393:                               ; preds = %polly.loop_exit401
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %indvars.iv.next1013 = add nsw i64 %indvars.iv1012, -32
  %indvars.iv.next1018 = add nuw nsw i64 %indvars.iv1017, 32
  %exitcond1033.not = icmp eq i64 %polly.indvar_next389, 38
  br i1 %exitcond1033.not, label %polly.exiting284, label %polly.loop_header385

polly.loop_header391:                             ; preds = %polly.loop_exit401, %polly.loop_header385
  %indvars.iv1008 = phi i64 [ %indvars.iv.next1009, %polly.loop_exit401 ], [ 0, %polly.loop_header385 ]
  %polly.indvar394 = phi i64 [ %polly.indvar_next395, %polly.loop_exit401 ], [ 0, %polly.loop_header385 ]
  %smin1029 = call i64 @llvm.smin.i64(i64 %indvars.iv1008, i64 -872)
  %150 = add nsw i64 %smin1029, 1000
  br i1 %polly.loop_guard402, label %polly.loop_header399.preheader, label %polly.loop_exit401

polly.loop_header399.preheader:                   ; preds = %polly.loop_header391
  %151 = shl nsw i64 %polly.indvar394, 7
  br label %polly.loop_header399

polly.loop_exit401:                               ; preds = %polly.loop_exit409, %polly.loop_header391
  %polly.indvar_next395 = add nuw nsw i64 %polly.indvar394, 1
  %indvars.iv.next1009 = add nsw i64 %indvars.iv1008, -128
  %exitcond1032.not = icmp eq i64 %polly.indvar_next395, 8
  br i1 %exitcond1032.not, label %polly.loop_exit393, label %polly.loop_header391

polly.loop_header399:                             ; preds = %polly.loop_header399.preheader, %polly.loop_exit409
  %indvars.iv1019 = phi i64 [ %indvars.iv1017, %polly.loop_header399.preheader ], [ %indvars.iv.next1020, %polly.loop_exit409 ]
  %indvars.iv1014 = phi i64 [ %indvars.iv1012, %polly.loop_header399.preheader ], [ %indvars.iv.next1015, %polly.loop_exit409 ]
  %polly.indvar403 = phi i64 [ 0, %polly.loop_header399.preheader ], [ %polly.indvar_next404, %polly.loop_exit409 ]
  %152 = mul nsw i64 %polly.indvar403, 20
  %153 = add nsw i64 %152, %145
  %154 = icmp sgt i64 %153, 0
  %155 = select i1 %154, i64 %153, i64 0
  %polly.loop_guard410.not = icmp sgt i64 %155, %148
  br i1 %polly.loop_guard410.not, label %polly.loop_exit409, label %polly.loop_header407.preheader

polly.loop_header407.preheader:                   ; preds = %polly.loop_header399
  %smax1016 = call i64 @llvm.smax.i64(i64 %indvars.iv1014, i64 0)
  %156 = add i64 %smax1016, %indvars.iv1019
  %157 = sub nsw i64 %149, %152
  %158 = add nuw nsw i64 %152, 20
  br label %polly.loop_header407

polly.loop_exit409:                               ; preds = %polly.loop_exit445, %polly.loop_header399
  %polly.indvar_next404 = add nuw i64 %polly.indvar403, 1
  %indvars.iv.next1015 = add i64 %indvars.iv1014, 20
  %indvars.iv.next1020 = add i64 %indvars.iv1019, -20
  %exitcond1031.not = icmp eq i64 %polly.indvar403, %144
  br i1 %exitcond1031.not, label %polly.loop_exit401, label %polly.loop_header399

polly.loop_header407:                             ; preds = %polly.loop_header407.preheader, %polly.loop_exit445
  %indvars.iv1021 = phi i64 [ %156, %polly.loop_header407.preheader ], [ %indvars.iv.next1022, %polly.loop_exit445 ]
  %polly.indvar411 = phi i64 [ %155, %polly.loop_header407.preheader ], [ %polly.indvar_next412, %polly.loop_exit445 ]
  %smin1027 = call i64 @llvm.smin.i64(i64 %indvars.iv1021, i64 19)
  %159 = add nsw i64 %polly.indvar411, %157
  %polly.loop_guard4241099 = icmp sgt i64 %159, -1
  %160 = add nuw nsw i64 %polly.indvar411, %149
  %.not874 = icmp ult i64 %160, %158
  %polly.access.mul.call1437 = mul nsw i64 %160, 1000
  %161 = add nuw i64 %polly.access.mul.call1437, %151
  br i1 %polly.loop_guard4241099, label %polly.loop_header414.us, label %polly.loop_header407.split

polly.loop_header414.us:                          ; preds = %polly.loop_header407, %polly.merge433.us
  %polly.indvar417.us = phi i64 [ %polly.indvar_next418.us, %polly.merge433.us ], [ 0, %polly.loop_header407 ]
  %162 = add nuw nsw i64 %polly.indvar417.us, %151
  %polly.access.mul.Packed_MemRef_call1286.us = mul nuw nsw i64 %polly.indvar417.us, 1200
  br label %polly.loop_header421.us

polly.loop_header421.us:                          ; preds = %polly.loop_header414.us, %polly.loop_header421.us
  %polly.indvar425.us = phi i64 [ %polly.indvar_next426.us, %polly.loop_header421.us ], [ 0, %polly.loop_header414.us ]
  %163 = add nuw nsw i64 %polly.indvar425.us, %152
  %polly.access.mul.call1429.us = mul nsw i64 %163, 1000
  %polly.access.add.call1430.us = add nuw nsw i64 %162, %polly.access.mul.call1429.us
  %polly.access.call1431.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1430.us
  %polly.access.call1431.load.us = load double, double* %polly.access.call1431.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1286.us = add nuw nsw i64 %polly.indvar425.us, %polly.access.mul.Packed_MemRef_call1286.us
  %polly.access.Packed_MemRef_call1286.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us
  store double %polly.access.call1431.load.us, double* %polly.access.Packed_MemRef_call1286.us, align 8
  %polly.indvar_next426.us = add nuw nsw i64 %polly.indvar425.us, 1
  %exitcond1024.not = icmp eq i64 %polly.indvar425.us, %smin1027
  br i1 %exitcond1024.not, label %polly.cond432.loopexit.us, label %polly.loop_header421.us

polly.then434.us:                                 ; preds = %polly.cond432.loopexit.us
  %polly.access.add.call1438.us = add i64 %161, %polly.indvar417.us
  %polly.access.call1439.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.us
  %polly.access.call1439.load.us = load double, double* %polly.access.call1439.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1286441.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1286.us, %159
  %polly.access.Packed_MemRef_call1286442.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.us
  store double %polly.access.call1439.load.us, double* %polly.access.Packed_MemRef_call1286442.us, align 8
  br label %polly.merge433.us

polly.merge433.us:                                ; preds = %polly.then434.us, %polly.cond432.loopexit.us
  %polly.indvar_next418.us = add nuw nsw i64 %polly.indvar417.us, 1
  %exitcond1026.not = icmp eq i64 %polly.indvar_next418.us, %150
  br i1 %exitcond1026.not, label %polly.loop_header443.preheader, label %polly.loop_header414.us

polly.cond432.loopexit.us:                        ; preds = %polly.loop_header421.us
  br i1 %.not874, label %polly.merge433.us, label %polly.then434.us

polly.loop_header407.split:                       ; preds = %polly.loop_header407
  br i1 %.not874, label %polly.loop_exit445, label %polly.loop_header414

polly.loop_exit445:                               ; preds = %polly.loop_exit452.loopexit.us, %polly.loop_header407.split, %polly.loop_header443.preheader
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %polly.loop_cond413.not.not = icmp ult i64 %polly.indvar411, %148
  %indvars.iv.next1022 = add i64 %indvars.iv1021, 1
  br i1 %polly.loop_cond413.not.not, label %polly.loop_header407, label %polly.loop_exit409

polly.loop_header414:                             ; preds = %polly.loop_header407.split, %polly.loop_header414
  %polly.indvar417 = phi i64 [ %polly.indvar_next418, %polly.loop_header414 ], [ 0, %polly.loop_header407.split ]
  %polly.access.add.call1438 = add i64 %161, %polly.indvar417
  %polly.access.call1439 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438
  %polly.access.call1439.load = load double, double* %polly.access.call1439, align 8, !alias.scope !77, !noalias !82
  %polly.access.mul.Packed_MemRef_call1286440 = mul nuw nsw i64 %polly.indvar417, 1200
  %polly.access.add.Packed_MemRef_call1286441 = add nsw i64 %polly.access.mul.Packed_MemRef_call1286440, %159
  %polly.access.Packed_MemRef_call1286442 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441
  store double %polly.access.call1439.load, double* %polly.access.Packed_MemRef_call1286442, align 8
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar_next418, %150
  br i1 %exitcond1011.not, label %polly.loop_header443.preheader, label %polly.loop_header414

polly.loop_header443.preheader:                   ; preds = %polly.loop_header414, %polly.merge433.us
  %164 = mul i64 %160, 8000
  %165 = mul i64 %160, 9600
  br i1 %polly.loop_guard4241099, label %polly.loop_header443.us, label %polly.loop_exit445

polly.loop_header443.us:                          ; preds = %polly.loop_header443.preheader, %polly.loop_exit452.loopexit.us
  %polly.indvar446.us = phi i64 [ %polly.indvar_next447.us, %polly.loop_exit452.loopexit.us ], [ 0, %polly.loop_header443.preheader ]
  %166 = add nuw nsw i64 %polly.indvar446.us, %151
  %polly.access.mul.Packed_MemRef_call1286457.us = mul nuw nsw i64 %polly.indvar446.us, 1200
  %167 = shl i64 %166, 3
  %168 = add i64 %167, %164
  %scevgep461.us = getelementptr i8, i8* %call2, i64 %168
  %scevgep461462.us = bitcast i8* %scevgep461.us to double*
  %_p_scalar_463.us = load double, double* %scevgep461462.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1286468.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1286457.us, %159
  %polly.access.Packed_MemRef_call1286469.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286468.us
  %_p_scalar_470.us = load double, double* %polly.access.Packed_MemRef_call1286469.us, align 8
  br label %polly.loop_header450.us

polly.loop_header450.us:                          ; preds = %polly.loop_header443.us, %polly.loop_header450.us
  %polly.indvar454.us = phi i64 [ %polly.indvar_next455.us, %polly.loop_header450.us ], [ 0, %polly.loop_header443.us ]
  %169 = add nuw nsw i64 %polly.indvar454.us, %152
  %polly.access.add.Packed_MemRef_call1286458.us = add nuw nsw i64 %polly.indvar454.us, %polly.access.mul.Packed_MemRef_call1286457.us
  %polly.access.Packed_MemRef_call1286459.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286458.us
  %_p_scalar_460.us = load double, double* %polly.access.Packed_MemRef_call1286459.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_463.us, %_p_scalar_460.us
  %170 = mul i64 %169, 8000
  %171 = add i64 %170, %167
  %scevgep464.us = getelementptr i8, i8* %call2, i64 %171
  %scevgep464465.us = bitcast i8* %scevgep464.us to double*
  %_p_scalar_466.us = load double, double* %scevgep464465.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_470.us, %_p_scalar_466.us
  %172 = shl i64 %169, 3
  %173 = add i64 %172, %165
  %scevgep471.us = getelementptr i8, i8* %call, i64 %173
  %scevgep471472.us = bitcast i8* %scevgep471.us to double*
  %_p_scalar_473.us = load double, double* %scevgep471472.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_473.us
  store double %p_add42.i79.us, double* %scevgep471472.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next455.us = add nuw nsw i64 %polly.indvar454.us, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar454.us, %smin1027
  br i1 %exitcond1028.not, label %polly.loop_exit452.loopexit.us, label %polly.loop_header450.us

polly.loop_exit452.loopexit.us:                   ; preds = %polly.loop_header450.us
  %polly.indvar_next447.us = add nuw nsw i64 %polly.indvar446.us, 1
  %exitcond1030.not = icmp eq i64 %polly.indvar_next447.us, %150
  br i1 %exitcond1030.not, label %polly.loop_exit445, label %polly.loop_header443.us

polly.start476:                                   ; preds = %init_array.exit
  %malloccall478 = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  br label %polly.loop_header562

polly.exiting477:                                 ; preds = %polly.loop_exit586
  tail call void @free(i8* %malloccall478)
  br label %kernel_syr2k.exit

polly.loop_header562:                             ; preds = %polly.loop_exit570, %polly.start476
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit570 ], [ 0, %polly.start476 ]
  %polly.indvar565 = phi i64 [ %polly.indvar_next566, %polly.loop_exit570 ], [ 1, %polly.start476 ]
  %174 = add i64 %indvar, 1
  %175 = mul nuw nsw i64 %polly.indvar565, 9600
  %scevgep574 = getelementptr i8, i8* %call, i64 %175
  %min.iters.check1189 = icmp ult i64 %174, 4
  br i1 %min.iters.check1189, label %polly.loop_header568.preheader, label %vector.ph1190

vector.ph1190:                                    ; preds = %polly.loop_header562
  %n.vec1192 = and i64 %174, -4
  br label %vector.body1188

vector.body1188:                                  ; preds = %vector.body1188, %vector.ph1190
  %index1193 = phi i64 [ 0, %vector.ph1190 ], [ %index.next1194, %vector.body1188 ]
  %176 = shl nuw nsw i64 %index1193, 3
  %177 = getelementptr i8, i8* %scevgep574, i64 %176
  %178 = bitcast i8* %177 to <4 x double>*
  %wide.load1197 = load <4 x double>, <4 x double>* %178, align 8, !alias.scope !84, !noalias !86
  %179 = fmul fast <4 x double> %wide.load1197, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %180 = bitcast i8* %177 to <4 x double>*
  store <4 x double> %179, <4 x double>* %180, align 8, !alias.scope !84, !noalias !86
  %index.next1194 = add i64 %index1193, 4
  %181 = icmp eq i64 %index.next1194, %n.vec1192
  br i1 %181, label %middle.block1186, label %vector.body1188, !llvm.loop !90

middle.block1186:                                 ; preds = %vector.body1188
  %cmp.n1196 = icmp eq i64 %174, %n.vec1192
  br i1 %cmp.n1196, label %polly.loop_exit570, label %polly.loop_header568.preheader

polly.loop_header568.preheader:                   ; preds = %polly.loop_header562, %middle.block1186
  %polly.indvar571.ph = phi i64 [ 0, %polly.loop_header562 ], [ %n.vec1192, %middle.block1186 ]
  br label %polly.loop_header568

polly.loop_exit570:                               ; preds = %polly.loop_header568, %middle.block1186
  %polly.indvar_next566 = add nuw nsw i64 %polly.indvar565, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar_next566, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1063.not, label %polly.loop_header578.preheader, label %polly.loop_header562

polly.loop_header578.preheader:                   ; preds = %polly.loop_exit570
  %Packed_MemRef_call1479 = bitcast i8* %malloccall478 to double*
  br label %polly.loop_header578

polly.loop_header568:                             ; preds = %polly.loop_header568.preheader, %polly.loop_header568
  %polly.indvar571 = phi i64 [ %polly.indvar_next572, %polly.loop_header568 ], [ %polly.indvar571.ph, %polly.loop_header568.preheader ]
  %182 = shl nuw nsw i64 %polly.indvar571, 3
  %scevgep575 = getelementptr i8, i8* %scevgep574, i64 %182
  %scevgep575576 = bitcast i8* %scevgep575 to double*
  %_p_scalar_577 = load double, double* %scevgep575576, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_577, 1.200000e+00
  store double %p_mul.i, double* %scevgep575576, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next572 = add nuw nsw i64 %polly.indvar571, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar_next572, %polly.indvar565
  br i1 %exitcond1062.not, label %polly.loop_exit570, label %polly.loop_header568, !llvm.loop !91

polly.loop_header578:                             ; preds = %polly.loop_header578.preheader, %polly.loop_exit586
  %indvars.iv1045 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %indvars.iv.next1046, %polly.loop_exit586 ]
  %indvars.iv1040 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %indvars.iv.next1041, %polly.loop_exit586 ]
  %polly.indvar581 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %polly.indvar_next582, %polly.loop_exit586 ]
  %183 = shl nuw nsw i64 %polly.indvar581, 1
  %184 = add nuw nsw i64 %183, 2
  %pexp.p_div_q590 = udiv i64 %184, 5
  %185 = sub nsw i64 %183, %pexp.p_div_q590
  %186 = add nsw i64 %185, 1
  %.inv875 = icmp slt i64 %185, 59
  %187 = select i1 %.inv875, i64 %186, i64 59
  %polly.loop_guard595 = icmp sgt i64 %187, -1
  %188 = mul nsw i64 %polly.indvar581, -32
  %189 = icmp slt i64 %188, -1168
  %190 = select i1 %189, i64 %188, i64 -1168
  %191 = add nsw i64 %190, 1199
  %192 = shl nsw i64 %polly.indvar581, 5
  br label %polly.loop_header584

polly.loop_exit586:                               ; preds = %polly.loop_exit594
  %polly.indvar_next582 = add nuw nsw i64 %polly.indvar581, 1
  %indvars.iv.next1041 = add nsw i64 %indvars.iv1040, -32
  %indvars.iv.next1046 = add nuw nsw i64 %indvars.iv1045, 32
  %exitcond1061.not = icmp eq i64 %polly.indvar_next582, 38
  br i1 %exitcond1061.not, label %polly.exiting477, label %polly.loop_header578

polly.loop_header584:                             ; preds = %polly.loop_exit594, %polly.loop_header578
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit594 ], [ 0, %polly.loop_header578 ]
  %polly.indvar587 = phi i64 [ %polly.indvar_next588, %polly.loop_exit594 ], [ 0, %polly.loop_header578 ]
  %smin1057 = call i64 @llvm.smin.i64(i64 %indvars.iv1036, i64 -872)
  %193 = add nsw i64 %smin1057, 1000
  br i1 %polly.loop_guard595, label %polly.loop_header592.preheader, label %polly.loop_exit594

polly.loop_header592.preheader:                   ; preds = %polly.loop_header584
  %194 = shl nsw i64 %polly.indvar587, 7
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_exit602, %polly.loop_header584
  %polly.indvar_next588 = add nuw nsw i64 %polly.indvar587, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, -128
  %exitcond1060.not = icmp eq i64 %polly.indvar_next588, 8
  br i1 %exitcond1060.not, label %polly.loop_exit586, label %polly.loop_header584

polly.loop_header592:                             ; preds = %polly.loop_header592.preheader, %polly.loop_exit602
  %indvars.iv1047 = phi i64 [ %indvars.iv1045, %polly.loop_header592.preheader ], [ %indvars.iv.next1048, %polly.loop_exit602 ]
  %indvars.iv1042 = phi i64 [ %indvars.iv1040, %polly.loop_header592.preheader ], [ %indvars.iv.next1043, %polly.loop_exit602 ]
  %polly.indvar596 = phi i64 [ 0, %polly.loop_header592.preheader ], [ %polly.indvar_next597, %polly.loop_exit602 ]
  %195 = mul nsw i64 %polly.indvar596, 20
  %196 = add nsw i64 %195, %188
  %197 = icmp sgt i64 %196, 0
  %198 = select i1 %197, i64 %196, i64 0
  %polly.loop_guard603.not = icmp sgt i64 %198, %191
  br i1 %polly.loop_guard603.not, label %polly.loop_exit602, label %polly.loop_header600.preheader

polly.loop_header600.preheader:                   ; preds = %polly.loop_header592
  %smax1044 = call i64 @llvm.smax.i64(i64 %indvars.iv1042, i64 0)
  %199 = add i64 %smax1044, %indvars.iv1047
  %200 = sub nsw i64 %192, %195
  %201 = add nuw nsw i64 %195, 20
  br label %polly.loop_header600

polly.loop_exit602:                               ; preds = %polly.loop_exit638, %polly.loop_header592
  %polly.indvar_next597 = add nuw i64 %polly.indvar596, 1
  %indvars.iv.next1043 = add i64 %indvars.iv1042, 20
  %indvars.iv.next1048 = add i64 %indvars.iv1047, -20
  %exitcond1059.not = icmp eq i64 %polly.indvar596, %187
  br i1 %exitcond1059.not, label %polly.loop_exit594, label %polly.loop_header592

polly.loop_header600:                             ; preds = %polly.loop_header600.preheader, %polly.loop_exit638
  %indvars.iv1049 = phi i64 [ %199, %polly.loop_header600.preheader ], [ %indvars.iv.next1050, %polly.loop_exit638 ]
  %polly.indvar604 = phi i64 [ %198, %polly.loop_header600.preheader ], [ %polly.indvar_next605, %polly.loop_exit638 ]
  %smin1055 = call i64 @llvm.smin.i64(i64 %indvars.iv1049, i64 19)
  %202 = add nsw i64 %polly.indvar604, %200
  %polly.loop_guard6171100 = icmp sgt i64 %202, -1
  %203 = add nuw nsw i64 %polly.indvar604, %192
  %.not876 = icmp ult i64 %203, %201
  %polly.access.mul.call1630 = mul nsw i64 %203, 1000
  %204 = add nuw i64 %polly.access.mul.call1630, %194
  br i1 %polly.loop_guard6171100, label %polly.loop_header607.us, label %polly.loop_header600.split

polly.loop_header607.us:                          ; preds = %polly.loop_header600, %polly.merge626.us
  %polly.indvar610.us = phi i64 [ %polly.indvar_next611.us, %polly.merge626.us ], [ 0, %polly.loop_header600 ]
  %205 = add nuw nsw i64 %polly.indvar610.us, %194
  %polly.access.mul.Packed_MemRef_call1479.us = mul nuw nsw i64 %polly.indvar610.us, 1200
  br label %polly.loop_header614.us

polly.loop_header614.us:                          ; preds = %polly.loop_header607.us, %polly.loop_header614.us
  %polly.indvar618.us = phi i64 [ %polly.indvar_next619.us, %polly.loop_header614.us ], [ 0, %polly.loop_header607.us ]
  %206 = add nuw nsw i64 %polly.indvar618.us, %195
  %polly.access.mul.call1622.us = mul nsw i64 %206, 1000
  %polly.access.add.call1623.us = add nuw nsw i64 %205, %polly.access.mul.call1622.us
  %polly.access.call1624.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1623.us
  %polly.access.call1624.load.us = load double, double* %polly.access.call1624.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1479.us = add nuw nsw i64 %polly.indvar618.us, %polly.access.mul.Packed_MemRef_call1479.us
  %polly.access.Packed_MemRef_call1479.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us
  store double %polly.access.call1624.load.us, double* %polly.access.Packed_MemRef_call1479.us, align 8
  %polly.indvar_next619.us = add nuw nsw i64 %polly.indvar618.us, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar618.us, %smin1055
  br i1 %exitcond1052.not, label %polly.cond625.loopexit.us, label %polly.loop_header614.us

polly.then627.us:                                 ; preds = %polly.cond625.loopexit.us
  %polly.access.add.call1631.us = add i64 %204, %polly.indvar610.us
  %polly.access.call1632.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.us
  %polly.access.call1632.load.us = load double, double* %polly.access.call1632.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1479634.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1479.us, %202
  %polly.access.Packed_MemRef_call1479635.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.us
  store double %polly.access.call1632.load.us, double* %polly.access.Packed_MemRef_call1479635.us, align 8
  br label %polly.merge626.us

polly.merge626.us:                                ; preds = %polly.then627.us, %polly.cond625.loopexit.us
  %polly.indvar_next611.us = add nuw nsw i64 %polly.indvar610.us, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar_next611.us, %193
  br i1 %exitcond1054.not, label %polly.loop_header636.preheader, label %polly.loop_header607.us

polly.cond625.loopexit.us:                        ; preds = %polly.loop_header614.us
  br i1 %.not876, label %polly.merge626.us, label %polly.then627.us

polly.loop_header600.split:                       ; preds = %polly.loop_header600
  br i1 %.not876, label %polly.loop_exit638, label %polly.loop_header607

polly.loop_exit638:                               ; preds = %polly.loop_exit645.loopexit.us, %polly.loop_header600.split, %polly.loop_header636.preheader
  %polly.indvar_next605 = add nuw nsw i64 %polly.indvar604, 1
  %polly.loop_cond606.not.not = icmp ult i64 %polly.indvar604, %191
  %indvars.iv.next1050 = add i64 %indvars.iv1049, 1
  br i1 %polly.loop_cond606.not.not, label %polly.loop_header600, label %polly.loop_exit602

polly.loop_header607:                             ; preds = %polly.loop_header600.split, %polly.loop_header607
  %polly.indvar610 = phi i64 [ %polly.indvar_next611, %polly.loop_header607 ], [ 0, %polly.loop_header600.split ]
  %polly.access.add.call1631 = add i64 %204, %polly.indvar610
  %polly.access.call1632 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631
  %polly.access.call1632.load = load double, double* %polly.access.call1632, align 8, !alias.scope !87, !noalias !92
  %polly.access.mul.Packed_MemRef_call1479633 = mul nuw nsw i64 %polly.indvar610, 1200
  %polly.access.add.Packed_MemRef_call1479634 = add nsw i64 %polly.access.mul.Packed_MemRef_call1479633, %202
  %polly.access.Packed_MemRef_call1479635 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634
  store double %polly.access.call1632.load, double* %polly.access.Packed_MemRef_call1479635, align 8
  %polly.indvar_next611 = add nuw nsw i64 %polly.indvar610, 1
  %exitcond1039.not = icmp eq i64 %polly.indvar_next611, %193
  br i1 %exitcond1039.not, label %polly.loop_header636.preheader, label %polly.loop_header607

polly.loop_header636.preheader:                   ; preds = %polly.loop_header607, %polly.merge626.us
  %207 = mul i64 %203, 8000
  %208 = mul i64 %203, 9600
  br i1 %polly.loop_guard6171100, label %polly.loop_header636.us, label %polly.loop_exit638

polly.loop_header636.us:                          ; preds = %polly.loop_header636.preheader, %polly.loop_exit645.loopexit.us
  %polly.indvar639.us = phi i64 [ %polly.indvar_next640.us, %polly.loop_exit645.loopexit.us ], [ 0, %polly.loop_header636.preheader ]
  %209 = add nuw nsw i64 %polly.indvar639.us, %194
  %polly.access.mul.Packed_MemRef_call1479650.us = mul nuw nsw i64 %polly.indvar639.us, 1200
  %210 = shl i64 %209, 3
  %211 = add i64 %210, %207
  %scevgep654.us = getelementptr i8, i8* %call2, i64 %211
  %scevgep654655.us = bitcast i8* %scevgep654.us to double*
  %_p_scalar_656.us = load double, double* %scevgep654655.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1479661.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1479650.us, %202
  %polly.access.Packed_MemRef_call1479662.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479661.us
  %_p_scalar_663.us = load double, double* %polly.access.Packed_MemRef_call1479662.us, align 8
  br label %polly.loop_header643.us

polly.loop_header643.us:                          ; preds = %polly.loop_header636.us, %polly.loop_header643.us
  %polly.indvar647.us = phi i64 [ %polly.indvar_next648.us, %polly.loop_header643.us ], [ 0, %polly.loop_header636.us ]
  %212 = add nuw nsw i64 %polly.indvar647.us, %195
  %polly.access.add.Packed_MemRef_call1479651.us = add nuw nsw i64 %polly.indvar647.us, %polly.access.mul.Packed_MemRef_call1479650.us
  %polly.access.Packed_MemRef_call1479652.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479651.us
  %_p_scalar_653.us = load double, double* %polly.access.Packed_MemRef_call1479652.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_656.us, %_p_scalar_653.us
  %213 = mul i64 %212, 8000
  %214 = add i64 %213, %210
  %scevgep657.us = getelementptr i8, i8* %call2, i64 %214
  %scevgep657658.us = bitcast i8* %scevgep657.us to double*
  %_p_scalar_659.us = load double, double* %scevgep657658.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_663.us, %_p_scalar_659.us
  %215 = shl i64 %212, 3
  %216 = add i64 %215, %208
  %scevgep664.us = getelementptr i8, i8* %call, i64 %216
  %scevgep664665.us = bitcast i8* %scevgep664.us to double*
  %_p_scalar_666.us = load double, double* %scevgep664665.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_666.us
  store double %p_add42.i.us, double* %scevgep664665.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next648.us = add nuw nsw i64 %polly.indvar647.us, 1
  %exitcond1056.not = icmp eq i64 %polly.indvar647.us, %smin1055
  br i1 %exitcond1056.not, label %polly.loop_exit645.loopexit.us, label %polly.loop_header643.us

polly.loop_exit645.loopexit.us:                   ; preds = %polly.loop_header643.us
  %polly.indvar_next640.us = add nuw nsw i64 %polly.indvar639.us, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar_next640.us, %193
  br i1 %exitcond1058.not, label %polly.loop_exit638, label %polly.loop_header636.us

polly.loop_header793:                             ; preds = %entry, %polly.loop_exit801
  %indvars.iv1088 = phi i64 [ %indvars.iv.next1089, %polly.loop_exit801 ], [ 0, %entry ]
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %entry ]
  %smin1090 = call i64 @llvm.smin.i64(i64 %indvars.iv1088, i64 -1168)
  %217 = shl nsw i64 %polly.indvar796, 5
  %218 = add nsw i64 %smin1090, 1199
  br label %polly.loop_header799

polly.loop_exit801:                               ; preds = %polly.loop_exit807
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %indvars.iv.next1089 = add nsw i64 %indvars.iv1088, -32
  %exitcond1093.not = icmp eq i64 %polly.indvar_next797, 38
  br i1 %exitcond1093.not, label %polly.loop_header820, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_exit807, %polly.loop_header793
  %indvars.iv1084 = phi i64 [ %indvars.iv.next1085, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %219 = mul nsw i64 %polly.indvar802, -32
  %smin = call i64 @llvm.smin.i64(i64 %219, i64 -1168)
  %220 = add nsw i64 %smin, 1200
  %smin1086 = call i64 @llvm.smin.i64(i64 %indvars.iv1084, i64 -1168)
  %221 = shl nsw i64 %polly.indvar802, 5
  %222 = add nsw i64 %smin1086, 1199
  br label %polly.loop_header805

polly.loop_exit807:                               ; preds = %polly.loop_exit813
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %indvars.iv.next1085 = add nsw i64 %indvars.iv1084, -32
  %exitcond1092.not = icmp eq i64 %polly.indvar_next803, 38
  br i1 %exitcond1092.not, label %polly.loop_exit801, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_exit813, %polly.loop_header799
  %polly.indvar808 = phi i64 [ 0, %polly.loop_header799 ], [ %polly.indvar_next809, %polly.loop_exit813 ]
  %223 = add nuw nsw i64 %polly.indvar808, %217
  %224 = trunc i64 %223 to i32
  %225 = mul nuw nsw i64 %223, 9600
  %min.iters.check = icmp eq i64 %220, 0
  br i1 %min.iters.check, label %polly.loop_header811, label %vector.ph1128

vector.ph1128:                                    ; preds = %polly.loop_header805
  %broadcast.splatinsert1135 = insertelement <4 x i64> poison, i64 %221, i32 0
  %broadcast.splat1136 = shufflevector <4 x i64> %broadcast.splatinsert1135, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1137 = insertelement <4 x i32> poison, i32 %224, i32 0
  %broadcast.splat1138 = shufflevector <4 x i32> %broadcast.splatinsert1137, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1127

vector.body1127:                                  ; preds = %vector.body1127, %vector.ph1128
  %index1129 = phi i64 [ 0, %vector.ph1128 ], [ %index.next1130, %vector.body1127 ]
  %vec.ind1133 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1128 ], [ %vec.ind.next1134, %vector.body1127 ]
  %226 = add nuw nsw <4 x i64> %vec.ind1133, %broadcast.splat1136
  %227 = trunc <4 x i64> %226 to <4 x i32>
  %228 = mul <4 x i32> %broadcast.splat1138, %227
  %229 = add <4 x i32> %228, <i32 3, i32 3, i32 3, i32 3>
  %230 = urem <4 x i32> %229, <i32 1200, i32 1200, i32 1200, i32 1200>
  %231 = sitofp <4 x i32> %230 to <4 x double>
  %232 = fmul fast <4 x double> %231, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %233 = extractelement <4 x i64> %226, i32 0
  %234 = shl i64 %233, 3
  %235 = add nuw nsw i64 %234, %225
  %236 = getelementptr i8, i8* %call, i64 %235
  %237 = bitcast i8* %236 to <4 x double>*
  store <4 x double> %232, <4 x double>* %237, align 8, !alias.scope !94, !noalias !96
  %index.next1130 = add i64 %index1129, 4
  %vec.ind.next1134 = add <4 x i64> %vec.ind1133, <i64 4, i64 4, i64 4, i64 4>
  %238 = icmp eq i64 %index.next1130, %220
  br i1 %238, label %polly.loop_exit813, label %vector.body1127, !llvm.loop !99

polly.loop_exit813:                               ; preds = %vector.body1127, %polly.loop_header811
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar808, %218
  br i1 %exitcond1091.not, label %polly.loop_exit807, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_header805, %polly.loop_header811
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_header811 ], [ 0, %polly.loop_header805 ]
  %239 = add nuw nsw i64 %polly.indvar814, %221
  %240 = trunc i64 %239 to i32
  %241 = mul i32 %240, %224
  %242 = add i32 %241, 3
  %243 = urem i32 %242, 1200
  %p_conv31.i = sitofp i32 %243 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %244 = shl i64 %239, 3
  %245 = add nuw nsw i64 %244, %225
  %scevgep817 = getelementptr i8, i8* %call, i64 %245
  %scevgep817818 = bitcast i8* %scevgep817 to double*
  store double %p_div33.i, double* %scevgep817818, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar814, %222
  br i1 %exitcond1087.not, label %polly.loop_exit813, label %polly.loop_header811, !llvm.loop !100

polly.loop_header820:                             ; preds = %polly.loop_exit801, %polly.loop_exit828
  %indvars.iv1078 = phi i64 [ %indvars.iv.next1079, %polly.loop_exit828 ], [ 0, %polly.loop_exit801 ]
  %polly.indvar823 = phi i64 [ %polly.indvar_next824, %polly.loop_exit828 ], [ 0, %polly.loop_exit801 ]
  %smin1080 = call i64 @llvm.smin.i64(i64 %indvars.iv1078, i64 -1168)
  %246 = shl nsw i64 %polly.indvar823, 5
  %247 = add nsw i64 %smin1080, 1199
  br label %polly.loop_header826

polly.loop_exit828:                               ; preds = %polly.loop_exit834
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %indvars.iv.next1079 = add nsw i64 %indvars.iv1078, -32
  %exitcond1083.not = icmp eq i64 %polly.indvar_next824, 38
  br i1 %exitcond1083.not, label %polly.loop_header846, label %polly.loop_header820

polly.loop_header826:                             ; preds = %polly.loop_exit834, %polly.loop_header820
  %indvars.iv1074 = phi i64 [ %indvars.iv.next1075, %polly.loop_exit834 ], [ 0, %polly.loop_header820 ]
  %polly.indvar829 = phi i64 [ %polly.indvar_next830, %polly.loop_exit834 ], [ 0, %polly.loop_header820 ]
  %248 = mul nsw i64 %polly.indvar829, -32
  %smin1142 = call i64 @llvm.smin.i64(i64 %248, i64 -968)
  %249 = add nsw i64 %smin1142, 1000
  %smin1076 = call i64 @llvm.smin.i64(i64 %indvars.iv1074, i64 -968)
  %250 = shl nsw i64 %polly.indvar829, 5
  %251 = add nsw i64 %smin1076, 999
  br label %polly.loop_header832

polly.loop_exit834:                               ; preds = %polly.loop_exit840
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %indvars.iv.next1075 = add nsw i64 %indvars.iv1074, -32
  %exitcond1082.not = icmp eq i64 %polly.indvar_next830, 32
  br i1 %exitcond1082.not, label %polly.loop_exit828, label %polly.loop_header826

polly.loop_header832:                             ; preds = %polly.loop_exit840, %polly.loop_header826
  %polly.indvar835 = phi i64 [ 0, %polly.loop_header826 ], [ %polly.indvar_next836, %polly.loop_exit840 ]
  %252 = add nuw nsw i64 %polly.indvar835, %246
  %253 = trunc i64 %252 to i32
  %254 = mul nuw nsw i64 %252, 8000
  %min.iters.check1143 = icmp eq i64 %249, 0
  br i1 %min.iters.check1143, label %polly.loop_header838, label %vector.ph1144

vector.ph1144:                                    ; preds = %polly.loop_header832
  %broadcast.splatinsert1153 = insertelement <4 x i64> poison, i64 %250, i32 0
  %broadcast.splat1154 = shufflevector <4 x i64> %broadcast.splatinsert1153, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1155 = insertelement <4 x i32> poison, i32 %253, i32 0
  %broadcast.splat1156 = shufflevector <4 x i32> %broadcast.splatinsert1155, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1141

vector.body1141:                                  ; preds = %vector.body1141, %vector.ph1144
  %index1147 = phi i64 [ 0, %vector.ph1144 ], [ %index.next1148, %vector.body1141 ]
  %vec.ind1151 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1144 ], [ %vec.ind.next1152, %vector.body1141 ]
  %255 = add nuw nsw <4 x i64> %vec.ind1151, %broadcast.splat1154
  %256 = trunc <4 x i64> %255 to <4 x i32>
  %257 = mul <4 x i32> %broadcast.splat1156, %256
  %258 = add <4 x i32> %257, <i32 2, i32 2, i32 2, i32 2>
  %259 = urem <4 x i32> %258, <i32 1000, i32 1000, i32 1000, i32 1000>
  %260 = sitofp <4 x i32> %259 to <4 x double>
  %261 = fmul fast <4 x double> %260, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %262 = extractelement <4 x i64> %255, i32 0
  %263 = shl i64 %262, 3
  %264 = add nuw nsw i64 %263, %254
  %265 = getelementptr i8, i8* %call2, i64 %264
  %266 = bitcast i8* %265 to <4 x double>*
  store <4 x double> %261, <4 x double>* %266, align 8, !alias.scope !98, !noalias !101
  %index.next1148 = add i64 %index1147, 4
  %vec.ind.next1152 = add <4 x i64> %vec.ind1151, <i64 4, i64 4, i64 4, i64 4>
  %267 = icmp eq i64 %index.next1148, %249
  br i1 %267, label %polly.loop_exit840, label %vector.body1141, !llvm.loop !102

polly.loop_exit840:                               ; preds = %vector.body1141, %polly.loop_header838
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar835, %247
  br i1 %exitcond1081.not, label %polly.loop_exit834, label %polly.loop_header832

polly.loop_header838:                             ; preds = %polly.loop_header832, %polly.loop_header838
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_header838 ], [ 0, %polly.loop_header832 ]
  %268 = add nuw nsw i64 %polly.indvar841, %250
  %269 = trunc i64 %268 to i32
  %270 = mul i32 %269, %253
  %271 = add i32 %270, 2
  %272 = urem i32 %271, 1000
  %p_conv10.i = sitofp i32 %272 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %273 = shl i64 %268, 3
  %274 = add nuw nsw i64 %273, %254
  %scevgep844 = getelementptr i8, i8* %call2, i64 %274
  %scevgep844845 = bitcast i8* %scevgep844 to double*
  store double %p_div12.i, double* %scevgep844845, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar841, %251
  br i1 %exitcond1077.not, label %polly.loop_exit840, label %polly.loop_header838, !llvm.loop !103

polly.loop_header846:                             ; preds = %polly.loop_exit828, %polly.loop_exit854
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069, %polly.loop_exit854 ], [ 0, %polly.loop_exit828 ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %polly.loop_exit828 ]
  %smin1070 = call i64 @llvm.smin.i64(i64 %indvars.iv1068, i64 -1168)
  %275 = shl nsw i64 %polly.indvar849, 5
  %276 = add nsw i64 %smin1070, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1069 = add nsw i64 %indvars.iv1068, -32
  %exitcond1073.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1073.not, label %init_array.exit, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %indvars.iv1064 = phi i64 [ %indvars.iv.next1065, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %277 = mul nsw i64 %polly.indvar855, -32
  %smin1160 = call i64 @llvm.smin.i64(i64 %277, i64 -968)
  %278 = add nsw i64 %smin1160, 1000
  %smin1066 = call i64 @llvm.smin.i64(i64 %indvars.iv1064, i64 -968)
  %279 = shl nsw i64 %polly.indvar855, 5
  %280 = add nsw i64 %smin1066, 999
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1065 = add nsw i64 %indvars.iv1064, -32
  %exitcond1072.not = icmp eq i64 %polly.indvar_next856, 32
  br i1 %exitcond1072.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %polly.indvar861 = phi i64 [ 0, %polly.loop_header852 ], [ %polly.indvar_next862, %polly.loop_exit866 ]
  %281 = add nuw nsw i64 %polly.indvar861, %275
  %282 = trunc i64 %281 to i32
  %283 = mul nuw nsw i64 %281, 8000
  %min.iters.check1161 = icmp eq i64 %278, 0
  br i1 %min.iters.check1161, label %polly.loop_header864, label %vector.ph1162

vector.ph1162:                                    ; preds = %polly.loop_header858
  %broadcast.splatinsert1171 = insertelement <4 x i64> poison, i64 %279, i32 0
  %broadcast.splat1172 = shufflevector <4 x i64> %broadcast.splatinsert1171, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1173 = insertelement <4 x i32> poison, i32 %282, i32 0
  %broadcast.splat1174 = shufflevector <4 x i32> %broadcast.splatinsert1173, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1159

vector.body1159:                                  ; preds = %vector.body1159, %vector.ph1162
  %index1165 = phi i64 [ 0, %vector.ph1162 ], [ %index.next1166, %vector.body1159 ]
  %vec.ind1169 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1162 ], [ %vec.ind.next1170, %vector.body1159 ]
  %284 = add nuw nsw <4 x i64> %vec.ind1169, %broadcast.splat1172
  %285 = trunc <4 x i64> %284 to <4 x i32>
  %286 = mul <4 x i32> %broadcast.splat1174, %285
  %287 = add <4 x i32> %286, <i32 1, i32 1, i32 1, i32 1>
  %288 = urem <4 x i32> %287, <i32 1200, i32 1200, i32 1200, i32 1200>
  %289 = sitofp <4 x i32> %288 to <4 x double>
  %290 = fmul fast <4 x double> %289, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %291 = extractelement <4 x i64> %284, i32 0
  %292 = shl i64 %291, 3
  %293 = add nuw nsw i64 %292, %283
  %294 = getelementptr i8, i8* %call1, i64 %293
  %295 = bitcast i8* %294 to <4 x double>*
  store <4 x double> %290, <4 x double>* %295, align 8, !alias.scope !97, !noalias !104
  %index.next1166 = add i64 %index1165, 4
  %vec.ind.next1170 = add <4 x i64> %vec.ind1169, <i64 4, i64 4, i64 4, i64 4>
  %296 = icmp eq i64 %index.next1166, %278
  br i1 %296, label %polly.loop_exit866, label %vector.body1159, !llvm.loop !105

polly.loop_exit866:                               ; preds = %vector.body1159, %polly.loop_header864
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar861, %276
  br i1 %exitcond1071.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_header858, %polly.loop_header864
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_header864 ], [ 0, %polly.loop_header858 ]
  %297 = add nuw nsw i64 %polly.indvar867, %279
  %298 = trunc i64 %297 to i32
  %299 = mul i32 %298, %282
  %300 = add i32 %299, 1
  %301 = urem i32 %300, 1200
  %p_conv.i = sitofp i32 %301 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %302 = shl i64 %297, 3
  %303 = add nuw nsw i64 %302, %283
  %scevgep871 = getelementptr i8, i8* %call1, i64 %303
  %scevgep871872 = bitcast i8* %scevgep871 to double*
  store double %p_div.i, double* %scevgep871872, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar867, %280
  br i1 %exitcond1067.not, label %polly.loop_exit866, label %polly.loop_header864, !llvm.loop !106
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
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 20}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 128}
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
!48 = !{!"llvm.loop.tile.size", i32 32}
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
