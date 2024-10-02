; ModuleID = 'syr2k_exhaustive/mmp_all_XL_5256.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_5256.c"
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
  %call805 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1657 = bitcast i8* %call1 to double*
  %polly.access.call1666 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1666, %call2
  %polly.access.call2686 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2686, %call1
  %2 = or i1 %0, %1
  %polly.access.call706 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call706, %call2
  %4 = icmp ule i8* %polly.access.call2686, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call706, %call1
  %8 = icmp ule i8* %polly.access.call1666, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header779, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1106 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1105 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1104 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1103 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1103, %scevgep1106
  %bound1 = icmp ult i8* %scevgep1105, %scevgep1104
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
  br i1 %exitcond18.not.i, label %vector.ph1110, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1110:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1117 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1118 = shufflevector <4 x i64> %broadcast.splatinsert1117, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1109

vector.body1109:                                  ; preds = %vector.body1109, %vector.ph1110
  %index1111 = phi i64 [ 0, %vector.ph1110 ], [ %index.next1112, %vector.body1109 ]
  %vec.ind1115 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1110 ], [ %vec.ind.next1116, %vector.body1109 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1115, %broadcast.splat1118
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv7.i, i64 %index1111
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1112 = add i64 %index1111, 4
  %vec.ind.next1116 = add <4 x i64> %vec.ind1115, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1112, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1109, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1109
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1110, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit840
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start467, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1172 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1172, label %for.body3.i46.preheader1249, label %vector.ph1173

vector.ph1173:                                    ; preds = %for.body3.i46.preheader
  %n.vec1175 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1171

vector.body1171:                                  ; preds = %vector.body1171, %vector.ph1173
  %index1176 = phi i64 [ 0, %vector.ph1173 ], [ %index.next1177, %vector.body1171 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv21.i, i64 %index1176
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1177 = add i64 %index1176, 4
  %46 = icmp eq i64 %index.next1177, %n.vec1175
  br i1 %46, label %middle.block1169, label %vector.body1171, !llvm.loop !18

middle.block1169:                                 ; preds = %vector.body1171
  %cmp.n1179 = icmp eq i64 %indvars.iv21.i, %n.vec1175
  br i1 %cmp.n1179, label %for.inc6.i, label %for.body3.i46.preheader1249

for.body3.i46.preheader1249:                      ; preds = %for.body3.i46.preheader, %middle.block1169
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1175, %middle.block1169 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1249, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1249 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1169, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting468
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start279, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1195 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1195, label %for.body3.i60.preheader1247, label %vector.ph1196

vector.ph1196:                                    ; preds = %for.body3.i60.preheader
  %n.vec1198 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1194

vector.body1194:                                  ; preds = %vector.body1194, %vector.ph1196
  %index1199 = phi i64 [ 0, %vector.ph1196 ], [ %index.next1200, %vector.body1194 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv21.i52, i64 %index1199
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1203 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1203, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1200 = add i64 %index1199, 4
  %57 = icmp eq i64 %index.next1200, %n.vec1198
  br i1 %57, label %middle.block1192, label %vector.body1194, !llvm.loop !54

middle.block1192:                                 ; preds = %vector.body1194
  %cmp.n1202 = icmp eq i64 %indvars.iv21.i52, %n.vec1198
  br i1 %cmp.n1202, label %for.inc6.i63, label %for.body3.i60.preheader1247

for.body3.i60.preheader1247:                      ; preds = %for.body3.i60.preheader, %middle.block1192
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1198, %middle.block1192 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1247, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1247 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1192, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting280
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1221 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1221, label %for.body3.i99.preheader1245, label %vector.ph1222

vector.ph1222:                                    ; preds = %for.body3.i99.preheader
  %n.vec1224 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1220

vector.body1220:                                  ; preds = %vector.body1220, %vector.ph1222
  %index1225 = phi i64 [ 0, %vector.ph1222 ], [ %index.next1226, %vector.body1220 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv21.i91, i64 %index1225
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1229 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1229, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1226 = add i64 %index1225, 4
  %68 = icmp eq i64 %index.next1226, %n.vec1224
  br i1 %68, label %middle.block1218, label %vector.body1220, !llvm.loop !56

middle.block1218:                                 ; preds = %vector.body1220
  %cmp.n1228 = icmp eq i64 %indvars.iv21.i91, %n.vec1224
  br i1 %cmp.n1228, label %for.inc6.i102, label %for.body3.i99.preheader1245

for.body3.i99.preheader1245:                      ; preds = %for.body3.i99.preheader, %middle.block1218
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1224, %middle.block1218 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1245, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1245 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1218, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !58
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !60

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !61

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1233 = phi i64 [ %indvar.next1234, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1233, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1235 = icmp ult i64 %88, 4
  br i1 %min.iters.check1235, label %polly.loop_header191.preheader, label %vector.ph1236

vector.ph1236:                                    ; preds = %polly.loop_header
  %n.vec1238 = and i64 %88, -4
  br label %vector.body1232

vector.body1232:                                  ; preds = %vector.body1232, %vector.ph1236
  %index1239 = phi i64 [ 0, %vector.ph1236 ], [ %index.next1240, %vector.body1232 ]
  %90 = shl nuw nsw i64 %index1239, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1243 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1243, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1240 = add i64 %index1239, 4
  %95 = icmp eq i64 %index.next1240, %n.vec1238
  br i1 %95, label %middle.block1230, label %vector.body1232, !llvm.loop !68

middle.block1230:                                 ; preds = %vector.body1232
  %cmp.n1242 = icmp eq i64 %88, %n.vec1238
  br i1 %cmp.n1242, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1230
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1238, %middle.block1230 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1230
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond999.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1234 = add i64 %indvar1233, 1
  br i1 %exitcond999.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond998.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond998.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !69

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv993 = phi i64 [ 1, %polly.loop_header199.preheader ], [ %indvars.iv.next994, %polly.loop_exit207 ]
  %indvars.iv989 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next990, %polly.loop_exit207 ]
  %indvars.iv975 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next976, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %smin991 = call i64 @llvm.smin.i64(i64 %indvars.iv989, i64 -1072)
  %97 = shl nsw i64 %polly.indvar202, 7
  %98 = add nsw i64 %smin991, 1199
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next976 = add nuw nsw i64 %indvars.iv975, 128
  %indvars.iv.next990 = add nsw i64 %indvars.iv989, -128
  %indvars.iv.next994 = add nuw nsw i64 %indvars.iv993, 1
  %exitcond997.not = icmp eq i64 %polly.indvar_next203, 10
  br i1 %exitcond997.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %smin987 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -968)
  %99 = add nsw i64 %smin987, 1000
  %100 = shl nsw i64 %polly.indvar208, 5
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %exitcond996.not = icmp eq i64 %polly.indvar_next209, 32
  br i1 %exitcond996.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv977 = phi i64 [ %indvars.iv.next978, %polly.loop_exit219 ], [ %indvars.iv975, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %101 = shl nsw i64 %polly.indvar214, 7
  %102 = sub nsw i64 %97, %101
  %103 = add nuw nsw i64 %101, 128
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit248
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next978 = add nsw i64 %indvars.iv977, -128
  %exitcond995.not = icmp eq i64 %polly.indvar_next215, %indvars.iv993
  br i1 %exitcond995.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit248, %polly.loop_header211
  %indvars.iv979 = phi i64 [ %indvars.iv.next980, %polly.loop_exit248 ], [ %indvars.iv977, %polly.loop_header211 ]
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit248 ], [ 0, %polly.loop_header211 ]
  %smin985 = call i64 @llvm.smin.i64(i64 %indvars.iv979, i64 127)
  %104 = add nsw i64 %polly.indvar220, %102
  %polly.loop_guard1092 = icmp sgt i64 %104, -1
  %105 = add nuw nsw i64 %polly.indvar220, %97
  %.not = icmp ult i64 %105, %103
  %polly.access.mul.call1240 = mul nuw nsw i64 %105, 1000
  %106 = add nuw nsw i64 %polly.access.mul.call1240, %100
  br i1 %polly.loop_guard1092, label %polly.loop_header223.us, label %polly.loop_header217.split

polly.loop_header223.us:                          ; preds = %polly.loop_header217, %polly.merge.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.merge.us ], [ 0, %polly.loop_header217 ]
  %107 = add nuw nsw i64 %polly.indvar226.us, %100
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar226.us, 1200
  br label %polly.loop_header229.us

polly.loop_header229.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header229.us
  %polly.indvar232.us = phi i64 [ %polly.indvar_next233.us, %polly.loop_header229.us ], [ 0, %polly.loop_header223.us ]
  %108 = add nuw nsw i64 %polly.indvar232.us, %101
  %polly.access.mul.call1236.us = mul nuw nsw i64 %108, 1000
  %polly.access.add.call1237.us = add nuw nsw i64 %107, %polly.access.mul.call1236.us
  %polly.access.call1238.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1237.us
  %polly.access.call1238.load.us = load double, double* %polly.access.call1238.us, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar232.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1238.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next233.us = add nuw nsw i64 %polly.indvar232.us, 1
  %exitcond982.not = icmp eq i64 %polly.indvar232.us, %smin985
  br i1 %exitcond982.not, label %polly.cond.loopexit.us, label %polly.loop_header229.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1241.us = add nuw nsw i64 %106, %polly.indvar226.us
  %polly.access.call1242.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1241.us
  %polly.access.call1242.load.us = load double, double* %polly.access.call1242.us, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1244.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %104
  %polly.access.Packed_MemRef_call1245.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.us
  store double %polly.access.call1242.load.us, double* %polly.access.Packed_MemRef_call1245.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond984.not = icmp eq i64 %polly.indvar_next227.us, %99
  br i1 %exitcond984.not, label %polly.loop_header246.preheader, label %polly.loop_header223.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header229.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header217.split:                       ; preds = %polly.loop_header217
  br i1 %.not, label %polly.loop_exit248, label %polly.loop_header223

polly.loop_exit248:                               ; preds = %polly.loop_exit255.loopexit.us, %polly.loop_header217.split, %polly.loop_header246.preheader
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %indvars.iv.next980 = add nsw i64 %indvars.iv979, 1
  %exitcond992.not = icmp eq i64 %polly.indvar220, %98
  br i1 %exitcond992.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header223:                             ; preds = %polly.loop_header217.split, %polly.loop_header223
  %polly.indvar226 = phi i64 [ %polly.indvar_next227, %polly.loop_header223 ], [ 0, %polly.loop_header217.split ]
  %polly.access.add.call1241 = add nuw nsw i64 %106, %polly.indvar226
  %polly.access.call1242 = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1241
  %polly.access.call1242.load = load double, double* %polly.access.call1242, align 8, !alias.scope !65, !noalias !71
  %polly.access.mul.Packed_MemRef_call1243 = mul nuw nsw i64 %polly.indvar226, 1200
  %polly.access.add.Packed_MemRef_call1244 = add nsw i64 %polly.access.mul.Packed_MemRef_call1243, %104
  %polly.access.Packed_MemRef_call1245 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244
  store double %polly.access.call1242.load, double* %polly.access.Packed_MemRef_call1245, align 8
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next227, %99
  br i1 %exitcond.not, label %polly.loop_header246.preheader, label %polly.loop_header223

polly.loop_header246.preheader:                   ; preds = %polly.loop_header223, %polly.merge.us
  %109 = mul nuw nsw i64 %105, 8000
  %110 = mul nuw nsw i64 %105, 9600
  br i1 %polly.loop_guard1092, label %polly.loop_header246.us, label %polly.loop_exit248

polly.loop_header246.us:                          ; preds = %polly.loop_header246.preheader, %polly.loop_exit255.loopexit.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_exit255.loopexit.us ], [ 0, %polly.loop_header246.preheader ]
  %111 = add nuw nsw i64 %polly.indvar249.us, %100
  %polly.access.mul.Packed_MemRef_call1260.us = mul nuw nsw i64 %polly.indvar249.us, 1200
  %112 = shl i64 %111, 3
  %113 = add nuw nsw i64 %112, %109
  %scevgep264.us = getelementptr i8, i8* %call2, i64 %113
  %scevgep264265.us = bitcast i8* %scevgep264.us to double*
  %_p_scalar_266.us = load double, double* %scevgep264265.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1271.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1260.us, %104
  %polly.access.Packed_MemRef_call1272.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1271.us
  %_p_scalar_273.us = load double, double* %polly.access.Packed_MemRef_call1272.us, align 8
  br label %polly.loop_header253.us

polly.loop_header253.us:                          ; preds = %polly.loop_header246.us, %polly.loop_header253.us
  %polly.indvar257.us = phi i64 [ %polly.indvar_next258.us, %polly.loop_header253.us ], [ 0, %polly.loop_header246.us ]
  %114 = add nuw nsw i64 %polly.indvar257.us, %101
  %polly.access.add.Packed_MemRef_call1261.us = add nuw nsw i64 %polly.indvar257.us, %polly.access.mul.Packed_MemRef_call1260.us
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us
  %_p_scalar_263.us = load double, double* %polly.access.Packed_MemRef_call1262.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_266.us, %_p_scalar_263.us
  %115 = mul nuw nsw i64 %114, 8000
  %116 = add nuw nsw i64 %115, %112
  %scevgep267.us = getelementptr i8, i8* %call2, i64 %116
  %scevgep267268.us = bitcast i8* %scevgep267.us to double*
  %_p_scalar_269.us = load double, double* %scevgep267268.us, align 8, !alias.scope !66, !noalias !72
  %p_mul37.i114.us = fmul fast double %_p_scalar_273.us, %_p_scalar_269.us
  %117 = shl i64 %114, 3
  %118 = add nuw nsw i64 %117, %110
  %scevgep274.us = getelementptr i8, i8* %call, i64 %118
  %scevgep274275.us = bitcast i8* %scevgep274.us to double*
  %_p_scalar_276.us = load double, double* %scevgep274275.us, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_276.us
  store double %p_add42.i118.us, double* %scevgep274275.us, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next258.us = add nuw nsw i64 %polly.indvar257.us, 1
  %exitcond986.not = icmp eq i64 %polly.indvar257.us, %smin985
  br i1 %exitcond986.not, label %polly.loop_exit255.loopexit.us, label %polly.loop_header253.us

polly.loop_exit255.loopexit.us:                   ; preds = %polly.loop_header253.us
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %exitcond988.not = icmp eq i64 %polly.indvar_next250.us, %99
  br i1 %exitcond988.not, label %polly.loop_exit248, label %polly.loop_header246.us

polly.start279:                                   ; preds = %kernel_syr2k.exit
  %malloccall281 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header365

polly.exiting280:                                 ; preds = %polly.loop_exit389
  tail call void @free(i8* %malloccall281)
  br label %kernel_syr2k.exit90

polly.loop_header365:                             ; preds = %polly.loop_exit373, %polly.start279
  %indvar1207 = phi i64 [ %indvar.next1208, %polly.loop_exit373 ], [ 0, %polly.start279 ]
  %polly.indvar368 = phi i64 [ %polly.indvar_next369, %polly.loop_exit373 ], [ 1, %polly.start279 ]
  %119 = add i64 %indvar1207, 1
  %120 = mul nuw nsw i64 %polly.indvar368, 9600
  %scevgep377 = getelementptr i8, i8* %call, i64 %120
  %min.iters.check1209 = icmp ult i64 %119, 4
  br i1 %min.iters.check1209, label %polly.loop_header371.preheader, label %vector.ph1210

vector.ph1210:                                    ; preds = %polly.loop_header365
  %n.vec1212 = and i64 %119, -4
  br label %vector.body1206

vector.body1206:                                  ; preds = %vector.body1206, %vector.ph1210
  %index1213 = phi i64 [ 0, %vector.ph1210 ], [ %index.next1214, %vector.body1206 ]
  %121 = shl nuw nsw i64 %index1213, 3
  %122 = getelementptr i8, i8* %scevgep377, i64 %121
  %123 = bitcast i8* %122 to <4 x double>*
  %wide.load1217 = load <4 x double>, <4 x double>* %123, align 8, !alias.scope !73, !noalias !75
  %124 = fmul fast <4 x double> %wide.load1217, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %125 = bitcast i8* %122 to <4 x double>*
  store <4 x double> %124, <4 x double>* %125, align 8, !alias.scope !73, !noalias !75
  %index.next1214 = add i64 %index1213, 4
  %126 = icmp eq i64 %index.next1214, %n.vec1212
  br i1 %126, label %middle.block1204, label %vector.body1206, !llvm.loop !79

middle.block1204:                                 ; preds = %vector.body1206
  %cmp.n1216 = icmp eq i64 %119, %n.vec1212
  br i1 %cmp.n1216, label %polly.loop_exit373, label %polly.loop_header371.preheader

polly.loop_header371.preheader:                   ; preds = %polly.loop_header365, %middle.block1204
  %polly.indvar374.ph = phi i64 [ 0, %polly.loop_header365 ], [ %n.vec1212, %middle.block1204 ]
  br label %polly.loop_header371

polly.loop_exit373:                               ; preds = %polly.loop_header371, %middle.block1204
  %polly.indvar_next369 = add nuw nsw i64 %polly.indvar368, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar_next369, 1200
  %indvar.next1208 = add i64 %indvar1207, 1
  br i1 %exitcond1028.not, label %polly.loop_header381.preheader, label %polly.loop_header365

polly.loop_header381.preheader:                   ; preds = %polly.loop_exit373
  %Packed_MemRef_call1282 = bitcast i8* %malloccall281 to double*
  br label %polly.loop_header381

polly.loop_header371:                             ; preds = %polly.loop_header371.preheader, %polly.loop_header371
  %polly.indvar374 = phi i64 [ %polly.indvar_next375, %polly.loop_header371 ], [ %polly.indvar374.ph, %polly.loop_header371.preheader ]
  %127 = shl nuw nsw i64 %polly.indvar374, 3
  %scevgep378 = getelementptr i8, i8* %scevgep377, i64 %127
  %scevgep378379 = bitcast i8* %scevgep378 to double*
  %_p_scalar_380 = load double, double* %scevgep378379, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_380, 1.200000e+00
  store double %p_mul.i57, double* %scevgep378379, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next375 = add nuw nsw i64 %polly.indvar374, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar_next375, %polly.indvar368
  br i1 %exitcond1027.not, label %polly.loop_exit373, label %polly.loop_header371, !llvm.loop !80

polly.loop_header381:                             ; preds = %polly.loop_header381.preheader, %polly.loop_exit389
  %indvars.iv1022 = phi i64 [ 1, %polly.loop_header381.preheader ], [ %indvars.iv.next1023, %polly.loop_exit389 ]
  %indvars.iv1018 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %indvars.iv.next1019, %polly.loop_exit389 ]
  %indvars.iv1004 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %indvars.iv.next1005, %polly.loop_exit389 ]
  %polly.indvar384 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %polly.indvar_next385, %polly.loop_exit389 ]
  %smin1020 = call i64 @llvm.smin.i64(i64 %indvars.iv1018, i64 -1072)
  %128 = shl nsw i64 %polly.indvar384, 7
  %129 = add nsw i64 %smin1020, 1199
  br label %polly.loop_header387

