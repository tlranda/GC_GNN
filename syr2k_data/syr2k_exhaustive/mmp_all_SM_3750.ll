; ModuleID = 'syr2k_exhaustive/mmp_all_SM_3750.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_3750.c"
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
  %call817 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1669 = bitcast i8* %call1 to double*
  %polly.access.call1678 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1678, %call2
  %polly.access.call2698 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2698, %call1
  %2 = or i1 %0, %1
  %polly.access.call718 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call718, %call2
  %4 = icmp ule i8* %polly.access.call2698, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call718, %call1
  %8 = icmp ule i8* %polly.access.call1678, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header791, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1111 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1110 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1109 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1108 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1108, %scevgep1111
  %bound1 = icmp ult i8* %scevgep1110, %scevgep1109
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
  br i1 %exitcond18.not.i, label %vector.ph1115, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1115:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1122 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1123 = shufflevector <4 x i64> %broadcast.splatinsert1122, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1114

vector.body1114:                                  ; preds = %vector.body1114, %vector.ph1115
  %index1116 = phi i64 [ 0, %vector.ph1115 ], [ %index.next1117, %vector.body1114 ]
  %vec.ind1120 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1115 ], [ %vec.ind.next1121, %vector.body1114 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1120, %broadcast.splat1123
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call817, i64 %indvars.iv7.i, i64 %index1116
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1117 = add i64 %index1116, 4
  %vec.ind.next1121 = add <4 x i64> %vec.ind1120, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1117, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1114, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1114
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1115, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit852
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start476, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1178 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1178, label %for.body3.i46.preheader1258, label %vector.ph1179

vector.ph1179:                                    ; preds = %for.body3.i46.preheader
  %n.vec1181 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1177

vector.body1177:                                  ; preds = %vector.body1177, %vector.ph1179
  %index1182 = phi i64 [ 0, %vector.ph1179 ], [ %index.next1183, %vector.body1177 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call817, i64 %indvars.iv21.i, i64 %index1182
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
  br i1 %cmp.n1185, label %for.inc6.i, label %for.body3.i46.preheader1258

for.body3.i46.preheader1258:                      ; preds = %for.body3.i46.preheader, %middle.block1175
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1181, %middle.block1175 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1258, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1258 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call817, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call817, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting477
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start285, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1201 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1201, label %for.body3.i60.preheader1255, label %vector.ph1202

vector.ph1202:                                    ; preds = %for.body3.i60.preheader
  %n.vec1204 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %vector.ph1202
  %index1205 = phi i64 [ 0, %vector.ph1202 ], [ %index.next1206, %vector.body1200 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call817, i64 %indvars.iv21.i52, i64 %index1205
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1209 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1209, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1206 = add i64 %index1205, 4
  %57 = icmp eq i64 %index.next1206, %n.vec1204
  br i1 %57, label %middle.block1198, label %vector.body1200, !llvm.loop !60

middle.block1198:                                 ; preds = %vector.body1200
  %cmp.n1208 = icmp eq i64 %indvars.iv21.i52, %n.vec1204
  br i1 %cmp.n1208, label %for.inc6.i63, label %for.body3.i60.preheader1255

for.body3.i60.preheader1255:                      ; preds = %for.body3.i60.preheader, %middle.block1198
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1204, %middle.block1198 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1255, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1255 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call817, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call817, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting286
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
  br i1 %min.iters.check1227, label %for.body3.i99.preheader1252, label %vector.ph1228

vector.ph1228:                                    ; preds = %for.body3.i99.preheader
  %n.vec1230 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %vector.ph1228
  %index1231 = phi i64 [ 0, %vector.ph1228 ], [ %index.next1232, %vector.body1226 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call817, i64 %indvars.iv21.i91, i64 %index1231
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1235 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1235, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1232 = add i64 %index1231, 4
  %68 = icmp eq i64 %index.next1232, %n.vec1230
  br i1 %68, label %middle.block1224, label %vector.body1226, !llvm.loop !62

middle.block1224:                                 ; preds = %vector.body1226
  %cmp.n1234 = icmp eq i64 %indvars.iv21.i91, %n.vec1230
  br i1 %cmp.n1234, label %for.inc6.i102, label %for.body3.i99.preheader1252

for.body3.i99.preheader1252:                      ; preds = %for.body3.i99.preheader, %middle.block1224
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1230, %middle.block1224 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1252, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1252 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call817, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call817, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call817, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %wide.load1249 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1249, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1246 = add i64 %index1245, 4
  %95 = icmp eq i64 %index.next1246, %n.vec1244
  br i1 %95, label %middle.block1236, label %vector.body1238, !llvm.loop !74

middle.block1236:                                 ; preds = %vector.body1238
  %cmp.n1248 = icmp eq i64 %88, %n.vec1244
  br i1 %cmp.n1248, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1236
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1244, %middle.block1236 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1236
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1240 = add i64 %indvar1239, 1
  br i1 %exitcond1012.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond1011.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1011.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv1002 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next1003, %polly.loop_exit207 ]
  %indvars.iv998 = phi i64 [ 2, %polly.loop_header199.preheader ], [ %indvars.iv.next999, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = udiv i64 %indvars.iv998, 3
  %98 = mul nuw nsw i64 %97, 96
  %99 = add i64 %indvars.iv, %98
  %100 = sub nsw i64 %indvars.iv1002, %98
  %101 = mul nuw nsw i64 %polly.indvar202, 3
  %102 = trunc i64 %polly.indvar202 to i8
  %pexp.p_div_q.lhs.trunc = add i8 %102, 2
  %pexp.p_div_q875 = udiv i8 %pexp.p_div_q.lhs.trunc, 3
  %pexp.p_div_q.zext = zext i8 %pexp.p_div_q875 to i64
  %103 = sub nsw i64 %101, %pexp.p_div_q.zext
  %104 = mul nsw i64 %polly.indvar202, -256
  %105 = shl nsw i64 %polly.indvar202, 8
  %106 = add nsw i64 %104, 1199
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit244
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %indvars.iv.next999 = add nuw nsw i64 %indvars.iv998, 1
  %indvars.iv.next1003 = add nuw nsw i64 %indvars.iv1002, 32
  %exitcond1010.not = icmp eq i64 %polly.indvar_next203, 5
  br i1 %exitcond1010.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit244, %polly.loop_header199
  %indvars.iv1004 = phi i64 [ %indvars.iv.next1005, %polly.loop_exit244 ], [ %100, %polly.loop_header199 ]
  %indvars.iv1000 = phi i64 [ %indvars.iv.next1001, %polly.loop_exit244 ], [ %99, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit244 ], [ %103, %polly.loop_header199 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1000, i64 0)
  %107 = add i64 %smax, %indvars.iv1004
  %108 = mul nsw i64 %polly.indvar208, 96
  %109 = add nsw i64 %108, %104
  %110 = add nsw i64 %109, -1
  %.inv = icmp sgt i64 %109, 255
  %111 = select i1 %.inv, i64 255, i64 %110
  %polly.loop_guard = icmp sgt i64 %111, -1
  %112 = icmp sgt i64 %109, 0
  %113 = select i1 %112, i64 %109, i64 0
  %114 = add nsw i64 %109, 95
  %115 = icmp slt i64 %106, %114
  %116 = select i1 %115, i64 %106, i64 %114
  %polly.loop_guard231.not = icmp sgt i64 %113, %116
  br i1 %polly.loop_guard, label %polly.loop_header211.us, label %polly.loop_header205.split

polly.loop_header211.us:                          ; preds = %polly.loop_header205, %polly.loop_exit230.us
  %polly.indvar214.us = phi i64 [ %polly.indvar_next215.us, %polly.loop_exit230.us ], [ 0, %polly.loop_header205 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar214.us, 1200
  br label %polly.loop_header217.us

polly.loop_header217.us:                          ; preds = %polly.loop_header211.us, %polly.loop_header217.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_header217.us ], [ 0, %polly.loop_header211.us ]
  %117 = add nuw nsw i64 %polly.indvar220.us, %105
  %polly.access.mul.call1224.us = mul nuw nsw i64 %117, 1000
  %polly.access.add.call1225.us = add nuw nsw i64 %polly.access.mul.call1224.us, %polly.indvar214.us
  %polly.access.call1226.us = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1225.us
  %polly.access.call1226.load.us = load double, double* %polly.access.call1226.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar220.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1226.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next221.us = add nuw i64 %polly.indvar220.us, 1
  %exitcond996.not = icmp eq i64 %polly.indvar220.us, %111
  br i1 %exitcond996.not, label %polly.loop_exit219.loopexit.us, label %polly.loop_header217.us

polly.loop_header228.us:                          ; preds = %polly.loop_exit219.loopexit.us, %polly.loop_header228.us
  %polly.indvar232.us = phi i64 [ %polly.indvar_next233.us, %polly.loop_header228.us ], [ %113, %polly.loop_exit219.loopexit.us ]
  %118 = add nuw nsw i64 %polly.indvar232.us, %105
  %polly.access.mul.call1236.us = mul nsw i64 %118, 1000
  %polly.access.add.call1237.us = add nuw nsw i64 %polly.access.mul.call1236.us, %polly.indvar214.us
  %polly.access.call1238.us = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1237.us
  %polly.access.call1238.load.us = load double, double* %polly.access.call1238.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1240.us = add nuw nsw i64 %polly.indvar232.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1241.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.us
  store double %polly.access.call1238.load.us, double* %polly.access.Packed_MemRef_call1241.us, align 8
  %polly.indvar_next233.us = add nuw nsw i64 %polly.indvar232.us, 1
  %polly.loop_cond234.not.not.us = icmp slt i64 %polly.indvar232.us, %116
  br i1 %polly.loop_cond234.not.not.us, label %polly.loop_header228.us, label %polly.loop_exit230.us

polly.loop_exit230.us:                            ; preds = %polly.loop_header228.us, %polly.loop_exit219.loopexit.us
  %polly.indvar_next215.us = add nuw nsw i64 %polly.indvar214.us, 1
  %exitcond997.not = icmp eq i64 %polly.indvar_next215.us, 1000
  br i1 %exitcond997.not, label %polly.loop_header242.preheader, label %polly.loop_header211.us

polly.loop_exit219.loopexit.us:                   ; preds = %polly.loop_header217.us
  br i1 %polly.loop_guard231.not, label %polly.loop_exit230.us, label %polly.loop_header228.us

polly.loop_header205.split:                       ; preds = %polly.loop_header205
  br i1 %polly.loop_guard231.not, label %polly.loop_header242.preheader, label %polly.loop_header211

polly.loop_exit244:                               ; preds = %polly.loop_exit251, %polly.loop_header242.preheader
  %polly.indvar_next209 = add nsw i64 %polly.indvar208, 1
  %polly.loop_cond210 = icmp slt i64 %polly.indvar208, 12
  %indvars.iv.next1001 = add i64 %indvars.iv1000, -96
  %indvars.iv.next1005 = add i64 %indvars.iv1004, 96
  br i1 %polly.loop_cond210, label %polly.loop_header205, label %polly.loop_exit207

polly.loop_header211:                             ; preds = %polly.loop_header205.split, %polly.loop_exit230
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit230 ], [ 0, %polly.loop_header205.split ]
  %polly.access.mul.Packed_MemRef_call1239 = mul nuw nsw i64 %polly.indvar214, 1200
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_header228
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next215, 1000
  br i1 %exitcond.not, label %polly.loop_header242.preheader, label %polly.loop_header211

polly.loop_header242.preheader:                   ; preds = %polly.loop_exit230, %polly.loop_exit230.us, %polly.loop_header205.split
  %119 = sub nsw i64 %105, %108
  %120 = icmp sgt i64 %119, 0
  %121 = select i1 %120, i64 %119, i64 0
  %122 = mul nsw i64 %polly.indvar208, -96
  %123 = icmp slt i64 %122, -1104
  %124 = select i1 %123, i64 %122, i64 -1104
  %125 = add nsw i64 %124, 1199
  %polly.loop_guard252.not = icmp sgt i64 %121, %125
  br i1 %polly.loop_guard252.not, label %polly.loop_exit244, label %polly.loop_header242

polly.loop_header228:                             ; preds = %polly.loop_header211, %polly.loop_header228
  %polly.indvar232 = phi i64 [ %polly.indvar_next233, %polly.loop_header228 ], [ %113, %polly.loop_header211 ]
  %126 = add nuw nsw i64 %polly.indvar232, %105
  %polly.access.mul.call1236 = mul nsw i64 %126, 1000
  %polly.access.add.call1237 = add nuw nsw i64 %polly.access.mul.call1236, %polly.indvar214
  %polly.access.call1238 = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1237
  %polly.access.call1238.load = load double, double* %polly.access.call1238, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1240 = add nuw nsw i64 %polly.indvar232, %polly.access.mul.Packed_MemRef_call1239
  %polly.access.Packed_MemRef_call1241 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240
  store double %polly.access.call1238.load, double* %polly.access.Packed_MemRef_call1241, align 8
  %polly.indvar_next233 = add nuw nsw i64 %polly.indvar232, 1
  %polly.loop_cond234.not.not = icmp slt i64 %polly.indvar232, %116
  br i1 %polly.loop_cond234.not.not, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header242:                             ; preds = %polly.loop_header242.preheader, %polly.loop_exit251
  %polly.indvar245 = phi i64 [ %polly.indvar_next246, %polly.loop_exit251 ], [ 0, %polly.loop_header242.preheader ]
  %127 = shl nuw nsw i64 %polly.indvar245, 3
  %scevgep268 = getelementptr i8, i8* %call2, i64 %127
  %polly.access.mul.Packed_MemRef_call1264 = mul nuw nsw i64 %polly.indvar245, 1200
  br label %polly.loop_header249

polly.loop_exit251:                               ; preds = %polly.loop_exit259
  %polly.indvar_next246 = add nuw nsw i64 %polly.indvar245, 1
  %exitcond1009.not = icmp eq i64 %polly.indvar_next246, 1000
  br i1 %exitcond1009.not, label %polly.loop_exit244, label %polly.loop_header242

polly.loop_header249:                             ; preds = %polly.loop_exit259, %polly.loop_header242
  %indvars.iv1006 = phi i64 [ %indvars.iv.next1007, %polly.loop_exit259 ], [ %107, %polly.loop_header242 ]
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_exit259 ], [ %121, %polly.loop_header242 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1006, i64 255)
  %128 = add nsw i64 %polly.indvar253, %109
  %polly.loop_guard2601094 = icmp sgt i64 %128, -1
  br i1 %polly.loop_guard2601094, label %polly.loop_header257.preheader, label %polly.loop_exit259

polly.loop_header257.preheader:                   ; preds = %polly.loop_header249
  %129 = add nsw i64 %polly.indvar253, %108
  %130 = mul i64 %129, 8000
  %scevgep269 = getelementptr i8, i8* %scevgep268, i64 %130
  %scevgep269270 = bitcast i8* %scevgep269 to double*
  %_p_scalar_271 = load double, double* %scevgep269270, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1277 = add nsw i64 %128, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1278 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1277
  %_p_scalar_279 = load double, double* %polly.access.Packed_MemRef_call1278, align 8
  %131 = mul i64 %129, 9600
  br label %polly.loop_header257

polly.loop_exit259:                               ; preds = %polly.loop_header257, %polly.loop_header249
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %polly.loop_cond255.not.not = icmp slt i64 %polly.indvar253, %125
  %indvars.iv.next1007 = add i64 %indvars.iv1006, 1
  br i1 %polly.loop_cond255.not.not, label %polly.loop_header249, label %polly.loop_exit251

polly.loop_header257:                             ; preds = %polly.loop_header257.preheader, %polly.loop_header257
  %polly.indvar261 = phi i64 [ %polly.indvar_next262, %polly.loop_header257 ], [ 0, %polly.loop_header257.preheader ]
  %132 = add nuw nsw i64 %polly.indvar261, %105
  %polly.access.add.Packed_MemRef_call1265 = add nuw nsw i64 %polly.indvar261, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265
  %_p_scalar_267 = load double, double* %polly.access.Packed_MemRef_call1266, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_271, %_p_scalar_267
  %133 = mul nuw nsw i64 %132, 8000
  %scevgep273 = getelementptr i8, i8* %scevgep268, i64 %133
  %scevgep273274 = bitcast i8* %scevgep273 to double*
  %_p_scalar_275 = load double, double* %scevgep273274, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114 = fmul fast double %_p_scalar_279, %_p_scalar_275
  %134 = shl i64 %132, 3
  %135 = add i64 %134, %131
  %scevgep280 = getelementptr i8, i8* %call, i64 %135
  %scevgep280281 = bitcast i8* %scevgep280 to double*
  %_p_scalar_282 = load double, double* %scevgep280281, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_282
  store double %p_add42.i118, double* %scevgep280281, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next262 = add nuw nsw i64 %polly.indvar261, 1
  %exitcond1008.not = icmp eq i64 %polly.indvar261, %smin
  br i1 %exitcond1008.not, label %polly.loop_exit259, label %polly.loop_header257

polly.start285:                                   ; preds = %kernel_syr2k.exit
  %malloccall287 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header371

polly.exiting286:                                 ; preds = %polly.loop_exit396
  tail call void @free(i8* %malloccall287)
  br label %kernel_syr2k.exit90

polly.loop_header371:                             ; preds = %polly.loop_exit379, %polly.start285
  %indvar1213 = phi i64 [ %indvar.next1214, %polly.loop_exit379 ], [ 0, %polly.start285 ]
  %polly.indvar374 = phi i64 [ %polly.indvar_next375, %polly.loop_exit379 ], [ 1, %polly.start285 ]
  %136 = add i64 %indvar1213, 1
  %137 = mul nuw nsw i64 %polly.indvar374, 9600
  %scevgep383 = getelementptr i8, i8* %call, i64 %137
  %min.iters.check1215 = icmp ult i64 %136, 4
  br i1 %min.iters.check1215, label %polly.loop_header377.preheader, label %vector.ph1216

vector.ph1216:                                    ; preds = %polly.loop_header371
  %n.vec1218 = and i64 %136, -4
  br label %vector.body1212

vector.body1212:                                  ; preds = %vector.body1212, %vector.ph1216
  %index1219 = phi i64 [ 0, %vector.ph1216 ], [ %index.next1220, %vector.body1212 ]
  %138 = shl nuw nsw i64 %index1219, 3
  %139 = getelementptr i8, i8* %scevgep383, i64 %138
  %140 = bitcast i8* %139 to <4 x double>*
  %wide.load1223 = load <4 x double>, <4 x double>* %140, align 8, !alias.scope !79, !noalias !81
  %141 = fmul fast <4 x double> %wide.load1223, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %142 = bitcast i8* %139 to <4 x double>*
  store <4 x double> %141, <4 x double>* %142, align 8, !alias.scope !79, !noalias !81
  %index.next1220 = add i64 %index1219, 4
  %143 = icmp eq i64 %index.next1220, %n.vec1218
  br i1 %143, label %middle.block1210, label %vector.body1212, !llvm.loop !85

middle.block1210:                                 ; preds = %vector.body1212
  %cmp.n1222 = icmp eq i64 %136, %n.vec1218
  br i1 %cmp.n1222, label %polly.loop_exit379, label %polly.loop_header377.preheader

polly.loop_header377.preheader:                   ; preds = %polly.loop_header371, %middle.block1210
  %polly.indvar380.ph = phi i64 [ 0, %polly.loop_header371 ], [ %n.vec1218, %middle.block1210 ]
  br label %polly.loop_header377

polly.loop_exit379:                               ; preds = %polly.loop_header377, %middle.block1210
  %polly.indvar_next375 = add nuw nsw i64 %polly.indvar374, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next375, 1200
  %indvar.next1214 = add i64 %indvar1213, 1
  br i1 %exitcond1034.not, label %polly.loop_header387.preheader, label %polly.loop_header371

polly.loop_header387.preheader:                   ; preds = %polly.loop_exit379
  %Packed_MemRef_call1288 = bitcast i8* %malloccall287 to double*
  br label %polly.loop_header387

polly.loop_header377:                             ; preds = %polly.loop_header377.preheader, %polly.loop_header377
  %polly.indvar380 = phi i64 [ %polly.indvar_next381, %polly.loop_header377 ], [ %polly.indvar380.ph, %polly.loop_header377.preheader ]
  %144 = shl nuw nsw i64 %polly.indvar380, 3
  %scevgep384 = getelementptr i8, i8* %scevgep383, i64 %144
  %scevgep384385 = bitcast i8* %scevgep384 to double*
  %_p_scalar_386 = load double, double* %scevgep384385, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_386, 1.200000e+00
  store double %p_mul.i57, double* %scevgep384385, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next381 = add nuw nsw i64 %polly.indvar380, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next381, %polly.indvar374
  br i1 %exitcond1033.not, label %polly.loop_exit379, label %polly.loop_header377, !llvm.loop !86

polly.loop_header387:                             ; preds = %polly.loop_header387.preheader, %polly.loop_exit396
  %indvars.iv1023 = phi i64 [ 0, %polly.loop_header387.preheader ], [ %indvars.iv.next1024, %polly.loop_exit396 ]
  %indvars.iv1018 = phi i64 [ 2, %polly.loop_header387.preheader ], [ %indvars.iv.next1019, %polly.loop_exit396 ]
  %indvars.iv1016 = phi i64 [ 0, %polly.loop_header387.preheader ], [ %indvars.iv.next1017, %polly.loop_exit396 ]
  %polly.indvar390 = phi i64 [ 0, %polly.loop_header387.preheader ], [ %polly.indvar_next391, %polly.loop_exit396 ]
  %145 = udiv i64 %indvars.iv1018, 3
  %146 = mul nuw nsw i64 %145, 96
  %147 = add i64 %indvars.iv1016, %146
  %148 = sub nsw i64 %indvars.iv1023, %146
  %149 = mul nuw nsw i64 %polly.indvar390, 3
  %150 = trunc i64 %polly.indvar390 to i8
  %pexp.p_div_q393.lhs.trunc = add i8 %150, 2
  %pexp.p_div_q393874 = udiv i8 %pexp.p_div_q393.lhs.trunc, 3
  %pexp.p_div_q393.zext = zext i8 %pexp.p_div_q393874 to i64
  %151 = sub nsw i64 %149, %pexp.p_div_q393.zext
  %152 = mul nsw i64 %polly.indvar390, -256
  %153 = shl nsw i64 %polly.indvar390, 8
  %154 = add nsw i64 %152, 1199
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_exit435
  %polly.indvar_next391 = add nuw nsw i64 %polly.indvar390, 1
  %indvars.iv.next1017 = add nsw i64 %indvars.iv1016, -32
  %indvars.iv.next1019 = add nuw nsw i64 %indvars.iv1018, 1
  %indvars.iv.next1024 = add nuw nsw i64 %indvars.iv1023, 32
  %exitcond1032.not = icmp eq i64 %polly.indvar_next391, 5
  br i1 %exitcond1032.not, label %polly.exiting286, label %polly.loop_header387

polly.loop_header394:                             ; preds = %polly.loop_exit435, %polly.loop_header387
  %indvars.iv1025 = phi i64 [ %indvars.iv.next1026, %polly.loop_exit435 ], [ %148, %polly.loop_header387 ]
  %indvars.iv1020 = phi i64 [ %indvars.iv.next1021, %polly.loop_exit435 ], [ %147, %polly.loop_header387 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit435 ], [ %151, %polly.loop_header387 ]
  %smax1022 = call i64 @llvm.smax.i64(i64 %indvars.iv1020, i64 0)
  %155 = add i64 %smax1022, %indvars.iv1025
  %156 = mul nsw i64 %polly.indvar397, 96
  %157 = add nsw i64 %156, %152
  %158 = add nsw i64 %157, -1
  %.inv871 = icmp sgt i64 %157, 255
  %159 = select i1 %.inv871, i64 255, i64 %158
  %polly.loop_guard410 = icmp sgt i64 %159, -1
  %160 = icmp sgt i64 %157, 0
  %161 = select i1 %160, i64 %157, i64 0
  %162 = add nsw i64 %157, 95
  %163 = icmp slt i64 %154, %162
  %164 = select i1 %163, i64 %154, i64 %162
  %polly.loop_guard422.not = icmp sgt i64 %161, %164
  br i1 %polly.loop_guard410, label %polly.loop_header400.us, label %polly.loop_header394.split

polly.loop_header400.us:                          ; preds = %polly.loop_header394, %polly.loop_exit421.us
  %polly.indvar403.us = phi i64 [ %polly.indvar_next404.us, %polly.loop_exit421.us ], [ 0, %polly.loop_header394 ]
  %polly.access.mul.Packed_MemRef_call1288.us = mul nuw nsw i64 %polly.indvar403.us, 1200
  br label %polly.loop_header407.us

polly.loop_header407.us:                          ; preds = %polly.loop_header400.us, %polly.loop_header407.us
  %polly.indvar411.us = phi i64 [ %polly.indvar_next412.us, %polly.loop_header407.us ], [ 0, %polly.loop_header400.us ]
  %165 = add nuw nsw i64 %polly.indvar411.us, %153
  %polly.access.mul.call1415.us = mul nuw nsw i64 %165, 1000
  %polly.access.add.call1416.us = add nuw nsw i64 %polly.access.mul.call1415.us, %polly.indvar403.us
  %polly.access.call1417.us = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1416.us
  %polly.access.call1417.load.us = load double, double* %polly.access.call1417.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1288.us = add nuw nsw i64 %polly.indvar411.us, %polly.access.mul.Packed_MemRef_call1288.us
  %polly.access.Packed_MemRef_call1288.us = getelementptr double, double* %Packed_MemRef_call1288, i64 %polly.access.add.Packed_MemRef_call1288.us
  store double %polly.access.call1417.load.us, double* %polly.access.Packed_MemRef_call1288.us, align 8
  %polly.indvar_next412.us = add nuw i64 %polly.indvar411.us, 1
  %exitcond1014.not = icmp eq i64 %polly.indvar411.us, %159
  br i1 %exitcond1014.not, label %polly.loop_exit409.loopexit.us, label %polly.loop_header407.us

polly.loop_header419.us:                          ; preds = %polly.loop_exit409.loopexit.us, %polly.loop_header419.us
  %polly.indvar423.us = phi i64 [ %polly.indvar_next424.us, %polly.loop_header419.us ], [ %161, %polly.loop_exit409.loopexit.us ]
  %166 = add nuw nsw i64 %polly.indvar423.us, %153
  %polly.access.mul.call1427.us = mul nsw i64 %166, 1000
  %polly.access.add.call1428.us = add nuw nsw i64 %polly.access.mul.call1427.us, %polly.indvar403.us
  %polly.access.call1429.us = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1428.us
  %polly.access.call1429.load.us = load double, double* %polly.access.call1429.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1288431.us = add nuw nsw i64 %polly.indvar423.us, %polly.access.mul.Packed_MemRef_call1288.us
  %polly.access.Packed_MemRef_call1288432.us = getelementptr double, double* %Packed_MemRef_call1288, i64 %polly.access.add.Packed_MemRef_call1288431.us
  store double %polly.access.call1429.load.us, double* %polly.access.Packed_MemRef_call1288432.us, align 8
  %polly.indvar_next424.us = add nuw nsw i64 %polly.indvar423.us, 1
  %polly.loop_cond425.not.not.us = icmp slt i64 %polly.indvar423.us, %164
  br i1 %polly.loop_cond425.not.not.us, label %polly.loop_header419.us, label %polly.loop_exit421.us

polly.loop_exit421.us:                            ; preds = %polly.loop_header419.us, %polly.loop_exit409.loopexit.us
  %polly.indvar_next404.us = add nuw nsw i64 %polly.indvar403.us, 1
  %exitcond1015.not = icmp eq i64 %polly.indvar_next404.us, 1000
  br i1 %exitcond1015.not, label %polly.loop_header433.preheader, label %polly.loop_header400.us

polly.loop_exit409.loopexit.us:                   ; preds = %polly.loop_header407.us
  br i1 %polly.loop_guard422.not, label %polly.loop_exit421.us, label %polly.loop_header419.us

polly.loop_header394.split:                       ; preds = %polly.loop_header394
  br i1 %polly.loop_guard422.not, label %polly.loop_header433.preheader, label %polly.loop_header400

polly.loop_exit435:                               ; preds = %polly.loop_exit442, %polly.loop_header433.preheader
  %polly.indvar_next398 = add nsw i64 %polly.indvar397, 1
  %polly.loop_cond399 = icmp slt i64 %polly.indvar397, 12
  %indvars.iv.next1021 = add i64 %indvars.iv1020, -96
  %indvars.iv.next1026 = add i64 %indvars.iv1025, 96
  br i1 %polly.loop_cond399, label %polly.loop_header394, label %polly.loop_exit396

polly.loop_header400:                             ; preds = %polly.loop_header394.split, %polly.loop_exit421
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_exit421 ], [ 0, %polly.loop_header394.split ]
  %polly.access.mul.Packed_MemRef_call1288430 = mul nuw nsw i64 %polly.indvar403, 1200
  br label %polly.loop_header419

polly.loop_exit421:                               ; preds = %polly.loop_header419
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond1013.not = icmp eq i64 %polly.indvar_next404, 1000
  br i1 %exitcond1013.not, label %polly.loop_header433.preheader, label %polly.loop_header400

polly.loop_header433.preheader:                   ; preds = %polly.loop_exit421, %polly.loop_exit421.us, %polly.loop_header394.split
  %167 = sub nsw i64 %153, %156
  %168 = icmp sgt i64 %167, 0
  %169 = select i1 %168, i64 %167, i64 0
  %170 = mul nsw i64 %polly.indvar397, -96
  %171 = icmp slt i64 %170, -1104
  %172 = select i1 %171, i64 %170, i64 -1104
  %173 = add nsw i64 %172, 1199
  %polly.loop_guard443.not = icmp sgt i64 %169, %173
  br i1 %polly.loop_guard443.not, label %polly.loop_exit435, label %polly.loop_header433

polly.loop_header419:                             ; preds = %polly.loop_header400, %polly.loop_header419
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_header419 ], [ %161, %polly.loop_header400 ]
  %174 = add nuw nsw i64 %polly.indvar423, %153
  %polly.access.mul.call1427 = mul nsw i64 %174, 1000
  %polly.access.add.call1428 = add nuw nsw i64 %polly.access.mul.call1427, %polly.indvar403
  %polly.access.call1429 = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1428
  %polly.access.call1429.load = load double, double* %polly.access.call1429, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1288431 = add nuw nsw i64 %polly.indvar423, %polly.access.mul.Packed_MemRef_call1288430
  %polly.access.Packed_MemRef_call1288432 = getelementptr double, double* %Packed_MemRef_call1288, i64 %polly.access.add.Packed_MemRef_call1288431
  store double %polly.access.call1429.load, double* %polly.access.Packed_MemRef_call1288432, align 8
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %polly.loop_cond425.not.not = icmp slt i64 %polly.indvar423, %164
  br i1 %polly.loop_cond425.not.not, label %polly.loop_header419, label %polly.loop_exit421

