; ModuleID = 'syr2k_exhaustive/mmp_all_XL_4970.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_4970.c"
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
  br i1 %57, label %middle.block1187, label %vector.body1189, !llvm.loop !55

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
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

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
  br i1 %68, label %middle.block1213, label %vector.body1215, !llvm.loop !57

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
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

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
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
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
  %wide.load1238 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1238, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1235 = add i64 %index1234, 4
  %95 = icmp eq i64 %index.next1235, %n.vec1233
  br i1 %95, label %middle.block1225, label %vector.body1227, !llvm.loop !69

middle.block1225:                                 ; preds = %vector.body1227
  %cmp.n1237 = icmp eq i64 %88, %n.vec1233
  br i1 %cmp.n1237, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1225
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1233, %middle.block1225 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1225
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1008.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1229 = add i64 %indvar1228, 1
  br i1 %exitcond1008.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond1007.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1007.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv1002 = phi i64 [ 1, %polly.loop_header199.preheader ], [ %indvars.iv.next1003, %polly.loop_exit207 ]
  %indvars.iv991 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next992, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %99, %polly.loop_exit207 ]
  %97 = lshr i64 %indvars.iv1002, 2
  %98 = sub nsw i64 %indvars.iv1002, %97
  %99 = add nuw nsw i64 %polly.indvar202, 1
  %pexp.p_div_q = lshr i64 %99, 2
  %polly.loop_guard.not = icmp ult i64 %polly.indvar202, %pexp.p_div_q
  %100 = mul nsw i64 %polly.indvar202, -96
  %101 = icmp slt i64 %100, -1104
  %102 = select i1 %101, i64 %100, i64 -1104
  %103 = add nsw i64 %102, 1199
  %104 = mul nuw nsw i64 %polly.indvar202, 96
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %indvars.iv.next = add nsw i64 %indvars.iv, -96
  %indvars.iv.next992 = add nuw nsw i64 %indvars.iv991, 96
  %indvars.iv.next1003 = add nuw nsw i64 %indvars.iv1002, 1
  %exitcond1006.not = icmp eq i64 %99, 13
  br i1 %exitcond1006.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  br i1 %polly.loop_guard.not, label %polly.loop_exit213, label %polly.loop_header211.preheader

polly.loop_header211.preheader:                   ; preds = %polly.loop_header205
  %105 = shl nsw i64 %polly.indvar208, 2
  %106 = or i64 %105, 1
  %107 = or i64 %105, 2
  %108 = or i64 %105, 3
  %109 = shl i64 %polly.indvar208, 5
  %110 = shl i64 %polly.indvar208, 5
  %111 = or i64 %110, 8
  %112 = shl i64 %polly.indvar208, 5
  %113 = or i64 %112, 16
  %114 = shl i64 %polly.indvar208, 5
  %115 = or i64 %114, 24
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit220, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond1005.not = icmp eq i64 %polly.indvar_next209, 250
  br i1 %exitcond1005.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211.preheader, %polly.loop_exit220
  %indvars.iv993 = phi i64 [ %indvars.iv991, %polly.loop_header211.preheader ], [ %indvars.iv.next994, %polly.loop_exit220 ]
  %indvars.iv989 = phi i64 [ %indvars.iv, %polly.loop_header211.preheader ], [ %indvars.iv.next990, %polly.loop_exit220 ]
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header211.preheader ], [ %polly.indvar_next215, %polly.loop_exit220 ]
  %116 = shl nsw i64 %polly.indvar214, 7
  %117 = add nsw i64 %116, %100
  %118 = icmp sgt i64 %117, 0
  %119 = select i1 %118, i64 %117, i64 0
  %polly.loop_guard221.not = icmp sgt i64 %119, %103
  br i1 %polly.loop_guard221.not, label %polly.loop_exit220, label %polly.loop_header218.preheader

polly.loop_header218.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv989, i64 0)
  %120 = add i64 %smax, %indvars.iv993
  %121 = sub nsw i64 %104, %116
  %122 = add nuw nsw i64 %116, 128
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_exit252, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next990 = add nsw i64 %indvars.iv989, 128
  %indvars.iv.next994 = add nsw i64 %indvars.iv993, -128
  %exitcond1004.not = icmp eq i64 %polly.indvar_next215, %98
  br i1 %exitcond1004.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header218:                             ; preds = %polly.loop_header218.preheader, %polly.loop_exit252
  %indvars.iv995 = phi i64 [ %120, %polly.loop_header218.preheader ], [ %indvars.iv.next996, %polly.loop_exit252 ]
  %polly.indvar222 = phi i64 [ %119, %polly.loop_header218.preheader ], [ %polly.indvar_next223, %polly.loop_exit252 ]
  %smin999 = call i64 @llvm.smin.i64(i64 %indvars.iv995, i64 127)
  %123 = add nsw i64 %polly.indvar222, %121
  %polly.loop_guard2351093 = icmp sgt i64 %123, -1
  %124 = add nuw nsw i64 %polly.indvar222, %104
  %.not = icmp ult i64 %124, %122
  %polly.access.mul.call1244 = mul nsw i64 %124, 1000
  %125 = add nuw i64 %polly.access.mul.call1244, %105
  br i1 %polly.loop_guard2351093, label %polly.loop_header232.us, label %polly.loop_header218.split

polly.loop_header232.us:                          ; preds = %polly.loop_header218, %polly.loop_header232.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_header232.us ], [ 0, %polly.loop_header218 ]
  %126 = add nuw nsw i64 %polly.indvar236.us, %116
  %polly.access.mul.call1240.us = mul nuw nsw i64 %126, 1000
  %polly.access.add.call1241.us = add nuw nsw i64 %105, %polly.access.mul.call1240.us
  %polly.access.call1242.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1241.us
  %polly.access.call1242.load.us = load double, double* %polly.access.call1242.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar236.us
  store double %polly.access.call1242.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %exitcond997.not = icmp eq i64 %polly.indvar236.us, %smin999
  br i1 %exitcond997.not, label %polly.cond.loopexit.us, label %polly.loop_header232.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.call1246.us = getelementptr double, double* %polly.access.cast.call1671, i64 %125
  %polly.access.call1246.load.us = load double, double* %polly.access.call1246.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.Packed_MemRef_call1249.us = getelementptr double, double* %Packed_MemRef_call1, i64 %123
  store double %polly.access.call1246.load.us, double* %polly.access.Packed_MemRef_call1249.us, align 8
  br label %polly.loop_header232.us.1.preheader

polly.cond.loopexit.us:                           ; preds = %polly.loop_header232.us
  br i1 %.not, label %polly.loop_header232.us.1.preheader, label %polly.then.us

polly.loop_header232.us.1.preheader:              ; preds = %polly.then.us, %polly.cond.loopexit.us
  br label %polly.loop_header232.us.1

polly.loop_header218.split:                       ; preds = %polly.loop_header218
  br i1 %.not, label %polly.loop_exit252, label %polly.loop_header225.preheader

polly.loop_header225.preheader:                   ; preds = %polly.loop_header218.split
  %polly.access.call1246 = getelementptr double, double* %polly.access.cast.call1671, i64 %125
  %polly.access.call1246.load = load double, double* %polly.access.call1246, align 8, !alias.scope !66, !noalias !72
  %polly.access.Packed_MemRef_call1249 = getelementptr double, double* %Packed_MemRef_call1, i64 %123
  store double %polly.access.call1246.load, double* %polly.access.Packed_MemRef_call1249, align 8
  %polly.access.add.call1245.1 = or i64 %125, 1
  %polly.access.call1246.1 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.1
  %polly.access.call1246.load.1 = load double, double* %polly.access.call1246.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1248.1 = add nsw i64 %123, 1200
  %polly.access.Packed_MemRef_call1249.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.1
  store double %polly.access.call1246.load.1, double* %polly.access.Packed_MemRef_call1249.1, align 8
  %polly.access.add.call1245.2 = or i64 %125, 2
  %polly.access.call1246.2 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.2
  %polly.access.call1246.load.2 = load double, double* %polly.access.call1246.2, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1248.2 = add nsw i64 %123, 2400
  %polly.access.Packed_MemRef_call1249.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.2
  store double %polly.access.call1246.load.2, double* %polly.access.Packed_MemRef_call1249.2, align 8
  %polly.access.add.call1245.3 = or i64 %125, 3
  %polly.access.call1246.3 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.3
  %polly.access.call1246.load.3 = load double, double* %polly.access.call1246.3, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1248.3 = add nsw i64 %123, 3600
  %polly.access.Packed_MemRef_call1249.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.3
  store double %polly.access.call1246.load.3, double* %polly.access.Packed_MemRef_call1249.3, align 8
  br label %polly.loop_exit252

polly.loop_exit252:                               ; preds = %polly.loop_header257.us.3, %polly.loop_header218.split, %polly.loop_header225.preheader, %polly.loop_header250.preheader
  %polly.indvar_next223 = add nuw nsw i64 %polly.indvar222, 1
  %polly.loop_cond224.not.not = icmp ult i64 %polly.indvar222, %103
  %indvars.iv.next996 = add i64 %indvars.iv995, 1
  br i1 %polly.loop_cond224.not.not, label %polly.loop_header218, label %polly.loop_exit220

polly.loop_header250.preheader:                   ; preds = %polly.cond.loopexit.us.3, %polly.then.us.3
  %127 = mul i64 %124, 8000
  %128 = mul i64 %124, 9600
  br i1 %polly.loop_guard2351093, label %polly.loop_header250.us.preheader, label %polly.loop_exit252

polly.loop_header250.us.preheader:                ; preds = %polly.loop_header250.preheader
  %129 = add i64 %109, %127
  %scevgep268.us = getelementptr i8, i8* %call2, i64 %129
  %scevgep268269.us = bitcast i8* %scevgep268.us to double*
  %_p_scalar_270.us = load double, double* %scevgep268269.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.Packed_MemRef_call1276.us = getelementptr double, double* %Packed_MemRef_call1, i64 %123
  %_p_scalar_277.us = load double, double* %polly.access.Packed_MemRef_call1276.us, align 8
  br label %polly.loop_header257.us

polly.loop_header257.us:                          ; preds = %polly.loop_header250.us.preheader, %polly.loop_header257.us
  %polly.indvar261.us = phi i64 [ %polly.indvar_next262.us, %polly.loop_header257.us ], [ 0, %polly.loop_header250.us.preheader ]
  %130 = add nuw nsw i64 %polly.indvar261.us, %116
  %polly.access.Packed_MemRef_call1266.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar261.us
  %_p_scalar_267.us = load double, double* %polly.access.Packed_MemRef_call1266.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_270.us, %_p_scalar_267.us
  %131 = mul nuw nsw i64 %130, 8000
  %132 = add nuw nsw i64 %131, %109
  %scevgep271.us = getelementptr i8, i8* %call2, i64 %132
  %scevgep271272.us = bitcast i8* %scevgep271.us to double*
  %_p_scalar_273.us = load double, double* %scevgep271272.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_277.us, %_p_scalar_273.us
  %133 = shl i64 %130, 3
  %134 = add i64 %133, %128
  %scevgep278.us = getelementptr i8, i8* %call, i64 %134
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
  %135 = add i64 %111, %127
  %scevgep268.us.1 = getelementptr i8, i8* %call2, i64 %135
  %scevgep268269.us.1 = bitcast i8* %scevgep268.us.1 to double*
  %_p_scalar_270.us.1 = load double, double* %scevgep268269.us.1, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1275.us.1 = add nsw i64 %123, 1200
  %polly.access.Packed_MemRef_call1276.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.us.1
  %_p_scalar_277.us.1 = load double, double* %polly.access.Packed_MemRef_call1276.us.1, align 8
  br label %polly.loop_header257.us.1

polly.start283:                                   ; preds = %kernel_syr2k.exit
  %malloccall285 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header369

polly.exiting284:                                 ; preds = %polly.loop_exit393
  tail call void @free(i8* %malloccall285)
  br label %kernel_syr2k.exit90

polly.loop_header369:                             ; preds = %polly.loop_exit377, %polly.start283
  %indvar1202 = phi i64 [ %indvar.next1203, %polly.loop_exit377 ], [ 0, %polly.start283 ]
  %polly.indvar372 = phi i64 [ %polly.indvar_next373, %polly.loop_exit377 ], [ 1, %polly.start283 ]
  %136 = add i64 %indvar1202, 1
  %137 = mul nuw nsw i64 %polly.indvar372, 9600
  %scevgep381 = getelementptr i8, i8* %call, i64 %137
  %min.iters.check1204 = icmp ult i64 %136, 4
  br i1 %min.iters.check1204, label %polly.loop_header375.preheader, label %vector.ph1205