polly.loop_exit389:                               ; preds = %polly.loop_exit395
  %polly.indvar_next385 = add nuw nsw i64 %polly.indvar384, 1
  %indvars.iv.next1005 = add nuw nsw i64 %indvars.iv1004, 128
  %indvars.iv.next1019 = add nsw i64 %indvars.iv1018, -128
  %indvars.iv.next1023 = add nuw nsw i64 %indvars.iv1022, 1
  %exitcond1026.not = icmp eq i64 %polly.indvar_next385, 10
  br i1 %exitcond1026.not, label %polly.exiting280, label %polly.loop_header381

polly.loop_header387:                             ; preds = %polly.loop_exit395, %polly.loop_header381
  %indvars.iv1000 = phi i64 [ %indvars.iv.next1001, %polly.loop_exit395 ], [ 0, %polly.loop_header381 ]
  %polly.indvar390 = phi i64 [ %polly.indvar_next391, %polly.loop_exit395 ], [ 0, %polly.loop_header381 ]
  %smin1016 = call i64 @llvm.smin.i64(i64 %indvars.iv1000, i64 -968)
  %130 = add nsw i64 %smin1016, 1000
  %131 = shl nsw i64 %polly.indvar390, 5
  br label %polly.loop_header393

polly.loop_exit395:                               ; preds = %polly.loop_exit401
  %polly.indvar_next391 = add nuw nsw i64 %polly.indvar390, 1
  %indvars.iv.next1001 = add nsw i64 %indvars.iv1000, -32
  %exitcond1025.not = icmp eq i64 %polly.indvar_next391, 32
  br i1 %exitcond1025.not, label %polly.loop_exit389, label %polly.loop_header387