polly.loop_header433:                             ; preds = %polly.loop_header433.preheader, %polly.loop_exit442
  %polly.indvar436 = phi i64 [ %polly.indvar_next437, %polly.loop_exit442 ], [ 0, %polly.loop_header433.preheader ]
  %175 = shl nuw nsw i64 %polly.indvar436, 3
  %scevgep459 = getelementptr i8, i8* %call2, i64 %175
  %polly.access.mul.Packed_MemRef_call1288455 = mul nuw nsw i64 %polly.indvar436, 1200
  br label %polly.loop_header440

polly.loop_exit442:                               ; preds = %polly.loop_exit450
  %polly.indvar_next437 = add nuw nsw i64 %polly.indvar436, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar_next437, 1000
  br i1 %exitcond1031.not, label %polly.loop_exit435, label %polly.loop_header433

polly.loop_header440:                             ; preds = %polly.loop_exit450, %polly.loop_header433
  %indvars.iv1027 = phi i64 [ %indvars.iv.next1028, %polly.loop_exit450 ], [ %155, %polly.loop_header433 ]
  %polly.indvar444 = phi i64 [ %polly.indvar_next445, %polly.loop_exit450 ], [ %169, %polly.loop_header433 ]
  %smin1029 = call i64 @llvm.smin.i64(i64 %indvars.iv1027, i64 255)
  %176 = add nsw i64 %polly.indvar444, %157
  %polly.loop_guard4511095 = icmp sgt i64 %176, -1
  br i1 %polly.loop_guard4511095, label %polly.loop_header448.preheader, label %polly.loop_exit450

