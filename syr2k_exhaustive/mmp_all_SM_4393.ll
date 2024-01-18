; ModuleID = 'syr2k_exhaustive/mmp_all_SM_4393.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_4393.c"
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
  %scevgep1101 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1100 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1099 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1098 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1098, %scevgep1101
  %bound1 = icmp ult i8* %scevgep1100, %scevgep1099
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
  br i1 %exitcond18.not.i, label %vector.ph1105, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1105:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1112 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1113 = shufflevector <4 x i64> %broadcast.splatinsert1112, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1104

vector.body1104:                                  ; preds = %vector.body1104, %vector.ph1105
  %index1106 = phi i64 [ 0, %vector.ph1105 ], [ %index.next1107, %vector.body1104 ]
  %vec.ind1110 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1105 ], [ %vec.ind.next1111, %vector.body1104 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1110, %broadcast.splat1113
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv7.i, i64 %index1106
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1107 = add i64 %index1106, 4
  %vec.ind.next1111 = add <4 x i64> %vec.ind1110, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1107, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1104, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1104
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1105, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit854
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start476, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1167 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1167, label %for.body3.i46.preheader1241, label %vector.ph1168

vector.ph1168:                                    ; preds = %for.body3.i46.preheader
  %n.vec1170 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1166

vector.body1166:                                  ; preds = %vector.body1166, %vector.ph1168
  %index1171 = phi i64 [ 0, %vector.ph1168 ], [ %index.next1172, %vector.body1166 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i, i64 %index1171
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1172 = add i64 %index1171, 4
  %46 = icmp eq i64 %index.next1172, %n.vec1170
  br i1 %46, label %middle.block1164, label %vector.body1166, !llvm.loop !18

middle.block1164:                                 ; preds = %vector.body1166
  %cmp.n1174 = icmp eq i64 %indvars.iv21.i, %n.vec1170
  br i1 %cmp.n1174, label %for.inc6.i, label %for.body3.i46.preheader1241

for.body3.i46.preheader1241:                      ; preds = %for.body3.i46.preheader, %middle.block1164
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1170, %middle.block1164 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1241, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1241 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1164, %for.cond1.preheader.i45
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
  %min.iters.check1190 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1190, label %for.body3.i60.preheader1240, label %vector.ph1191

vector.ph1191:                                    ; preds = %for.body3.i60.preheader
  %n.vec1193 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1189

vector.body1189:                                  ; preds = %vector.body1189, %vector.ph1191
  %index1194 = phi i64 [ 0, %vector.ph1191 ], [ %index.next1195, %vector.body1189 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i52, i64 %index1194
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1198 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1198, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1195 = add i64 %index1194, 4
  %57 = icmp eq i64 %index.next1195, %n.vec1193
  br i1 %57, label %middle.block1187, label %vector.body1189, !llvm.loop !54

middle.block1187:                                 ; preds = %vector.body1189
  %cmp.n1197 = icmp eq i64 %indvars.iv21.i52, %n.vec1193
  br i1 %cmp.n1197, label %for.inc6.i63, label %for.body3.i60.preheader1240

for.body3.i60.preheader1240:                      ; preds = %for.body3.i60.preheader, %middle.block1187
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1193, %middle.block1187 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1240, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1240 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1187, %for.cond1.preheader.i54
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
  %min.iters.check1216 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1216, label %for.body3.i99.preheader1239, label %vector.ph1217

vector.ph1217:                                    ; preds = %for.body3.i99.preheader
  %n.vec1219 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %vector.ph1217
  %index1220 = phi i64 [ 0, %vector.ph1217 ], [ %index.next1221, %vector.body1215 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i91, i64 %index1220
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1224 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1224, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1221 = add i64 %index1220, 4
  %68 = icmp eq i64 %index.next1221, %n.vec1219
  br i1 %68, label %middle.block1213, label %vector.body1215, !llvm.loop !56

middle.block1213:                                 ; preds = %vector.body1215
  %cmp.n1223 = icmp eq i64 %indvars.iv21.i91, %n.vec1219
  br i1 %cmp.n1223, label %for.inc6.i102, label %for.body3.i99.preheader1239

for.body3.i99.preheader1239:                      ; preds = %for.body3.i99.preheader, %middle.block1213
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1219, %middle.block1213 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1239, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1239 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1213, %for.cond1.preheader.i93
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1228 = phi i64 [ %indvar.next1229, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1228, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1230 = icmp ult i64 %88, 4
  br i1 %min.iters.check1230, label %polly.loop_header191.preheader, label %vector.ph1231

vector.ph1231:                                    ; preds = %polly.loop_header
  %n.vec1233 = and i64 %88, -4
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %vector.ph1231
  %index1234 = phi i64 [ 0, %vector.ph1231 ], [ %index.next1235, %vector.body1227 ]
  %90 = shl nuw nsw i64 %index1234, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1238 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1238, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1235 = add i64 %index1234, 4
  %95 = icmp eq i64 %index.next1235, %n.vec1233
  br i1 %95, label %middle.block1225, label %vector.body1227, !llvm.loop !68

middle.block1225:                                 ; preds = %vector.body1227
  %cmp.n1237 = icmp eq i64 %88, %n.vec1233
  br i1 %cmp.n1237, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1225
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1233, %middle.block1225 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1225
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1004.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1229 = add i64 %indvar1228, 1
  br i1 %exitcond1004.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond1003.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1003.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !69

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv998 = phi i64 [ 3, %polly.loop_header199.preheader ], [ %indvars.iv.next999, %polly.loop_exit207 ]
  %indvars.iv996 = phi i64 [ 1, %polly.loop_header199.preheader ], [ %indvars.iv.next997, %polly.loop_exit207 ]
  %indvars.iv985 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next986, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = lshr i64 %indvars.iv998, 3
  %98 = sub nsw i64 %indvars.iv996, %97
  %99 = mul nuw nsw i64 %polly.indvar202, 3
  %100 = add nuw nsw i64 %99, 3
  %pexp.p_div_q = lshr i64 %100, 3
  %polly.loop_guard.not = icmp ult i64 %polly.indvar202, %pexp.p_div_q
  %101 = mul nsw i64 %polly.indvar202, -20
  %102 = mul nuw nsw i64 %polly.indvar202, 20
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -20
  %indvars.iv.next986 = add nuw nsw i64 %indvars.iv985, 20
  %indvars.iv.next997 = add nuw nsw i64 %indvars.iv996, 1
  %indvars.iv.next999 = add nuw nsw i64 %indvars.iv998, 3
  %exitcond1002.not = icmp eq i64 %polly.indvar_next203, 60
  br i1 %exitcond1002.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  br i1 %polly.loop_guard.not, label %polly.loop_exit213, label %polly.loop_header211.preheader

polly.loop_header211.preheader:                   ; preds = %polly.loop_header205
  %103 = mul nuw nsw i64 %polly.indvar208, 20
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit220, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond1001.not = icmp eq i64 %polly.indvar_next209, 50
  br i1 %exitcond1001.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211.preheader, %polly.loop_exit220
  %indvars.iv987 = phi i64 [ %indvars.iv985, %polly.loop_header211.preheader ], [ %indvars.iv.next988, %polly.loop_exit220 ]
  %indvars.iv983 = phi i64 [ %indvars.iv, %polly.loop_header211.preheader ], [ %indvars.iv.next984, %polly.loop_exit220 ]
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header211.preheader ], [ %polly.indvar_next215, %polly.loop_exit220 ]
  %104 = shl nsw i64 %polly.indvar214, 5
  %105 = add nsw i64 %104, %101
  %106 = icmp sgt i64 %105, 0
  %107 = select i1 %106, i64 %105, i64 0
  %polly.loop_guard221 = icmp slt i64 %107, 20
  br i1 %polly.loop_guard221, label %polly.loop_header218.preheader, label %polly.loop_exit220

polly.loop_header218.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv983, i64 0)
  %108 = add i64 %smax, %indvars.iv987
  %109 = sub nsw i64 %102, %104
  %110 = add nuw nsw i64 %104, 32
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_exit252, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next984 = add nsw i64 %indvars.iv983, 32
  %indvars.iv.next988 = add nsw i64 %indvars.iv987, -32
  %exitcond1000.not = icmp eq i64 %polly.indvar_next215, %98
  br i1 %exitcond1000.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header218:                             ; preds = %polly.loop_header218.preheader, %polly.loop_exit252
  %indvars.iv989 = phi i64 [ %108, %polly.loop_header218.preheader ], [ %indvars.iv.next990, %polly.loop_exit252 ]
  %polly.indvar222 = phi i64 [ %107, %polly.loop_header218.preheader ], [ %polly.indvar_next223, %polly.loop_exit252 ]
  %smin993 = call i64 @llvm.smin.i64(i64 %indvars.iv989, i64 31)
  %111 = add nsw i64 %polly.indvar222, %109
  %polly.loop_guard2351093 = icmp sgt i64 %111, -1
  %112 = add nuw nsw i64 %polly.indvar222, %102
  %.not = icmp ult i64 %112, %110
  %polly.access.mul.call1244 = mul nsw i64 %112, 1000
  %113 = add nuw i64 %polly.access.mul.call1244, %103
  br i1 %polly.loop_guard2351093, label %polly.loop_header225.us, label %polly.loop_header218.split

polly.loop_header225.us:                          ; preds = %polly.loop_header218, %polly.merge.us
  %polly.indvar228.us = phi i64 [ %polly.indvar_next229.us, %polly.merge.us ], [ 0, %polly.loop_header218 ]
  %114 = add nuw nsw i64 %polly.indvar228.us, %103
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar228.us, 1200
  br label %polly.loop_header232.us

polly.loop_header232.us:                          ; preds = %polly.loop_header225.us, %polly.loop_header232.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_header232.us ], [ 0, %polly.loop_header225.us ]
  %115 = add nuw nsw i64 %polly.indvar236.us, %104
  %polly.access.mul.call1240.us = mul nuw nsw i64 %115, 1000
  %polly.access.add.call1241.us = add nuw nsw i64 %114, %polly.access.mul.call1240.us
  %polly.access.call1242.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1241.us
  %polly.access.call1242.load.us = load double, double* %polly.access.call1242.us, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar236.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1242.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %exitcond991.not = icmp eq i64 %polly.indvar236.us, %smin993
  br i1 %exitcond991.not, label %polly.cond.loopexit.us, label %polly.loop_header232.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1245.us = add nuw nsw i64 %113, %polly.indvar228.us
  %polly.access.call1246.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.us
  %polly.access.call1246.load.us = load double, double* %polly.access.call1246.us, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %111
  %polly.access.Packed_MemRef_call1249.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.us
  store double %polly.access.call1246.load.us, double* %polly.access.Packed_MemRef_call1249.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next229.us = add nuw nsw i64 %polly.indvar228.us, 1
  %exitcond992.not = icmp eq i64 %polly.indvar_next229.us, 20
  br i1 %exitcond992.not, label %polly.loop_header250.preheader, label %polly.loop_header225.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header232.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header218.split:                       ; preds = %polly.loop_header218
  br i1 %.not, label %polly.loop_exit252, label %polly.loop_header225.preheader

polly.loop_header225.preheader:                   ; preds = %polly.loop_header218.split
  %polly.access.call1246 = getelementptr double, double* %polly.access.cast.call1671, i64 %113
  %polly.access.call1246.load = load double, double* %polly.access.call1246, align 8, !alias.scope !65, !noalias !71
  %polly.access.Packed_MemRef_call1249 = getelementptr double, double* %Packed_MemRef_call1, i64 %111
  store double %polly.access.call1246.load, double* %polly.access.Packed_MemRef_call1249, align 8
  %polly.access.add.call1245.1 = or i64 %113, 1
  %polly.access.call1246.1 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.1
  %polly.access.call1246.load.1 = load double, double* %polly.access.call1246.1, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.1 = add nsw i64 %111, 1200
  %polly.access.Packed_MemRef_call1249.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.1
  store double %polly.access.call1246.load.1, double* %polly.access.Packed_MemRef_call1249.1, align 8
  %polly.access.add.call1245.2 = or i64 %113, 2
  %polly.access.call1246.2 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.2
  %polly.access.call1246.load.2 = load double, double* %polly.access.call1246.2, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.2 = add nsw i64 %111, 2400
  %polly.access.Packed_MemRef_call1249.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.2
  store double %polly.access.call1246.load.2, double* %polly.access.Packed_MemRef_call1249.2, align 8
  %polly.access.add.call1245.3 = or i64 %113, 3
  %polly.access.call1246.3 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.3
  %polly.access.call1246.load.3 = load double, double* %polly.access.call1246.3, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.3 = add nsw i64 %111, 3600
  %polly.access.Packed_MemRef_call1249.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.3
  store double %polly.access.call1246.load.3, double* %polly.access.Packed_MemRef_call1249.3, align 8
  %polly.access.add.call1245.4 = add nuw nsw i64 %113, 4
  %polly.access.call1246.4 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.4
  %polly.access.call1246.load.4 = load double, double* %polly.access.call1246.4, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.4 = add nsw i64 %111, 4800
  %polly.access.Packed_MemRef_call1249.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.4
  store double %polly.access.call1246.load.4, double* %polly.access.Packed_MemRef_call1249.4, align 8
  %polly.access.add.call1245.5 = add nuw nsw i64 %113, 5
  %polly.access.call1246.5 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.5
  %polly.access.call1246.load.5 = load double, double* %polly.access.call1246.5, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.5 = add nsw i64 %111, 6000
  %polly.access.Packed_MemRef_call1249.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.5
  store double %polly.access.call1246.load.5, double* %polly.access.Packed_MemRef_call1249.5, align 8
  %polly.access.add.call1245.6 = add nuw nsw i64 %113, 6
  %polly.access.call1246.6 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.6
  %polly.access.call1246.load.6 = load double, double* %polly.access.call1246.6, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.6 = add nsw i64 %111, 7200
  %polly.access.Packed_MemRef_call1249.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.6
  store double %polly.access.call1246.load.6, double* %polly.access.Packed_MemRef_call1249.6, align 8
  %polly.access.add.call1245.7 = add nuw nsw i64 %113, 7
  %polly.access.call1246.7 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.7
  %polly.access.call1246.load.7 = load double, double* %polly.access.call1246.7, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.7 = add nsw i64 %111, 8400
  %polly.access.Packed_MemRef_call1249.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.7
  store double %polly.access.call1246.load.7, double* %polly.access.Packed_MemRef_call1249.7, align 8
  %polly.access.add.call1245.8 = add nuw nsw i64 %113, 8
  %polly.access.call1246.8 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.8
  %polly.access.call1246.load.8 = load double, double* %polly.access.call1246.8, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.8 = add nsw i64 %111, 9600
  %polly.access.Packed_MemRef_call1249.8 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.8
  store double %polly.access.call1246.load.8, double* %polly.access.Packed_MemRef_call1249.8, align 8
  %polly.access.add.call1245.9 = add nuw nsw i64 %113, 9
  %polly.access.call1246.9 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.9
  %polly.access.call1246.load.9 = load double, double* %polly.access.call1246.9, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.9 = add nsw i64 %111, 10800
  %polly.access.Packed_MemRef_call1249.9 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.9
  store double %polly.access.call1246.load.9, double* %polly.access.Packed_MemRef_call1249.9, align 8
  %polly.access.add.call1245.10 = add nuw nsw i64 %113, 10
  %polly.access.call1246.10 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.10
  %polly.access.call1246.load.10 = load double, double* %polly.access.call1246.10, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.10 = add nsw i64 %111, 12000
  %polly.access.Packed_MemRef_call1249.10 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.10
  store double %polly.access.call1246.load.10, double* %polly.access.Packed_MemRef_call1249.10, align 8
  %polly.access.add.call1245.11 = add nuw nsw i64 %113, 11
  %polly.access.call1246.11 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.11
  %polly.access.call1246.load.11 = load double, double* %polly.access.call1246.11, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.11 = add nsw i64 %111, 13200
  %polly.access.Packed_MemRef_call1249.11 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.11
  store double %polly.access.call1246.load.11, double* %polly.access.Packed_MemRef_call1249.11, align 8
  %polly.access.add.call1245.12 = add nuw nsw i64 %113, 12
  %polly.access.call1246.12 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.12
  %polly.access.call1246.load.12 = load double, double* %polly.access.call1246.12, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.12 = add nsw i64 %111, 14400
  %polly.access.Packed_MemRef_call1249.12 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.12
  store double %polly.access.call1246.load.12, double* %polly.access.Packed_MemRef_call1249.12, align 8
  %polly.access.add.call1245.13 = add nuw nsw i64 %113, 13
  %polly.access.call1246.13 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.13
  %polly.access.call1246.load.13 = load double, double* %polly.access.call1246.13, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.13 = add nsw i64 %111, 15600
  %polly.access.Packed_MemRef_call1249.13 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.13
  store double %polly.access.call1246.load.13, double* %polly.access.Packed_MemRef_call1249.13, align 8
  %polly.access.add.call1245.14 = add nuw nsw i64 %113, 14
  %polly.access.call1246.14 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.14
  %polly.access.call1246.load.14 = load double, double* %polly.access.call1246.14, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.14 = add nsw i64 %111, 16800
  %polly.access.Packed_MemRef_call1249.14 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.14
  store double %polly.access.call1246.load.14, double* %polly.access.Packed_MemRef_call1249.14, align 8
  %polly.access.add.call1245.15 = add nuw nsw i64 %113, 15
  %polly.access.call1246.15 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.15
  %polly.access.call1246.load.15 = load double, double* %polly.access.call1246.15, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.15 = add nsw i64 %111, 18000
  %polly.access.Packed_MemRef_call1249.15 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.15
  store double %polly.access.call1246.load.15, double* %polly.access.Packed_MemRef_call1249.15, align 8
  %polly.access.add.call1245.16 = add nuw nsw i64 %113, 16
  %polly.access.call1246.16 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.16
  %polly.access.call1246.load.16 = load double, double* %polly.access.call1246.16, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.16 = add nsw i64 %111, 19200
  %polly.access.Packed_MemRef_call1249.16 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.16
  store double %polly.access.call1246.load.16, double* %polly.access.Packed_MemRef_call1249.16, align 8
  %polly.access.add.call1245.17 = add nuw nsw i64 %113, 17
  %polly.access.call1246.17 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.17
  %polly.access.call1246.load.17 = load double, double* %polly.access.call1246.17, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.17 = add nsw i64 %111, 20400
  %polly.access.Packed_MemRef_call1249.17 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.17
  store double %polly.access.call1246.load.17, double* %polly.access.Packed_MemRef_call1249.17, align 8
  %polly.access.add.call1245.18 = add nuw nsw i64 %113, 18
  %polly.access.call1246.18 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.18
  %polly.access.call1246.load.18 = load double, double* %polly.access.call1246.18, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.18 = add nsw i64 %111, 21600
  %polly.access.Packed_MemRef_call1249.18 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.18
  store double %polly.access.call1246.load.18, double* %polly.access.Packed_MemRef_call1249.18, align 8
  %polly.access.add.call1245.19 = add nuw nsw i64 %113, 19
  %polly.access.call1246.19 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.19
  %polly.access.call1246.load.19 = load double, double* %polly.access.call1246.19, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.19 = add nsw i64 %111, 22800
  %polly.access.Packed_MemRef_call1249.19 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.19
  store double %polly.access.call1246.load.19, double* %polly.access.Packed_MemRef_call1249.19, align 8
  br label %polly.loop_exit252

polly.loop_exit252:                               ; preds = %polly.loop_exit259.loopexit.us, %polly.loop_header218.split, %polly.loop_header225.preheader, %polly.loop_header250.preheader
  %polly.indvar_next223 = add nuw nsw i64 %polly.indvar222, 1
  %polly.loop_cond224 = icmp ult i64 %polly.indvar222, 19
  %indvars.iv.next990 = add i64 %indvars.iv989, 1
  br i1 %polly.loop_cond224, label %polly.loop_header218, label %polly.loop_exit220

polly.loop_header250.preheader:                   ; preds = %polly.merge.us
  %116 = mul i64 %112, 8000
  %117 = mul i64 %112, 9600
  br i1 %polly.loop_guard2351093, label %polly.loop_header250.us, label %polly.loop_exit252

polly.loop_header250.us:                          ; preds = %polly.loop_header250.preheader, %polly.loop_exit259.loopexit.us
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_exit259.loopexit.us ], [ 0, %polly.loop_header250.preheader ]
  %118 = add nuw nsw i64 %polly.indvar253.us, %103
  %polly.access.mul.Packed_MemRef_call1264.us = mul nuw nsw i64 %polly.indvar253.us, 1200
  %119 = shl i64 %118, 3
  %120 = add i64 %119, %116
  %scevgep268.us = getelementptr i8, i8* %call2, i64 %120
  %scevgep268269.us = bitcast i8* %scevgep268.us to double*
  %_p_scalar_270.us = load double, double* %scevgep268269.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1275.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1264.us, %111
  %polly.access.Packed_MemRef_call1276.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.us
  %_p_scalar_277.us = load double, double* %polly.access.Packed_MemRef_call1276.us, align 8
  br label %polly.loop_header257.us

polly.loop_header257.us:                          ; preds = %polly.loop_header250.us, %polly.loop_header257.us
  %polly.indvar261.us = phi i64 [ %polly.indvar_next262.us, %polly.loop_header257.us ], [ 0, %polly.loop_header250.us ]
  %121 = add nuw nsw i64 %polly.indvar261.us, %104
  %polly.access.add.Packed_MemRef_call1265.us = add nuw nsw i64 %polly.indvar261.us, %polly.access.mul.Packed_MemRef_call1264.us
  %polly.access.Packed_MemRef_call1266.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us
  %_p_scalar_267.us = load double, double* %polly.access.Packed_MemRef_call1266.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_270.us, %_p_scalar_267.us
  %122 = mul nuw nsw i64 %121, 8000
  %123 = add nuw nsw i64 %122, %119
  %scevgep271.us = getelementptr i8, i8* %call2, i64 %123
  %scevgep271272.us = bitcast i8* %scevgep271.us to double*
  %_p_scalar_273.us = load double, double* %scevgep271272.us, align 8, !alias.scope !66, !noalias !72
  %p_mul37.i114.us = fmul fast double %_p_scalar_277.us, %_p_scalar_273.us
  %124 = shl i64 %121, 3
  %125 = add i64 %124, %117
  %scevgep278.us = getelementptr i8, i8* %call, i64 %125
  %scevgep278279.us = bitcast i8* %scevgep278.us to double*
  %_p_scalar_280.us = load double, double* %scevgep278279.us, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_280.us
  store double %p_add42.i118.us, double* %scevgep278279.us, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next262.us = add nuw nsw i64 %polly.indvar261.us, 1
  %exitcond994.not = icmp eq i64 %polly.indvar261.us, %smin993
  br i1 %exitcond994.not, label %polly.loop_exit259.loopexit.us, label %polly.loop_header257.us

polly.loop_exit259.loopexit.us:                   ; preds = %polly.loop_header257.us
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %exitcond995.not = icmp eq i64 %polly.indvar_next254.us, 20
  br i1 %exitcond995.not, label %polly.loop_exit252, label %polly.loop_header250.us

polly.start283:                                   ; preds = %kernel_syr2k.exit
  %malloccall285 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header369

polly.exiting284:                                 ; preds = %polly.loop_exit393
  tail call void @free(i8* %malloccall285)
  br label %kernel_syr2k.exit90

polly.loop_header369:                             ; preds = %polly.loop_exit377, %polly.start283
  %indvar1202 = phi i64 [ %indvar.next1203, %polly.loop_exit377 ], [ 0, %polly.start283 ]
  %polly.indvar372 = phi i64 [ %polly.indvar_next373, %polly.loop_exit377 ], [ 1, %polly.start283 ]
  %126 = add i64 %indvar1202, 1
  %127 = mul nuw nsw i64 %polly.indvar372, 9600
  %scevgep381 = getelementptr i8, i8* %call, i64 %127
  %min.iters.check1204 = icmp ult i64 %126, 4
  br i1 %min.iters.check1204, label %polly.loop_header375.preheader, label %vector.ph1205

vector.ph1205:                                    ; preds = %polly.loop_header369
  %n.vec1207 = and i64 %126, -4
  br label %vector.body1201

vector.body1201:                                  ; preds = %vector.body1201, %vector.ph1205
  %index1208 = phi i64 [ 0, %vector.ph1205 ], [ %index.next1209, %vector.body1201 ]
  %128 = shl nuw nsw i64 %index1208, 3
  %129 = getelementptr i8, i8* %scevgep381, i64 %128
  %130 = bitcast i8* %129 to <4 x double>*
  %wide.load1212 = load <4 x double>, <4 x double>* %130, align 8, !alias.scope !73, !noalias !75
  %131 = fmul fast <4 x double> %wide.load1212, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %132 = bitcast i8* %129 to <4 x double>*
  store <4 x double> %131, <4 x double>* %132, align 8, !alias.scope !73, !noalias !75
  %index.next1209 = add i64 %index1208, 4
  %133 = icmp eq i64 %index.next1209, %n.vec1207
  br i1 %133, label %middle.block1199, label %vector.body1201, !llvm.loop !79

middle.block1199:                                 ; preds = %vector.body1201
  %cmp.n1211 = icmp eq i64 %126, %n.vec1207
  br i1 %cmp.n1211, label %polly.loop_exit377, label %polly.loop_header375.preheader

polly.loop_header375.preheader:                   ; preds = %polly.loop_header369, %middle.block1199
  %polly.indvar378.ph = phi i64 [ 0, %polly.loop_header369 ], [ %n.vec1207, %middle.block1199 ]
  br label %polly.loop_header375

polly.loop_exit377:                               ; preds = %polly.loop_header375, %middle.block1199
  %polly.indvar_next373 = add nuw nsw i64 %polly.indvar372, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar_next373, 1200
  %indvar.next1203 = add i64 %indvar1202, 1
  br i1 %exitcond1031.not, label %polly.loop_header385.preheader, label %polly.loop_header369

polly.loop_header385.preheader:                   ; preds = %polly.loop_exit377
  %Packed_MemRef_call1286 = bitcast i8* %malloccall285 to double*
  br label %polly.loop_header385

polly.loop_header375:                             ; preds = %polly.loop_header375.preheader, %polly.loop_header375
  %polly.indvar378 = phi i64 [ %polly.indvar_next379, %polly.loop_header375 ], [ %polly.indvar378.ph, %polly.loop_header375.preheader ]
  %134 = shl nuw nsw i64 %polly.indvar378, 3
  %scevgep382 = getelementptr i8, i8* %scevgep381, i64 %134
  %scevgep382383 = bitcast i8* %scevgep382 to double*
  %_p_scalar_384 = load double, double* %scevgep382383, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_384, 1.200000e+00
  store double %p_mul.i57, double* %scevgep382383, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next379 = add nuw nsw i64 %polly.indvar378, 1
  %exitcond1030.not = icmp eq i64 %polly.indvar_next379, %polly.indvar372
  br i1 %exitcond1030.not, label %polly.loop_exit377, label %polly.loop_header375, !llvm.loop !80

polly.loop_header385:                             ; preds = %polly.loop_header385.preheader, %polly.loop_exit393
  %indvars.iv1025 = phi i64 [ 3, %polly.loop_header385.preheader ], [ %indvars.iv.next1026, %polly.loop_exit393 ]
  %indvars.iv1023 = phi i64 [ 1, %polly.loop_header385.preheader ], [ %indvars.iv.next1024, %polly.loop_exit393 ]
  %indvars.iv1011 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %indvars.iv.next1012, %polly.loop_exit393 ]
  %indvars.iv1006 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %indvars.iv.next1007, %polly.loop_exit393 ]
  %polly.indvar388 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %polly.indvar_next389, %polly.loop_exit393 ]
  %135 = lshr i64 %indvars.iv1025, 3
  %136 = sub nsw i64 %indvars.iv1023, %135
  %137 = mul nuw nsw i64 %polly.indvar388, 3
  %138 = add nuw nsw i64 %137, 3
  %pexp.p_div_q397 = lshr i64 %138, 3
  %polly.loop_guard402.not = icmp ult i64 %polly.indvar388, %pexp.p_div_q397
  %139 = mul nsw i64 %polly.indvar388, -20
  %140 = mul nuw nsw i64 %polly.indvar388, 20
  br label %polly.loop_header391