polly.loop_header393:                             ; preds = %polly.loop_exit401, %polly.loop_header387
  %indvars.iv1006 = phi i64 [ %indvars.iv.next1007, %polly.loop_exit401 ], [ %indvars.iv1004, %polly.loop_header387 ]
  %polly.indvar396 = phi i64 [ %polly.indvar_next397, %polly.loop_exit401 ], [ 0, %polly.loop_header387 ]
  %132 = shl nsw i64 %polly.indvar396, 7
  %133 = sub nsw i64 %128, %132
  %134 = add nuw nsw i64 %132, 128
  br label %polly.loop_header399

polly.loop_exit401:                               ; preds = %polly.loop_exit436
  %polly.indvar_next397 = add nuw nsw i64 %polly.indvar396, 1
  %indvars.iv.next1007 = add nsw i64 %indvars.iv1006, -128
  %exitcond1024.not = icmp eq i64 %polly.indvar_next397, %indvars.iv1022
  br i1 %exitcond1024.not, label %polly.loop_exit395, label %polly.loop_header393

polly.loop_header399:                             ; preds = %polly.loop_exit436, %polly.loop_header393
  %indvars.iv1008 = phi i64 [ %indvars.iv.next1009, %polly.loop_exit436 ], [ %indvars.iv1006, %polly.loop_header393 ]
  %polly.indvar402 = phi i64 [ %polly.indvar_next403, %polly.loop_exit436 ], [ 0, %polly.loop_header393 ]
  %smin1014 = call i64 @llvm.smin.i64(i64 %indvars.iv1008, i64 127)
  %135 = add nsw i64 %polly.indvar402, %133
  %polly.loop_guard4151093 = icmp sgt i64 %135, -1
  %136 = add nuw nsw i64 %polly.indvar402, %128
  %.not859 = icmp ult i64 %136, %134
  %polly.access.mul.call1428 = mul nuw nsw i64 %136, 1000
  %137 = add nuw nsw i64 %polly.access.mul.call1428, %131
  br i1 %polly.loop_guard4151093, label %polly.loop_header405.us, label %polly.loop_header399.split

polly.loop_header405.us:                          ; preds = %polly.loop_header399, %polly.merge424.us
  %polly.indvar408.us = phi i64 [ %polly.indvar_next409.us, %polly.merge424.us ], [ 0, %polly.loop_header399 ]
  %138 = add nuw nsw i64 %polly.indvar408.us, %131
  %polly.access.mul.Packed_MemRef_call1282.us = mul nuw nsw i64 %polly.indvar408.us, 1200
  br label %polly.loop_header412.us

polly.loop_header412.us:                          ; preds = %polly.loop_header405.us, %polly.loop_header412.us
  %polly.indvar416.us = phi i64 [ %polly.indvar_next417.us, %polly.loop_header412.us ], [ 0, %polly.loop_header405.us ]
  %139 = add nuw nsw i64 %polly.indvar416.us, %132
  %polly.access.mul.call1420.us = mul nuw nsw i64 %139, 1000
  %polly.access.add.call1421.us = add nuw nsw i64 %138, %polly.access.mul.call1420.us
  %polly.access.call1422.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1421.us
  %polly.access.call1422.load.us = load double, double* %polly.access.call1422.us, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1282.us = add nuw nsw i64 %polly.indvar416.us, %polly.access.mul.Packed_MemRef_call1282.us
  %polly.access.Packed_MemRef_call1282.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282.us
  store double %polly.access.call1422.load.us, double* %polly.access.Packed_MemRef_call1282.us, align 8
  %polly.indvar_next417.us = add nuw nsw i64 %polly.indvar416.us, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar416.us, %smin1014
  br i1 %exitcond1011.not, label %polly.cond423.loopexit.us, label %polly.loop_header412.us

polly.then425.us:                                 ; preds = %polly.cond423.loopexit.us
  %polly.access.add.call1429.us = add nuw nsw i64 %137, %polly.indvar408.us
  %polly.access.call1430.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1429.us
  %polly.access.call1430.load.us = load double, double* %polly.access.call1430.us, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1282432.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1282.us, %135
  %polly.access.Packed_MemRef_call1282433.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282432.us
  store double %polly.access.call1430.load.us, double* %polly.access.Packed_MemRef_call1282433.us, align 8
  br label %polly.merge424.us

polly.merge424.us:                                ; preds = %polly.then425.us, %polly.cond423.loopexit.us
  %polly.indvar_next409.us = add nuw nsw i64 %polly.indvar408.us, 1
  %exitcond1013.not = icmp eq i64 %polly.indvar_next409.us, %130
  br i1 %exitcond1013.not, label %polly.loop_header434.preheader, label %polly.loop_header405.us