vector.ph1205:                                    ; preds = %polly.loop_header369
  %n.vec1207 = and i64 %136, -4
  br label %vector.body1201

vector.body1201:                                  ; preds = %vector.body1201, %vector.ph1205
  %index1208 = phi i64 [ 0, %vector.ph1205 ], [ %index.next1209, %vector.body1201 ]
  %138 = shl nuw nsw i64 %index1208, 3
  %139 = getelementptr i8, i8* %scevgep381, i64 %138
  %140 = bitcast i8* %139 to <4 x double>*
  %wide.load1212 = load <4 x double>, <4 x double>* %140, align 8, !alias.scope !74, !noalias !76
  %141 = fmul fast <4 x double> %wide.load1212, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %142 = bitcast i8* %139 to <4 x double>*
  store <4 x double> %141, <4 x double>* %142, align 8, !alias.scope !74, !noalias !76
  %index.next1209 = add i64 %index1208, 4
  %143 = icmp eq i64 %index.next1209, %n.vec1207
  br i1 %143, label %middle.block1199, label %vector.body1201, !llvm.loop !80

middle.block1199:                                 ; preds = %vector.body1201
  %cmp.n1211 = icmp eq i64 %136, %n.vec1207
  br i1 %cmp.n1211, label %polly.loop_exit377, label %polly.loop_header375.preheader

polly.loop_header375.preheader:                   ; preds = %polly.loop_header369, %middle.block1199
  %polly.indvar378.ph = phi i64 [ 0, %polly.loop_header369 ], [ %n.vec1207, %middle.block1199 ]
  br label %polly.loop_header375

polly.loop_exit377:                               ; preds = %polly.loop_header375, %middle.block1199
  %polly.indvar_next373 = add nuw nsw i64 %polly.indvar372, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next373, 1200
  %indvar.next1203 = add i64 %indvar1202, 1
  br i1 %exitcond1033.not, label %polly.loop_header385.preheader, label %polly.loop_header369

polly.loop_header385.preheader:                   ; preds = %polly.loop_exit377
  %Packed_MemRef_call1286 = bitcast i8* %malloccall285 to double*
  br label %polly.loop_header385

polly.loop_header375:                             ; preds = %polly.loop_header375.preheader, %polly.loop_header375
  %polly.indvar378 = phi i64 [ %polly.indvar_next379, %polly.loop_header375 ], [ %polly.indvar378.ph, %polly.loop_header375.preheader ]
  %144 = shl nuw nsw i64 %polly.indvar378, 3
  %scevgep382 = getelementptr i8, i8* %scevgep381, i64 %144
  %scevgep382383 = bitcast i8* %scevgep382 to double*
  %_p_scalar_384 = load double, double* %scevgep382383, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_384, 1.200000e+00
  store double %p_mul.i57, double* %scevgep382383, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next379 = add nuw nsw i64 %polly.indvar378, 1
  %exitcond1032.not = icmp eq i64 %polly.indvar_next379, %polly.indvar372
  br i1 %exitcond1032.not, label %polly.loop_exit377, label %polly.loop_header375, !llvm.loop !81

polly.loop_header385:                             ; preds = %polly.loop_header385.preheader, %polly.loop_exit393
  %indvars.iv1027 = phi i64 [ 1, %polly.loop_header385.preheader ], [ %indvars.iv.next1028, %polly.loop_exit393 ]
  %indvars.iv1015 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %indvars.iv.next1016, %polly.loop_exit393 ]
  %indvars.iv1010 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %indvars.iv.next1011, %polly.loop_exit393 ]
  %polly.indvar388 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %147, %polly.loop_exit393 ]
  %145 = lshr i64 %indvars.iv1027, 2
  %146 = sub nsw i64 %indvars.iv1027, %145
  %147 = add nuw nsw i64 %polly.indvar388, 1
  %pexp.p_div_q397 = lshr i64 %147, 2
  %polly.loop_guard402.not = icmp ult i64 %polly.indvar388, %pexp.p_div_q397
  %148 = mul nsw i64 %polly.indvar388, -96
  %149 = icmp slt i64 %148, -1104
  %150 = select i1 %149, i64 %148, i64 -1104
  %151 = add nsw i64 %150, 1199
  %152 = mul nuw nsw i64 %polly.indvar388, 96
  br label %polly.loop_header391

polly.loop_exit393:                               ; preds = %polly.loop_exit401
  %indvars.iv.next1011 = add nsw i64 %indvars.iv1010, -96
  %indvars.iv.next1016 = add nuw nsw i64 %indvars.iv1015, 96
  %indvars.iv.next1028 = add nuw nsw i64 %indvars.iv1027, 1
  %exitcond1031.not = icmp eq i64 %147, 13
  br i1 %exitcond1031.not, label %polly.exiting284, label %polly.loop_header385

polly.loop_header391:                             ; preds = %polly.loop_exit401, %polly.loop_header385
  %polly.indvar394 = phi i64 [ 0, %polly.loop_header385 ], [ %polly.indvar_next395, %polly.loop_exit401 ]
  br i1 %polly.loop_guard402.not, label %polly.loop_exit401, label %polly.loop_header399.preheader

polly.loop_header399.preheader:                   ; preds = %polly.loop_header391
  %153 = shl nsw i64 %polly.indvar394, 2
  %154 = or i64 %153, 1
  %155 = or i64 %153, 2
  %156 = or i64 %153, 3
  %157 = shl i64 %polly.indvar394, 5
  %158 = shl i64 %polly.indvar394, 5
  %159 = or i64 %158, 8
  %160 = shl i64 %polly.indvar394, 5
  %161 = or i64 %160, 16
  %162 = shl i64 %polly.indvar394, 5
  %163 = or i64 %162, 24
  br label %polly.loop_header399

polly.loop_exit401:                               ; preds = %polly.loop_exit409, %polly.loop_header391
  %polly.indvar_next395 = add nuw nsw i64 %polly.indvar394, 1
  %exitcond1030.not = icmp eq i64 %polly.indvar_next395, 250
  br i1 %exitcond1030.not, label %polly.loop_exit393, label %polly.loop_header391

polly.loop_header399:                             ; preds = %polly.loop_header399.preheader, %polly.loop_exit409
  %indvars.iv1017 = phi i64 [ %indvars.iv1015, %polly.loop_header399.preheader ], [ %indvars.iv.next1018, %polly.loop_exit409 ]
  %indvars.iv1012 = phi i64 [ %indvars.iv1010, %polly.loop_header399.preheader ], [ %indvars.iv.next1013, %polly.loop_exit409 ]
  %polly.indvar403 = phi i64 [ 0, %polly.loop_header399.preheader ], [ %polly.indvar_next404, %polly.loop_exit409 ]
  %164 = shl nsw i64 %polly.indvar403, 7
  %165 = add nsw i64 %164, %148
  %166 = icmp sgt i64 %165, 0
  %167 = select i1 %166, i64 %165, i64 0
  %polly.loop_guard410.not = icmp sgt i64 %167, %151
  br i1 %polly.loop_guard410.not, label %polly.loop_exit409, label %polly.loop_header407.preheader

polly.loop_header407.preheader:                   ; preds = %polly.loop_header399
  %smax1014 = call i64 @llvm.smax.i64(i64 %indvars.iv1012, i64 0)
  %168 = add i64 %smax1014, %indvars.iv1017
  %169 = sub nsw i64 %152, %164
  %170 = add nuw nsw i64 %164, 128
  br label %polly.loop_header407

polly.loop_exit409:                               ; preds = %polly.loop_exit445, %polly.loop_header399
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %indvars.iv.next1013 = add nsw i64 %indvars.iv1012, 128
  %indvars.iv.next1018 = add nsw i64 %indvars.iv1017, -128
  %exitcond1029.not = icmp eq i64 %polly.indvar_next404, %146
  br i1 %exitcond1029.not, label %polly.loop_exit401, label %polly.loop_header399

polly.loop_header407:                             ; preds = %polly.loop_header407.preheader, %polly.loop_exit445
  %indvars.iv1019 = phi i64 [ %168, %polly.loop_header407.preheader ], [ %indvars.iv.next1020, %polly.loop_exit445 ]
  %polly.indvar411 = phi i64 [ %167, %polly.loop_header407.preheader ], [ %polly.indvar_next412, %polly.loop_exit445 ]
  %smin1024 = call i64 @llvm.smin.i64(i64 %indvars.iv1019, i64 127)
  %171 = add nsw i64 %polly.indvar411, %169
  %polly.loop_guard4241094 = icmp sgt i64 %171, -1
  %172 = add nuw nsw i64 %polly.indvar411, %152
  %.not873 = icmp ult i64 %172, %170
  %polly.access.mul.call1437 = mul nsw i64 %172, 1000
  %173 = add nuw i64 %polly.access.mul.call1437, %153
  br i1 %polly.loop_guard4241094, label %polly.loop_header421.us, label %polly.loop_header407.split

polly.loop_header421.us:                          ; preds = %polly.loop_header407, %polly.loop_header421.us
  %polly.indvar425.us = phi i64 [ %polly.indvar_next426.us, %polly.loop_header421.us ], [ 0, %polly.loop_header407 ]
  %174 = add nuw nsw i64 %polly.indvar425.us, %164
  %polly.access.mul.call1429.us = mul nuw nsw i64 %174, 1000
  %polly.access.add.call1430.us = add nuw nsw i64 %153, %polly.access.mul.call1429.us
  %polly.access.call1431.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1430.us
  %polly.access.call1431.load.us = load double, double* %polly.access.call1431.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.Packed_MemRef_call1286.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.indvar425.us
  store double %polly.access.call1431.load.us, double* %polly.access.Packed_MemRef_call1286.us, align 8
  %polly.indvar_next426.us = add nuw nsw i64 %polly.indvar425.us, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar425.us, %smin1024
  br i1 %exitcond1022.not, label %polly.cond432.loopexit.us, label %polly.loop_header421.us

polly.then434.us:                                 ; preds = %polly.cond432.loopexit.us
  %polly.access.call1439.us = getelementptr double, double* %polly.access.cast.call1671, i64 %173
  %polly.access.call1439.load.us = load double, double* %polly.access.call1439.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.Packed_MemRef_call1286442.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %171
  store double %polly.access.call1439.load.us, double* %polly.access.Packed_MemRef_call1286442.us, align 8
  br label %polly.loop_header421.us.1.preheader

polly.cond432.loopexit.us:                        ; preds = %polly.loop_header421.us
  br i1 %.not873, label %polly.loop_header421.us.1.preheader, label %polly.then434.us

polly.loop_header421.us.1.preheader:              ; preds = %polly.then434.us, %polly.cond432.loopexit.us
  br label %polly.loop_header421.us.1

polly.loop_header407.split:                       ; preds = %polly.loop_header407
  br i1 %.not873, label %polly.loop_exit445, label %polly.loop_header414.preheader

polly.loop_header414.preheader:                   ; preds = %polly.loop_header407.split
  %polly.access.call1439 = getelementptr double, double* %polly.access.cast.call1671, i64 %173
  %polly.access.call1439.load = load double, double* %polly.access.call1439, align 8, !alias.scope !77, !noalias !82
  %polly.access.Packed_MemRef_call1286442 = getelementptr double, double* %Packed_MemRef_call1286, i64 %171
  store double %polly.access.call1439.load, double* %polly.access.Packed_MemRef_call1286442, align 8
  %polly.access.add.call1438.1 = or i64 %173, 1
  %polly.access.call1439.1 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.1
  %polly.access.call1439.load.1 = load double, double* %polly.access.call1439.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1286441.1 = add nsw i64 %171, 1200
  %polly.access.Packed_MemRef_call1286442.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.1
  store double %polly.access.call1439.load.1, double* %polly.access.Packed_MemRef_call1286442.1, align 8
  %polly.access.add.call1438.2 = or i64 %173, 2
  %polly.access.call1439.2 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.2
  %polly.access.call1439.load.2 = load double, double* %polly.access.call1439.2, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1286441.2 = add nsw i64 %171, 2400
  %polly.access.Packed_MemRef_call1286442.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.2
  store double %polly.access.call1439.load.2, double* %polly.access.Packed_MemRef_call1286442.2, align 8
  %polly.access.add.call1438.3 = or i64 %173, 3
  %polly.access.call1439.3 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.3
  %polly.access.call1439.load.3 = load double, double* %polly.access.call1439.3, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1286441.3 = add nsw i64 %171, 3600
  %polly.access.Packed_MemRef_call1286442.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.3
  store double %polly.access.call1439.load.3, double* %polly.access.Packed_MemRef_call1286442.3, align 8
  br label %polly.loop_exit445