polly.loop_exit393:                               ; preds = %polly.loop_exit401
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %indvars.iv.next1007 = add nsw i64 %indvars.iv1006, -20
  %indvars.iv.next1012 = add nuw nsw i64 %indvars.iv1011, 20
  %indvars.iv.next1024 = add nuw nsw i64 %indvars.iv1023, 1
  %indvars.iv.next1026 = add nuw nsw i64 %indvars.iv1025, 3
  %exitcond1029.not = icmp eq i64 %polly.indvar_next389, 60
  br i1 %exitcond1029.not, label %polly.exiting284, label %polly.loop_header385

polly.loop_header391:                             ; preds = %polly.loop_exit401, %polly.loop_header385
  %polly.indvar394 = phi i64 [ 0, %polly.loop_header385 ], [ %polly.indvar_next395, %polly.loop_exit401 ]
  br i1 %polly.loop_guard402.not, label %polly.loop_exit401, label %polly.loop_header399.preheader

polly.loop_header399.preheader:                   ; preds = %polly.loop_header391
  %141 = mul nuw nsw i64 %polly.indvar394, 20
  br label %polly.loop_header399

polly.loop_exit401:                               ; preds = %polly.loop_exit409, %polly.loop_header391
  %polly.indvar_next395 = add nuw nsw i64 %polly.indvar394, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar_next395, 50
  br i1 %exitcond1028.not, label %polly.loop_exit393, label %polly.loop_header391