polly.cond423.loopexit.us:                        ; preds = %polly.loop_header412.us
  br i1 %.not859, label %polly.merge424.us, label %polly.then425.us

polly.loop_header399.split:                       ; preds = %polly.loop_header399
  br i1 %.not859, label %polly.loop_exit436, label %polly.loop_header405

polly.loop_exit436:                               ; preds = %polly.loop_exit443.loopexit.us, %polly.loop_header399.split, %polly.loop_header434.preheader
  %polly.indvar_next403 = add nuw nsw i64 %polly.indvar402, 1
  %indvars.iv.next1009 = add nsw i64 %indvars.iv1008, 1
  %exitcond1021.not = icmp eq i64 %polly.indvar402, %129
  br i1 %exitcond1021.not, label %polly.loop_exit401, label %polly.loop_header399

polly.loop_header405:                             ; preds = %polly.loop_header399.split, %polly.loop_header405
  %polly.indvar408 = phi i64 [ %polly.indvar_next409, %polly.loop_header405 ], [ 0, %polly.loop_header399.split ]
  %polly.access.add.call1429 = add nuw nsw i64 %137, %polly.indvar408
  %polly.access.call1430 = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1429
  %polly.access.call1430.load = load double, double* %polly.access.call1430, align 8, !alias.scope !76, !noalias !81
  %polly.access.mul.Packed_MemRef_call1282431 = mul nuw nsw i64 %polly.indvar408, 1200
  %polly.access.add.Packed_MemRef_call1282432 = add nsw i64 %polly.access.mul.Packed_MemRef_call1282431, %135
  %polly.access.Packed_MemRef_call1282433 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282432
  store double %polly.access.call1430.load, double* %polly.access.Packed_MemRef_call1282433, align 8
  %polly.indvar_next409 = add nuw nsw i64 %polly.indvar408, 1
  %exitcond1003.not = icmp eq i64 %polly.indvar_next409, %130
  br i1 %exitcond1003.not, label %polly.loop_header434.preheader, label %polly.loop_header405

polly.loop_header434.preheader:                   ; preds = %polly.loop_header405, %polly.merge424.us
  %140 = mul nuw nsw i64 %136, 8000
  %141 = mul nuw nsw i64 %136, 9600
  br i1 %polly.loop_guard4151093, label %polly.loop_header434.us, label %polly.loop_exit436

polly.loop_header434.us:                          ; preds = %polly.loop_header434.preheader, %polly.loop_exit443.loopexit.us
  %polly.indvar437.us = phi i64 [ %polly.indvar_next438.us, %polly.loop_exit443.loopexit.us ], [ 0, %polly.loop_header434.preheader ]
  %142 = add nuw nsw i64 %polly.indvar437.us, %131
  %polly.access.mul.Packed_MemRef_call1282448.us = mul nuw nsw i64 %polly.indvar437.us, 1200
  %143 = shl i64 %142, 3
  %144 = add nuw nsw i64 %143, %140
  %scevgep452.us = getelementptr i8, i8* %call2, i64 %144
  %scevgep452453.us = bitcast i8* %scevgep452.us to double*
  %_p_scalar_454.us = load double, double* %scevgep452453.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282459.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1282448.us, %135
  %polly.access.Packed_MemRef_call1282460.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282459.us
  %_p_scalar_461.us = load double, double* %polly.access.Packed_MemRef_call1282460.us, align 8
  br label %polly.loop_header441.us

polly.loop_header441.us:                          ; preds = %polly.loop_header434.us, %polly.loop_header441.us
  %polly.indvar445.us = phi i64 [ %polly.indvar_next446.us, %polly.loop_header441.us ], [ 0, %polly.loop_header434.us ]
  %145 = add nuw nsw i64 %polly.indvar445.us, %132
  %polly.access.add.Packed_MemRef_call1282449.us = add nuw nsw i64 %polly.indvar445.us, %polly.access.mul.Packed_MemRef_call1282448.us
  %polly.access.Packed_MemRef_call1282450.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282449.us
  %_p_scalar_451.us = load double, double* %polly.access.Packed_MemRef_call1282450.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_454.us, %_p_scalar_451.us
  %146 = mul nuw nsw i64 %145, 8000
  %147 = add nuw nsw i64 %146, %143
  %scevgep455.us = getelementptr i8, i8* %call2, i64 %147
  %scevgep455456.us = bitcast i8* %scevgep455.us to double*
  %_p_scalar_457.us = load double, double* %scevgep455456.us, align 8, !alias.scope !77, !noalias !82
  %p_mul37.i75.us = fmul fast double %_p_scalar_461.us, %_p_scalar_457.us
  %148 = shl i64 %145, 3
  %149 = add nuw nsw i64 %148, %141
  %scevgep462.us = getelementptr i8, i8* %call, i64 %149
  %scevgep462463.us = bitcast i8* %scevgep462.us to double*
  %_p_scalar_464.us = load double, double* %scevgep462463.us, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_464.us
  store double %p_add42.i79.us, double* %scevgep462463.us, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next446.us = add nuw nsw i64 %polly.indvar445.us, 1
  %exitcond1015.not = icmp eq i64 %polly.indvar445.us, %smin1014
  br i1 %exitcond1015.not, label %polly.loop_exit443.loopexit.us, label %polly.loop_header441.us

polly.loop_exit443.loopexit.us:                   ; preds = %polly.loop_header441.us
  %polly.indvar_next438.us = add nuw nsw i64 %polly.indvar437.us, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar_next438.us, %130
  br i1 %exitcond1017.not, label %polly.loop_exit436, label %polly.loop_header434.us

polly.start467:                                   ; preds = %init_array.exit
  %malloccall469 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header553

polly.exiting468:                                 ; preds = %polly.loop_exit577
  tail call void @free(i8* %malloccall469)
  br label %kernel_syr2k.exit

polly.loop_header553:                             ; preds = %polly.loop_exit561, %polly.start467
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit561 ], [ 0, %polly.start467 ]
  %polly.indvar556 = phi i64 [ %polly.indvar_next557, %polly.loop_exit561 ], [ 1, %polly.start467 ]
  %150 = add i64 %indvar, 1
  %151 = mul nuw nsw i64 %polly.indvar556, 9600
  %scevgep565 = getelementptr i8, i8* %call, i64 %151
  %min.iters.check1183 = icmp ult i64 %150, 4
  br i1 %min.iters.check1183, label %polly.loop_header559.preheader, label %vector.ph1184

vector.ph1184:                                    ; preds = %polly.loop_header553
  %n.vec1186 = and i64 %150, -4
  br label %vector.body1182

vector.body1182:                                  ; preds = %vector.body1182, %vector.ph1184
  %index1187 = phi i64 [ 0, %vector.ph1184 ], [ %index.next1188, %vector.body1182 ]
  %152 = shl nuw nsw i64 %index1187, 3
  %153 = getelementptr i8, i8* %scevgep565, i64 %152
  %154 = bitcast i8* %153 to <4 x double>*
  %wide.load1191 = load <4 x double>, <4 x double>* %154, align 8, !alias.scope !83, !noalias !85
  %155 = fmul fast <4 x double> %wide.load1191, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %156 = bitcast i8* %153 to <4 x double>*
  store <4 x double> %155, <4 x double>* %156, align 8, !alias.scope !83, !noalias !85
  %index.next1188 = add i64 %index1187, 4
  %157 = icmp eq i64 %index.next1188, %n.vec1186
  br i1 %157, label %middle.block1180, label %vector.body1182, !llvm.loop !89

middle.block1180:                                 ; preds = %vector.body1182
  %cmp.n1190 = icmp eq i64 %150, %n.vec1186
  br i1 %cmp.n1190, label %polly.loop_exit561, label %polly.loop_header559.preheader

polly.loop_header559.preheader:                   ; preds = %polly.loop_header553, %middle.block1180
  %polly.indvar562.ph = phi i64 [ 0, %polly.loop_header553 ], [ %n.vec1186, %middle.block1180 ]
  br label %polly.loop_header559

polly.loop_exit561:                               ; preds = %polly.loop_header559, %middle.block1180
  %polly.indvar_next557 = add nuw nsw i64 %polly.indvar556, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar_next557, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1057.not, label %polly.loop_header569.preheader, label %polly.loop_header553

polly.loop_header569.preheader:                   ; preds = %polly.loop_exit561
  %Packed_MemRef_call1470 = bitcast i8* %malloccall469 to double*
  br label %polly.loop_header569