polly.loop_exit445:                               ; preds = %polly.loop_header450.us.3, %polly.loop_header407.split, %polly.loop_header414.preheader, %polly.loop_header443.preheader
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %polly.loop_cond413.not.not = icmp ult i64 %polly.indvar411, %151
  %indvars.iv.next1020 = add i64 %indvars.iv1019, 1
  br i1 %polly.loop_cond413.not.not, label %polly.loop_header407, label %polly.loop_exit409

polly.loop_header443.preheader:                   ; preds = %polly.cond432.loopexit.us.3, %polly.then434.us.3
  %175 = mul i64 %172, 8000
  %176 = mul i64 %172, 9600
  br i1 %polly.loop_guard4241094, label %polly.loop_header443.us.preheader, label %polly.loop_exit445

polly.loop_header443.us.preheader:                ; preds = %polly.loop_header443.preheader
  %177 = add i64 %157, %175
  %scevgep461.us = getelementptr i8, i8* %call2, i64 %177
  %scevgep461462.us = bitcast i8* %scevgep461.us to double*
  %_p_scalar_463.us = load double, double* %scevgep461462.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.Packed_MemRef_call1286469.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %171
  %_p_scalar_470.us = load double, double* %polly.access.Packed_MemRef_call1286469.us, align 8
  br label %polly.loop_header450.us

polly.loop_header450.us:                          ; preds = %polly.loop_header443.us.preheader, %polly.loop_header450.us
  %polly.indvar454.us = phi i64 [ %polly.indvar_next455.us, %polly.loop_header450.us ], [ 0, %polly.loop_header443.us.preheader ]
  %178 = add nuw nsw i64 %polly.indvar454.us, %164
  %polly.access.Packed_MemRef_call1286459.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.indvar454.us
  %_p_scalar_460.us = load double, double* %polly.access.Packed_MemRef_call1286459.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_463.us, %_p_scalar_460.us
  %179 = mul nuw nsw i64 %178, 8000
  %180 = add nuw nsw i64 %179, %157
  %scevgep464.us = getelementptr i8, i8* %call2, i64 %180
  %scevgep464465.us = bitcast i8* %scevgep464.us to double*
  %_p_scalar_466.us = load double, double* %scevgep464465.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_470.us, %_p_scalar_466.us
  %181 = shl i64 %178, 3
  %182 = add i64 %181, %176
  %scevgep471.us = getelementptr i8, i8* %call, i64 %182
  %scevgep471472.us = bitcast i8* %scevgep471.us to double*
  %_p_scalar_473.us = load double, double* %scevgep471472.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_473.us
  store double %p_add42.i79.us, double* %scevgep471472.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next455.us = add nuw nsw i64 %polly.indvar454.us, 1
  %exitcond1025.not = icmp eq i64 %polly.indvar454.us, %smin1024
  br i1 %exitcond1025.not, label %polly.loop_exit452.loopexit.us, label %polly.loop_header450.us

polly.loop_exit452.loopexit.us:                   ; preds = %polly.loop_header450.us
  %183 = add i64 %159, %175
  %scevgep461.us.1 = getelementptr i8, i8* %call2, i64 %183
  %scevgep461462.us.1 = bitcast i8* %scevgep461.us.1 to double*
  %_p_scalar_463.us.1 = load double, double* %scevgep461462.us.1, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1286468.us.1 = add nsw i64 %171, 1200
  %polly.access.Packed_MemRef_call1286469.us.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286468.us.1
  %_p_scalar_470.us.1 = load double, double* %polly.access.Packed_MemRef_call1286469.us.1, align 8
  br label %polly.loop_header450.us.1

polly.start476:                                   ; preds = %init_array.exit
  %malloccall478 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header562

polly.exiting477:                                 ; preds = %polly.loop_exit586
  tail call void @free(i8* %malloccall478)
  br label %kernel_syr2k.exit

polly.loop_header562:                             ; preds = %polly.loop_exit570, %polly.start476
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit570 ], [ 0, %polly.start476 ]
  %polly.indvar565 = phi i64 [ %polly.indvar_next566, %polly.loop_exit570 ], [ 1, %polly.start476 ]
  %184 = add i64 %indvar, 1
  %185 = mul nuw nsw i64 %polly.indvar565, 9600
  %scevgep574 = getelementptr i8, i8* %call, i64 %185
  %min.iters.check1178 = icmp ult i64 %184, 4
  br i1 %min.iters.check1178, label %polly.loop_header568.preheader, label %vector.ph1179

vector.ph1179:                                    ; preds = %polly.loop_header562
  %n.vec1181 = and i64 %184, -4
  br label %vector.body1177

vector.body1177:                                  ; preds = %vector.body1177, %vector.ph1179
  %index1182 = phi i64 [ 0, %vector.ph1179 ], [ %index.next1183, %vector.body1177 ]
  %186 = shl nuw nsw i64 %index1182, 3
  %187 = getelementptr i8, i8* %scevgep574, i64 %186
  %188 = bitcast i8* %187 to <4 x double>*
  %wide.load1186 = load <4 x double>, <4 x double>* %188, align 8, !alias.scope !84, !noalias !86
  %189 = fmul fast <4 x double> %wide.load1186, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %190 = bitcast i8* %187 to <4 x double>*
  store <4 x double> %189, <4 x double>* %190, align 8, !alias.scope !84, !noalias !86
  %index.next1183 = add i64 %index1182, 4
  %191 = icmp eq i64 %index.next1183, %n.vec1181
  br i1 %191, label %middle.block1175, label %vector.body1177, !llvm.loop !90

middle.block1175:                                 ; preds = %vector.body1177
  %cmp.n1185 = icmp eq i64 %184, %n.vec1181
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
  %192 = shl nuw nsw i64 %polly.indvar571, 3
  %scevgep575 = getelementptr i8, i8* %scevgep574, i64 %192
  %scevgep575576 = bitcast i8* %scevgep575 to double*
  %_p_scalar_577 = load double, double* %scevgep575576, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_577, 1.200000e+00
  store double %p_mul.i, double* %scevgep575576, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next572 = add nuw nsw i64 %polly.indvar571, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar_next572, %polly.indvar565
  br i1 %exitcond1057.not, label %polly.loop_exit570, label %polly.loop_header568, !llvm.loop !91

polly.loop_header578:                             ; preds = %polly.loop_header578.preheader, %polly.loop_exit586
  %indvars.iv1052 = phi i64 [ 1, %polly.loop_header578.preheader ], [ %indvars.iv.next1053, %polly.loop_exit586 ]
  %indvars.iv1040 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %indvars.iv.next1041, %polly.loop_exit586 ]
  %indvars.iv1035 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %indvars.iv.next1036, %polly.loop_exit586 ]
  %polly.indvar581 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %195, %polly.loop_exit586 ]
  %193 = lshr i64 %indvars.iv1052, 2
  %194 = sub nsw i64 %indvars.iv1052, %193
  %195 = add nuw nsw i64 %polly.indvar581, 1
  %pexp.p_div_q590 = lshr i64 %195, 2
  %polly.loop_guard595.not = icmp ult i64 %polly.indvar581, %pexp.p_div_q590
  %196 = mul nsw i64 %polly.indvar581, -96
  %197 = icmp slt i64 %196, -1104
  %198 = select i1 %197, i64 %196, i64 -1104
  %199 = add nsw i64 %198, 1199
  %200 = mul nuw nsw i64 %polly.indvar581, 96
  br label %polly.loop_header584

polly.loop_exit586:                               ; preds = %polly.loop_exit594
  %indvars.iv.next1036 = add nsw i64 %indvars.iv1035, -96
  %indvars.iv.next1041 = add nuw nsw i64 %indvars.iv1040, 96
  %indvars.iv.next1053 = add nuw nsw i64 %indvars.iv1052, 1
  %exitcond1056.not = icmp eq i64 %195, 13
  br i1 %exitcond1056.not, label %polly.exiting477, label %polly.loop_header578

polly.loop_header584:                             ; preds = %polly.loop_exit594, %polly.loop_header578
  %polly.indvar587 = phi i64 [ 0, %polly.loop_header578 ], [ %polly.indvar_next588, %polly.loop_exit594 ]
  br i1 %polly.loop_guard595.not, label %polly.loop_exit594, label %polly.loop_header592.preheader

polly.loop_header592.preheader:                   ; preds = %polly.loop_header584
  %201 = shl nsw i64 %polly.indvar587, 2
  %202 = or i64 %201, 1
  %203 = or i64 %201, 2
  %204 = or i64 %201, 3
  %205 = shl i64 %polly.indvar587, 5
  %206 = shl i64 %polly.indvar587, 5
  %207 = or i64 %206, 8
  %208 = shl i64 %polly.indvar587, 5
  %209 = or i64 %208, 16
  %210 = shl i64 %polly.indvar587, 5
  %211 = or i64 %210, 24
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_exit602, %polly.loop_header584
  %polly.indvar_next588 = add nuw nsw i64 %polly.indvar587, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar_next588, 250
  br i1 %exitcond1055.not, label %polly.loop_exit586, label %polly.loop_header584

polly.loop_header592:                             ; preds = %polly.loop_header592.preheader, %polly.loop_exit602
  %indvars.iv1042 = phi i64 [ %indvars.iv1040, %polly.loop_header592.preheader ], [ %indvars.iv.next1043, %polly.loop_exit602 ]
  %indvars.iv1037 = phi i64 [ %indvars.iv1035, %polly.loop_header592.preheader ], [ %indvars.iv.next1038, %polly.loop_exit602 ]
  %polly.indvar596 = phi i64 [ 0, %polly.loop_header592.preheader ], [ %polly.indvar_next597, %polly.loop_exit602 ]
  %212 = shl nsw i64 %polly.indvar596, 7
  %213 = add nsw i64 %212, %196
  %214 = icmp sgt i64 %213, 0
  %215 = select i1 %214, i64 %213, i64 0
  %polly.loop_guard603.not = icmp sgt i64 %215, %199
  br i1 %polly.loop_guard603.not, label %polly.loop_exit602, label %polly.loop_header600.preheader

polly.loop_header600.preheader:                   ; preds = %polly.loop_header592
  %smax1039 = call i64 @llvm.smax.i64(i64 %indvars.iv1037, i64 0)
  %216 = add i64 %smax1039, %indvars.iv1042
  %217 = sub nsw i64 %200, %212
  %218 = add nuw nsw i64 %212, 128
  br label %polly.loop_header600

polly.loop_exit602:                               ; preds = %polly.loop_exit638, %polly.loop_header592
  %polly.indvar_next597 = add nuw nsw i64 %polly.indvar596, 1
  %indvars.iv.next1038 = add nsw i64 %indvars.iv1037, 128
  %indvars.iv.next1043 = add nsw i64 %indvars.iv1042, -128
  %exitcond1054.not = icmp eq i64 %polly.indvar_next597, %194
  br i1 %exitcond1054.not, label %polly.loop_exit594, label %polly.loop_header592

polly.loop_header600:                             ; preds = %polly.loop_header600.preheader, %polly.loop_exit638
  %indvars.iv1044 = phi i64 [ %216, %polly.loop_header600.preheader ], [ %indvars.iv.next1045, %polly.loop_exit638 ]
  %polly.indvar604 = phi i64 [ %215, %polly.loop_header600.preheader ], [ %polly.indvar_next605, %polly.loop_exit638 ]
  %smin1049 = call i64 @llvm.smin.i64(i64 %indvars.iv1044, i64 127)
  %219 = add nsw i64 %polly.indvar604, %217
  %polly.loop_guard6171095 = icmp sgt i64 %219, -1
  %220 = add nuw nsw i64 %polly.indvar604, %200
  %.not874 = icmp ult i64 %220, %218
  %polly.access.mul.call1630 = mul nsw i64 %220, 1000
  %221 = add nuw i64 %polly.access.mul.call1630, %201
  br i1 %polly.loop_guard6171095, label %polly.loop_header614.us, label %polly.loop_header600.split