polly.loop_header399:                             ; preds = %polly.loop_header399.preheader, %polly.loop_exit409
  %indvars.iv1013 = phi i64 [ %indvars.iv1011, %polly.loop_header399.preheader ], [ %indvars.iv.next1014, %polly.loop_exit409 ]
  %indvars.iv1008 = phi i64 [ %indvars.iv1006, %polly.loop_header399.preheader ], [ %indvars.iv.next1009, %polly.loop_exit409 ]
  %polly.indvar403 = phi i64 [ 0, %polly.loop_header399.preheader ], [ %polly.indvar_next404, %polly.loop_exit409 ]
  %142 = shl nsw i64 %polly.indvar403, 5
  %143 = add nsw i64 %142, %139
  %144 = icmp sgt i64 %143, 0
  %145 = select i1 %144, i64 %143, i64 0
  %polly.loop_guard410 = icmp slt i64 %145, 20
  br i1 %polly.loop_guard410, label %polly.loop_header407.preheader, label %polly.loop_exit409

polly.loop_header407.preheader:                   ; preds = %polly.loop_header399
  %smax1010 = call i64 @llvm.smax.i64(i64 %indvars.iv1008, i64 0)
  %146 = add i64 %smax1010, %indvars.iv1013
  %147 = sub nsw i64 %140, %142
  %148 = add nuw nsw i64 %142, 32
  br label %polly.loop_header407

polly.loop_exit409:                               ; preds = %polly.loop_exit445, %polly.loop_header399
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %indvars.iv.next1009 = add nsw i64 %indvars.iv1008, 32
  %indvars.iv.next1014 = add nsw i64 %indvars.iv1013, -32
  %exitcond1027.not = icmp eq i64 %polly.indvar_next404, %136
  br i1 %exitcond1027.not, label %polly.loop_exit401, label %polly.loop_header399

polly.loop_header407:                             ; preds = %polly.loop_header407.preheader, %polly.loop_exit445
  %indvars.iv1015 = phi i64 [ %146, %polly.loop_header407.preheader ], [ %indvars.iv.next1016, %polly.loop_exit445 ]
  %polly.indvar411 = phi i64 [ %145, %polly.loop_header407.preheader ], [ %polly.indvar_next412, %polly.loop_exit445 ]
  %smin1020 = call i64 @llvm.smin.i64(i64 %indvars.iv1015, i64 31)
  %149 = add nsw i64 %polly.indvar411, %147
  %polly.loop_guard4241094 = icmp sgt i64 %149, -1
  %150 = add nuw nsw i64 %polly.indvar411, %140
  %.not873 = icmp ult i64 %150, %148
  %polly.access.mul.call1437 = mul nsw i64 %150, 1000
  %151 = add nuw i64 %polly.access.mul.call1437, %141
  br i1 %polly.loop_guard4241094, label %polly.loop_header414.us, label %polly.loop_header407.split

polly.loop_header414.us:                          ; preds = %polly.loop_header407, %polly.merge433.us
  %polly.indvar417.us = phi i64 [ %polly.indvar_next418.us, %polly.merge433.us ], [ 0, %polly.loop_header407 ]
  %152 = add nuw nsw i64 %polly.indvar417.us, %141
  %polly.access.mul.Packed_MemRef_call1286.us = mul nuw nsw i64 %polly.indvar417.us, 1200
  br label %polly.loop_header421.us