polly.loop_header448.preheader:                   ; preds = %polly.loop_header440
  %177 = add nsw i64 %polly.indvar444, %156
  %178 = mul i64 %177, 8000
  %scevgep460 = getelementptr i8, i8* %scevgep459, i64 %178
  %scevgep460461 = bitcast i8* %scevgep460 to double*
  %_p_scalar_462 = load double, double* %scevgep460461, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1288468 = add nsw i64 %176, %polly.access.mul.Packed_MemRef_call1288455
  %polly.access.Packed_MemRef_call1288469 = getelementptr double, double* %Packed_MemRef_call1288, i64 %polly.access.add.Packed_MemRef_call1288468
  %_p_scalar_470 = load double, double* %polly.access.Packed_MemRef_call1288469, align 8
  %179 = mul i64 %177, 9600
  br label %polly.loop_header448

polly.loop_exit450:                               ; preds = %polly.loop_header448, %polly.loop_header440
  %polly.indvar_next445 = add nuw nsw i64 %polly.indvar444, 1
  %polly.loop_cond446.not.not = icmp slt i64 %polly.indvar444, %173
  %indvars.iv.next1028 = add i64 %indvars.iv1027, 1
  br i1 %polly.loop_cond446.not.not, label %polly.loop_header440, label %polly.loop_exit442