polly.loop_header614.us:                          ; preds = %polly.loop_header600, %polly.loop_header614.us
  %polly.indvar618.us = phi i64 [ %polly.indvar_next619.us, %polly.loop_header614.us ], [ 0, %polly.loop_header600 ]
  %222 = add nuw nsw i64 %polly.indvar618.us, %212
  %polly.access.mul.call1622.us = mul nuw nsw i64 %222, 1000
  %polly.access.add.call1623.us = add nuw nsw i64 %201, %polly.access.mul.call1622.us
  %polly.access.call1624.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1623.us
  %polly.access.call1624.load.us = load double, double* %polly.access.call1624.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.Packed_MemRef_call1479.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.indvar618.us
  store double %polly.access.call1624.load.us, double* %polly.access.Packed_MemRef_call1479.us, align 8
  %polly.indvar_next619.us = add nuw nsw i64 %polly.indvar618.us, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar618.us, %smin1049
  br i1 %exitcond1047.not, label %polly.cond625.loopexit.us, label %polly.loop_header614.us

polly.then627.us:                                 ; preds = %polly.cond625.loopexit.us
  %polly.access.call1632.us = getelementptr double, double* %polly.access.cast.call1671, i64 %221
  %polly.access.call1632.load.us = load double, double* %polly.access.call1632.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.Packed_MemRef_call1479635.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %219
  store double %polly.access.call1632.load.us, double* %polly.access.Packed_MemRef_call1479635.us, align 8
  br label %polly.loop_header614.us.1.preheader

polly.cond625.loopexit.us:                        ; preds = %polly.loop_header614.us
  br i1 %.not874, label %polly.loop_header614.us.1.preheader, label %polly.then627.us

polly.loop_header614.us.1.preheader:              ; preds = %polly.then627.us, %polly.cond625.loopexit.us
  br label %polly.loop_header614.us.1

polly.loop_header600.split:                       ; preds = %polly.loop_header600
  br i1 %.not874, label %polly.loop_exit638, label %polly.loop_header607.preheader

polly.loop_header607.preheader:                   ; preds = %polly.loop_header600.split
  %polly.access.call1632 = getelementptr double, double* %polly.access.cast.call1671, i64 %221
  %polly.access.call1632.load = load double, double* %polly.access.call1632, align 8, !alias.scope !87, !noalias !92
  %polly.access.Packed_MemRef_call1479635 = getelementptr double, double* %Packed_MemRef_call1479, i64 %219
  store double %polly.access.call1632.load, double* %polly.access.Packed_MemRef_call1479635, align 8
  %polly.access.add.call1631.1 = or i64 %221, 1
  %polly.access.call1632.1 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.1
  %polly.access.call1632.load.1 = load double, double* %polly.access.call1632.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1479634.1 = add nsw i64 %219, 1200
  %polly.access.Packed_MemRef_call1479635.1 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.1
  store double %polly.access.call1632.load.1, double* %polly.access.Packed_MemRef_call1479635.1, align 8
  %polly.access.add.call1631.2 = or i64 %221, 2
  %polly.access.call1632.2 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.2
  %polly.access.call1632.load.2 = load double, double* %polly.access.call1632.2, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1479634.2 = add nsw i64 %219, 2400
  %polly.access.Packed_MemRef_call1479635.2 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.2
  store double %polly.access.call1632.load.2, double* %polly.access.Packed_MemRef_call1479635.2, align 8
  %polly.access.add.call1631.3 = or i64 %221, 3
  %polly.access.call1632.3 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.3
  %polly.access.call1632.load.3 = load double, double* %polly.access.call1632.3, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1479634.3 = add nsw i64 %219, 3600
  %polly.access.Packed_MemRef_call1479635.3 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.3
  store double %polly.access.call1632.load.3, double* %polly.access.Packed_MemRef_call1479635.3, align 8
  br label %polly.loop_exit638

polly.loop_exit638:                               ; preds = %polly.loop_header643.us.3, %polly.loop_header600.split, %polly.loop_header607.preheader, %polly.loop_header636.preheader
  %polly.indvar_next605 = add nuw nsw i64 %polly.indvar604, 1
  %polly.loop_cond606.not.not = icmp ult i64 %polly.indvar604, %199
  %indvars.iv.next1045 = add i64 %indvars.iv1044, 1
  br i1 %polly.loop_cond606.not.not, label %polly.loop_header600, label %polly.loop_exit602

polly.loop_header636.preheader:                   ; preds = %polly.cond625.loopexit.us.3, %polly.then627.us.3
  %223 = mul i64 %220, 8000
  %224 = mul i64 %220, 9600
  br i1 %polly.loop_guard6171095, label %polly.loop_header636.us.preheader, label %polly.loop_exit638

polly.loop_header636.us.preheader:                ; preds = %polly.loop_header636.preheader
  %225 = add i64 %205, %223
  %scevgep654.us = getelementptr i8, i8* %call2, i64 %225
  %scevgep654655.us = bitcast i8* %scevgep654.us to double*
  %_p_scalar_656.us = load double, double* %scevgep654655.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.Packed_MemRef_call1479662.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %219
  %_p_scalar_663.us = load double, double* %polly.access.Packed_MemRef_call1479662.us, align 8
  br label %polly.loop_header643.us

polly.loop_header643.us:                          ; preds = %polly.loop_header636.us.preheader, %polly.loop_header643.us
  %polly.indvar647.us = phi i64 [ %polly.indvar_next648.us, %polly.loop_header643.us ], [ 0, %polly.loop_header636.us.preheader ]
  %226 = add nuw nsw i64 %polly.indvar647.us, %212
  %polly.access.Packed_MemRef_call1479652.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.indvar647.us
  %_p_scalar_653.us = load double, double* %polly.access.Packed_MemRef_call1479652.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_656.us, %_p_scalar_653.us
  %227 = mul nuw nsw i64 %226, 8000
  %228 = add nuw nsw i64 %227, %205
  %scevgep657.us = getelementptr i8, i8* %call2, i64 %228
  %scevgep657658.us = bitcast i8* %scevgep657.us to double*
  %_p_scalar_659.us = load double, double* %scevgep657658.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_663.us, %_p_scalar_659.us
  %229 = shl i64 %226, 3
  %230 = add i64 %229, %224
  %scevgep664.us = getelementptr i8, i8* %call, i64 %230
  %scevgep664665.us = bitcast i8* %scevgep664.us to double*
  %_p_scalar_666.us = load double, double* %scevgep664665.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_666.us
  store double %p_add42.i.us, double* %scevgep664665.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next648.us = add nuw nsw i64 %polly.indvar647.us, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar647.us, %smin1049
  br i1 %exitcond1050.not, label %polly.loop_exit645.loopexit.us, label %polly.loop_header643.us

polly.loop_exit645.loopexit.us:                   ; preds = %polly.loop_header643.us
  %231 = add i64 %207, %223
  %scevgep654.us.1 = getelementptr i8, i8* %call2, i64 %231
  %scevgep654655.us.1 = bitcast i8* %scevgep654.us.1 to double*
  %_p_scalar_656.us.1 = load double, double* %scevgep654655.us.1, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1479661.us.1 = add nsw i64 %219, 1200
  %polly.access.Packed_MemRef_call1479662.us.1 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479661.us.1
  %_p_scalar_663.us.1 = load double, double* %polly.access.Packed_MemRef_call1479662.us.1, align 8
  br label %polly.loop_header643.us.1

polly.loop_header793:                             ; preds = %entry, %polly.loop_exit801
  %indvars.iv1083 = phi i64 [ %indvars.iv.next1084, %polly.loop_exit801 ], [ 0, %entry ]
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %entry ]
  %smin1085 = call i64 @llvm.smin.i64(i64 %indvars.iv1083, i64 -1168)
  %232 = shl nsw i64 %polly.indvar796, 5
  %233 = add nsw i64 %smin1085, 1199
  br label %polly.loop_header799

polly.loop_exit801:                               ; preds = %polly.loop_exit807
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %indvars.iv.next1084 = add nsw i64 %indvars.iv1083, -32
  %exitcond1088.not = icmp eq i64 %polly.indvar_next797, 38
  br i1 %exitcond1088.not, label %polly.loop_header820, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_exit807, %polly.loop_header793
  %indvars.iv1079 = phi i64 [ %indvars.iv.next1080, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %234 = mul nsw i64 %polly.indvar802, -32
  %smin = call i64 @llvm.smin.i64(i64 %234, i64 -1168)
  %235 = add nsw i64 %smin, 1200
  %smin1081 = call i64 @llvm.smin.i64(i64 %indvars.iv1079, i64 -1168)
  %236 = shl nsw i64 %polly.indvar802, 5
  %237 = add nsw i64 %smin1081, 1199
  br label %polly.loop_header805

polly.loop_exit807:                               ; preds = %polly.loop_exit813
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %indvars.iv.next1080 = add nsw i64 %indvars.iv1079, -32
  %exitcond1087.not = icmp eq i64 %polly.indvar_next803, 38
  br i1 %exitcond1087.not, label %polly.loop_exit801, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_exit813, %polly.loop_header799
  %polly.indvar808 = phi i64 [ 0, %polly.loop_header799 ], [ %polly.indvar_next809, %polly.loop_exit813 ]
  %238 = add nuw nsw i64 %polly.indvar808, %232
  %239 = trunc i64 %238 to i32
  %240 = mul nuw nsw i64 %238, 9600
  %min.iters.check = icmp eq i64 %235, 0
  br i1 %min.iters.check, label %polly.loop_header811, label %vector.ph1117

vector.ph1117:                                    ; preds = %polly.loop_header805
  %broadcast.splatinsert1124 = insertelement <4 x i64> poison, i64 %236, i32 0
  %broadcast.splat1125 = shufflevector <4 x i64> %broadcast.splatinsert1124, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1126 = insertelement <4 x i32> poison, i32 %239, i32 0
  %broadcast.splat1127 = shufflevector <4 x i32> %broadcast.splatinsert1126, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1116

vector.body1116:                                  ; preds = %vector.body1116, %vector.ph1117
  %index1118 = phi i64 [ 0, %vector.ph1117 ], [ %index.next1119, %vector.body1116 ]
  %vec.ind1122 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1117 ], [ %vec.ind.next1123, %vector.body1116 ]
  %241 = add nuw nsw <4 x i64> %vec.ind1122, %broadcast.splat1125
  %242 = trunc <4 x i64> %241 to <4 x i32>
  %243 = mul <4 x i32> %broadcast.splat1127, %242
  %244 = add <4 x i32> %243, <i32 3, i32 3, i32 3, i32 3>
  %245 = urem <4 x i32> %244, <i32 1200, i32 1200, i32 1200, i32 1200>
  %246 = sitofp <4 x i32> %245 to <4 x double>
  %247 = fmul fast <4 x double> %246, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %248 = extractelement <4 x i64> %241, i32 0
  %249 = shl i64 %248, 3
  %250 = add nuw nsw i64 %249, %240
  %251 = getelementptr i8, i8* %call, i64 %250
  %252 = bitcast i8* %251 to <4 x double>*
  store <4 x double> %247, <4 x double>* %252, align 8, !alias.scope !94, !noalias !96
  %index.next1119 = add i64 %index1118, 4
  %vec.ind.next1123 = add <4 x i64> %vec.ind1122, <i64 4, i64 4, i64 4, i64 4>
  %253 = icmp eq i64 %index.next1119, %235
  br i1 %253, label %polly.loop_exit813, label %vector.body1116, !llvm.loop !99

polly.loop_exit813:                               ; preds = %vector.body1116, %polly.loop_header811
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar808, %233
  br i1 %exitcond1086.not, label %polly.loop_exit807, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_header805, %polly.loop_header811
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_header811 ], [ 0, %polly.loop_header805 ]
  %254 = add nuw nsw i64 %polly.indvar814, %236
  %255 = trunc i64 %254 to i32
  %256 = mul i32 %255, %239
  %257 = add i32 %256, 3
  %258 = urem i32 %257, 1200
  %p_conv31.i = sitofp i32 %258 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %259 = shl i64 %254, 3
  %260 = add nuw nsw i64 %259, %240
  %scevgep817 = getelementptr i8, i8* %call, i64 %260
  %scevgep817818 = bitcast i8* %scevgep817 to double*
  store double %p_div33.i, double* %scevgep817818, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar814, %237
  br i1 %exitcond1082.not, label %polly.loop_exit813, label %polly.loop_header811, !llvm.loop !100

polly.loop_header820:                             ; preds = %polly.loop_exit801, %polly.loop_exit828
  %indvars.iv1073 = phi i64 [ %indvars.iv.next1074, %polly.loop_exit828 ], [ 0, %polly.loop_exit801 ]
  %polly.indvar823 = phi i64 [ %polly.indvar_next824, %polly.loop_exit828 ], [ 0, %polly.loop_exit801 ]
  %smin1075 = call i64 @llvm.smin.i64(i64 %indvars.iv1073, i64 -1168)
  %261 = shl nsw i64 %polly.indvar823, 5
  %262 = add nsw i64 %smin1075, 1199
  br label %polly.loop_header826