polly.loop_header421.us:                          ; preds = %polly.loop_header414.us, %polly.loop_header421.us
  %polly.indvar425.us = phi i64 [ %polly.indvar_next426.us, %polly.loop_header421.us ], [ 0, %polly.loop_header414.us ]
  %153 = add nuw nsw i64 %polly.indvar425.us, %142
  %polly.access.mul.call1429.us = mul nuw nsw i64 %153, 1000
  %polly.access.add.call1430.us = add nuw nsw i64 %152, %polly.access.mul.call1429.us
  %polly.access.call1431.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1430.us
  %polly.access.call1431.load.us = load double, double* %polly.access.call1431.us, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286.us = add nuw nsw i64 %polly.indvar425.us, %polly.access.mul.Packed_MemRef_call1286.us
  %polly.access.Packed_MemRef_call1286.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us
  store double %polly.access.call1431.load.us, double* %polly.access.Packed_MemRef_call1286.us, align 8
  %polly.indvar_next426.us = add nuw nsw i64 %polly.indvar425.us, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar425.us, %smin1020
  br i1 %exitcond1018.not, label %polly.cond432.loopexit.us, label %polly.loop_header421.us

polly.then434.us:                                 ; preds = %polly.cond432.loopexit.us
  %polly.access.add.call1438.us = add nuw nsw i64 %151, %polly.indvar417.us
  %polly.access.call1439.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.us
  %polly.access.call1439.load.us = load double, double* %polly.access.call1439.us, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1286.us, %149
  %polly.access.Packed_MemRef_call1286442.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.us
  store double %polly.access.call1439.load.us, double* %polly.access.Packed_MemRef_call1286442.us, align 8
  br label %polly.merge433.us

polly.merge433.us:                                ; preds = %polly.then434.us, %polly.cond432.loopexit.us
  %polly.indvar_next418.us = add nuw nsw i64 %polly.indvar417.us, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar_next418.us, 20
  br i1 %exitcond1019.not, label %polly.loop_header443.preheader, label %polly.loop_header414.us

polly.cond432.loopexit.us:                        ; preds = %polly.loop_header421.us
  br i1 %.not873, label %polly.merge433.us, label %polly.then434.us

polly.loop_header407.split:                       ; preds = %polly.loop_header407
  br i1 %.not873, label %polly.loop_exit445, label %polly.loop_header414.preheader

polly.loop_header414.preheader:                   ; preds = %polly.loop_header407.split
  %polly.access.call1439 = getelementptr double, double* %polly.access.cast.call1671, i64 %151
  %polly.access.call1439.load = load double, double* %polly.access.call1439, align 8, !alias.scope !76, !noalias !81
  %polly.access.Packed_MemRef_call1286442 = getelementptr double, double* %Packed_MemRef_call1286, i64 %149
  store double %polly.access.call1439.load, double* %polly.access.Packed_MemRef_call1286442, align 8
  %polly.access.add.call1438.1 = or i64 %151, 1
  %polly.access.call1439.1 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.1
  %polly.access.call1439.load.1 = load double, double* %polly.access.call1439.1, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.1 = add nsw i64 %149, 1200
  %polly.access.Packed_MemRef_call1286442.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.1
  store double %polly.access.call1439.load.1, double* %polly.access.Packed_MemRef_call1286442.1, align 8
  %polly.access.add.call1438.2 = or i64 %151, 2
  %polly.access.call1439.2 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.2
  %polly.access.call1439.load.2 = load double, double* %polly.access.call1439.2, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.2 = add nsw i64 %149, 2400
  %polly.access.Packed_MemRef_call1286442.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.2
  store double %polly.access.call1439.load.2, double* %polly.access.Packed_MemRef_call1286442.2, align 8
  %polly.access.add.call1438.3 = or i64 %151, 3
  %polly.access.call1439.3 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.3
  %polly.access.call1439.load.3 = load double, double* %polly.access.call1439.3, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.3 = add nsw i64 %149, 3600
  %polly.access.Packed_MemRef_call1286442.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.3
  store double %polly.access.call1439.load.3, double* %polly.access.Packed_MemRef_call1286442.3, align 8
  %polly.access.add.call1438.4 = add nuw nsw i64 %151, 4
  %polly.access.call1439.4 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.4
  %polly.access.call1439.load.4 = load double, double* %polly.access.call1439.4, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.4 = add nsw i64 %149, 4800
  %polly.access.Packed_MemRef_call1286442.4 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.4
  store double %polly.access.call1439.load.4, double* %polly.access.Packed_MemRef_call1286442.4, align 8
  %polly.access.add.call1438.5 = add nuw nsw i64 %151, 5
  %polly.access.call1439.5 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.5
  %polly.access.call1439.load.5 = load double, double* %polly.access.call1439.5, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.5 = add nsw i64 %149, 6000
  %polly.access.Packed_MemRef_call1286442.5 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.5
  store double %polly.access.call1439.load.5, double* %polly.access.Packed_MemRef_call1286442.5, align 8
  %polly.access.add.call1438.6 = add nuw nsw i64 %151, 6
  %polly.access.call1439.6 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.6
  %polly.access.call1439.load.6 = load double, double* %polly.access.call1439.6, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.6 = add nsw i64 %149, 7200
  %polly.access.Packed_MemRef_call1286442.6 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.6
  store double %polly.access.call1439.load.6, double* %polly.access.Packed_MemRef_call1286442.6, align 8
  %polly.access.add.call1438.7 = add nuw nsw i64 %151, 7
  %polly.access.call1439.7 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.7
  %polly.access.call1439.load.7 = load double, double* %polly.access.call1439.7, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.7 = add nsw i64 %149, 8400
  %polly.access.Packed_MemRef_call1286442.7 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.7
  store double %polly.access.call1439.load.7, double* %polly.access.Packed_MemRef_call1286442.7, align 8
  %polly.access.add.call1438.8 = add nuw nsw i64 %151, 8
  %polly.access.call1439.8 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.8
  %polly.access.call1439.load.8 = load double, double* %polly.access.call1439.8, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.8 = add nsw i64 %149, 9600
  %polly.access.Packed_MemRef_call1286442.8 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.8
  store double %polly.access.call1439.load.8, double* %polly.access.Packed_MemRef_call1286442.8, align 8
  %polly.access.add.call1438.9 = add nuw nsw i64 %151, 9
  %polly.access.call1439.9 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.9
  %polly.access.call1439.load.9 = load double, double* %polly.access.call1439.9, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.9 = add nsw i64 %149, 10800
  %polly.access.Packed_MemRef_call1286442.9 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.9
  store double %polly.access.call1439.load.9, double* %polly.access.Packed_MemRef_call1286442.9, align 8
  %polly.access.add.call1438.10 = add nuw nsw i64 %151, 10
  %polly.access.call1439.10 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.10
  %polly.access.call1439.load.10 = load double, double* %polly.access.call1439.10, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.10 = add nsw i64 %149, 12000
  %polly.access.Packed_MemRef_call1286442.10 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.10
  store double %polly.access.call1439.load.10, double* %polly.access.Packed_MemRef_call1286442.10, align 8
  %polly.access.add.call1438.11 = add nuw nsw i64 %151, 11
  %polly.access.call1439.11 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.11
  %polly.access.call1439.load.11 = load double, double* %polly.access.call1439.11, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.11 = add nsw i64 %149, 13200
  %polly.access.Packed_MemRef_call1286442.11 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.11
  store double %polly.access.call1439.load.11, double* %polly.access.Packed_MemRef_call1286442.11, align 8
  %polly.access.add.call1438.12 = add nuw nsw i64 %151, 12
  %polly.access.call1439.12 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.12
  %polly.access.call1439.load.12 = load double, double* %polly.access.call1439.12, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.12 = add nsw i64 %149, 14400
  %polly.access.Packed_MemRef_call1286442.12 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.12
  store double %polly.access.call1439.load.12, double* %polly.access.Packed_MemRef_call1286442.12, align 8
  %polly.access.add.call1438.13 = add nuw nsw i64 %151, 13
  %polly.access.call1439.13 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.13
  %polly.access.call1439.load.13 = load double, double* %polly.access.call1439.13, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.13 = add nsw i64 %149, 15600
  %polly.access.Packed_MemRef_call1286442.13 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.13
  store double %polly.access.call1439.load.13, double* %polly.access.Packed_MemRef_call1286442.13, align 8
  %polly.access.add.call1438.14 = add nuw nsw i64 %151, 14
  %polly.access.call1439.14 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.14
  %polly.access.call1439.load.14 = load double, double* %polly.access.call1439.14, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.14 = add nsw i64 %149, 16800
  %polly.access.Packed_MemRef_call1286442.14 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.14
  store double %polly.access.call1439.load.14, double* %polly.access.Packed_MemRef_call1286442.14, align 8
  %polly.access.add.call1438.15 = add nuw nsw i64 %151, 15
  %polly.access.call1439.15 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.15
  %polly.access.call1439.load.15 = load double, double* %polly.access.call1439.15, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.15 = add nsw i64 %149, 18000
  %polly.access.Packed_MemRef_call1286442.15 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.15
  store double %polly.access.call1439.load.15, double* %polly.access.Packed_MemRef_call1286442.15, align 8
  %polly.access.add.call1438.16 = add nuw nsw i64 %151, 16
  %polly.access.call1439.16 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.16
  %polly.access.call1439.load.16 = load double, double* %polly.access.call1439.16, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.16 = add nsw i64 %149, 19200
  %polly.access.Packed_MemRef_call1286442.16 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.16
  store double %polly.access.call1439.load.16, double* %polly.access.Packed_MemRef_call1286442.16, align 8
  %polly.access.add.call1438.17 = add nuw nsw i64 %151, 17
  %polly.access.call1439.17 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.17
  %polly.access.call1439.load.17 = load double, double* %polly.access.call1439.17, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.17 = add nsw i64 %149, 20400
  %polly.access.Packed_MemRef_call1286442.17 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.17
  store double %polly.access.call1439.load.17, double* %polly.access.Packed_MemRef_call1286442.17, align 8
  %polly.access.add.call1438.18 = add nuw nsw i64 %151, 18
  %polly.access.call1439.18 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.18
  %polly.access.call1439.load.18 = load double, double* %polly.access.call1439.18, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.18 = add nsw i64 %149, 21600
  %polly.access.Packed_MemRef_call1286442.18 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.18
  store double %polly.access.call1439.load.18, double* %polly.access.Packed_MemRef_call1286442.18, align 8
  %polly.access.add.call1438.19 = add nuw nsw i64 %151, 19
  %polly.access.call1439.19 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.19
  %polly.access.call1439.load.19 = load double, double* %polly.access.call1439.19, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.19 = add nsw i64 %149, 22800
  %polly.access.Packed_MemRef_call1286442.19 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.19
  store double %polly.access.call1439.load.19, double* %polly.access.Packed_MemRef_call1286442.19, align 8
  br label %polly.loop_exit445