polly.loop_header448:                             ; preds = %polly.loop_header448.preheader, %polly.loop_header448
  %polly.indvar452 = phi i64 [ %polly.indvar_next453, %polly.loop_header448 ], [ 0, %polly.loop_header448.preheader ]
  %180 = add nuw nsw i64 %polly.indvar452, %153
  %polly.access.add.Packed_MemRef_call1288456 = add nuw nsw i64 %polly.indvar452, %polly.access.mul.Packed_MemRef_call1288455
  %polly.access.Packed_MemRef_call1288457 = getelementptr double, double* %Packed_MemRef_call1288, i64 %polly.access.add.Packed_MemRef_call1288456
  %_p_scalar_458 = load double, double* %polly.access.Packed_MemRef_call1288457, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_462, %_p_scalar_458
  %181 = mul nuw nsw i64 %180, 8000
  %scevgep464 = getelementptr i8, i8* %scevgep459, i64 %181
  %scevgep464465 = bitcast i8* %scevgep464 to double*
  %_p_scalar_466 = load double, double* %scevgep464465, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75 = fmul fast double %_p_scalar_470, %_p_scalar_466
  %182 = shl i64 %180, 3
  %183 = add i64 %182, %179
  %scevgep471 = getelementptr i8, i8* %call, i64 %183
  %scevgep471472 = bitcast i8* %scevgep471 to double*
  %_p_scalar_473 = load double, double* %scevgep471472, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_473
  store double %p_add42.i79, double* %scevgep471472, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next453 = add nuw nsw i64 %polly.indvar452, 1
  %exitcond1030.not = icmp eq i64 %polly.indvar452, %smin1029
  br i1 %exitcond1030.not, label %polly.loop_exit450, label %polly.loop_header448