polly.loop_exit828:                               ; preds = %polly.loop_exit834
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %indvars.iv.next1074 = add nsw i64 %indvars.iv1073, -32
  %exitcond1078.not = icmp eq i64 %polly.indvar_next824, 38
  br i1 %exitcond1078.not, label %polly.loop_header846, label %polly.loop_header820

polly.loop_header826:                             ; preds = %polly.loop_exit834, %polly.loop_header820
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit834 ], [ 0, %polly.loop_header820 ]
  %polly.indvar829 = phi i64 [ %polly.indvar_next830, %polly.loop_exit834 ], [ 0, %polly.loop_header820 ]
  %263 = mul nsw i64 %polly.indvar829, -32
  %smin1131 = call i64 @llvm.smin.i64(i64 %263, i64 -968)
  %264 = add nsw i64 %smin1131, 1000
  %smin1071 = call i64 @llvm.smin.i64(i64 %indvars.iv1069, i64 -968)
  %265 = shl nsw i64 %polly.indvar829, 5
  %266 = add nsw i64 %smin1071, 999
  br label %polly.loop_header832

polly.loop_exit834:                               ; preds = %polly.loop_exit840
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %indvars.iv.next1070 = add nsw i64 %indvars.iv1069, -32
  %exitcond1077.not = icmp eq i64 %polly.indvar_next830, 32
  br i1 %exitcond1077.not, label %polly.loop_exit828, label %polly.loop_header826

polly.loop_header832:                             ; preds = %polly.loop_exit840, %polly.loop_header826
  %polly.indvar835 = phi i64 [ 0, %polly.loop_header826 ], [ %polly.indvar_next836, %polly.loop_exit840 ]
  %267 = add nuw nsw i64 %polly.indvar835, %261
  %268 = trunc i64 %267 to i32
  %269 = mul nuw nsw i64 %267, 8000
  %min.iters.check1132 = icmp eq i64 %264, 0
  br i1 %min.iters.check1132, label %polly.loop_header838, label %vector.ph1133

vector.ph1133:                                    ; preds = %polly.loop_header832
  %broadcast.splatinsert1142 = insertelement <4 x i64> poison, i64 %265, i32 0
  %broadcast.splat1143 = shufflevector <4 x i64> %broadcast.splatinsert1142, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1144 = insertelement <4 x i32> poison, i32 %268, i32 0
  %broadcast.splat1145 = shufflevector <4 x i32> %broadcast.splatinsert1144, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1130

vector.body1130:                                  ; preds = %vector.body1130, %vector.ph1133
  %index1136 = phi i64 [ 0, %vector.ph1133 ], [ %index.next1137, %vector.body1130 ]
  %vec.ind1140 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1133 ], [ %vec.ind.next1141, %vector.body1130 ]
  %270 = add nuw nsw <4 x i64> %vec.ind1140, %broadcast.splat1143
  %271 = trunc <4 x i64> %270 to <4 x i32>
  %272 = mul <4 x i32> %broadcast.splat1145, %271
  %273 = add <4 x i32> %272, <i32 2, i32 2, i32 2, i32 2>
  %274 = urem <4 x i32> %273, <i32 1000, i32 1000, i32 1000, i32 1000>
  %275 = sitofp <4 x i32> %274 to <4 x double>
  %276 = fmul fast <4 x double> %275, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %277 = extractelement <4 x i64> %270, i32 0
  %278 = shl i64 %277, 3
  %279 = add nuw nsw i64 %278, %269
  %280 = getelementptr i8, i8* %call2, i64 %279
  %281 = bitcast i8* %280 to <4 x double>*
  store <4 x double> %276, <4 x double>* %281, align 8, !alias.scope !98, !noalias !101
  %index.next1137 = add i64 %index1136, 4
  %vec.ind.next1141 = add <4 x i64> %vec.ind1140, <i64 4, i64 4, i64 4, i64 4>
  %282 = icmp eq i64 %index.next1137, %264
  br i1 %282, label %polly.loop_exit840, label %vector.body1130, !llvm.loop !102

polly.loop_exit840:                               ; preds = %vector.body1130, %polly.loop_header838
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar835, %262
  br i1 %exitcond1076.not, label %polly.loop_exit834, label %polly.loop_header832

polly.loop_header838:                             ; preds = %polly.loop_header832, %polly.loop_header838
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_header838 ], [ 0, %polly.loop_header832 ]
  %283 = add nuw nsw i64 %polly.indvar841, %265
  %284 = trunc i64 %283 to i32
  %285 = mul i32 %284, %268
  %286 = add i32 %285, 2
  %287 = urem i32 %286, 1000
  %p_conv10.i = sitofp i32 %287 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %288 = shl i64 %283, 3
  %289 = add nuw nsw i64 %288, %269
  %scevgep844 = getelementptr i8, i8* %call2, i64 %289
  %scevgep844845 = bitcast i8* %scevgep844 to double*
  store double %p_div12.i, double* %scevgep844845, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar841, %266
  br i1 %exitcond1072.not, label %polly.loop_exit840, label %polly.loop_header838, !llvm.loop !103

polly.loop_header846:                             ; preds = %polly.loop_exit828, %polly.loop_exit854
  %indvars.iv1063 = phi i64 [ %indvars.iv.next1064, %polly.loop_exit854 ], [ 0, %polly.loop_exit828 ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %polly.loop_exit828 ]
  %smin1065 = call i64 @llvm.smin.i64(i64 %indvars.iv1063, i64 -1168)
  %290 = shl nsw i64 %polly.indvar849, 5
  %291 = add nsw i64 %smin1065, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1064 = add nsw i64 %indvars.iv1063, -32
  %exitcond1068.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1068.not, label %init_array.exit, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %292 = mul nsw i64 %polly.indvar855, -32
  %smin1149 = call i64 @llvm.smin.i64(i64 %292, i64 -968)
  %293 = add nsw i64 %smin1149, 1000
  %smin1061 = call i64 @llvm.smin.i64(i64 %indvars.iv1059, i64 -968)
  %294 = shl nsw i64 %polly.indvar855, 5
  %295 = add nsw i64 %smin1061, 999
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, -32
  %exitcond1067.not = icmp eq i64 %polly.indvar_next856, 32
  br i1 %exitcond1067.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %polly.indvar861 = phi i64 [ 0, %polly.loop_header852 ], [ %polly.indvar_next862, %polly.loop_exit866 ]
  %296 = add nuw nsw i64 %polly.indvar861, %290
  %297 = trunc i64 %296 to i32
  %298 = mul nuw nsw i64 %296, 8000
  %min.iters.check1150 = icmp eq i64 %293, 0
  br i1 %min.iters.check1150, label %polly.loop_header864, label %vector.ph1151

vector.ph1151:                                    ; preds = %polly.loop_header858
  %broadcast.splatinsert1160 = insertelement <4 x i64> poison, i64 %294, i32 0
  %broadcast.splat1161 = shufflevector <4 x i64> %broadcast.splatinsert1160, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1162 = insertelement <4 x i32> poison, i32 %297, i32 0
  %broadcast.splat1163 = shufflevector <4 x i32> %broadcast.splatinsert1162, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1148

vector.body1148:                                  ; preds = %vector.body1148, %vector.ph1151
  %index1154 = phi i64 [ 0, %vector.ph1151 ], [ %index.next1155, %vector.body1148 ]
  %vec.ind1158 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1151 ], [ %vec.ind.next1159, %vector.body1148 ]
  %299 = add nuw nsw <4 x i64> %vec.ind1158, %broadcast.splat1161
  %300 = trunc <4 x i64> %299 to <4 x i32>
  %301 = mul <4 x i32> %broadcast.splat1163, %300
  %302 = add <4 x i32> %301, <i32 1, i32 1, i32 1, i32 1>
  %303 = urem <4 x i32> %302, <i32 1200, i32 1200, i32 1200, i32 1200>
  %304 = sitofp <4 x i32> %303 to <4 x double>
  %305 = fmul fast <4 x double> %304, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %306 = extractelement <4 x i64> %299, i32 0
  %307 = shl i64 %306, 3
  %308 = add nuw nsw i64 %307, %298
  %309 = getelementptr i8, i8* %call1, i64 %308
  %310 = bitcast i8* %309 to <4 x double>*
  store <4 x double> %305, <4 x double>* %310, align 8, !alias.scope !97, !noalias !104
  %index.next1155 = add i64 %index1154, 4
  %vec.ind.next1159 = add <4 x i64> %vec.ind1158, <i64 4, i64 4, i64 4, i64 4>
  %311 = icmp eq i64 %index.next1155, %293
  br i1 %311, label %polly.loop_exit866, label %vector.body1148, !llvm.loop !105

polly.loop_exit866:                               ; preds = %vector.body1148, %polly.loop_header864
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar861, %291
  br i1 %exitcond1066.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_header858, %polly.loop_header864
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_header864 ], [ 0, %polly.loop_header858 ]
  %312 = add nuw nsw i64 %polly.indvar867, %294
  %313 = trunc i64 %312 to i32
  %314 = mul i32 %313, %297
  %315 = add i32 %314, 1
  %316 = urem i32 %315, 1200
  %p_conv.i = sitofp i32 %316 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %317 = shl i64 %312, 3
  %318 = add nuw nsw i64 %317, %298
  %scevgep871 = getelementptr i8, i8* %call1, i64 %318
  %scevgep871872 = bitcast i8* %scevgep871 to double*
  store double %p_div.i, double* %scevgep871872, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar867, %295
  br i1 %exitcond1062.not, label %polly.loop_exit866, label %polly.loop_header864, !llvm.loop !106

polly.loop_header232.us.1:                        ; preds = %polly.loop_header232.us.1.preheader, %polly.loop_header232.us.1
  %polly.indvar236.us.1 = phi i64 [ %polly.indvar_next237.us.1, %polly.loop_header232.us.1 ], [ 0, %polly.loop_header232.us.1.preheader ]
  %319 = add nuw nsw i64 %polly.indvar236.us.1, %116
  %polly.access.mul.call1240.us.1 = mul nuw nsw i64 %319, 1000
  %polly.access.add.call1241.us.1 = add nuw nsw i64 %106, %polly.access.mul.call1240.us.1
  %polly.access.call1242.us.1 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1241.us.1
  %polly.access.call1242.load.us.1 = load double, double* %polly.access.call1242.us.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar236.us.1, 1200
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1242.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next237.us.1 = add nuw nsw i64 %polly.indvar236.us.1, 1
  %exitcond997.1.not = icmp eq i64 %polly.indvar236.us.1, %smin999
  br i1 %exitcond997.1.not, label %polly.cond.loopexit.us.1, label %polly.loop_header232.us.1

polly.cond.loopexit.us.1:                         ; preds = %polly.loop_header232.us.1
  br i1 %.not, label %polly.loop_header232.us.2.preheader, label %polly.then.us.1

polly.then.us.1:                                  ; preds = %polly.cond.loopexit.us.1
  %polly.access.add.call1245.us.1 = or i64 %125, 1
  %polly.access.call1246.us.1 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.us.1
  %polly.access.call1246.load.us.1 = load double, double* %polly.access.call1246.us.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1248.us.1 = add nsw i64 %123, 1200
  %polly.access.Packed_MemRef_call1249.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.us.1
  store double %polly.access.call1246.load.us.1, double* %polly.access.Packed_MemRef_call1249.us.1, align 8
  br label %polly.loop_header232.us.2.preheader

polly.loop_header232.us.2.preheader:              ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  br label %polly.loop_header232.us.2

polly.loop_header232.us.2:                        ; preds = %polly.loop_header232.us.2.preheader, %polly.loop_header232.us.2
  %polly.indvar236.us.2 = phi i64 [ %polly.indvar_next237.us.2, %polly.loop_header232.us.2 ], [ 0, %polly.loop_header232.us.2.preheader ]
  %320 = add nuw nsw i64 %polly.indvar236.us.2, %116
  %polly.access.mul.call1240.us.2 = mul nuw nsw i64 %320, 1000
  %polly.access.add.call1241.us.2 = add nuw nsw i64 %107, %polly.access.mul.call1240.us.2
  %polly.access.call1242.us.2 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1241.us.2
  %polly.access.call1242.load.us.2 = load double, double* %polly.access.call1242.us.2, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar236.us.2, 2400
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1242.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next237.us.2 = add nuw nsw i64 %polly.indvar236.us.2, 1
  %exitcond997.2.not = icmp eq i64 %polly.indvar236.us.2, %smin999
  br i1 %exitcond997.2.not, label %polly.cond.loopexit.us.2, label %polly.loop_header232.us.2