polly.loop_exit445:                               ; preds = %polly.loop_exit452.loopexit.us, %polly.loop_header407.split, %polly.loop_header414.preheader, %polly.loop_header443.preheader
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %polly.loop_cond413 = icmp ult i64 %polly.indvar411, 19
  %indvars.iv.next1016 = add i64 %indvars.iv1015, 1
  br i1 %polly.loop_cond413, label %polly.loop_header407, label %polly.loop_exit409

polly.loop_header443.preheader:                   ; preds = %polly.merge433.us
  %154 = mul i64 %150, 8000
  %155 = mul i64 %150, 9600
  br i1 %polly.loop_guard4241094, label %polly.loop_header443.us, label %polly.loop_exit445

polly.loop_header443.us:                          ; preds = %polly.loop_header443.preheader, %polly.loop_exit452.loopexit.us
  %polly.indvar446.us = phi i64 [ %polly.indvar_next447.us, %polly.loop_exit452.loopexit.us ], [ 0, %polly.loop_header443.preheader ]
  %156 = add nuw nsw i64 %polly.indvar446.us, %141
  %polly.access.mul.Packed_MemRef_call1286457.us = mul nuw nsw i64 %polly.indvar446.us, 1200
  %157 = shl i64 %156, 3
  %158 = add i64 %157, %154
  %scevgep461.us = getelementptr i8, i8* %call2, i64 %158
  %scevgep461462.us = bitcast i8* %scevgep461.us to double*
  %_p_scalar_463.us = load double, double* %scevgep461462.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1286468.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1286457.us, %149
  %polly.access.Packed_MemRef_call1286469.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286468.us
  %_p_scalar_470.us = load double, double* %polly.access.Packed_MemRef_call1286469.us, align 8
  br label %polly.loop_header450.us

polly.loop_header450.us:                          ; preds = %polly.loop_header443.us, %polly.loop_header450.us
  %polly.indvar454.us = phi i64 [ %polly.indvar_next455.us, %polly.loop_header450.us ], [ 0, %polly.loop_header443.us ]
  %159 = add nuw nsw i64 %polly.indvar454.us, %142
  %polly.access.add.Packed_MemRef_call1286458.us = add nuw nsw i64 %polly.indvar454.us, %polly.access.mul.Packed_MemRef_call1286457.us
  %polly.access.Packed_MemRef_call1286459.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286458.us
  %_p_scalar_460.us = load double, double* %polly.access.Packed_MemRef_call1286459.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_463.us, %_p_scalar_460.us
  %160 = mul nuw nsw i64 %159, 8000
  %161 = add nuw nsw i64 %160, %157
  %scevgep464.us = getelementptr i8, i8* %call2, i64 %161
  %scevgep464465.us = bitcast i8* %scevgep464.us to double*
  %_p_scalar_466.us = load double, double* %scevgep464465.us, align 8, !alias.scope !77, !noalias !82
  %p_mul37.i75.us = fmul fast double %_p_scalar_470.us, %_p_scalar_466.us
  %162 = shl i64 %159, 3
  %163 = add i64 %162, %155
  %scevgep471.us = getelementptr i8, i8* %call, i64 %163
  %scevgep471472.us = bitcast i8* %scevgep471.us to double*
  %_p_scalar_473.us = load double, double* %scevgep471472.us, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_473.us
  store double %p_add42.i79.us, double* %scevgep471472.us, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next455.us = add nuw nsw i64 %polly.indvar454.us, 1
  %exitcond1021.not = icmp eq i64 %polly.indvar454.us, %smin1020
  br i1 %exitcond1021.not, label %polly.loop_exit452.loopexit.us, label %polly.loop_header450.us

polly.loop_exit452.loopexit.us:                   ; preds = %polly.loop_header450.us
  %polly.indvar_next447.us = add nuw nsw i64 %polly.indvar446.us, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar_next447.us, 20
  br i1 %exitcond1022.not, label %polly.loop_exit445, label %polly.loop_header443.us

polly.start476:                                   ; preds = %init_array.exit
  %malloccall478 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header562

polly.exiting477:                                 ; preds = %polly.loop_exit586
  tail call void @free(i8* %malloccall478)
  br label %kernel_syr2k.exit

polly.loop_header562:                             ; preds = %polly.loop_exit570, %polly.start476
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit570 ], [ 0, %polly.start476 ]
  %polly.indvar565 = phi i64 [ %polly.indvar_next566, %polly.loop_exit570 ], [ 1, %polly.start476 ]
  %164 = add i64 %indvar, 1
  %165 = mul nuw nsw i64 %polly.indvar565, 9600
  %scevgep574 = getelementptr i8, i8* %call, i64 %165
  %min.iters.check1178 = icmp ult i64 %164, 4
  br i1 %min.iters.check1178, label %polly.loop_header568.preheader, label %vector.ph1179

vector.ph1179:                                    ; preds = %polly.loop_header562
  %n.vec1181 = and i64 %164, -4
  br label %vector.body1177

vector.body1177:                                  ; preds = %vector.body1177, %vector.ph1179
  %index1182 = phi i64 [ 0, %vector.ph1179 ], [ %index.next1183, %vector.body1177 ]
  %166 = shl nuw nsw i64 %index1182, 3
  %167 = getelementptr i8, i8* %scevgep574, i64 %166
  %168 = bitcast i8* %167 to <4 x double>*
  %wide.load1186 = load <4 x double>, <4 x double>* %168, align 8, !alias.scope !83, !noalias !85
  %169 = fmul fast <4 x double> %wide.load1186, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %170 = bitcast i8* %167 to <4 x double>*
  store <4 x double> %169, <4 x double>* %170, align 8, !alias.scope !83, !noalias !85
  %index.next1183 = add i64 %index1182, 4
  %171 = icmp eq i64 %index.next1183, %n.vec1181
  br i1 %171, label %middle.block1175, label %vector.body1177, !llvm.loop !89

middle.block1175:                                 ; preds = %vector.body1177
  %cmp.n1185 = icmp eq i64 %164, %n.vec1181
  br i1 %cmp.n1185, label %polly.loop_exit570, label %polly.loop_header568.preheader

polly.loop_header568.preheader:                   ; preds = %polly.loop_header562, %middle.block1175
  %polly.indvar571.ph = phi i64 [ 0, %polly.loop_header562 ], [ %n.vec1181, %middle.block1175 ]
  br label %polly.loop_header568

polly.loop_exit570:                               ; preds = %polly.loop_header568, %middle.block1175
  %polly.indvar_next566 = add nuw nsw i64 %polly.indvar565, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar_next566, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1058.not, label %polly.loop_header578.preheader, label %polly.loop_header562

polly.loop_header578.preheader:                   ; preds = %polly.loop_exit570
  %Packed_MemRef_call1479 = bitcast i8* %malloccall478 to double*
  br label %polly.loop_header578

polly.loop_header568:                             ; preds = %polly.loop_header568.preheader, %polly.loop_header568
  %polly.indvar571 = phi i64 [ %polly.indvar_next572, %polly.loop_header568 ], [ %polly.indvar571.ph, %polly.loop_header568.preheader ]
  %172 = shl nuw nsw i64 %polly.indvar571, 3
  %scevgep575 = getelementptr i8, i8* %scevgep574, i64 %172
  %scevgep575576 = bitcast i8* %scevgep575 to double*
  %_p_scalar_577 = load double, double* %scevgep575576, align 8, !alias.scope !83, !noalias !85
  %p_mul.i = fmul fast double %_p_scalar_577, 1.200000e+00
  store double %p_mul.i, double* %scevgep575576, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next572 = add nuw nsw i64 %polly.indvar571, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar_next572, %polly.indvar565
  br i1 %exitcond1057.not, label %polly.loop_exit570, label %polly.loop_header568, !llvm.loop !90

polly.loop_header578:                             ; preds = %polly.loop_header578.preheader, %polly.loop_exit586
  %indvars.iv1052 = phi i64 [ 3, %polly.loop_header578.preheader ], [ %indvars.iv.next1053, %polly.loop_exit586 ]
  %indvars.iv1050 = phi i64 [ 1, %polly.loop_header578.preheader ], [ %indvars.iv.next1051, %polly.loop_exit586 ]
  %indvars.iv1038 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %indvars.iv.next1039, %polly.loop_exit586 ]
  %indvars.iv1033 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %indvars.iv.next1034, %polly.loop_exit586 ]
  %polly.indvar581 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %polly.indvar_next582, %polly.loop_exit586 ]
  %173 = lshr i64 %indvars.iv1052, 3
  %174 = sub nsw i64 %indvars.iv1050, %173
  %175 = mul nuw nsw i64 %polly.indvar581, 3
  %176 = add nuw nsw i64 %175, 3
  %pexp.p_div_q590 = lshr i64 %176, 3
  %polly.loop_guard595.not = icmp ult i64 %polly.indvar581, %pexp.p_div_q590
  %177 = mul nsw i64 %polly.indvar581, -20
  %178 = mul nuw nsw i64 %polly.indvar581, 20
  br label %polly.loop_header584

polly.loop_exit586:                               ; preds = %polly.loop_exit594
  %polly.indvar_next582 = add nuw nsw i64 %polly.indvar581, 1
  %indvars.iv.next1034 = add nsw i64 %indvars.iv1033, -20
  %indvars.iv.next1039 = add nuw nsw i64 %indvars.iv1038, 20
  %indvars.iv.next1051 = add nuw nsw i64 %indvars.iv1050, 1
  %indvars.iv.next1053 = add nuw nsw i64 %indvars.iv1052, 3
  %exitcond1056.not = icmp eq i64 %polly.indvar_next582, 60
  br i1 %exitcond1056.not, label %polly.exiting477, label %polly.loop_header578

polly.loop_header584:                             ; preds = %polly.loop_exit594, %polly.loop_header578
  %polly.indvar587 = phi i64 [ 0, %polly.loop_header578 ], [ %polly.indvar_next588, %polly.loop_exit594 ]
  br i1 %polly.loop_guard595.not, label %polly.loop_exit594, label %polly.loop_header592.preheader

polly.loop_header592.preheader:                   ; preds = %polly.loop_header584
  %179 = mul nuw nsw i64 %polly.indvar587, 20
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_exit602, %polly.loop_header584
  %polly.indvar_next588 = add nuw nsw i64 %polly.indvar587, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar_next588, 50
  br i1 %exitcond1055.not, label %polly.loop_exit586, label %polly.loop_header584

polly.loop_header592:                             ; preds = %polly.loop_header592.preheader, %polly.loop_exit602
  %indvars.iv1040 = phi i64 [ %indvars.iv1038, %polly.loop_header592.preheader ], [ %indvars.iv.next1041, %polly.loop_exit602 ]
  %indvars.iv1035 = phi i64 [ %indvars.iv1033, %polly.loop_header592.preheader ], [ %indvars.iv.next1036, %polly.loop_exit602 ]
  %polly.indvar596 = phi i64 [ 0, %polly.loop_header592.preheader ], [ %polly.indvar_next597, %polly.loop_exit602 ]
  %180 = shl nsw i64 %polly.indvar596, 5
  %181 = add nsw i64 %180, %177
  %182 = icmp sgt i64 %181, 0
  %183 = select i1 %182, i64 %181, i64 0
  %polly.loop_guard603 = icmp slt i64 %183, 20
  br i1 %polly.loop_guard603, label %polly.loop_header600.preheader, label %polly.loop_exit602