polly.start476:                                   ; preds = %init_array.exit
  %malloccall478 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header562

polly.exiting477:                                 ; preds = %polly.loop_exit587
  tail call void @free(i8* %malloccall478)
  br label %kernel_syr2k.exit

polly.loop_header562:                             ; preds = %polly.loop_exit570, %polly.start476
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit570 ], [ 0, %polly.start476 ]
  %polly.indvar565 = phi i64 [ %polly.indvar_next566, %polly.loop_exit570 ], [ 1, %polly.start476 ]
  %184 = add i64 %indvar, 1
  %185 = mul nuw nsw i64 %polly.indvar565, 9600
  %scevgep574 = getelementptr i8, i8* %call, i64 %185
  %min.iters.check1189 = icmp ult i64 %184, 4
  br i1 %min.iters.check1189, label %polly.loop_header568.preheader, label %vector.ph1190

vector.ph1190:                                    ; preds = %polly.loop_header562
  %n.vec1192 = and i64 %184, -4
  br label %vector.body1188

vector.body1188:                                  ; preds = %vector.body1188, %vector.ph1190
  %index1193 = phi i64 [ 0, %vector.ph1190 ], [ %index.next1194, %vector.body1188 ]
  %186 = shl nuw nsw i64 %index1193, 3
  %187 = getelementptr i8, i8* %scevgep574, i64 %186
  %188 = bitcast i8* %187 to <4 x double>*
  %wide.load1197 = load <4 x double>, <4 x double>* %188, align 8, !alias.scope !89, !noalias !91
  %189 = fmul fast <4 x double> %wide.load1197, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %190 = bitcast i8* %187 to <4 x double>*
  store <4 x double> %189, <4 x double>* %190, align 8, !alias.scope !89, !noalias !91
  %index.next1194 = add i64 %index1193, 4
  %191 = icmp eq i64 %index.next1194, %n.vec1192
  br i1 %191, label %middle.block1186, label %vector.body1188, !llvm.loop !95

middle.block1186:                                 ; preds = %vector.body1188
  %cmp.n1196 = icmp eq i64 %184, %n.vec1192
  br i1 %cmp.n1196, label %polly.loop_exit570, label %polly.loop_header568.preheader

polly.loop_header568.preheader:                   ; preds = %polly.loop_header562, %middle.block1186
  %polly.indvar571.ph = phi i64 [ 0, %polly.loop_header562 ], [ %n.vec1192, %middle.block1186 ]
  br label %polly.loop_header568

polly.loop_exit570:                               ; preds = %polly.loop_header568, %middle.block1186
  %polly.indvar_next566 = add nuw nsw i64 %polly.indvar565, 1
  %exitcond1056.not = icmp eq i64 %polly.indvar_next566, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1056.not, label %polly.loop_header578.preheader, label %polly.loop_header562

polly.loop_header578.preheader:                   ; preds = %polly.loop_exit570
  %Packed_MemRef_call1479 = bitcast i8* %malloccall478 to double*
  br label %polly.loop_header578

polly.loop_header568:                             ; preds = %polly.loop_header568.preheader, %polly.loop_header568
  %polly.indvar571 = phi i64 [ %polly.indvar_next572, %polly.loop_header568 ], [ %polly.indvar571.ph, %polly.loop_header568.preheader ]
  %192 = shl nuw nsw i64 %polly.indvar571, 3
  %scevgep575 = getelementptr i8, i8* %scevgep574, i64 %192
  %scevgep575576 = bitcast i8* %scevgep575 to double*
  %_p_scalar_577 = load double, double* %scevgep575576, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_577, 1.200000e+00
  store double %p_mul.i, double* %scevgep575576, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next572 = add nuw nsw i64 %polly.indvar571, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar_next572, %polly.indvar565
  br i1 %exitcond1055.not, label %polly.loop_exit570, label %polly.loop_header568, !llvm.loop !96

polly.loop_header578:                             ; preds = %polly.loop_header578.preheader, %polly.loop_exit587
  %indvars.iv1045 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %indvars.iv.next1046, %polly.loop_exit587 ]
  %indvars.iv1040 = phi i64 [ 2, %polly.loop_header578.preheader ], [ %indvars.iv.next1041, %polly.loop_exit587 ]
  %indvars.iv1038 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %indvars.iv.next1039, %polly.loop_exit587 ]
  %polly.indvar581 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %polly.indvar_next582, %polly.loop_exit587 ]
  %193 = udiv i64 %indvars.iv1040, 3
  %194 = mul nuw nsw i64 %193, 96
  %195 = add i64 %indvars.iv1038, %194
  %196 = sub nsw i64 %indvars.iv1045, %194
  %197 = mul nuw nsw i64 %polly.indvar581, 3
  %198 = trunc i64 %polly.indvar581 to i8
  %pexp.p_div_q584.lhs.trunc = add i8 %198, 2
  %pexp.p_div_q584873 = udiv i8 %pexp.p_div_q584.lhs.trunc, 3
  %pexp.p_div_q584.zext = zext i8 %pexp.p_div_q584873 to i64
  %199 = sub nsw i64 %197, %pexp.p_div_q584.zext
  %200 = mul nsw i64 %polly.indvar581, -256
  %201 = shl nsw i64 %polly.indvar581, 8
  %202 = add nsw i64 %200, 1199
  br label %polly.loop_header585

polly.loop_exit587:                               ; preds = %polly.loop_exit626
  %polly.indvar_next582 = add nuw nsw i64 %polly.indvar581, 1
  %indvars.iv.next1039 = add nsw i64 %indvars.iv1038, -32
  %indvars.iv.next1041 = add nuw nsw i64 %indvars.iv1040, 1
  %indvars.iv.next1046 = add nuw nsw i64 %indvars.iv1045, 32
  %exitcond1054.not = icmp eq i64 %polly.indvar_next582, 5
  br i1 %exitcond1054.not, label %polly.exiting477, label %polly.loop_header578

polly.loop_header585:                             ; preds = %polly.loop_exit626, %polly.loop_header578
  %indvars.iv1047 = phi i64 [ %indvars.iv.next1048, %polly.loop_exit626 ], [ %196, %polly.loop_header578 ]
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %polly.loop_exit626 ], [ %195, %polly.loop_header578 ]
  %polly.indvar588 = phi i64 [ %polly.indvar_next589, %polly.loop_exit626 ], [ %199, %polly.loop_header578 ]
  %smax1044 = call i64 @llvm.smax.i64(i64 %indvars.iv1042, i64 0)
  %203 = add i64 %smax1044, %indvars.iv1047
  %204 = mul nsw i64 %polly.indvar588, 96
  %205 = add nsw i64 %204, %200
  %206 = add nsw i64 %205, -1
  %.inv872 = icmp sgt i64 %205, 255
  %207 = select i1 %.inv872, i64 255, i64 %206
  %polly.loop_guard601 = icmp sgt i64 %207, -1
  %208 = icmp sgt i64 %205, 0
  %209 = select i1 %208, i64 %205, i64 0
  %210 = add nsw i64 %205, 95
  %211 = icmp slt i64 %202, %210
  %212 = select i1 %211, i64 %202, i64 %210
  %polly.loop_guard613.not = icmp sgt i64 %209, %212
  br i1 %polly.loop_guard601, label %polly.loop_header591.us, label %polly.loop_header585.split