polly.cond.loopexit.us.2:                         ; preds = %polly.loop_header232.us.2
  br i1 %.not, label %polly.loop_header232.us.3.preheader, label %polly.then.us.2

polly.then.us.2:                                  ; preds = %polly.cond.loopexit.us.2
  %polly.access.add.call1245.us.2 = or i64 %125, 2
  %polly.access.call1246.us.2 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.us.2
  %polly.access.call1246.load.us.2 = load double, double* %polly.access.call1246.us.2, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1248.us.2 = add nsw i64 %123, 2400
  %polly.access.Packed_MemRef_call1249.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.us.2
  store double %polly.access.call1246.load.us.2, double* %polly.access.Packed_MemRef_call1249.us.2, align 8
  br label %polly.loop_header232.us.3.preheader

polly.loop_header232.us.3.preheader:              ; preds = %polly.then.us.2, %polly.cond.loopexit.us.2
  br label %polly.loop_header232.us.3

polly.loop_header232.us.3:                        ; preds = %polly.loop_header232.us.3.preheader, %polly.loop_header232.us.3
  %polly.indvar236.us.3 = phi i64 [ %polly.indvar_next237.us.3, %polly.loop_header232.us.3 ], [ 0, %polly.loop_header232.us.3.preheader ]
  %321 = add nuw nsw i64 %polly.indvar236.us.3, %116
  %polly.access.mul.call1240.us.3 = mul nuw nsw i64 %321, 1000
  %polly.access.add.call1241.us.3 = add nuw nsw i64 %108, %polly.access.mul.call1240.us.3
  %polly.access.call1242.us.3 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1241.us.3
  %polly.access.call1242.load.us.3 = load double, double* %polly.access.call1242.us.3, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us.3 = add nuw nsw i64 %polly.indvar236.us.3, 3600
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1242.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next237.us.3 = add nuw nsw i64 %polly.indvar236.us.3, 1
  %exitcond997.3.not = icmp eq i64 %polly.indvar236.us.3, %smin999
  br i1 %exitcond997.3.not, label %polly.cond.loopexit.us.3, label %polly.loop_header232.us.3

polly.cond.loopexit.us.3:                         ; preds = %polly.loop_header232.us.3
  br i1 %.not, label %polly.loop_header250.preheader, label %polly.then.us.3

polly.then.us.3:                                  ; preds = %polly.cond.loopexit.us.3
  %polly.access.add.call1245.us.3 = or i64 %125, 3
  %polly.access.call1246.us.3 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.us.3
  %polly.access.call1246.load.us.3 = load double, double* %polly.access.call1246.us.3, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1248.us.3 = add nsw i64 %123, 3600
  %polly.access.Packed_MemRef_call1249.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.us.3
  store double %polly.access.call1246.load.us.3, double* %polly.access.Packed_MemRef_call1249.us.3, align 8
  br label %polly.loop_header250.preheader

polly.loop_header257.us.1:                        ; preds = %polly.loop_header257.us.1, %polly.loop_exit259.loopexit.us
  %polly.indvar261.us.1 = phi i64 [ %polly.indvar_next262.us.1, %polly.loop_header257.us.1 ], [ 0, %polly.loop_exit259.loopexit.us ]
  %322 = add nuw nsw i64 %polly.indvar261.us.1, %116
  %polly.access.add.Packed_MemRef_call1265.us.1 = add nuw nsw i64 %polly.indvar261.us.1, 1200
  %polly.access.Packed_MemRef_call1266.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us.1
  %_p_scalar_267.us.1 = load double, double* %polly.access.Packed_MemRef_call1266.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_270.us.1, %_p_scalar_267.us.1
  %323 = mul nuw nsw i64 %322, 8000
  %324 = add nuw nsw i64 %323, %111
  %scevgep271.us.1 = getelementptr i8, i8* %call2, i64 %324
  %scevgep271272.us.1 = bitcast i8* %scevgep271.us.1 to double*
  %_p_scalar_273.us.1 = load double, double* %scevgep271272.us.1, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_277.us.1, %_p_scalar_273.us.1
  %325 = shl i64 %322, 3
  %326 = add i64 %325, %128
  %scevgep278.us.1 = getelementptr i8, i8* %call, i64 %326
  %scevgep278279.us.1 = bitcast i8* %scevgep278.us.1 to double*
  %_p_scalar_280.us.1 = load double, double* %scevgep278279.us.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_280.us.1
  store double %p_add42.i118.us.1, double* %scevgep278279.us.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next262.us.1 = add nuw nsw i64 %polly.indvar261.us.1, 1
  %exitcond1000.1.not = icmp eq i64 %polly.indvar261.us.1, %smin999
  br i1 %exitcond1000.1.not, label %polly.loop_exit259.loopexit.us.1, label %polly.loop_header257.us.1

polly.loop_exit259.loopexit.us.1:                 ; preds = %polly.loop_header257.us.1
  %327 = add i64 %113, %127
  %scevgep268.us.2 = getelementptr i8, i8* %call2, i64 %327
  %scevgep268269.us.2 = bitcast i8* %scevgep268.us.2 to double*
  %_p_scalar_270.us.2 = load double, double* %scevgep268269.us.2, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1275.us.2 = add nsw i64 %123, 2400
  %polly.access.Packed_MemRef_call1276.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.us.2
  %_p_scalar_277.us.2 = load double, double* %polly.access.Packed_MemRef_call1276.us.2, align 8
  br label %polly.loop_header257.us.2

polly.loop_header257.us.2:                        ; preds = %polly.loop_header257.us.2, %polly.loop_exit259.loopexit.us.1
  %polly.indvar261.us.2 = phi i64 [ %polly.indvar_next262.us.2, %polly.loop_header257.us.2 ], [ 0, %polly.loop_exit259.loopexit.us.1 ]
  %328 = add nuw nsw i64 %polly.indvar261.us.2, %116
  %polly.access.add.Packed_MemRef_call1265.us.2 = add nuw nsw i64 %polly.indvar261.us.2, 2400
  %polly.access.Packed_MemRef_call1266.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us.2
  %_p_scalar_267.us.2 = load double, double* %polly.access.Packed_MemRef_call1266.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_270.us.2, %_p_scalar_267.us.2
  %329 = mul nuw nsw i64 %328, 8000
  %330 = add nuw nsw i64 %329, %113
  %scevgep271.us.2 = getelementptr i8, i8* %call2, i64 %330
  %scevgep271272.us.2 = bitcast i8* %scevgep271.us.2 to double*
  %_p_scalar_273.us.2 = load double, double* %scevgep271272.us.2, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_277.us.2, %_p_scalar_273.us.2
  %331 = shl i64 %328, 3
  %332 = add i64 %331, %128
  %scevgep278.us.2 = getelementptr i8, i8* %call, i64 %332
  %scevgep278279.us.2 = bitcast i8* %scevgep278.us.2 to double*
  %_p_scalar_280.us.2 = load double, double* %scevgep278279.us.2, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_280.us.2
  store double %p_add42.i118.us.2, double* %scevgep278279.us.2, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next262.us.2 = add nuw nsw i64 %polly.indvar261.us.2, 1
  %exitcond1000.2.not = icmp eq i64 %polly.indvar261.us.2, %smin999
  br i1 %exitcond1000.2.not, label %polly.loop_exit259.loopexit.us.2, label %polly.loop_header257.us.2

polly.loop_exit259.loopexit.us.2:                 ; preds = %polly.loop_header257.us.2
  %333 = add i64 %115, %127
  %scevgep268.us.3 = getelementptr i8, i8* %call2, i64 %333
  %scevgep268269.us.3 = bitcast i8* %scevgep268.us.3 to double*
  %_p_scalar_270.us.3 = load double, double* %scevgep268269.us.3, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1275.us.3 = add nsw i64 %123, 3600
  %polly.access.Packed_MemRef_call1276.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.us.3
  %_p_scalar_277.us.3 = load double, double* %polly.access.Packed_MemRef_call1276.us.3, align 8
  br label %polly.loop_header257.us.3

polly.loop_header257.us.3:                        ; preds = %polly.loop_header257.us.3, %polly.loop_exit259.loopexit.us.2
  %polly.indvar261.us.3 = phi i64 [ %polly.indvar_next262.us.3, %polly.loop_header257.us.3 ], [ 0, %polly.loop_exit259.loopexit.us.2 ]
  %334 = add nuw nsw i64 %polly.indvar261.us.3, %116
  %polly.access.add.Packed_MemRef_call1265.us.3 = add nuw nsw i64 %polly.indvar261.us.3, 3600
  %polly.access.Packed_MemRef_call1266.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us.3
  %_p_scalar_267.us.3 = load double, double* %polly.access.Packed_MemRef_call1266.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_270.us.3, %_p_scalar_267.us.3
  %335 = mul nuw nsw i64 %334, 8000
  %336 = add nuw nsw i64 %335, %115
  %scevgep271.us.3 = getelementptr i8, i8* %call2, i64 %336
  %scevgep271272.us.3 = bitcast i8* %scevgep271.us.3 to double*
  %_p_scalar_273.us.3 = load double, double* %scevgep271272.us.3, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_277.us.3, %_p_scalar_273.us.3
  %337 = shl i64 %334, 3
  %338 = add i64 %337, %128
  %scevgep278.us.3 = getelementptr i8, i8* %call, i64 %338
  %scevgep278279.us.3 = bitcast i8* %scevgep278.us.3 to double*
  %_p_scalar_280.us.3 = load double, double* %scevgep278279.us.3, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_280.us.3
  store double %p_add42.i118.us.3, double* %scevgep278279.us.3, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next262.us.3 = add nuw nsw i64 %polly.indvar261.us.3, 1
  %exitcond1000.3.not = icmp eq i64 %polly.indvar261.us.3, %smin999
  br i1 %exitcond1000.3.not, label %polly.loop_exit252, label %polly.loop_header257.us.3

polly.loop_header421.us.1:                        ; preds = %polly.loop_header421.us.1.preheader, %polly.loop_header421.us.1
  %polly.indvar425.us.1 = phi i64 [ %polly.indvar_next426.us.1, %polly.loop_header421.us.1 ], [ 0, %polly.loop_header421.us.1.preheader ]
  %339 = add nuw nsw i64 %polly.indvar425.us.1, %164
  %polly.access.mul.call1429.us.1 = mul nuw nsw i64 %339, 1000
  %polly.access.add.call1430.us.1 = add nuw nsw i64 %154, %polly.access.mul.call1429.us.1
  %polly.access.call1431.us.1 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1430.us.1
  %polly.access.call1431.load.us.1 = load double, double* %polly.access.call1431.us.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1286.us.1 = add nuw nsw i64 %polly.indvar425.us.1, 1200
  %polly.access.Packed_MemRef_call1286.us.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.1
  store double %polly.access.call1431.load.us.1, double* %polly.access.Packed_MemRef_call1286.us.1, align 8
  %polly.indvar_next426.us.1 = add nuw nsw i64 %polly.indvar425.us.1, 1
  %exitcond1022.1.not = icmp eq i64 %polly.indvar425.us.1, %smin1024
  br i1 %exitcond1022.1.not, label %polly.cond432.loopexit.us.1, label %polly.loop_header421.us.1

polly.cond432.loopexit.us.1:                      ; preds = %polly.loop_header421.us.1
  br i1 %.not873, label %polly.loop_header421.us.2.preheader, label %polly.then434.us.1

polly.then434.us.1:                               ; preds = %polly.cond432.loopexit.us.1
  %polly.access.add.call1438.us.1 = or i64 %173, 1
  %polly.access.call1439.us.1 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.us.1
  %polly.access.call1439.load.us.1 = load double, double* %polly.access.call1439.us.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1286441.us.1 = add nsw i64 %171, 1200
  %polly.access.Packed_MemRef_call1286442.us.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.us.1
  store double %polly.access.call1439.load.us.1, double* %polly.access.Packed_MemRef_call1286442.us.1, align 8
  br label %polly.loop_header421.us.2.preheader

polly.loop_header421.us.2.preheader:              ; preds = %polly.then434.us.1, %polly.cond432.loopexit.us.1
  br label %polly.loop_header421.us.2