polly.loop_header559:                             ; preds = %polly.loop_header559.preheader, %polly.loop_header559
  %polly.indvar562 = phi i64 [ %polly.indvar_next563, %polly.loop_header559 ], [ %polly.indvar562.ph, %polly.loop_header559.preheader ]
  %158 = shl nuw nsw i64 %polly.indvar562, 3
  %scevgep566 = getelementptr i8, i8* %scevgep565, i64 %158
  %scevgep566567 = bitcast i8* %scevgep566 to double*
  %_p_scalar_568 = load double, double* %scevgep566567, align 8, !alias.scope !83, !noalias !85
  %p_mul.i = fmul fast double %_p_scalar_568, 1.200000e+00
  store double %p_mul.i, double* %scevgep566567, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next563 = add nuw nsw i64 %polly.indvar562, 1
  %exitcond1056.not = icmp eq i64 %polly.indvar_next563, %polly.indvar556
  br i1 %exitcond1056.not, label %polly.loop_exit561, label %polly.loop_header559, !llvm.loop !90

polly.loop_header569:                             ; preds = %polly.loop_header569.preheader, %polly.loop_exit577
  %indvars.iv1051 = phi i64 [ 1, %polly.loop_header569.preheader ], [ %indvars.iv.next1052, %polly.loop_exit577 ]
  %indvars.iv1047 = phi i64 [ 0, %polly.loop_header569.preheader ], [ %indvars.iv.next1048, %polly.loop_exit577 ]
  %indvars.iv1033 = phi i64 [ 0, %polly.loop_header569.preheader ], [ %indvars.iv.next1034, %polly.loop_exit577 ]
  %polly.indvar572 = phi i64 [ 0, %polly.loop_header569.preheader ], [ %polly.indvar_next573, %polly.loop_exit577 ]
  %smin1049 = call i64 @llvm.smin.i64(i64 %indvars.iv1047, i64 -1072)
  %159 = shl nsw i64 %polly.indvar572, 7
  %160 = add nsw i64 %smin1049, 1199
  br label %polly.loop_header575

polly.loop_exit577:                               ; preds = %polly.loop_exit583
  %polly.indvar_next573 = add nuw nsw i64 %polly.indvar572, 1
  %indvars.iv.next1034 = add nuw nsw i64 %indvars.iv1033, 128
  %indvars.iv.next1048 = add nsw i64 %indvars.iv1047, -128
  %indvars.iv.next1052 = add nuw nsw i64 %indvars.iv1051, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar_next573, 10
  br i1 %exitcond1055.not, label %polly.exiting468, label %polly.loop_header569

polly.loop_header575:                             ; preds = %polly.loop_exit583, %polly.loop_header569
  %indvars.iv1029 = phi i64 [ %indvars.iv.next1030, %polly.loop_exit583 ], [ 0, %polly.loop_header569 ]
  %polly.indvar578 = phi i64 [ %polly.indvar_next579, %polly.loop_exit583 ], [ 0, %polly.loop_header569 ]
  %smin1045 = call i64 @llvm.smin.i64(i64 %indvars.iv1029, i64 -968)
  %161 = add nsw i64 %smin1045, 1000
  %162 = shl nsw i64 %polly.indvar578, 5
  br label %polly.loop_header581

polly.loop_exit583:                               ; preds = %polly.loop_exit589
  %polly.indvar_next579 = add nuw nsw i64 %polly.indvar578, 1
  %indvars.iv.next1030 = add nsw i64 %indvars.iv1029, -32
  %exitcond1054.not = icmp eq i64 %polly.indvar_next579, 32
  br i1 %exitcond1054.not, label %polly.loop_exit577, label %polly.loop_header575

polly.loop_header581:                             ; preds = %polly.loop_exit589, %polly.loop_header575
  %indvars.iv1035 = phi i64 [ %indvars.iv.next1036, %polly.loop_exit589 ], [ %indvars.iv1033, %polly.loop_header575 ]
  %polly.indvar584 = phi i64 [ %polly.indvar_next585, %polly.loop_exit589 ], [ 0, %polly.loop_header575 ]
  %163 = shl nsw i64 %polly.indvar584, 7
  %164 = sub nsw i64 %159, %163
  %165 = add nuw nsw i64 %163, 128
  br label %polly.loop_header587

polly.loop_exit589:                               ; preds = %polly.loop_exit624
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %indvars.iv.next1036 = add nsw i64 %indvars.iv1035, -128
  %exitcond1053.not = icmp eq i64 %polly.indvar_next585, %indvars.iv1051
  br i1 %exitcond1053.not, label %polly.loop_exit583, label %polly.loop_header581

polly.loop_header587:                             ; preds = %polly.loop_exit624, %polly.loop_header581
  %indvars.iv1037 = phi i64 [ %indvars.iv.next1038, %polly.loop_exit624 ], [ %indvars.iv1035, %polly.loop_header581 ]
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_exit624 ], [ 0, %polly.loop_header581 ]
  %smin1043 = call i64 @llvm.smin.i64(i64 %indvars.iv1037, i64 127)
  %166 = add nsw i64 %polly.indvar590, %164
  %polly.loop_guard6031094 = icmp sgt i64 %166, -1
  %167 = add nuw nsw i64 %polly.indvar590, %159
  %.not860 = icmp ult i64 %167, %165
  %polly.access.mul.call1616 = mul nuw nsw i64 %167, 1000
  %168 = add nuw nsw i64 %polly.access.mul.call1616, %162
  br i1 %polly.loop_guard6031094, label %polly.loop_header593.us, label %polly.loop_header587.split

polly.loop_header593.us:                          ; preds = %polly.loop_header587, %polly.merge612.us
  %polly.indvar596.us = phi i64 [ %polly.indvar_next597.us, %polly.merge612.us ], [ 0, %polly.loop_header587 ]
  %169 = add nuw nsw i64 %polly.indvar596.us, %162
  %polly.access.mul.Packed_MemRef_call1470.us = mul nuw nsw i64 %polly.indvar596.us, 1200
  br label %polly.loop_header600.us

polly.loop_header600.us:                          ; preds = %polly.loop_header593.us, %polly.loop_header600.us
  %polly.indvar604.us = phi i64 [ %polly.indvar_next605.us, %polly.loop_header600.us ], [ 0, %polly.loop_header593.us ]
  %170 = add nuw nsw i64 %polly.indvar604.us, %163
  %polly.access.mul.call1608.us = mul nuw nsw i64 %170, 1000
  %polly.access.add.call1609.us = add nuw nsw i64 %169, %polly.access.mul.call1608.us
  %polly.access.call1610.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1609.us
  %polly.access.call1610.load.us = load double, double* %polly.access.call1610.us, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1470.us = add nuw nsw i64 %polly.indvar604.us, %polly.access.mul.Packed_MemRef_call1470.us
  %polly.access.Packed_MemRef_call1470.us = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470.us
  store double %polly.access.call1610.load.us, double* %polly.access.Packed_MemRef_call1470.us, align 8
  %polly.indvar_next605.us = add nuw nsw i64 %polly.indvar604.us, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar604.us, %smin1043
  br i1 %exitcond1040.not, label %polly.cond611.loopexit.us, label %polly.loop_header600.us

polly.then613.us:                                 ; preds = %polly.cond611.loopexit.us
  %polly.access.add.call1617.us = add nuw nsw i64 %168, %polly.indvar596.us
  %polly.access.call1618.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1617.us
  %polly.access.call1618.load.us = load double, double* %polly.access.call1618.us, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1470620.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1470.us, %166
  %polly.access.Packed_MemRef_call1470621.us = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470620.us
  store double %polly.access.call1618.load.us, double* %polly.access.Packed_MemRef_call1470621.us, align 8
  br label %polly.merge612.us

polly.merge612.us:                                ; preds = %polly.then613.us, %polly.cond611.loopexit.us
  %polly.indvar_next597.us = add nuw nsw i64 %polly.indvar596.us, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar_next597.us, %161
  br i1 %exitcond1042.not, label %polly.loop_header622.preheader, label %polly.loop_header593.us

polly.cond611.loopexit.us:                        ; preds = %polly.loop_header600.us
  br i1 %.not860, label %polly.merge612.us, label %polly.then613.us

polly.loop_header587.split:                       ; preds = %polly.loop_header587
  br i1 %.not860, label %polly.loop_exit624, label %polly.loop_header593