polly.loop_header591.us:                          ; preds = %polly.loop_header585, %polly.loop_exit612.us
  %polly.indvar594.us = phi i64 [ %polly.indvar_next595.us, %polly.loop_exit612.us ], [ 0, %polly.loop_header585 ]
  %polly.access.mul.Packed_MemRef_call1479.us = mul nuw nsw i64 %polly.indvar594.us, 1200
  br label %polly.loop_header598.us

polly.loop_header598.us:                          ; preds = %polly.loop_header591.us, %polly.loop_header598.us
  %polly.indvar602.us = phi i64 [ %polly.indvar_next603.us, %polly.loop_header598.us ], [ 0, %polly.loop_header591.us ]
  %213 = add nuw nsw i64 %polly.indvar602.us, %201
  %polly.access.mul.call1606.us = mul nuw nsw i64 %213, 1000
  %polly.access.add.call1607.us = add nuw nsw i64 %polly.access.mul.call1606.us, %polly.indvar594.us
  %polly.access.call1608.us = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1607.us
  %polly.access.call1608.load.us = load double, double* %polly.access.call1608.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479.us = add nuw nsw i64 %polly.indvar602.us, %polly.access.mul.Packed_MemRef_call1479.us
  %polly.access.Packed_MemRef_call1479.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us
  store double %polly.access.call1608.load.us, double* %polly.access.Packed_MemRef_call1479.us, align 8
  %polly.indvar_next603.us = add nuw i64 %polly.indvar602.us, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar602.us, %207
  br i1 %exitcond1036.not, label %polly.loop_exit600.loopexit.us, label %polly.loop_header598.us

polly.loop_header610.us:                          ; preds = %polly.loop_exit600.loopexit.us, %polly.loop_header610.us
  %polly.indvar614.us = phi i64 [ %polly.indvar_next615.us, %polly.loop_header610.us ], [ %209, %polly.loop_exit600.loopexit.us ]
  %214 = add nuw nsw i64 %polly.indvar614.us, %201
  %polly.access.mul.call1618.us = mul nsw i64 %214, 1000
  %polly.access.add.call1619.us = add nuw nsw i64 %polly.access.mul.call1618.us, %polly.indvar594.us
  %polly.access.call1620.us = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1619.us
  %polly.access.call1620.load.us = load double, double* %polly.access.call1620.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479622.us = add nuw nsw i64 %polly.indvar614.us, %polly.access.mul.Packed_MemRef_call1479.us
  %polly.access.Packed_MemRef_call1479623.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479622.us
  store double %polly.access.call1620.load.us, double* %polly.access.Packed_MemRef_call1479623.us, align 8
  %polly.indvar_next615.us = add nuw nsw i64 %polly.indvar614.us, 1
  %polly.loop_cond616.not.not.us = icmp slt i64 %polly.indvar614.us, %212
  br i1 %polly.loop_cond616.not.not.us, label %polly.loop_header610.us, label %polly.loop_exit612.us

polly.loop_exit612.us:                            ; preds = %polly.loop_header610.us, %polly.loop_exit600.loopexit.us
  %polly.indvar_next595.us = add nuw nsw i64 %polly.indvar594.us, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar_next595.us, 1000
  br i1 %exitcond1037.not, label %polly.loop_header624.preheader, label %polly.loop_header591.us

polly.loop_exit600.loopexit.us:                   ; preds = %polly.loop_header598.us
  br i1 %polly.loop_guard613.not, label %polly.loop_exit612.us, label %polly.loop_header610.us

polly.loop_header585.split:                       ; preds = %polly.loop_header585
  br i1 %polly.loop_guard613.not, label %polly.loop_header624.preheader, label %polly.loop_header591

polly.loop_exit626:                               ; preds = %polly.loop_exit633, %polly.loop_header624.preheader
  %polly.indvar_next589 = add nsw i64 %polly.indvar588, 1
  %polly.loop_cond590 = icmp slt i64 %polly.indvar588, 12
  %indvars.iv.next1043 = add i64 %indvars.iv1042, -96
  %indvars.iv.next1048 = add i64 %indvars.iv1047, 96
  br i1 %polly.loop_cond590, label %polly.loop_header585, label %polly.loop_exit587

polly.loop_header591:                             ; preds = %polly.loop_header585.split, %polly.loop_exit612
  %polly.indvar594 = phi i64 [ %polly.indvar_next595, %polly.loop_exit612 ], [ 0, %polly.loop_header585.split ]
  %polly.access.mul.Packed_MemRef_call1479621 = mul nuw nsw i64 %polly.indvar594, 1200
  br label %polly.loop_header610

polly.loop_exit612:                               ; preds = %polly.loop_header610
  %polly.indvar_next595 = add nuw nsw i64 %polly.indvar594, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar_next595, 1000
  br i1 %exitcond1035.not, label %polly.loop_header624.preheader, label %polly.loop_header591

polly.loop_header624.preheader:                   ; preds = %polly.loop_exit612, %polly.loop_exit612.us, %polly.loop_header585.split
  %215 = sub nsw i64 %201, %204
  %216 = icmp sgt i64 %215, 0
  %217 = select i1 %216, i64 %215, i64 0
  %218 = mul nsw i64 %polly.indvar588, -96
  %219 = icmp slt i64 %218, -1104
  %220 = select i1 %219, i64 %218, i64 -1104
  %221 = add nsw i64 %220, 1199
  %polly.loop_guard634.not = icmp sgt i64 %217, %221
  br i1 %polly.loop_guard634.not, label %polly.loop_exit626, label %polly.loop_header624

polly.loop_header610:                             ; preds = %polly.loop_header591, %polly.loop_header610
  %polly.indvar614 = phi i64 [ %polly.indvar_next615, %polly.loop_header610 ], [ %209, %polly.loop_header591 ]
  %222 = add nuw nsw i64 %polly.indvar614, %201
  %polly.access.mul.call1618 = mul nsw i64 %222, 1000
  %polly.access.add.call1619 = add nuw nsw i64 %polly.access.mul.call1618, %polly.indvar594
  %polly.access.call1620 = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1619
  %polly.access.call1620.load = load double, double* %polly.access.call1620, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479622 = add nuw nsw i64 %polly.indvar614, %polly.access.mul.Packed_MemRef_call1479621
  %polly.access.Packed_MemRef_call1479623 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479622
  store double %polly.access.call1620.load, double* %polly.access.Packed_MemRef_call1479623, align 8
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %polly.loop_cond616.not.not = icmp slt i64 %polly.indvar614, %212
  br i1 %polly.loop_cond616.not.not, label %polly.loop_header610, label %polly.loop_exit612

polly.loop_header624:                             ; preds = %polly.loop_header624.preheader, %polly.loop_exit633
  %polly.indvar627 = phi i64 [ %polly.indvar_next628, %polly.loop_exit633 ], [ 0, %polly.loop_header624.preheader ]
  %223 = shl nuw nsw i64 %polly.indvar627, 3
  %scevgep650 = getelementptr i8, i8* %call2, i64 %223
  %polly.access.mul.Packed_MemRef_call1479646 = mul nuw nsw i64 %polly.indvar627, 1200
  br label %polly.loop_header631

polly.loop_exit633:                               ; preds = %polly.loop_exit641
  %polly.indvar_next628 = add nuw nsw i64 %polly.indvar627, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar_next628, 1000
  br i1 %exitcond1053.not, label %polly.loop_exit626, label %polly.loop_header624

polly.loop_header631:                             ; preds = %polly.loop_exit641, %polly.loop_header624
  %indvars.iv1049 = phi i64 [ %indvars.iv.next1050, %polly.loop_exit641 ], [ %203, %polly.loop_header624 ]
  %polly.indvar635 = phi i64 [ %polly.indvar_next636, %polly.loop_exit641 ], [ %217, %polly.loop_header624 ]
  %smin1051 = call i64 @llvm.smin.i64(i64 %indvars.iv1049, i64 255)
  %224 = add nsw i64 %polly.indvar635, %205
  %polly.loop_guard6421096 = icmp sgt i64 %224, -1
  br i1 %polly.loop_guard6421096, label %polly.loop_header639.preheader, label %polly.loop_exit641

polly.loop_header639.preheader:                   ; preds = %polly.loop_header631
  %225 = add nsw i64 %polly.indvar635, %204
  %226 = mul i64 %225, 8000
  %scevgep651 = getelementptr i8, i8* %scevgep650, i64 %226
  %scevgep651652 = bitcast i8* %scevgep651 to double*
  %_p_scalar_653 = load double, double* %scevgep651652, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1479659 = add nsw i64 %224, %polly.access.mul.Packed_MemRef_call1479646
  %polly.access.Packed_MemRef_call1479660 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479659
  %_p_scalar_661 = load double, double* %polly.access.Packed_MemRef_call1479660, align 8
  %227 = mul i64 %225, 9600
  br label %polly.loop_header639