polly.loop_header421.us.2:                        ; preds = %polly.loop_header421.us.2.preheader, %polly.loop_header421.us.2
  %polly.indvar425.us.2 = phi i64 [ %polly.indvar_next426.us.2, %polly.loop_header421.us.2 ], [ 0, %polly.loop_header421.us.2.preheader ]
  %340 = add nuw nsw i64 %polly.indvar425.us.2, %164
  %polly.access.mul.call1429.us.2 = mul nuw nsw i64 %340, 1000
  %polly.access.add.call1430.us.2 = add nuw nsw i64 %155, %polly.access.mul.call1429.us.2
  %polly.access.call1431.us.2 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1430.us.2
  %polly.access.call1431.load.us.2 = load double, double* %polly.access.call1431.us.2, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1286.us.2 = add nuw nsw i64 %polly.indvar425.us.2, 2400
  %polly.access.Packed_MemRef_call1286.us.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.2
  store double %polly.access.call1431.load.us.2, double* %polly.access.Packed_MemRef_call1286.us.2, align 8
  %polly.indvar_next426.us.2 = add nuw nsw i64 %polly.indvar425.us.2, 1
  %exitcond1022.2.not = icmp eq i64 %polly.indvar425.us.2, %smin1024
  br i1 %exitcond1022.2.not, label %polly.cond432.loopexit.us.2, label %polly.loop_header421.us.2

polly.cond432.loopexit.us.2:                      ; preds = %polly.loop_header421.us.2
  br i1 %.not873, label %polly.loop_header421.us.3.preheader, label %polly.then434.us.2

polly.then434.us.2:                               ; preds = %polly.cond432.loopexit.us.2
  %polly.access.add.call1438.us.2 = or i64 %173, 2
  %polly.access.call1439.us.2 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.us.2
  %polly.access.call1439.load.us.2 = load double, double* %polly.access.call1439.us.2, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1286441.us.2 = add nsw i64 %171, 2400
  %polly.access.Packed_MemRef_call1286442.us.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.us.2
  store double %polly.access.call1439.load.us.2, double* %polly.access.Packed_MemRef_call1286442.us.2, align 8
  br label %polly.loop_header421.us.3.preheader

polly.loop_header421.us.3.preheader:              ; preds = %polly.then434.us.2, %polly.cond432.loopexit.us.2
  br label %polly.loop_header421.us.3

polly.loop_header421.us.3:                        ; preds = %polly.loop_header421.us.3.preheader, %polly.loop_header421.us.3
  %polly.indvar425.us.3 = phi i64 [ %polly.indvar_next426.us.3, %polly.loop_header421.us.3 ], [ 0, %polly.loop_header421.us.3.preheader ]
  %341 = add nuw nsw i64 %polly.indvar425.us.3, %164
  %polly.access.mul.call1429.us.3 = mul nuw nsw i64 %341, 1000
  %polly.access.add.call1430.us.3 = add nuw nsw i64 %156, %polly.access.mul.call1429.us.3
  %polly.access.call1431.us.3 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1430.us.3
  %polly.access.call1431.load.us.3 = load double, double* %polly.access.call1431.us.3, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1286.us.3 = add nuw nsw i64 %polly.indvar425.us.3, 3600
  %polly.access.Packed_MemRef_call1286.us.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.3
  store double %polly.access.call1431.load.us.3, double* %polly.access.Packed_MemRef_call1286.us.3, align 8
  %polly.indvar_next426.us.3 = add nuw nsw i64 %polly.indvar425.us.3, 1
  %exitcond1022.3.not = icmp eq i64 %polly.indvar425.us.3, %smin1024
  br i1 %exitcond1022.3.not, label %polly.cond432.loopexit.us.3, label %polly.loop_header421.us.3

polly.cond432.loopexit.us.3:                      ; preds = %polly.loop_header421.us.3
  br i1 %.not873, label %polly.loop_header443.preheader, label %polly.then434.us.3

polly.then434.us.3:                               ; preds = %polly.cond432.loopexit.us.3
  %polly.access.add.call1438.us.3 = or i64 %173, 3
  %polly.access.call1439.us.3 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.us.3
  %polly.access.call1439.load.us.3 = load double, double* %polly.access.call1439.us.3, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1286441.us.3 = add nsw i64 %171, 3600
  %polly.access.Packed_MemRef_call1286442.us.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.us.3
  store double %polly.access.call1439.load.us.3, double* %polly.access.Packed_MemRef_call1286442.us.3, align 8
  br label %polly.loop_header443.preheader

polly.loop_header450.us.1:                        ; preds = %polly.loop_header450.us.1, %polly.loop_exit452.loopexit.us
  %polly.indvar454.us.1 = phi i64 [ %polly.indvar_next455.us.1, %polly.loop_header450.us.1 ], [ 0, %polly.loop_exit452.loopexit.us ]
  %342 = add nuw nsw i64 %polly.indvar454.us.1, %164
  %polly.access.add.Packed_MemRef_call1286458.us.1 = add nuw nsw i64 %polly.indvar454.us.1, 1200
  %polly.access.Packed_MemRef_call1286459.us.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286458.us.1
  %_p_scalar_460.us.1 = load double, double* %polly.access.Packed_MemRef_call1286459.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_463.us.1, %_p_scalar_460.us.1
  %343 = mul nuw nsw i64 %342, 8000
  %344 = add nuw nsw i64 %343, %159
  %scevgep464.us.1 = getelementptr i8, i8* %call2, i64 %344
  %scevgep464465.us.1 = bitcast i8* %scevgep464.us.1 to double*
  %_p_scalar_466.us.1 = load double, double* %scevgep464465.us.1, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_470.us.1, %_p_scalar_466.us.1
  %345 = shl i64 %342, 3
  %346 = add i64 %345, %176
  %scevgep471.us.1 = getelementptr i8, i8* %call, i64 %346
  %scevgep471472.us.1 = bitcast i8* %scevgep471.us.1 to double*
  %_p_scalar_473.us.1 = load double, double* %scevgep471472.us.1, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_473.us.1
  store double %p_add42.i79.us.1, double* %scevgep471472.us.1, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next455.us.1 = add nuw nsw i64 %polly.indvar454.us.1, 1
  %exitcond1025.1.not = icmp eq i64 %polly.indvar454.us.1, %smin1024
  br i1 %exitcond1025.1.not, label %polly.loop_exit452.loopexit.us.1, label %polly.loop_header450.us.1

polly.loop_exit452.loopexit.us.1:                 ; preds = %polly.loop_header450.us.1
  %347 = add i64 %161, %175
  %scevgep461.us.2 = getelementptr i8, i8* %call2, i64 %347
  %scevgep461462.us.2 = bitcast i8* %scevgep461.us.2 to double*
  %_p_scalar_463.us.2 = load double, double* %scevgep461462.us.2, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1286468.us.2 = add nsw i64 %171, 2400
  %polly.access.Packed_MemRef_call1286469.us.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286468.us.2
  %_p_scalar_470.us.2 = load double, double* %polly.access.Packed_MemRef_call1286469.us.2, align 8
  br label %polly.loop_header450.us.2

polly.loop_header450.us.2:                        ; preds = %polly.loop_header450.us.2, %polly.loop_exit452.loopexit.us.1
  %polly.indvar454.us.2 = phi i64 [ %polly.indvar_next455.us.2, %polly.loop_header450.us.2 ], [ 0, %polly.loop_exit452.loopexit.us.1 ]
  %348 = add nuw nsw i64 %polly.indvar454.us.2, %164
  %polly.access.add.Packed_MemRef_call1286458.us.2 = add nuw nsw i64 %polly.indvar454.us.2, 2400
  %polly.access.Packed_MemRef_call1286459.us.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286458.us.2
  %_p_scalar_460.us.2 = load double, double* %polly.access.Packed_MemRef_call1286459.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_463.us.2, %_p_scalar_460.us.2
  %349 = mul nuw nsw i64 %348, 8000
  %350 = add nuw nsw i64 %349, %161
  %scevgep464.us.2 = getelementptr i8, i8* %call2, i64 %350
  %scevgep464465.us.2 = bitcast i8* %scevgep464.us.2 to double*
  %_p_scalar_466.us.2 = load double, double* %scevgep464465.us.2, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_470.us.2, %_p_scalar_466.us.2
  %351 = shl i64 %348, 3
  %352 = add i64 %351, %176
  %scevgep471.us.2 = getelementptr i8, i8* %call, i64 %352
  %scevgep471472.us.2 = bitcast i8* %scevgep471.us.2 to double*
  %_p_scalar_473.us.2 = load double, double* %scevgep471472.us.2, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_473.us.2
  store double %p_add42.i79.us.2, double* %scevgep471472.us.2, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next455.us.2 = add nuw nsw i64 %polly.indvar454.us.2, 1
  %exitcond1025.2.not = icmp eq i64 %polly.indvar454.us.2, %smin1024
  br i1 %exitcond1025.2.not, label %polly.loop_exit452.loopexit.us.2, label %polly.loop_header450.us.2

polly.loop_exit452.loopexit.us.2:                 ; preds = %polly.loop_header450.us.2
  %353 = add i64 %163, %175
  %scevgep461.us.3 = getelementptr i8, i8* %call2, i64 %353
  %scevgep461462.us.3 = bitcast i8* %scevgep461.us.3 to double*
  %_p_scalar_463.us.3 = load double, double* %scevgep461462.us.3, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1286468.us.3 = add nsw i64 %171, 3600
  %polly.access.Packed_MemRef_call1286469.us.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286468.us.3
  %_p_scalar_470.us.3 = load double, double* %polly.access.Packed_MemRef_call1286469.us.3, align 8
  br label %polly.loop_header450.us.3

polly.loop_header450.us.3:                        ; preds = %polly.loop_header450.us.3, %polly.loop_exit452.loopexit.us.2
  %polly.indvar454.us.3 = phi i64 [ %polly.indvar_next455.us.3, %polly.loop_header450.us.3 ], [ 0, %polly.loop_exit452.loopexit.us.2 ]
  %354 = add nuw nsw i64 %polly.indvar454.us.3, %164
  %polly.access.add.Packed_MemRef_call1286458.us.3 = add nuw nsw i64 %polly.indvar454.us.3, 3600
  %polly.access.Packed_MemRef_call1286459.us.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286458.us.3
  %_p_scalar_460.us.3 = load double, double* %polly.access.Packed_MemRef_call1286459.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_463.us.3, %_p_scalar_460.us.3
  %355 = mul nuw nsw i64 %354, 8000
  %356 = add nuw nsw i64 %355, %163
  %scevgep464.us.3 = getelementptr i8, i8* %call2, i64 %356
  %scevgep464465.us.3 = bitcast i8* %scevgep464.us.3 to double*
  %_p_scalar_466.us.3 = load double, double* %scevgep464465.us.3, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_470.us.3, %_p_scalar_466.us.3
  %357 = shl i64 %354, 3
  %358 = add i64 %357, %176
  %scevgep471.us.3 = getelementptr i8, i8* %call, i64 %358
  %scevgep471472.us.3 = bitcast i8* %scevgep471.us.3 to double*
  %_p_scalar_473.us.3 = load double, double* %scevgep471472.us.3, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_473.us.3
  store double %p_add42.i79.us.3, double* %scevgep471472.us.3, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next455.us.3 = add nuw nsw i64 %polly.indvar454.us.3, 1
  %exitcond1025.3.not = icmp eq i64 %polly.indvar454.us.3, %smin1024
  br i1 %exitcond1025.3.not, label %polly.loop_exit445, label %polly.loop_header450.us.3

polly.loop_header614.us.1:                        ; preds = %polly.loop_header614.us.1.preheader, %polly.loop_header614.us.1
  %polly.indvar618.us.1 = phi i64 [ %polly.indvar_next619.us.1, %polly.loop_header614.us.1 ], [ 0, %polly.loop_header614.us.1.preheader ]
  %359 = add nuw nsw i64 %polly.indvar618.us.1, %212
  %polly.access.mul.call1622.us.1 = mul nuw nsw i64 %359, 1000
  %polly.access.add.call1623.us.1 = add nuw nsw i64 %202, %polly.access.mul.call1622.us.1
  %polly.access.call1624.us.1 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1623.us.1
  %polly.access.call1624.load.us.1 = load double, double* %polly.access.call1624.us.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1479.us.1 = add nuw nsw i64 %polly.indvar618.us.1, 1200
  %polly.access.Packed_MemRef_call1479.us.1 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us.1
  store double %polly.access.call1624.load.us.1, double* %polly.access.Packed_MemRef_call1479.us.1, align 8
  %polly.indvar_next619.us.1 = add nuw nsw i64 %polly.indvar618.us.1, 1
  %exitcond1047.1.not = icmp eq i64 %polly.indvar618.us.1, %smin1049
  br i1 %exitcond1047.1.not, label %polly.cond625.loopexit.us.1, label %polly.loop_header614.us.1