polly.loop_exit624:                               ; preds = %polly.loop_exit631.loopexit.us, %polly.loop_header587.split, %polly.loop_header622.preheader
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %indvars.iv.next1038 = add nsw i64 %indvars.iv1037, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar590, %160
  br i1 %exitcond1050.not, label %polly.loop_exit589, label %polly.loop_header587

polly.loop_header593:                             ; preds = %polly.loop_header587.split, %polly.loop_header593
  %polly.indvar596 = phi i64 [ %polly.indvar_next597, %polly.loop_header593 ], [ 0, %polly.loop_header587.split ]
  %polly.access.add.call1617 = add nuw nsw i64 %168, %polly.indvar596
  %polly.access.call1618 = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1617
  %polly.access.call1618.load = load double, double* %polly.access.call1618, align 8, !alias.scope !86, !noalias !91
  %polly.access.mul.Packed_MemRef_call1470619 = mul nuw nsw i64 %polly.indvar596, 1200
  %polly.access.add.Packed_MemRef_call1470620 = add nsw i64 %polly.access.mul.Packed_MemRef_call1470619, %166
  %polly.access.Packed_MemRef_call1470621 = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470620
  store double %polly.access.call1618.load, double* %polly.access.Packed_MemRef_call1470621, align 8
  %polly.indvar_next597 = add nuw nsw i64 %polly.indvar596, 1
  %exitcond1032.not = icmp eq i64 %polly.indvar_next597, %161
  br i1 %exitcond1032.not, label %polly.loop_header622.preheader, label %polly.loop_header593

polly.loop_header622.preheader:                   ; preds = %polly.loop_header593, %polly.merge612.us
  %171 = mul nuw nsw i64 %167, 8000
  %172 = mul nuw nsw i64 %167, 9600
  br i1 %polly.loop_guard6031094, label %polly.loop_header622.us, label %polly.loop_exit624

polly.loop_header622.us:                          ; preds = %polly.loop_header622.preheader, %polly.loop_exit631.loopexit.us
  %polly.indvar625.us = phi i64 [ %polly.indvar_next626.us, %polly.loop_exit631.loopexit.us ], [ 0, %polly.loop_header622.preheader ]
  %173 = add nuw nsw i64 %polly.indvar625.us, %162
  %polly.access.mul.Packed_MemRef_call1470636.us = mul nuw nsw i64 %polly.indvar625.us, 1200
  %174 = shl i64 %173, 3
  %175 = add nuw nsw i64 %174, %171
  %scevgep640.us = getelementptr i8, i8* %call2, i64 %175
  %scevgep640641.us = bitcast i8* %scevgep640.us to double*
  %_p_scalar_642.us = load double, double* %scevgep640641.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1470647.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1470636.us, %166
  %polly.access.Packed_MemRef_call1470648.us = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470647.us
  %_p_scalar_649.us = load double, double* %polly.access.Packed_MemRef_call1470648.us, align 8
  br label %polly.loop_header629.us

polly.loop_header629.us:                          ; preds = %polly.loop_header622.us, %polly.loop_header629.us
  %polly.indvar633.us = phi i64 [ %polly.indvar_next634.us, %polly.loop_header629.us ], [ 0, %polly.loop_header622.us ]
  %176 = add nuw nsw i64 %polly.indvar633.us, %163
  %polly.access.add.Packed_MemRef_call1470637.us = add nuw nsw i64 %polly.indvar633.us, %polly.access.mul.Packed_MemRef_call1470636.us
  %polly.access.Packed_MemRef_call1470638.us = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470637.us
  %_p_scalar_639.us = load double, double* %polly.access.Packed_MemRef_call1470638.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_642.us, %_p_scalar_639.us
  %177 = mul nuw nsw i64 %176, 8000
  %178 = add nuw nsw i64 %177, %174
  %scevgep643.us = getelementptr i8, i8* %call2, i64 %178
  %scevgep643644.us = bitcast i8* %scevgep643.us to double*
  %_p_scalar_645.us = load double, double* %scevgep643644.us, align 8, !alias.scope !87, !noalias !92
  %p_mul37.i.us = fmul fast double %_p_scalar_649.us, %_p_scalar_645.us
  %179 = shl i64 %176, 3
  %180 = add nuw nsw i64 %179, %172
  %scevgep650.us = getelementptr i8, i8* %call, i64 %180
  %scevgep650651.us = bitcast i8* %scevgep650.us to double*
  %_p_scalar_652.us = load double, double* %scevgep650651.us, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_652.us
  store double %p_add42.i.us, double* %scevgep650651.us, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next634.us = add nuw nsw i64 %polly.indvar633.us, 1
  %exitcond1044.not = icmp eq i64 %polly.indvar633.us, %smin1043
  br i1 %exitcond1044.not, label %polly.loop_exit631.loopexit.us, label %polly.loop_header629.us

polly.loop_exit631.loopexit.us:                   ; preds = %polly.loop_header629.us
  %polly.indvar_next626.us = add nuw nsw i64 %polly.indvar625.us, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar_next626.us, %161
  br i1 %exitcond1046.not, label %polly.loop_exit624, label %polly.loop_header622.us

polly.loop_header779:                             ; preds = %entry, %polly.loop_exit787
  %indvars.iv1082 = phi i64 [ %indvars.iv.next1083, %polly.loop_exit787 ], [ 0, %entry ]
  %polly.indvar782 = phi i64 [ %polly.indvar_next783, %polly.loop_exit787 ], [ 0, %entry ]
  %smin1084 = call i64 @llvm.smin.i64(i64 %indvars.iv1082, i64 -1168)
  %181 = shl nsw i64 %polly.indvar782, 5
  %182 = add nsw i64 %smin1084, 1199
  br label %polly.loop_header785

polly.loop_exit787:                               ; preds = %polly.loop_exit793
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %indvars.iv.next1083 = add nsw i64 %indvars.iv1082, -32
  %exitcond1087.not = icmp eq i64 %polly.indvar_next783, 38
  br i1 %exitcond1087.not, label %polly.loop_header806, label %polly.loop_header779

polly.loop_header785:                             ; preds = %polly.loop_exit793, %polly.loop_header779
  %indvars.iv1078 = phi i64 [ %indvars.iv.next1079, %polly.loop_exit793 ], [ 0, %polly.loop_header779 ]
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_exit793 ], [ 0, %polly.loop_header779 ]
  %183 = mul nsw i64 %polly.indvar788, -32
  %smin = call i64 @llvm.smin.i64(i64 %183, i64 -1168)
  %184 = add nsw i64 %smin, 1200
  %smin1080 = call i64 @llvm.smin.i64(i64 %indvars.iv1078, i64 -1168)
  %185 = shl nsw i64 %polly.indvar788, 5
  %186 = add nsw i64 %smin1080, 1199
  br label %polly.loop_header791

polly.loop_exit793:                               ; preds = %polly.loop_exit799
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %indvars.iv.next1079 = add nsw i64 %indvars.iv1078, -32
  %exitcond1086.not = icmp eq i64 %polly.indvar_next789, 38
  br i1 %exitcond1086.not, label %polly.loop_exit787, label %polly.loop_header785

polly.loop_header791:                             ; preds = %polly.loop_exit799, %polly.loop_header785
  %polly.indvar794 = phi i64 [ 0, %polly.loop_header785 ], [ %polly.indvar_next795, %polly.loop_exit799 ]
  %187 = add nuw nsw i64 %polly.indvar794, %181
  %188 = trunc i64 %187 to i32
  %189 = mul nuw nsw i64 %187, 9600
  %min.iters.check = icmp eq i64 %184, 0
  br i1 %min.iters.check, label %polly.loop_header797, label %vector.ph1122

vector.ph1122:                                    ; preds = %polly.loop_header791
  %broadcast.splatinsert1129 = insertelement <4 x i64> poison, i64 %185, i32 0
  %broadcast.splat1130 = shufflevector <4 x i64> %broadcast.splatinsert1129, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1131 = insertelement <4 x i32> poison, i32 %188, i32 0
  %broadcast.splat1132 = shufflevector <4 x i32> %broadcast.splatinsert1131, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1121