polly.loop_header600.preheader:                   ; preds = %polly.loop_header592
  %smax1037 = call i64 @llvm.smax.i64(i64 %indvars.iv1035, i64 0)
  %184 = add i64 %smax1037, %indvars.iv1040
  %185 = sub nsw i64 %178, %180
  %186 = add nuw nsw i64 %180, 32
  br label %polly.loop_header600

polly.loop_exit602:                               ; preds = %polly.loop_exit638, %polly.loop_header592
  %polly.indvar_next597 = add nuw nsw i64 %polly.indvar596, 1
  %indvars.iv.next1036 = add nsw i64 %indvars.iv1035, 32
  %indvars.iv.next1041 = add nsw i64 %indvars.iv1040, -32
  %exitcond1054.not = icmp eq i64 %polly.indvar_next597, %174
  br i1 %exitcond1054.not, label %polly.loop_exit594, label %polly.loop_header592

polly.loop_header600:                             ; preds = %polly.loop_header600.preheader, %polly.loop_exit638
  %indvars.iv1042 = phi i64 [ %184, %polly.loop_header600.preheader ], [ %indvars.iv.next1043, %polly.loop_exit638 ]
  %polly.indvar604 = phi i64 [ %183, %polly.loop_header600.preheader ], [ %polly.indvar_next605, %polly.loop_exit638 ]
  %smin1047 = call i64 @llvm.smin.i64(i64 %indvars.iv1042, i64 31)
  %187 = add nsw i64 %polly.indvar604, %185
  %polly.loop_guard6171095 = icmp sgt i64 %187, -1
  %188 = add nuw nsw i64 %polly.indvar604, %178
  %.not874 = icmp ult i64 %188, %186
  %polly.access.mul.call1630 = mul nsw i64 %188, 1000
  %189 = add nuw i64 %polly.access.mul.call1630, %179
  br i1 %polly.loop_guard6171095, label %polly.loop_header607.us, label %polly.loop_header600.split

polly.loop_header607.us:                          ; preds = %polly.loop_header600, %polly.merge626.us
  %polly.indvar610.us = phi i64 [ %polly.indvar_next611.us, %polly.merge626.us ], [ 0, %polly.loop_header600 ]
  %190 = add nuw nsw i64 %polly.indvar610.us, %179
  %polly.access.mul.Packed_MemRef_call1479.us = mul nuw nsw i64 %polly.indvar610.us, 1200
  br label %polly.loop_header614.us

polly.loop_header614.us:                          ; preds = %polly.loop_header607.us, %polly.loop_header614.us
  %polly.indvar618.us = phi i64 [ %polly.indvar_next619.us, %polly.loop_header614.us ], [ 0, %polly.loop_header607.us ]
  %191 = add nuw nsw i64 %polly.indvar618.us, %180
  %polly.access.mul.call1622.us = mul nuw nsw i64 %191, 1000
  %polly.access.add.call1623.us = add nuw nsw i64 %190, %polly.access.mul.call1622.us
  %polly.access.call1624.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1623.us
  %polly.access.call1624.load.us = load double, double* %polly.access.call1624.us, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479.us = add nuw nsw i64 %polly.indvar618.us, %polly.access.mul.Packed_MemRef_call1479.us
  %polly.access.Packed_MemRef_call1479.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us
  store double %polly.access.call1624.load.us, double* %polly.access.Packed_MemRef_call1479.us, align 8
  %polly.indvar_next619.us = add nuw nsw i64 %polly.indvar618.us, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar618.us, %smin1047
  br i1 %exitcond1045.not, label %polly.cond625.loopexit.us, label %polly.loop_header614.us

polly.then627.us:                                 ; preds = %polly.cond625.loopexit.us
  %polly.access.add.call1631.us = add nuw nsw i64 %189, %polly.indvar610.us
  %polly.access.call1632.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.us
  %polly.access.call1632.load.us = load double, double* %polly.access.call1632.us, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1479.us, %187
  %polly.access.Packed_MemRef_call1479635.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.us
  store double %polly.access.call1632.load.us, double* %polly.access.Packed_MemRef_call1479635.us, align 8
  br label %polly.merge626.us

polly.merge626.us:                                ; preds = %polly.then627.us, %polly.cond625.loopexit.us
  %polly.indvar_next611.us = add nuw nsw i64 %polly.indvar610.us, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar_next611.us, 20
  br i1 %exitcond1046.not, label %polly.loop_header636.preheader, label %polly.loop_header607.us

polly.cond625.loopexit.us:                        ; preds = %polly.loop_header614.us
  br i1 %.not874, label %polly.merge626.us, label %polly.then627.us

polly.loop_header600.split:                       ; preds = %polly.loop_header600
  br i1 %.not874, label %polly.loop_exit638, label %polly.loop_header607.preheader

polly.loop_header607.preheader:                   ; preds = %polly.loop_header600.split
  %polly.access.call1632 = getelementptr double, double* %polly.access.cast.call1671, i64 %189
  %polly.access.call1632.load = load double, double* %polly.access.call1632, align 8, !alias.scope !86, !noalias !91
  %polly.access.Packed_MemRef_call1479635 = getelementptr double, double* %Packed_MemRef_call1479, i64 %187
  store double %polly.access.call1632.load, double* %polly.access.Packed_MemRef_call1479635, align 8
  %polly.access.add.call1631.1 = or i64 %189, 1
  %polly.access.call1632.1 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.1
  %polly.access.call1632.load.1 = load double, double* %polly.access.call1632.1, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.1 = add nsw i64 %187, 1200
  %polly.access.Packed_MemRef_call1479635.1 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.1
  store double %polly.access.call1632.load.1, double* %polly.access.Packed_MemRef_call1479635.1, align 8
  %polly.access.add.call1631.2 = or i64 %189, 2
  %polly.access.call1632.2 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.2
  %polly.access.call1632.load.2 = load double, double* %polly.access.call1632.2, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.2 = add nsw i64 %187, 2400
  %polly.access.Packed_MemRef_call1479635.2 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.2
  store double %polly.access.call1632.load.2, double* %polly.access.Packed_MemRef_call1479635.2, align 8
  %polly.access.add.call1631.3 = or i64 %189, 3
  %polly.access.call1632.3 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.3
  %polly.access.call1632.load.3 = load double, double* %polly.access.call1632.3, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.3 = add nsw i64 %187, 3600
  %polly.access.Packed_MemRef_call1479635.3 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.3
  store double %polly.access.call1632.load.3, double* %polly.access.Packed_MemRef_call1479635.3, align 8
  %polly.access.add.call1631.4 = add nuw nsw i64 %189, 4
  %polly.access.call1632.4 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.4
  %polly.access.call1632.load.4 = load double, double* %polly.access.call1632.4, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.4 = add nsw i64 %187, 4800
  %polly.access.Packed_MemRef_call1479635.4 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.4
  store double %polly.access.call1632.load.4, double* %polly.access.Packed_MemRef_call1479635.4, align 8
  %polly.access.add.call1631.5 = add nuw nsw i64 %189, 5
  %polly.access.call1632.5 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.5
  %polly.access.call1632.load.5 = load double, double* %polly.access.call1632.5, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.5 = add nsw i64 %187, 6000
  %polly.access.Packed_MemRef_call1479635.5 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.5
  store double %polly.access.call1632.load.5, double* %polly.access.Packed_MemRef_call1479635.5, align 8
  %polly.access.add.call1631.6 = add nuw nsw i64 %189, 6
  %polly.access.call1632.6 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.6
  %polly.access.call1632.load.6 = load double, double* %polly.access.call1632.6, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.6 = add nsw i64 %187, 7200
  %polly.access.Packed_MemRef_call1479635.6 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.6
  store double %polly.access.call1632.load.6, double* %polly.access.Packed_MemRef_call1479635.6, align 8
  %polly.access.add.call1631.7 = add nuw nsw i64 %189, 7
  %polly.access.call1632.7 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.7
  %polly.access.call1632.load.7 = load double, double* %polly.access.call1632.7, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.7 = add nsw i64 %187, 8400
  %polly.access.Packed_MemRef_call1479635.7 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.7
  store double %polly.access.call1632.load.7, double* %polly.access.Packed_MemRef_call1479635.7, align 8
  %polly.access.add.call1631.8 = add nuw nsw i64 %189, 8
  %polly.access.call1632.8 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.8
  %polly.access.call1632.load.8 = load double, double* %polly.access.call1632.8, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.8 = add nsw i64 %187, 9600
  %polly.access.Packed_MemRef_call1479635.8 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.8
  store double %polly.access.call1632.load.8, double* %polly.access.Packed_MemRef_call1479635.8, align 8
  %polly.access.add.call1631.9 = add nuw nsw i64 %189, 9
  %polly.access.call1632.9 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.9
  %polly.access.call1632.load.9 = load double, double* %polly.access.call1632.9, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.9 = add nsw i64 %187, 10800
  %polly.access.Packed_MemRef_call1479635.9 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.9
  store double %polly.access.call1632.load.9, double* %polly.access.Packed_MemRef_call1479635.9, align 8
  %polly.access.add.call1631.10 = add nuw nsw i64 %189, 10
  %polly.access.call1632.10 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.10
  %polly.access.call1632.load.10 = load double, double* %polly.access.call1632.10, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.10 = add nsw i64 %187, 12000
  %polly.access.Packed_MemRef_call1479635.10 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.10
  store double %polly.access.call1632.load.10, double* %polly.access.Packed_MemRef_call1479635.10, align 8
  %polly.access.add.call1631.11 = add nuw nsw i64 %189, 11
  %polly.access.call1632.11 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.11
  %polly.access.call1632.load.11 = load double, double* %polly.access.call1632.11, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.11 = add nsw i64 %187, 13200
  %polly.access.Packed_MemRef_call1479635.11 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.11
  store double %polly.access.call1632.load.11, double* %polly.access.Packed_MemRef_call1479635.11, align 8
  %polly.access.add.call1631.12 = add nuw nsw i64 %189, 12
  %polly.access.call1632.12 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.12
  %polly.access.call1632.load.12 = load double, double* %polly.access.call1632.12, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.12 = add nsw i64 %187, 14400
  %polly.access.Packed_MemRef_call1479635.12 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.12
  store double %polly.access.call1632.load.12, double* %polly.access.Packed_MemRef_call1479635.12, align 8
  %polly.access.add.call1631.13 = add nuw nsw i64 %189, 13
  %polly.access.call1632.13 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.13
  %polly.access.call1632.load.13 = load double, double* %polly.access.call1632.13, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.13 = add nsw i64 %187, 15600
  %polly.access.Packed_MemRef_call1479635.13 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.13
  store double %polly.access.call1632.load.13, double* %polly.access.Packed_MemRef_call1479635.13, align 8
  %polly.access.add.call1631.14 = add nuw nsw i64 %189, 14
  %polly.access.call1632.14 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.14
  %polly.access.call1632.load.14 = load double, double* %polly.access.call1632.14, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.14 = add nsw i64 %187, 16800
  %polly.access.Packed_MemRef_call1479635.14 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.14
  store double %polly.access.call1632.load.14, double* %polly.access.Packed_MemRef_call1479635.14, align 8
  %polly.access.add.call1631.15 = add nuw nsw i64 %189, 15
  %polly.access.call1632.15 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.15
  %polly.access.call1632.load.15 = load double, double* %polly.access.call1632.15, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.15 = add nsw i64 %187, 18000
  %polly.access.Packed_MemRef_call1479635.15 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.15
  store double %polly.access.call1632.load.15, double* %polly.access.Packed_MemRef_call1479635.15, align 8
  %polly.access.add.call1631.16 = add nuw nsw i64 %189, 16
  %polly.access.call1632.16 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.16
  %polly.access.call1632.load.16 = load double, double* %polly.access.call1632.16, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.16 = add nsw i64 %187, 19200
  %polly.access.Packed_MemRef_call1479635.16 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.16
  store double %polly.access.call1632.load.16, double* %polly.access.Packed_MemRef_call1479635.16, align 8
  %polly.access.add.call1631.17 = add nuw nsw i64 %189, 17
  %polly.access.call1632.17 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.17
  %polly.access.call1632.load.17 = load double, double* %polly.access.call1632.17, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.17 = add nsw i64 %187, 20400
  %polly.access.Packed_MemRef_call1479635.17 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.17
  store double %polly.access.call1632.load.17, double* %polly.access.Packed_MemRef_call1479635.17, align 8
  %polly.access.add.call1631.18 = add nuw nsw i64 %189, 18
  %polly.access.call1632.18 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.18
  %polly.access.call1632.load.18 = load double, double* %polly.access.call1632.18, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.18 = add nsw i64 %187, 21600
  %polly.access.Packed_MemRef_call1479635.18 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.18
  store double %polly.access.call1632.load.18, double* %polly.access.Packed_MemRef_call1479635.18, align 8
  %polly.access.add.call1631.19 = add nuw nsw i64 %189, 19
  %polly.access.call1632.19 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.19
  %polly.access.call1632.load.19 = load double, double* %polly.access.call1632.19, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.19 = add nsw i64 %187, 22800
  %polly.access.Packed_MemRef_call1479635.19 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.19
  store double %polly.access.call1632.load.19, double* %polly.access.Packed_MemRef_call1479635.19, align 8
  br label %polly.loop_exit638