polly.cond625.loopexit.us.1:                      ; preds = %polly.loop_header614.us.1
  br i1 %.not874, label %polly.loop_header614.us.2.preheader, label %polly.then627.us.1

polly.then627.us.1:                               ; preds = %polly.cond625.loopexit.us.1
  %polly.access.add.call1631.us.1 = or i64 %221, 1
  %polly.access.call1632.us.1 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.us.1
  %polly.access.call1632.load.us.1 = load double, double* %polly.access.call1632.us.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1479634.us.1 = add nsw i64 %219, 1200
  %polly.access.Packed_MemRef_call1479635.us.1 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.us.1
  store double %polly.access.call1632.load.us.1, double* %polly.access.Packed_MemRef_call1479635.us.1, align 8
  br label %polly.loop_header614.us.2.preheader

polly.loop_header614.us.2.preheader:              ; preds = %polly.then627.us.1, %polly.cond625.loopexit.us.1
  br label %polly.loop_header614.us.2

polly.loop_header614.us.2:                        ; preds = %polly.loop_header614.us.2.preheader, %polly.loop_header614.us.2
  %polly.indvar618.us.2 = phi i64 [ %polly.indvar_next619.us.2, %polly.loop_header614.us.2 ], [ 0, %polly.loop_header614.us.2.preheader ]
  %360 = add nuw nsw i64 %polly.indvar618.us.2, %212
  %polly.access.mul.call1622.us.2 = mul nuw nsw i64 %360, 1000
  %polly.access.add.call1623.us.2 = add nuw nsw i64 %203, %polly.access.mul.call1622.us.2
  %polly.access.call1624.us.2 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1623.us.2
  %polly.access.call1624.load.us.2 = load double, double* %polly.access.call1624.us.2, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1479.us.2 = add nuw nsw i64 %polly.indvar618.us.2, 2400
  %polly.access.Packed_MemRef_call1479.us.2 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us.2
  store double %polly.access.call1624.load.us.2, double* %polly.access.Packed_MemRef_call1479.us.2, align 8
  %polly.indvar_next619.us.2 = add nuw nsw i64 %polly.indvar618.us.2, 1
  %exitcond1047.2.not = icmp eq i64 %polly.indvar618.us.2, %smin1049
  br i1 %exitcond1047.2.not, label %polly.cond625.loopexit.us.2, label %polly.loop_header614.us.2

polly.cond625.loopexit.us.2:                      ; preds = %polly.loop_header614.us.2
  br i1 %.not874, label %polly.loop_header614.us.3.preheader, label %polly.then627.us.2

polly.then627.us.2:                               ; preds = %polly.cond625.loopexit.us.2
  %polly.access.add.call1631.us.2 = or i64 %221, 2
  %polly.access.call1632.us.2 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.us.2
  %polly.access.call1632.load.us.2 = load double, double* %polly.access.call1632.us.2, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1479634.us.2 = add nsw i64 %219, 2400
  %polly.access.Packed_MemRef_call1479635.us.2 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.us.2
  store double %polly.access.call1632.load.us.2, double* %polly.access.Packed_MemRef_call1479635.us.2, align 8
  br label %polly.loop_header614.us.3.preheader

polly.loop_header614.us.3.preheader:              ; preds = %polly.then627.us.2, %polly.cond625.loopexit.us.2
  br label %polly.loop_header614.us.3

polly.loop_header614.us.3:                        ; preds = %polly.loop_header614.us.3.preheader, %polly.loop_header614.us.3
  %polly.indvar618.us.3 = phi i64 [ %polly.indvar_next619.us.3, %polly.loop_header614.us.3 ], [ 0, %polly.loop_header614.us.3.preheader ]
  %361 = add nuw nsw i64 %polly.indvar618.us.3, %212
  %polly.access.mul.call1622.us.3 = mul nuw nsw i64 %361, 1000
  %polly.access.add.call1623.us.3 = add nuw nsw i64 %204, %polly.access.mul.call1622.us.3
  %polly.access.call1624.us.3 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1623.us.3
  %polly.access.call1624.load.us.3 = load double, double* %polly.access.call1624.us.3, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1479.us.3 = add nuw nsw i64 %polly.indvar618.us.3, 3600
  %polly.access.Packed_MemRef_call1479.us.3 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us.3
  store double %polly.access.call1624.load.us.3, double* %polly.access.Packed_MemRef_call1479.us.3, align 8
  %polly.indvar_next619.us.3 = add nuw nsw i64 %polly.indvar618.us.3, 1
  %exitcond1047.3.not = icmp eq i64 %polly.indvar618.us.3, %smin1049
  br i1 %exitcond1047.3.not, label %polly.cond625.loopexit.us.3, label %polly.loop_header614.us.3

polly.cond625.loopexit.us.3:                      ; preds = %polly.loop_header614.us.3
  br i1 %.not874, label %polly.loop_header636.preheader, label %polly.then627.us.3

polly.then627.us.3:                               ; preds = %polly.cond625.loopexit.us.3
  %polly.access.add.call1631.us.3 = or i64 %221, 3
  %polly.access.call1632.us.3 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.us.3
  %polly.access.call1632.load.us.3 = load double, double* %polly.access.call1632.us.3, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1479634.us.3 = add nsw i64 %219, 3600
  %polly.access.Packed_MemRef_call1479635.us.3 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.us.3
  store double %polly.access.call1632.load.us.3, double* %polly.access.Packed_MemRef_call1479635.us.3, align 8
  br label %polly.loop_header636.preheader

polly.loop_header643.us.1:                        ; preds = %polly.loop_header643.us.1, %polly.loop_exit645.loopexit.us
  %polly.indvar647.us.1 = phi i64 [ %polly.indvar_next648.us.1, %polly.loop_header643.us.1 ], [ 0, %polly.loop_exit645.loopexit.us ]
  %362 = add nuw nsw i64 %polly.indvar647.us.1, %212
  %polly.access.add.Packed_MemRef_call1479651.us.1 = add nuw nsw i64 %polly.indvar647.us.1, 1200
  %polly.access.Packed_MemRef_call1479652.us.1 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479651.us.1
  %_p_scalar_653.us.1 = load double, double* %polly.access.Packed_MemRef_call1479652.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_656.us.1, %_p_scalar_653.us.1
  %363 = mul nuw nsw i64 %362, 8000
  %364 = add nuw nsw i64 %363, %207
  %scevgep657.us.1 = getelementptr i8, i8* %call2, i64 %364
  %scevgep657658.us.1 = bitcast i8* %scevgep657.us.1 to double*
  %_p_scalar_659.us.1 = load double, double* %scevgep657658.us.1, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_663.us.1, %_p_scalar_659.us.1
  %365 = shl i64 %362, 3
  %366 = add i64 %365, %224
  %scevgep664.us.1 = getelementptr i8, i8* %call, i64 %366
  %scevgep664665.us.1 = bitcast i8* %scevgep664.us.1 to double*
  %_p_scalar_666.us.1 = load double, double* %scevgep664665.us.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_666.us.1
  store double %p_add42.i.us.1, double* %scevgep664665.us.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next648.us.1 = add nuw nsw i64 %polly.indvar647.us.1, 1
  %exitcond1050.1.not = icmp eq i64 %polly.indvar647.us.1, %smin1049
  br i1 %exitcond1050.1.not, label %polly.loop_exit645.loopexit.us.1, label %polly.loop_header643.us.1

polly.loop_exit645.loopexit.us.1:                 ; preds = %polly.loop_header643.us.1
  %367 = add i64 %209, %223
  %scevgep654.us.2 = getelementptr i8, i8* %call2, i64 %367
  %scevgep654655.us.2 = bitcast i8* %scevgep654.us.2 to double*
  %_p_scalar_656.us.2 = load double, double* %scevgep654655.us.2, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1479661.us.2 = add nsw i64 %219, 2400
  %polly.access.Packed_MemRef_call1479662.us.2 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479661.us.2
  %_p_scalar_663.us.2 = load double, double* %polly.access.Packed_MemRef_call1479662.us.2, align 8
  br label %polly.loop_header643.us.2

polly.loop_header643.us.2:                        ; preds = %polly.loop_header643.us.2, %polly.loop_exit645.loopexit.us.1
  %polly.indvar647.us.2 = phi i64 [ %polly.indvar_next648.us.2, %polly.loop_header643.us.2 ], [ 0, %polly.loop_exit645.loopexit.us.1 ]
  %368 = add nuw nsw i64 %polly.indvar647.us.2, %212
  %polly.access.add.Packed_MemRef_call1479651.us.2 = add nuw nsw i64 %polly.indvar647.us.2, 2400
  %polly.access.Packed_MemRef_call1479652.us.2 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479651.us.2
  %_p_scalar_653.us.2 = load double, double* %polly.access.Packed_MemRef_call1479652.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_656.us.2, %_p_scalar_653.us.2
  %369 = mul nuw nsw i64 %368, 8000
  %370 = add nuw nsw i64 %369, %209
  %scevgep657.us.2 = getelementptr i8, i8* %call2, i64 %370
  %scevgep657658.us.2 = bitcast i8* %scevgep657.us.2 to double*
  %_p_scalar_659.us.2 = load double, double* %scevgep657658.us.2, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_663.us.2, %_p_scalar_659.us.2
  %371 = shl i64 %368, 3
  %372 = add i64 %371, %224
  %scevgep664.us.2 = getelementptr i8, i8* %call, i64 %372
  %scevgep664665.us.2 = bitcast i8* %scevgep664.us.2 to double*
  %_p_scalar_666.us.2 = load double, double* %scevgep664665.us.2, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_666.us.2
  store double %p_add42.i.us.2, double* %scevgep664665.us.2, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next648.us.2 = add nuw nsw i64 %polly.indvar647.us.2, 1
  %exitcond1050.2.not = icmp eq i64 %polly.indvar647.us.2, %smin1049
  br i1 %exitcond1050.2.not, label %polly.loop_exit645.loopexit.us.2, label %polly.loop_header643.us.2

polly.loop_exit645.loopexit.us.2:                 ; preds = %polly.loop_header643.us.2
  %373 = add i64 %211, %223
  %scevgep654.us.3 = getelementptr i8, i8* %call2, i64 %373
  %scevgep654655.us.3 = bitcast i8* %scevgep654.us.3 to double*
  %_p_scalar_656.us.3 = load double, double* %scevgep654655.us.3, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1479661.us.3 = add nsw i64 %219, 3600
  %polly.access.Packed_MemRef_call1479662.us.3 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479661.us.3
  %_p_scalar_663.us.3 = load double, double* %polly.access.Packed_MemRef_call1479662.us.3, align 8
  br label %polly.loop_header643.us.3

polly.loop_header643.us.3:                        ; preds = %polly.loop_header643.us.3, %polly.loop_exit645.loopexit.us.2
  %polly.indvar647.us.3 = phi i64 [ %polly.indvar_next648.us.3, %polly.loop_header643.us.3 ], [ 0, %polly.loop_exit645.loopexit.us.2 ]
  %374 = add nuw nsw i64 %polly.indvar647.us.3, %212
  %polly.access.add.Packed_MemRef_call1479651.us.3 = add nuw nsw i64 %polly.indvar647.us.3, 3600
  %polly.access.Packed_MemRef_call1479652.us.3 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479651.us.3
  %_p_scalar_653.us.3 = load double, double* %polly.access.Packed_MemRef_call1479652.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_656.us.3, %_p_scalar_653.us.3
  %375 = mul nuw nsw i64 %374, 8000
  %376 = add nuw nsw i64 %375, %211
  %scevgep657.us.3 = getelementptr i8, i8* %call2, i64 %376
  %scevgep657658.us.3 = bitcast i8* %scevgep657.us.3 to double*
  %_p_scalar_659.us.3 = load double, double* %scevgep657658.us.3, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_663.us.3, %_p_scalar_659.us.3
  %377 = shl i64 %374, 3
  %378 = add i64 %377, %224
  %scevgep664.us.3 = getelementptr i8, i8* %call, i64 %378
  %scevgep664665.us.3 = bitcast i8* %scevgep664.us.3 to double*
  %_p_scalar_666.us.3 = load double, double* %scevgep664665.us.3, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_666.us.3
  store double %p_add42.i.us.3, double* %scevgep664665.us.3, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next648.us.3 = add nuw nsw i64 %polly.indvar647.us.3, 1
  %exitcond1050.3.not = icmp eq i64 %polly.indvar647.us.3, %smin1049
  br i1 %exitcond1050.3.not, label %polly.loop_exit638, label %polly.loop_header643.us.3
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
!25 = !{!"llvm.loop.tile.size", i32 128}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 4}
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