polly.loop_exit641:                               ; preds = %polly.loop_header639, %polly.loop_header631
  %polly.indvar_next636 = add nuw nsw i64 %polly.indvar635, 1
  %polly.loop_cond637.not.not = icmp slt i64 %polly.indvar635, %221
  %indvars.iv.next1050 = add i64 %indvars.iv1049, 1
  br i1 %polly.loop_cond637.not.not, label %polly.loop_header631, label %polly.loop_exit633

polly.loop_header639:                             ; preds = %polly.loop_header639.preheader, %polly.loop_header639
  %polly.indvar643 = phi i64 [ %polly.indvar_next644, %polly.loop_header639 ], [ 0, %polly.loop_header639.preheader ]
  %228 = add nuw nsw i64 %polly.indvar643, %201
  %polly.access.add.Packed_MemRef_call1479647 = add nuw nsw i64 %polly.indvar643, %polly.access.mul.Packed_MemRef_call1479646
  %polly.access.Packed_MemRef_call1479648 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479647
  %_p_scalar_649 = load double, double* %polly.access.Packed_MemRef_call1479648, align 8
  %p_mul27.i = fmul fast double %_p_scalar_653, %_p_scalar_649
  %229 = mul nuw nsw i64 %228, 8000
  %scevgep655 = getelementptr i8, i8* %scevgep650, i64 %229
  %scevgep655656 = bitcast i8* %scevgep655 to double*
  %_p_scalar_657 = load double, double* %scevgep655656, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i = fmul fast double %_p_scalar_661, %_p_scalar_657
  %230 = shl i64 %228, 3
  %231 = add i64 %230, %227
  %scevgep662 = getelementptr i8, i8* %call, i64 %231
  %scevgep662663 = bitcast i8* %scevgep662 to double*
  %_p_scalar_664 = load double, double* %scevgep662663, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_664
  store double %p_add42.i, double* %scevgep662663, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next644 = add nuw nsw i64 %polly.indvar643, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar643, %smin1051
  br i1 %exitcond1052.not, label %polly.loop_exit641, label %polly.loop_header639

polly.loop_header791:                             ; preds = %entry, %polly.loop_exit799
  %indvars.iv1081 = phi i64 [ %indvars.iv.next1082, %polly.loop_exit799 ], [ 0, %entry ]
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_exit799 ], [ 0, %entry ]
  %smin1083 = call i64 @llvm.smin.i64(i64 %indvars.iv1081, i64 -1168)
  %232 = shl nsw i64 %polly.indvar794, 5
  %233 = add nsw i64 %smin1083, 1199
  br label %polly.loop_header797

polly.loop_exit799:                               ; preds = %polly.loop_exit805
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %indvars.iv.next1082 = add nsw i64 %indvars.iv1081, -32
  %exitcond1086.not = icmp eq i64 %polly.indvar_next795, 38
  br i1 %exitcond1086.not, label %polly.loop_header818, label %polly.loop_header791

polly.loop_header797:                             ; preds = %polly.loop_exit805, %polly.loop_header791
  %indvars.iv1077 = phi i64 [ %indvars.iv.next1078, %polly.loop_exit805 ], [ 0, %polly.loop_header791 ]
  %polly.indvar800 = phi i64 [ %polly.indvar_next801, %polly.loop_exit805 ], [ 0, %polly.loop_header791 ]
  %234 = mul nsw i64 %polly.indvar800, -32
  %smin1127 = call i64 @llvm.smin.i64(i64 %234, i64 -1168)
  %235 = add nsw i64 %smin1127, 1200
  %smin1079 = call i64 @llvm.smin.i64(i64 %indvars.iv1077, i64 -1168)
  %236 = shl nsw i64 %polly.indvar800, 5
  %237 = add nsw i64 %smin1079, 1199
  br label %polly.loop_header803

polly.loop_exit805:                               ; preds = %polly.loop_exit811
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %indvars.iv.next1078 = add nsw i64 %indvars.iv1077, -32
  %exitcond1085.not = icmp eq i64 %polly.indvar_next801, 38
  br i1 %exitcond1085.not, label %polly.loop_exit799, label %polly.loop_header797

polly.loop_header803:                             ; preds = %polly.loop_exit811, %polly.loop_header797
  %polly.indvar806 = phi i64 [ 0, %polly.loop_header797 ], [ %polly.indvar_next807, %polly.loop_exit811 ]
  %238 = add nuw nsw i64 %polly.indvar806, %232
  %239 = trunc i64 %238 to i32
  %240 = mul nuw nsw i64 %238, 9600
  %min.iters.check = icmp eq i64 %235, 0
  br i1 %min.iters.check, label %polly.loop_header809, label %vector.ph1128

vector.ph1128:                                    ; preds = %polly.loop_header803
  %broadcast.splatinsert1135 = insertelement <4 x i64> poison, i64 %236, i32 0
  %broadcast.splat1136 = shufflevector <4 x i64> %broadcast.splatinsert1135, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1137 = insertelement <4 x i32> poison, i32 %239, i32 0
  %broadcast.splat1138 = shufflevector <4 x i32> %broadcast.splatinsert1137, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1126

vector.body1126:                                  ; preds = %vector.body1126, %vector.ph1128
  %index1129 = phi i64 [ 0, %vector.ph1128 ], [ %index.next1130, %vector.body1126 ]
  %vec.ind1133 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1128 ], [ %vec.ind.next1134, %vector.body1126 ]
  %241 = add nuw nsw <4 x i64> %vec.ind1133, %broadcast.splat1136
  %242 = trunc <4 x i64> %241 to <4 x i32>
  %243 = mul <4 x i32> %broadcast.splat1138, %242
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
  %index.next1130 = add i64 %index1129, 4
  %vec.ind.next1134 = add <4 x i64> %vec.ind1133, <i64 4, i64 4, i64 4, i64 4>
  %253 = icmp eq i64 %index.next1130, %235
  br i1 %253, label %polly.loop_exit811, label %vector.body1126, !llvm.loop !104

polly.loop_exit811:                               ; preds = %vector.body1126, %polly.loop_header809
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar806, %233
  br i1 %exitcond1084.not, label %polly.loop_exit805, label %polly.loop_header803

polly.loop_header809:                             ; preds = %polly.loop_header803, %polly.loop_header809
  %polly.indvar812 = phi i64 [ %polly.indvar_next813, %polly.loop_header809 ], [ 0, %polly.loop_header803 ]
  %254 = add nuw nsw i64 %polly.indvar812, %236
  %255 = trunc i64 %254 to i32
  %256 = mul i32 %255, %239
  %257 = add i32 %256, 3
  %258 = urem i32 %257, 1200
  %p_conv31.i = sitofp i32 %258 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %259 = shl i64 %254, 3
  %260 = add nuw nsw i64 %259, %240
  %scevgep815 = getelementptr i8, i8* %call, i64 %260
  %scevgep815816 = bitcast i8* %scevgep815 to double*
  store double %p_div33.i, double* %scevgep815816, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next813 = add nuw nsw i64 %polly.indvar812, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar812, %237
  br i1 %exitcond1080.not, label %polly.loop_exit811, label %polly.loop_header809, !llvm.loop !105

polly.loop_header818:                             ; preds = %polly.loop_exit799, %polly.loop_exit826
  %indvars.iv1071 = phi i64 [ %indvars.iv.next1072, %polly.loop_exit826 ], [ 0, %polly.loop_exit799 ]
  %polly.indvar821 = phi i64 [ %polly.indvar_next822, %polly.loop_exit826 ], [ 0, %polly.loop_exit799 ]
  %smin1073 = call i64 @llvm.smin.i64(i64 %indvars.iv1071, i64 -1168)
  %261 = shl nsw i64 %polly.indvar821, 5
  %262 = add nsw i64 %smin1073, 1199
  br label %polly.loop_header824

polly.loop_exit826:                               ; preds = %polly.loop_exit832
  %polly.indvar_next822 = add nuw nsw i64 %polly.indvar821, 1
  %indvars.iv.next1072 = add nsw i64 %indvars.iv1071, -32
  %exitcond1076.not = icmp eq i64 %polly.indvar_next822, 38
  br i1 %exitcond1076.not, label %polly.loop_header844, label %polly.loop_header818

polly.loop_header824:                             ; preds = %polly.loop_exit832, %polly.loop_header818
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit832 ], [ 0, %polly.loop_header818 ]
  %polly.indvar827 = phi i64 [ %polly.indvar_next828, %polly.loop_exit832 ], [ 0, %polly.loop_header818 ]
  %263 = mul nsw i64 %polly.indvar827, -32
  %smin1142 = call i64 @llvm.smin.i64(i64 %263, i64 -968)
  %264 = add nsw i64 %smin1142, 1000
  %smin1069 = call i64 @llvm.smin.i64(i64 %indvars.iv1067, i64 -968)
  %265 = shl nsw i64 %polly.indvar827, 5
  %266 = add nsw i64 %smin1069, 999
  br label %polly.loop_header830