polly.loop_exit638:                               ; preds = %polly.loop_exit645.loopexit.us, %polly.loop_header600.split, %polly.loop_header607.preheader, %polly.loop_header636.preheader
  %polly.indvar_next605 = add nuw nsw i64 %polly.indvar604, 1
  %polly.loop_cond606 = icmp ult i64 %polly.indvar604, 19
  %indvars.iv.next1043 = add i64 %indvars.iv1042, 1
  br i1 %polly.loop_cond606, label %polly.loop_header600, label %polly.loop_exit602

polly.loop_header636.preheader:                   ; preds = %polly.merge626.us
  %192 = mul i64 %188, 8000
  %193 = mul i64 %188, 9600
  br i1 %polly.loop_guard6171095, label %polly.loop_header636.us, label %polly.loop_exit638

polly.loop_header636.us:                          ; preds = %polly.loop_header636.preheader, %polly.loop_exit645.loopexit.us
  %polly.indvar639.us = phi i64 [ %polly.indvar_next640.us, %polly.loop_exit645.loopexit.us ], [ 0, %polly.loop_header636.preheader ]
  %194 = add nuw nsw i64 %polly.indvar639.us, %179
  %polly.access.mul.Packed_MemRef_call1479650.us = mul nuw nsw i64 %polly.indvar639.us, 1200
  %195 = shl i64 %194, 3
  %196 = add i64 %195, %192
  %scevgep654.us = getelementptr i8, i8* %call2, i64 %196
  %scevgep654655.us = bitcast i8* %scevgep654.us to double*
  %_p_scalar_656.us = load double, double* %scevgep654655.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1479661.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1479650.us, %187
  %polly.access.Packed_MemRef_call1479662.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479661.us
  %_p_scalar_663.us = load double, double* %polly.access.Packed_MemRef_call1479662.us, align 8
  br label %polly.loop_header643.us

polly.loop_header643.us:                          ; preds = %polly.loop_header636.us, %polly.loop_header643.us
  %polly.indvar647.us = phi i64 [ %polly.indvar_next648.us, %polly.loop_header643.us ], [ 0, %polly.loop_header636.us ]
  %197 = add nuw nsw i64 %polly.indvar647.us, %180
  %polly.access.add.Packed_MemRef_call1479651.us = add nuw nsw i64 %polly.indvar647.us, %polly.access.mul.Packed_MemRef_call1479650.us
  %polly.access.Packed_MemRef_call1479652.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479651.us
  %_p_scalar_653.us = load double, double* %polly.access.Packed_MemRef_call1479652.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_656.us, %_p_scalar_653.us
  %198 = mul nuw nsw i64 %197, 8000
  %199 = add nuw nsw i64 %198, %195
  %scevgep657.us = getelementptr i8, i8* %call2, i64 %199
  %scevgep657658.us = bitcast i8* %scevgep657.us to double*
  %_p_scalar_659.us = load double, double* %scevgep657658.us, align 8, !alias.scope !87, !noalias !92
  %p_mul37.i.us = fmul fast double %_p_scalar_663.us, %_p_scalar_659.us
  %200 = shl i64 %197, 3
  %201 = add i64 %200, %193
  %scevgep664.us = getelementptr i8, i8* %call, i64 %201
  %scevgep664665.us = bitcast i8* %scevgep664.us to double*
  %_p_scalar_666.us = load double, double* %scevgep664665.us, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_666.us
  store double %p_add42.i.us, double* %scevgep664665.us, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next648.us = add nuw nsw i64 %polly.indvar647.us, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar647.us, %smin1047
  br i1 %exitcond1048.not, label %polly.loop_exit645.loopexit.us, label %polly.loop_header643.us

polly.loop_exit645.loopexit.us:                   ; preds = %polly.loop_header643.us
  %polly.indvar_next640.us = add nuw nsw i64 %polly.indvar639.us, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar_next640.us, 20
  br i1 %exitcond1049.not, label %polly.loop_exit638, label %polly.loop_header636.us

polly.loop_header793:                             ; preds = %entry, %polly.loop_exit801
  %indvars.iv1083 = phi i64 [ %indvars.iv.next1084, %polly.loop_exit801 ], [ 0, %entry ]
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %entry ]
  %smin1085 = call i64 @llvm.smin.i64(i64 %indvars.iv1083, i64 -1168)
  %202 = shl nsw i64 %polly.indvar796, 5
  %203 = add nsw i64 %smin1085, 1199
  br label %polly.loop_header799

polly.loop_exit801:                               ; preds = %polly.loop_exit807
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %indvars.iv.next1084 = add nsw i64 %indvars.iv1083, -32
  %exitcond1088.not = icmp eq i64 %polly.indvar_next797, 38
  br i1 %exitcond1088.not, label %polly.loop_header820, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_exit807, %polly.loop_header793
  %indvars.iv1079 = phi i64 [ %indvars.iv.next1080, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %204 = mul nsw i64 %polly.indvar802, -32
  %smin = call i64 @llvm.smin.i64(i64 %204, i64 -1168)
  %205 = add nsw i64 %smin, 1200
  %smin1081 = call i64 @llvm.smin.i64(i64 %indvars.iv1079, i64 -1168)
  %206 = shl nsw i64 %polly.indvar802, 5
  %207 = add nsw i64 %smin1081, 1199
  br label %polly.loop_header805

polly.loop_exit807:                               ; preds = %polly.loop_exit813
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %indvars.iv.next1080 = add nsw i64 %indvars.iv1079, -32
  %exitcond1087.not = icmp eq i64 %polly.indvar_next803, 38
  br i1 %exitcond1087.not, label %polly.loop_exit801, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_exit813, %polly.loop_header799
  %polly.indvar808 = phi i64 [ 0, %polly.loop_header799 ], [ %polly.indvar_next809, %polly.loop_exit813 ]
  %208 = add nuw nsw i64 %polly.indvar808, %202
  %209 = trunc i64 %208 to i32
  %210 = mul nuw nsw i64 %208, 9600
  %min.iters.check = icmp eq i64 %205, 0
  br i1 %min.iters.check, label %polly.loop_header811, label %vector.ph1117

vector.ph1117:                                    ; preds = %polly.loop_header805
  %broadcast.splatinsert1124 = insertelement <4 x i64> poison, i64 %206, i32 0
  %broadcast.splat1125 = shufflevector <4 x i64> %broadcast.splatinsert1124, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1126 = insertelement <4 x i32> poison, i32 %209, i32 0
  %broadcast.splat1127 = shufflevector <4 x i32> %broadcast.splatinsert1126, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1116

vector.body1116:                                  ; preds = %vector.body1116, %vector.ph1117
  %index1118 = phi i64 [ 0, %vector.ph1117 ], [ %index.next1119, %vector.body1116 ]
  %vec.ind1122 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1117 ], [ %vec.ind.next1123, %vector.body1116 ]
  %211 = add nuw nsw <4 x i64> %vec.ind1122, %broadcast.splat1125
  %212 = trunc <4 x i64> %211 to <4 x i32>
  %213 = mul <4 x i32> %broadcast.splat1127, %212
  %214 = add <4 x i32> %213, <i32 3, i32 3, i32 3, i32 3>
  %215 = urem <4 x i32> %214, <i32 1200, i32 1200, i32 1200, i32 1200>
  %216 = sitofp <4 x i32> %215 to <4 x double>
  %217 = fmul fast <4 x double> %216, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %218 = extractelement <4 x i64> %211, i32 0
  %219 = shl i64 %218, 3
  %220 = add nuw nsw i64 %219, %210
  %221 = getelementptr i8, i8* %call, i64 %220
  %222 = bitcast i8* %221 to <4 x double>*
  store <4 x double> %217, <4 x double>* %222, align 8, !alias.scope !93, !noalias !95
  %index.next1119 = add i64 %index1118, 4
  %vec.ind.next1123 = add <4 x i64> %vec.ind1122, <i64 4, i64 4, i64 4, i64 4>
  %223 = icmp eq i64 %index.next1119, %205
  br i1 %223, label %polly.loop_exit813, label %vector.body1116, !llvm.loop !98

polly.loop_exit813:                               ; preds = %vector.body1116, %polly.loop_header811
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar808, %203
  br i1 %exitcond1086.not, label %polly.loop_exit807, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_header805, %polly.loop_header811
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_header811 ], [ 0, %polly.loop_header805 ]
  %224 = add nuw nsw i64 %polly.indvar814, %206
  %225 = trunc i64 %224 to i32
  %226 = mul i32 %225, %209
  %227 = add i32 %226, 3
  %228 = urem i32 %227, 1200
  %p_conv31.i = sitofp i32 %228 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %229 = shl i64 %224, 3
  %230 = add nuw nsw i64 %229, %210
  %scevgep817 = getelementptr i8, i8* %call, i64 %230
  %scevgep817818 = bitcast i8* %scevgep817 to double*
  store double %p_div33.i, double* %scevgep817818, align 8, !alias.scope !93, !noalias !95
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar814, %207
  br i1 %exitcond1082.not, label %polly.loop_exit813, label %polly.loop_header811, !llvm.loop !99