vector.body1121:                                  ; preds = %vector.body1121, %vector.ph1122
  %index1123 = phi i64 [ 0, %vector.ph1122 ], [ %index.next1124, %vector.body1121 ]
  %vec.ind1127 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1122 ], [ %vec.ind.next1128, %vector.body1121 ]
  %190 = add nuw nsw <4 x i64> %vec.ind1127, %broadcast.splat1130
  %191 = trunc <4 x i64> %190 to <4 x i32>
  %192 = mul <4 x i32> %broadcast.splat1132, %191
  %193 = add <4 x i32> %192, <i32 3, i32 3, i32 3, i32 3>
  %194 = urem <4 x i32> %193, <i32 1200, i32 1200, i32 1200, i32 1200>
  %195 = sitofp <4 x i32> %194 to <4 x double>
  %196 = fmul fast <4 x double> %195, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %197 = extractelement <4 x i64> %190, i32 0
  %198 = shl i64 %197, 3
  %199 = add nuw nsw i64 %198, %189
  %200 = getelementptr i8, i8* %call, i64 %199
  %201 = bitcast i8* %200 to <4 x double>*
  store <4 x double> %196, <4 x double>* %201, align 8, !alias.scope !93, !noalias !95
  %index.next1124 = add i64 %index1123, 4
  %vec.ind.next1128 = add <4 x i64> %vec.ind1127, <i64 4, i64 4, i64 4, i64 4>
  %202 = icmp eq i64 %index.next1124, %184
  br i1 %202, label %polly.loop_exit799, label %vector.body1121, !llvm.loop !98

polly.loop_exit799:                               ; preds = %vector.body1121, %polly.loop_header797
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar794, %182
  br i1 %exitcond1085.not, label %polly.loop_exit793, label %polly.loop_header791

polly.loop_header797:                             ; preds = %polly.loop_header791, %polly.loop_header797
  %polly.indvar800 = phi i64 [ %polly.indvar_next801, %polly.loop_header797 ], [ 0, %polly.loop_header791 ]
  %203 = add nuw nsw i64 %polly.indvar800, %185
  %204 = trunc i64 %203 to i32
  %205 = mul i32 %204, %188
  %206 = add i32 %205, 3
  %207 = urem i32 %206, 1200
  %p_conv31.i = sitofp i32 %207 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %208 = shl i64 %203, 3
  %209 = add nuw nsw i64 %208, %189
  %scevgep803 = getelementptr i8, i8* %call, i64 %209
  %scevgep803804 = bitcast i8* %scevgep803 to double*
  store double %p_div33.i, double* %scevgep803804, align 8, !alias.scope !93, !noalias !95
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar800, %186
  br i1 %exitcond1081.not, label %polly.loop_exit799, label %polly.loop_header797, !llvm.loop !99

polly.loop_header806:                             ; preds = %polly.loop_exit787, %polly.loop_exit814
  %indvars.iv1072 = phi i64 [ %indvars.iv.next1073, %polly.loop_exit814 ], [ 0, %polly.loop_exit787 ]
  %polly.indvar809 = phi i64 [ %polly.indvar_next810, %polly.loop_exit814 ], [ 0, %polly.loop_exit787 ]
  %smin1074 = call i64 @llvm.smin.i64(i64 %indvars.iv1072, i64 -1168)
  %210 = shl nsw i64 %polly.indvar809, 5
  %211 = add nsw i64 %smin1074, 1199
  br label %polly.loop_header812

polly.loop_exit814:                               ; preds = %polly.loop_exit820
  %polly.indvar_next810 = add nuw nsw i64 %polly.indvar809, 1
  %indvars.iv.next1073 = add nsw i64 %indvars.iv1072, -32
  %exitcond1077.not = icmp eq i64 %polly.indvar_next810, 38
  br i1 %exitcond1077.not, label %polly.loop_header832, label %polly.loop_header806

polly.loop_header812:                             ; preds = %polly.loop_exit820, %polly.loop_header806
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069, %polly.loop_exit820 ], [ 0, %polly.loop_header806 ]
  %polly.indvar815 = phi i64 [ %polly.indvar_next816, %polly.loop_exit820 ], [ 0, %polly.loop_header806 ]
  %212 = mul nsw i64 %polly.indvar815, -32
  %smin1136 = call i64 @llvm.smin.i64(i64 %212, i64 -968)
  %213 = add nsw i64 %smin1136, 1000
  %smin1070 = call i64 @llvm.smin.i64(i64 %indvars.iv1068, i64 -968)
  %214 = shl nsw i64 %polly.indvar815, 5
  %215 = add nsw i64 %smin1070, 999
  br label %polly.loop_header818

polly.loop_exit820:                               ; preds = %polly.loop_exit826
  %polly.indvar_next816 = add nuw nsw i64 %polly.indvar815, 1
  %indvars.iv.next1069 = add nsw i64 %indvars.iv1068, -32
  %exitcond1076.not = icmp eq i64 %polly.indvar_next816, 32
  br i1 %exitcond1076.not, label %polly.loop_exit814, label %polly.loop_header812

polly.loop_header818:                             ; preds = %polly.loop_exit826, %polly.loop_header812
  %polly.indvar821 = phi i64 [ 0, %polly.loop_header812 ], [ %polly.indvar_next822, %polly.loop_exit826 ]
  %216 = add nuw nsw i64 %polly.indvar821, %210
  %217 = trunc i64 %216 to i32
  %218 = mul nuw nsw i64 %216, 8000
  %min.iters.check1137 = icmp eq i64 %213, 0
  br i1 %min.iters.check1137, label %polly.loop_header824, label %vector.ph1138

vector.ph1138:                                    ; preds = %polly.loop_header818
  %broadcast.splatinsert1147 = insertelement <4 x i64> poison, i64 %214, i32 0
  %broadcast.splat1148 = shufflevector <4 x i64> %broadcast.splatinsert1147, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1149 = insertelement <4 x i32> poison, i32 %217, i32 0
  %broadcast.splat1150 = shufflevector <4 x i32> %broadcast.splatinsert1149, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1135

vector.body1135:                                  ; preds = %vector.body1135, %vector.ph1138
  %index1141 = phi i64 [ 0, %vector.ph1138 ], [ %index.next1142, %vector.body1135 ]
  %vec.ind1145 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1138 ], [ %vec.ind.next1146, %vector.body1135 ]
  %219 = add nuw nsw <4 x i64> %vec.ind1145, %broadcast.splat1148
  %220 = trunc <4 x i64> %219 to <4 x i32>
  %221 = mul <4 x i32> %broadcast.splat1150, %220
  %222 = add <4 x i32> %221, <i32 2, i32 2, i32 2, i32 2>
  %223 = urem <4 x i32> %222, <i32 1000, i32 1000, i32 1000, i32 1000>
  %224 = sitofp <4 x i32> %223 to <4 x double>
  %225 = fmul fast <4 x double> %224, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %226 = extractelement <4 x i64> %219, i32 0
  %227 = shl i64 %226, 3
  %228 = add nuw nsw i64 %227, %218
  %229 = getelementptr i8, i8* %call2, i64 %228
  %230 = bitcast i8* %229 to <4 x double>*
  store <4 x double> %225, <4 x double>* %230, align 8, !alias.scope !97, !noalias !100
  %index.next1142 = add i64 %index1141, 4
  %vec.ind.next1146 = add <4 x i64> %vec.ind1145, <i64 4, i64 4, i64 4, i64 4>
  %231 = icmp eq i64 %index.next1142, %213
  br i1 %231, label %polly.loop_exit826, label %vector.body1135, !llvm.loop !101

polly.loop_exit826:                               ; preds = %vector.body1135, %polly.loop_header824
  %polly.indvar_next822 = add nuw nsw i64 %polly.indvar821, 1
  %exitcond1075.not = icmp eq i64 %polly.indvar821, %211
  br i1 %exitcond1075.not, label %polly.loop_exit820, label %polly.loop_header818

polly.loop_header824:                             ; preds = %polly.loop_header818, %polly.loop_header824
  %polly.indvar827 = phi i64 [ %polly.indvar_next828, %polly.loop_header824 ], [ 0, %polly.loop_header818 ]
  %232 = add nuw nsw i64 %polly.indvar827, %214
  %233 = trunc i64 %232 to i32
  %234 = mul i32 %233, %217
  %235 = add i32 %234, 2
  %236 = urem i32 %235, 1000
  %p_conv10.i = sitofp i32 %236 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %237 = shl i64 %232, 3
  %238 = add nuw nsw i64 %237, %218
  %scevgep830 = getelementptr i8, i8* %call2, i64 %238
  %scevgep830831 = bitcast i8* %scevgep830 to double*
  store double %p_div12.i, double* %scevgep830831, align 8, !alias.scope !97, !noalias !100
  %polly.indvar_next828 = add nuw nsw i64 %polly.indvar827, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar827, %215
  br i1 %exitcond1071.not, label %polly.loop_exit826, label %polly.loop_header824, !llvm.loop !102