polly.loop_exit832:                               ; preds = %polly.loop_exit838
  %polly.indvar_next828 = add nuw nsw i64 %polly.indvar827, 1
  %indvars.iv.next1068 = add nsw i64 %indvars.iv1067, -32
  %exitcond1075.not = icmp eq i64 %polly.indvar_next828, 32
  br i1 %exitcond1075.not, label %polly.loop_exit826, label %polly.loop_header824

polly.loop_header830:                             ; preds = %polly.loop_exit838, %polly.loop_header824
  %polly.indvar833 = phi i64 [ 0, %polly.loop_header824 ], [ %polly.indvar_next834, %polly.loop_exit838 ]
  %267 = add nuw nsw i64 %polly.indvar833, %261
  %268 = trunc i64 %267 to i32
  %269 = mul nuw nsw i64 %267, 8000
  %min.iters.check1143 = icmp eq i64 %264, 0
  br i1 %min.iters.check1143, label %polly.loop_header836, label %vector.ph1144

vector.ph1144:                                    ; preds = %polly.loop_header830
  %broadcast.splatinsert1153 = insertelement <4 x i64> poison, i64 %265, i32 0
  %broadcast.splat1154 = shufflevector <4 x i64> %broadcast.splatinsert1153, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1155 = insertelement <4 x i32> poison, i32 %268, i32 0
  %broadcast.splat1156 = shufflevector <4 x i32> %broadcast.splatinsert1155, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1141

vector.body1141:                                  ; preds = %vector.body1141, %vector.ph1144
  %index1147 = phi i64 [ 0, %vector.ph1144 ], [ %index.next1148, %vector.body1141 ]
  %vec.ind1151 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1144 ], [ %vec.ind.next1152, %vector.body1141 ]
  %270 = add nuw nsw <4 x i64> %vec.ind1151, %broadcast.splat1154
  %271 = trunc <4 x i64> %270 to <4 x i32>
  %272 = mul <4 x i32> %broadcast.splat1156, %271
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
  %index.next1148 = add i64 %index1147, 4
  %vec.ind.next1152 = add <4 x i64> %vec.ind1151, <i64 4, i64 4, i64 4, i64 4>
  %282 = icmp eq i64 %index.next1148, %264
  br i1 %282, label %polly.loop_exit838, label %vector.body1141, !llvm.loop !107

polly.loop_exit838:                               ; preds = %vector.body1141, %polly.loop_header836
  %polly.indvar_next834 = add nuw nsw i64 %polly.indvar833, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar833, %262
  br i1 %exitcond1074.not, label %polly.loop_exit832, label %polly.loop_header830

polly.loop_header836:                             ; preds = %polly.loop_header830, %polly.loop_header836
  %polly.indvar839 = phi i64 [ %polly.indvar_next840, %polly.loop_header836 ], [ 0, %polly.loop_header830 ]
  %283 = add nuw nsw i64 %polly.indvar839, %265
  %284 = trunc i64 %283 to i32
  %285 = mul i32 %284, %268
  %286 = add i32 %285, 2
  %287 = urem i32 %286, 1000
  %p_conv10.i = sitofp i32 %287 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %288 = shl i64 %283, 3
  %289 = add nuw nsw i64 %288, %269
  %scevgep842 = getelementptr i8, i8* %call2, i64 %289
  %scevgep842843 = bitcast i8* %scevgep842 to double*
  store double %p_div12.i, double* %scevgep842843, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next840 = add nuw nsw i64 %polly.indvar839, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar839, %266
  br i1 %exitcond1070.not, label %polly.loop_exit838, label %polly.loop_header836, !llvm.loop !108

polly.loop_header844:                             ; preds = %polly.loop_exit826, %polly.loop_exit852
  %indvars.iv1061 = phi i64 [ %indvars.iv.next1062, %polly.loop_exit852 ], [ 0, %polly.loop_exit826 ]
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %polly.loop_exit826 ]
  %smin1063 = call i64 @llvm.smin.i64(i64 %indvars.iv1061, i64 -1168)
  %290 = shl nsw i64 %polly.indvar847, 5
  %291 = add nsw i64 %smin1063, 1199
  br label %polly.loop_header850

polly.loop_exit852:                               ; preds = %polly.loop_exit858
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %indvars.iv.next1062 = add nsw i64 %indvars.iv1061, -32
  %exitcond1066.not = icmp eq i64 %polly.indvar_next848, 38
  br i1 %exitcond1066.not, label %init_array.exit, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_exit858, %polly.loop_header844
  %indvars.iv1057 = phi i64 [ %indvars.iv.next1058, %polly.loop_exit858 ], [ 0, %polly.loop_header844 ]
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_exit858 ], [ 0, %polly.loop_header844 ]
  %292 = mul nsw i64 %polly.indvar853, -32
  %smin1160 = call i64 @llvm.smin.i64(i64 %292, i64 -968)
  %293 = add nsw i64 %smin1160, 1000
  %smin1059 = call i64 @llvm.smin.i64(i64 %indvars.iv1057, i64 -968)
  %294 = shl nsw i64 %polly.indvar853, 5
  %295 = add nsw i64 %smin1059, 999
  br label %polly.loop_header856

polly.loop_exit858:                               ; preds = %polly.loop_exit864
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %indvars.iv.next1058 = add nsw i64 %indvars.iv1057, -32
  %exitcond1065.not = icmp eq i64 %polly.indvar_next854, 32
  br i1 %exitcond1065.not, label %polly.loop_exit852, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_exit864, %polly.loop_header850
  %polly.indvar859 = phi i64 [ 0, %polly.loop_header850 ], [ %polly.indvar_next860, %polly.loop_exit864 ]
  %296 = add nuw nsw i64 %polly.indvar859, %290
  %297 = trunc i64 %296 to i32
  %298 = mul nuw nsw i64 %296, 8000
  %min.iters.check1161 = icmp eq i64 %293, 0
  br i1 %min.iters.check1161, label %polly.loop_header862, label %vector.ph1162

vector.ph1162:                                    ; preds = %polly.loop_header856
  %broadcast.splatinsert1171 = insertelement <4 x i64> poison, i64 %294, i32 0
  %broadcast.splat1172 = shufflevector <4 x i64> %broadcast.splatinsert1171, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1173 = insertelement <4 x i32> poison, i32 %297, i32 0
  %broadcast.splat1174 = shufflevector <4 x i32> %broadcast.splatinsert1173, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1159

vector.body1159:                                  ; preds = %vector.body1159, %vector.ph1162
  %index1165 = phi i64 [ 0, %vector.ph1162 ], [ %index.next1166, %vector.body1159 ]
  %vec.ind1169 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1162 ], [ %vec.ind.next1170, %vector.body1159 ]
  %299 = add nuw nsw <4 x i64> %vec.ind1169, %broadcast.splat1172
  %300 = trunc <4 x i64> %299 to <4 x i32>
  %301 = mul <4 x i32> %broadcast.splat1174, %300
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
  %index.next1166 = add i64 %index1165, 4
  %vec.ind.next1170 = add <4 x i64> %vec.ind1169, <i64 4, i64 4, i64 4, i64 4>
  %311 = icmp eq i64 %index.next1166, %293
  br i1 %311, label %polly.loop_exit864, label %vector.body1159, !llvm.loop !110

polly.loop_exit864:                               ; preds = %vector.body1159, %polly.loop_header862
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar859, %291
  br i1 %exitcond1064.not, label %polly.loop_exit858, label %polly.loop_header856

polly.loop_header862:                             ; preds = %polly.loop_header856, %polly.loop_header862
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_header862 ], [ 0, %polly.loop_header856 ]
  %312 = add nuw nsw i64 %polly.indvar865, %294
  %313 = trunc i64 %312 to i32
  %314 = mul i32 %313, %297
  %315 = add i32 %314, 1
  %316 = urem i32 %315, 1200
  %p_conv.i = sitofp i32 %316 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %317 = shl i64 %312, 3
  %318 = add nuw nsw i64 %317, %298
  %scevgep869 = getelementptr i8, i8* %call1, i64 %318
  %scevgep869870 = bitcast i8* %scevgep869 to double*
  store double %p_div.i, double* %scevgep869870, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar865, %295
  br i1 %exitcond1060.not, label %polly.loop_exit864, label %polly.loop_header862, !llvm.loop !111
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
!25 = !{!"llvm.loop.tile.size", i32 256}
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
!50 = !{!"llvm.loop.tile.size", i32 96}
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