polly.loop_header820:                             ; preds = %polly.loop_exit801, %polly.loop_exit828
  %indvars.iv1073 = phi i64 [ %indvars.iv.next1074, %polly.loop_exit828 ], [ 0, %polly.loop_exit801 ]
  %polly.indvar823 = phi i64 [ %polly.indvar_next824, %polly.loop_exit828 ], [ 0, %polly.loop_exit801 ]
  %smin1075 = call i64 @llvm.smin.i64(i64 %indvars.iv1073, i64 -1168)
  %231 = shl nsw i64 %polly.indvar823, 5
  %232 = add nsw i64 %smin1075, 1199
  br label %polly.loop_header826

polly.loop_exit828:                               ; preds = %polly.loop_exit834
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %indvars.iv.next1074 = add nsw i64 %indvars.iv1073, -32
  %exitcond1078.not = icmp eq i64 %polly.indvar_next824, 38
  br i1 %exitcond1078.not, label %polly.loop_header846, label %polly.loop_header820

polly.loop_header826:                             ; preds = %polly.loop_exit834, %polly.loop_header820
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit834 ], [ 0, %polly.loop_header820 ]
  %polly.indvar829 = phi i64 [ %polly.indvar_next830, %polly.loop_exit834 ], [ 0, %polly.loop_header820 ]
  %233 = mul nsw i64 %polly.indvar829, -32
  %smin1131 = call i64 @llvm.smin.i64(i64 %233, i64 -968)
  %234 = add nsw i64 %smin1131, 1000
  %smin1071 = call i64 @llvm.smin.i64(i64 %indvars.iv1069, i64 -968)
  %235 = shl nsw i64 %polly.indvar829, 5
  %236 = add nsw i64 %smin1071, 999
  br label %polly.loop_header832

polly.loop_exit834:                               ; preds = %polly.loop_exit840
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %indvars.iv.next1070 = add nsw i64 %indvars.iv1069, -32
  %exitcond1077.not = icmp eq i64 %polly.indvar_next830, 32
  br i1 %exitcond1077.not, label %polly.loop_exit828, label %polly.loop_header826

polly.loop_header832:                             ; preds = %polly.loop_exit840, %polly.loop_header826
  %polly.indvar835 = phi i64 [ 0, %polly.loop_header826 ], [ %polly.indvar_next836, %polly.loop_exit840 ]
  %237 = add nuw nsw i64 %polly.indvar835, %231
  %238 = trunc i64 %237 to i32
  %239 = mul nuw nsw i64 %237, 8000
  %min.iters.check1132 = icmp eq i64 %234, 0
  br i1 %min.iters.check1132, label %polly.loop_header838, label %vector.ph1133

vector.ph1133:                                    ; preds = %polly.loop_header832
  %broadcast.splatinsert1142 = insertelement <4 x i64> poison, i64 %235, i32 0
  %broadcast.splat1143 = shufflevector <4 x i64> %broadcast.splatinsert1142, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1144 = insertelement <4 x i32> poison, i32 %238, i32 0
  %broadcast.splat1145 = shufflevector <4 x i32> %broadcast.splatinsert1144, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1130

vector.body1130:                                  ; preds = %vector.body1130, %vector.ph1133
  %index1136 = phi i64 [ 0, %vector.ph1133 ], [ %index.next1137, %vector.body1130 ]
  %vec.ind1140 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1133 ], [ %vec.ind.next1141, %vector.body1130 ]
  %240 = add nuw nsw <4 x i64> %vec.ind1140, %broadcast.splat1143
  %241 = trunc <4 x i64> %240 to <4 x i32>
  %242 = mul <4 x i32> %broadcast.splat1145, %241
  %243 = add <4 x i32> %242, <i32 2, i32 2, i32 2, i32 2>
  %244 = urem <4 x i32> %243, <i32 1000, i32 1000, i32 1000, i32 1000>
  %245 = sitofp <4 x i32> %244 to <4 x double>
  %246 = fmul fast <4 x double> %245, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %247 = extractelement <4 x i64> %240, i32 0
  %248 = shl i64 %247, 3
  %249 = add nuw nsw i64 %248, %239
  %250 = getelementptr i8, i8* %call2, i64 %249
  %251 = bitcast i8* %250 to <4 x double>*
  store <4 x double> %246, <4 x double>* %251, align 8, !alias.scope !97, !noalias !100
  %index.next1137 = add i64 %index1136, 4
  %vec.ind.next1141 = add <4 x i64> %vec.ind1140, <i64 4, i64 4, i64 4, i64 4>
  %252 = icmp eq i64 %index.next1137, %234
  br i1 %252, label %polly.loop_exit840, label %vector.body1130, !llvm.loop !101

polly.loop_exit840:                               ; preds = %vector.body1130, %polly.loop_header838
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar835, %232
  br i1 %exitcond1076.not, label %polly.loop_exit834, label %polly.loop_header832

polly.loop_header838:                             ; preds = %polly.loop_header832, %polly.loop_header838
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_header838 ], [ 0, %polly.loop_header832 ]
  %253 = add nuw nsw i64 %polly.indvar841, %235
  %254 = trunc i64 %253 to i32
  %255 = mul i32 %254, %238
  %256 = add i32 %255, 2
  %257 = urem i32 %256, 1000
  %p_conv10.i = sitofp i32 %257 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %258 = shl i64 %253, 3
  %259 = add nuw nsw i64 %258, %239
  %scevgep844 = getelementptr i8, i8* %call2, i64 %259
  %scevgep844845 = bitcast i8* %scevgep844 to double*
  store double %p_div12.i, double* %scevgep844845, align 8, !alias.scope !97, !noalias !100
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar841, %236
  br i1 %exitcond1072.not, label %polly.loop_exit840, label %polly.loop_header838, !llvm.loop !102

polly.loop_header846:                             ; preds = %polly.loop_exit828, %polly.loop_exit854
  %indvars.iv1063 = phi i64 [ %indvars.iv.next1064, %polly.loop_exit854 ], [ 0, %polly.loop_exit828 ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %polly.loop_exit828 ]
  %smin1065 = call i64 @llvm.smin.i64(i64 %indvars.iv1063, i64 -1168)
  %260 = shl nsw i64 %polly.indvar849, 5
  %261 = add nsw i64 %smin1065, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1064 = add nsw i64 %indvars.iv1063, -32
  %exitcond1068.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1068.not, label %init_array.exit, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %262 = mul nsw i64 %polly.indvar855, -32
  %smin1149 = call i64 @llvm.smin.i64(i64 %262, i64 -968)
  %263 = add nsw i64 %smin1149, 1000
  %smin1061 = call i64 @llvm.smin.i64(i64 %indvars.iv1059, i64 -968)
  %264 = shl nsw i64 %polly.indvar855, 5
  %265 = add nsw i64 %smin1061, 999
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, -32
  %exitcond1067.not = icmp eq i64 %polly.indvar_next856, 32
  br i1 %exitcond1067.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %polly.indvar861 = phi i64 [ 0, %polly.loop_header852 ], [ %polly.indvar_next862, %polly.loop_exit866 ]
  %266 = add nuw nsw i64 %polly.indvar861, %260
  %267 = trunc i64 %266 to i32
  %268 = mul nuw nsw i64 %266, 8000
  %min.iters.check1150 = icmp eq i64 %263, 0
  br i1 %min.iters.check1150, label %polly.loop_header864, label %vector.ph1151

vector.ph1151:                                    ; preds = %polly.loop_header858
  %broadcast.splatinsert1160 = insertelement <4 x i64> poison, i64 %264, i32 0
  %broadcast.splat1161 = shufflevector <4 x i64> %broadcast.splatinsert1160, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1162 = insertelement <4 x i32> poison, i32 %267, i32 0
  %broadcast.splat1163 = shufflevector <4 x i32> %broadcast.splatinsert1162, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1148

vector.body1148:                                  ; preds = %vector.body1148, %vector.ph1151
  %index1154 = phi i64 [ 0, %vector.ph1151 ], [ %index.next1155, %vector.body1148 ]
  %vec.ind1158 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1151 ], [ %vec.ind.next1159, %vector.body1148 ]
  %269 = add nuw nsw <4 x i64> %vec.ind1158, %broadcast.splat1161
  %270 = trunc <4 x i64> %269 to <4 x i32>
  %271 = mul <4 x i32> %broadcast.splat1163, %270
  %272 = add <4 x i32> %271, <i32 1, i32 1, i32 1, i32 1>
  %273 = urem <4 x i32> %272, <i32 1200, i32 1200, i32 1200, i32 1200>
  %274 = sitofp <4 x i32> %273 to <4 x double>
  %275 = fmul fast <4 x double> %274, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %276 = extractelement <4 x i64> %269, i32 0
  %277 = shl i64 %276, 3
  %278 = add nuw nsw i64 %277, %268
  %279 = getelementptr i8, i8* %call1, i64 %278
  %280 = bitcast i8* %279 to <4 x double>*
  store <4 x double> %275, <4 x double>* %280, align 8, !alias.scope !96, !noalias !103
  %index.next1155 = add i64 %index1154, 4
  %vec.ind.next1159 = add <4 x i64> %vec.ind1158, <i64 4, i64 4, i64 4, i64 4>
  %281 = icmp eq i64 %index.next1155, %263
  br i1 %281, label %polly.loop_exit866, label %vector.body1148, !llvm.loop !104

polly.loop_exit866:                               ; preds = %vector.body1148, %polly.loop_header864
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar861, %261
  br i1 %exitcond1066.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_header858, %polly.loop_header864
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_header864 ], [ 0, %polly.loop_header858 ]
  %282 = add nuw nsw i64 %polly.indvar867, %264
  %283 = trunc i64 %282 to i32
  %284 = mul i32 %283, %267
  %285 = add i32 %284, 1
  %286 = urem i32 %285, 1200
  %p_conv.i = sitofp i32 %286 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %287 = shl i64 %282, 3
  %288 = add nuw nsw i64 %287, %268
  %scevgep871 = getelementptr i8, i8* %call1, i64 %288
  %scevgep871872 = bitcast i8* %scevgep871 to double*
  store double %p_div.i, double* %scevgep871872, align 8, !alias.scope !96, !noalias !103
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar867, %265
  br i1 %exitcond1062.not, label %polly.loop_exit866, label %polly.loop_header864, !llvm.loop !105
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
!25 = !{!"llvm.loop.tile.size", i32 32}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 20}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41, !42, !43}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.data.pack.enable", i1 true}
!42 = !{!"llvm.data.pack.array", !21}
!43 = !{!"llvm.data.pack.allocate", !"malloc"}
!44 = distinct !{!44, !12, !23, !45, !46, !47, !34, !48, !51}
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