polly.loop_header832:                             ; preds = %polly.loop_exit814, %polly.loop_exit840
  %indvars.iv1062 = phi i64 [ %indvars.iv.next1063, %polly.loop_exit840 ], [ 0, %polly.loop_exit814 ]
  %polly.indvar835 = phi i64 [ %polly.indvar_next836, %polly.loop_exit840 ], [ 0, %polly.loop_exit814 ]
  %smin1064 = call i64 @llvm.smin.i64(i64 %indvars.iv1062, i64 -1168)
  %239 = shl nsw i64 %polly.indvar835, 5
  %240 = add nsw i64 %smin1064, 1199
  br label %polly.loop_header838

polly.loop_exit840:                               ; preds = %polly.loop_exit846
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %indvars.iv.next1063 = add nsw i64 %indvars.iv1062, -32
  %exitcond1067.not = icmp eq i64 %polly.indvar_next836, 38
  br i1 %exitcond1067.not, label %init_array.exit, label %polly.loop_header832

polly.loop_header838:                             ; preds = %polly.loop_exit846, %polly.loop_header832
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %polly.loop_exit846 ], [ 0, %polly.loop_header832 ]
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_exit846 ], [ 0, %polly.loop_header832 ]
  %241 = mul nsw i64 %polly.indvar841, -32
  %smin1154 = call i64 @llvm.smin.i64(i64 %241, i64 -968)
  %242 = add nsw i64 %smin1154, 1000
  %smin1060 = call i64 @llvm.smin.i64(i64 %indvars.iv1058, i64 -968)
  %243 = shl nsw i64 %polly.indvar841, 5
  %244 = add nsw i64 %smin1060, 999
  br label %polly.loop_header844

polly.loop_exit846:                               ; preds = %polly.loop_exit852
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %indvars.iv.next1059 = add nsw i64 %indvars.iv1058, -32
  %exitcond1066.not = icmp eq i64 %polly.indvar_next842, 32
  br i1 %exitcond1066.not, label %polly.loop_exit840, label %polly.loop_header838

polly.loop_header844:                             ; preds = %polly.loop_exit852, %polly.loop_header838
  %polly.indvar847 = phi i64 [ 0, %polly.loop_header838 ], [ %polly.indvar_next848, %polly.loop_exit852 ]
  %245 = add nuw nsw i64 %polly.indvar847, %239
  %246 = trunc i64 %245 to i32
  %247 = mul nuw nsw i64 %245, 8000
  %min.iters.check1155 = icmp eq i64 %242, 0
  br i1 %min.iters.check1155, label %polly.loop_header850, label %vector.ph1156

vector.ph1156:                                    ; preds = %polly.loop_header844
  %broadcast.splatinsert1165 = insertelement <4 x i64> poison, i64 %243, i32 0
  %broadcast.splat1166 = shufflevector <4 x i64> %broadcast.splatinsert1165, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1167 = insertelement <4 x i32> poison, i32 %246, i32 0
  %broadcast.splat1168 = shufflevector <4 x i32> %broadcast.splatinsert1167, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1153

vector.body1153:                                  ; preds = %vector.body1153, %vector.ph1156
  %index1159 = phi i64 [ 0, %vector.ph1156 ], [ %index.next1160, %vector.body1153 ]
  %vec.ind1163 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1156 ], [ %vec.ind.next1164, %vector.body1153 ]
  %248 = add nuw nsw <4 x i64> %vec.ind1163, %broadcast.splat1166
  %249 = trunc <4 x i64> %248 to <4 x i32>
  %250 = mul <4 x i32> %broadcast.splat1168, %249
  %251 = add <4 x i32> %250, <i32 1, i32 1, i32 1, i32 1>
  %252 = urem <4 x i32> %251, <i32 1200, i32 1200, i32 1200, i32 1200>
  %253 = sitofp <4 x i32> %252 to <4 x double>
  %254 = fmul fast <4 x double> %253, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %255 = extractelement <4 x i64> %248, i32 0
  %256 = shl i64 %255, 3
  %257 = add nuw nsw i64 %256, %247
  %258 = getelementptr i8, i8* %call1, i64 %257
  %259 = bitcast i8* %258 to <4 x double>*
  store <4 x double> %254, <4 x double>* %259, align 8, !alias.scope !96, !noalias !103
  %index.next1160 = add i64 %index1159, 4
  %vec.ind.next1164 = add <4 x i64> %vec.ind1163, <i64 4, i64 4, i64 4, i64 4>
  %260 = icmp eq i64 %index.next1160, %242
  br i1 %260, label %polly.loop_exit852, label %vector.body1153, !llvm.loop !104

polly.loop_exit852:                               ; preds = %vector.body1153, %polly.loop_header850
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar847, %240
  br i1 %exitcond1065.not, label %polly.loop_exit846, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_header844, %polly.loop_header850
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_header850 ], [ 0, %polly.loop_header844 ]
  %261 = add nuw nsw i64 %polly.indvar853, %243
  %262 = trunc i64 %261 to i32
  %263 = mul i32 %262, %246
  %264 = add i32 %263, 1
  %265 = urem i32 %264, 1200
  %p_conv.i = sitofp i32 %265 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %266 = shl i64 %261, 3
  %267 = add nuw nsw i64 %266, %247
  %scevgep857 = getelementptr i8, i8* %call1, i64 %267
  %scevgep857858 = bitcast i8* %scevgep857 to double*
  store double %p_div.i, double* %scevgep857858, align 8, !alias.scope !96, !noalias !103
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar853, %244
  br i1 %exitcond1061.not, label %polly.loop_exit852, label %polly.loop_header850, !llvm.loop !105
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
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 128}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 32}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41, !42, !43}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.data.pack.enable", i1 true}
!42 = !{!"llvm.data.pack.array", !21}
!43 = !{!"llvm.data.pack.allocate", !"malloc"}
!44 = distinct !{!44, !12, !23, !45, !46, !47, !25, !48, !51}
!45 = !{!"llvm.loop.id", !"i"}
!46 = !{!"llvm.loop.tile.enable", i1 true}
!47 = !{!"llvm.loop.tile.depth", i32 3}
!48 = !{!"llvm.loop.tile.followup_floor", !49}
!49 = distinct !{!49, !12, !50}
!50 = !{!"llvm.loop.id", !"i1"}
!51 = !{!"llvm.loop.tile.followup_tile", !52}
!52 = distinct !{!52, !12, !53}
!53 = !{!"llvm.loop.id", !"i2"}
!54 = distinct !{!54, !12, !13}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !4, i64 0}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !63, !"polly.alias.scope.MemRef_call"}
!63 = distinct !{!63, !"polly.alias.scope.domain"}
!64 = !{!65, !66, !67}
!65 = distinct !{!65, !63, !"polly.alias.scope.MemRef_call1"}
!66 = distinct !{!66, !63, !"polly.alias.scope.MemRef_call2"}
!67 = distinct !{!67, !63, !"polly.alias.scope.Packed_MemRef_call1"}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !70, !13}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!62, !66, !67}
!72 = !{!62, !65, !67}
!73 = distinct !{!73, !74, !"polly.alias.scope.MemRef_call"}
!74 = distinct !{!74, !"polly.alias.scope.domain"}
!75 = !{!76, !77, !78}
!76 = distinct !{!76, !74, !"polly.alias.scope.MemRef_call1"}
!77 = distinct !{!77, !74, !"polly.alias.scope.MemRef_call2"}
!78 = distinct !{!78, !74, !"polly.alias.scope.Packed_MemRef_call1"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !70, !13}
!81 = !{!73, !77, !78}
!82 = !{!73, !76, !78}
!83 = distinct !{!83, !84, !"polly.alias.scope.MemRef_call"}
!84 = distinct !{!84, !"polly.alias.scope.domain"}
!85 = !{!86, !87, !88}
!86 = distinct !{!86, !84, !"polly.alias.scope.MemRef_call1"}
!87 = distinct !{!87, !84, !"polly.alias.scope.MemRef_call2"}
!88 = distinct !{!88, !84, !"polly.alias.scope.Packed_MemRef_call1"}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !70, !13}
!91 = !{!83, !87, !88}
!92 = !{!83, !86, !88}
!93 = distinct !{!93, !94, !"polly.alias.scope.MemRef_call"}
!94 = distinct !{!94, !"polly.alias.scope.domain"}
!95 = !{!96, !97}
!96 = distinct !{!96, !94, !"polly.alias.scope.MemRef_call1"}
!97 = distinct !{!97, !94, !"polly.alias.scope.MemRef_call2"}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !70, !13}
!100 = !{!96, !93}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !70, !13}
!103 = !{!97, !93}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !70, !13}
