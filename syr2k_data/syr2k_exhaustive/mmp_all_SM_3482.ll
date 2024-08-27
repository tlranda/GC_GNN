; ModuleID = 'syr2k_exhaustive/mmp_all_SM_3482.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_3482.c"
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
  %call821 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1673 = bitcast i8* %call1 to double*
  %polly.access.call1682 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1682, %call2
  %polly.access.call2702 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2702, %call1
  %2 = or i1 %0, %1
  %polly.access.call722 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call722, %call2
  %4 = icmp ule i8* %polly.access.call2702, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call722, %call1
  %8 = icmp ule i8* %polly.access.call1682, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header795, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call821, i64 %indvars.iv7.i, i64 %index1111
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit856
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start479, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1173 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1173, label %for.body3.i46.preheader1250, label %vector.ph1174

vector.ph1174:                                    ; preds = %for.body3.i46.preheader
  %n.vec1176 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1172

vector.body1172:                                  ; preds = %vector.body1172, %vector.ph1174
  %index1177 = phi i64 [ 0, %vector.ph1174 ], [ %index.next1178, %vector.body1172 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call821, i64 %indvars.iv21.i, i64 %index1177
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1178 = add i64 %index1177, 4
  %46 = icmp eq i64 %index.next1178, %n.vec1176
  br i1 %46, label %middle.block1170, label %vector.body1172, !llvm.loop !18

middle.block1170:                                 ; preds = %vector.body1172
  %cmp.n1180 = icmp eq i64 %indvars.iv21.i, %n.vec1176
  br i1 %cmp.n1180, label %for.inc6.i, label %for.body3.i46.preheader1250

for.body3.i46.preheader1250:                      ; preds = %for.body3.i46.preheader, %middle.block1170
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1176, %middle.block1170 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1250, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1250 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call821, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1170, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call821, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting480
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start287, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1196 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1196, label %for.body3.i60.preheader1248, label %vector.ph1197

vector.ph1197:                                    ; preds = %for.body3.i60.preheader
  %n.vec1199 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1195

vector.body1195:                                  ; preds = %vector.body1195, %vector.ph1197
  %index1200 = phi i64 [ 0, %vector.ph1197 ], [ %index.next1201, %vector.body1195 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call821, i64 %indvars.iv21.i52, i64 %index1200
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1204 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1204, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1201 = add i64 %index1200, 4
  %57 = icmp eq i64 %index.next1201, %n.vec1199
  br i1 %57, label %middle.block1193, label %vector.body1195, !llvm.loop !59

middle.block1193:                                 ; preds = %vector.body1195
  %cmp.n1203 = icmp eq i64 %indvars.iv21.i52, %n.vec1199
  br i1 %cmp.n1203, label %for.inc6.i63, label %for.body3.i60.preheader1248

for.body3.i60.preheader1248:                      ; preds = %for.body3.i60.preheader, %middle.block1193
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1199, %middle.block1193 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1248, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1248 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call821, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1193, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call821, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1222 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1222, label %for.body3.i99.preheader1246, label %vector.ph1223

vector.ph1223:                                    ; preds = %for.body3.i99.preheader
  %n.vec1225 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1221

vector.body1221:                                  ; preds = %vector.body1221, %vector.ph1223
  %index1226 = phi i64 [ 0, %vector.ph1223 ], [ %index.next1227, %vector.body1221 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call821, i64 %indvars.iv21.i91, i64 %index1226
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1230 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1230, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1227 = add i64 %index1226, 4
  %68 = icmp eq i64 %index.next1227, %n.vec1225
  br i1 %68, label %middle.block1219, label %vector.body1221, !llvm.loop !61

middle.block1219:                                 ; preds = %vector.body1221
  %cmp.n1229 = icmp eq i64 %indvars.iv21.i91, %n.vec1225
  br i1 %cmp.n1229, label %for.inc6.i102, label %for.body3.i99.preheader1246

for.body3.i99.preheader1246:                      ; preds = %for.body3.i99.preheader, %middle.block1219
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1225, %middle.block1219 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1246, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1246 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call821, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1219, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call821, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !63
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call821, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !65

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !66

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1234 = phi i64 [ %indvar.next1235, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1234, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1236 = icmp ult i64 %88, 4
  br i1 %min.iters.check1236, label %polly.loop_header191.preheader, label %vector.ph1237

vector.ph1237:                                    ; preds = %polly.loop_header
  %n.vec1239 = and i64 %88, -4
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.body1233, %vector.ph1237
  %index1240 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1241, %vector.body1233 ]
  %90 = shl nuw nsw i64 %index1240, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1244 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1244, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1241 = add i64 %index1240, 4
  %95 = icmp eq i64 %index.next1241, %n.vec1239
  br i1 %95, label %middle.block1231, label %vector.body1233, !llvm.loop !73

middle.block1231:                                 ; preds = %vector.body1233
  %cmp.n1243 = icmp eq i64 %88, %n.vec1239
  br i1 %cmp.n1243, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1231
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1239, %middle.block1231 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1231
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1013.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1235 = add i64 %indvar1234, 1
  br i1 %exitcond1013.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1012.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar202, 100
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar_next203, 10
  br i1 %exitcond1011.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv1002 = phi i64 [ %indvars.iv.next1003, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %98 = mul nsw i64 %polly.indvar208, -64
  %99 = shl nsw i64 %polly.indvar208, 6
  %100 = add nsw i64 %98, 1199
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit250
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next1003 = add nsw i64 %indvars.iv1002, -64
  %exitcond1010.not = icmp eq i64 %polly.indvar_next209, 19
  br i1 %exitcond1010.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit250, %polly.loop_header205
  %indvars.iv1004 = phi i64 [ %indvars.iv.next1005, %polly.loop_exit250 ], [ %indvars.iv1002, %polly.loop_header205 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit250 ], [ 0, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit250 ], [ %polly.indvar208, %polly.loop_header205 ]
  %smin1006 = call i64 @llvm.smin.i64(i64 %indvars.iv1004, i64 -1136)
  %101 = add nsw i64 %smin1006, 1199
  %smax = call i64 @llvm.smax.i64(i64 %101, i64 0)
  %102 = shl nsw i64 %polly.indvar214, 6
  %103 = add nsw i64 %102, %98
  %.inv.not = icmp eq i64 %103, 0
  %104 = or i64 %103, 63
  %105 = icmp ult i64 %100, %104
  %106 = select i1 %105, i64 %100, i64 %104
  %polly.loop_guard237.not = icmp ugt i64 %103, %106
  br i1 %.inv.not, label %polly.loop_header211.split, label %polly.loop_header217.us

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_exit236.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit236.us ], [ 0, %polly.loop_header211 ]
  %107 = add nuw nsw i64 %polly.indvar220.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header223.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_header223.us ], [ 0, %polly.loop_header217.us ]
  %108 = add nuw nsw i64 %polly.indvar226.us, %99
  %polly.access.mul.call1230.us = mul nuw nsw i64 %108, 1000
  %polly.access.add.call1231.us = add nuw nsw i64 %107, %polly.access.mul.call1230.us
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar226.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next227.us = add nuw i64 %polly.indvar226.us, 1
  %exitcond997.not = icmp eq i64 %polly.indvar_next227.us, 64
  br i1 %exitcond997.not, label %polly.loop_exit225.loopexit.us, label %polly.loop_header223.us

polly.loop_header234.us:                          ; preds = %polly.loop_exit225.loopexit.us, %polly.loop_header234.us
  %polly.indvar238.us = phi i64 [ %polly.indvar_next239.us, %polly.loop_header234.us ], [ %103, %polly.loop_exit225.loopexit.us ]
  %109 = add nuw nsw i64 %polly.indvar238.us, %99
  %polly.access.mul.call1242.us = mul nuw nsw i64 %109, 1000
  %polly.access.add.call1243.us = add nuw nsw i64 %107, %polly.access.mul.call1242.us
  %polly.access.call1244.us = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1243.us
  %polly.access.call1244.load.us = load double, double* %polly.access.call1244.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1246.us = add nuw nsw i64 %polly.indvar238.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1247.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us
  store double %polly.access.call1244.load.us, double* %polly.access.Packed_MemRef_call1247.us, align 8
  %polly.indvar_next239.us = add nuw nsw i64 %polly.indvar238.us, 1
  %polly.loop_cond240.not.not.us = icmp ult i64 %polly.indvar238.us, %106
  br i1 %polly.loop_cond240.not.not.us, label %polly.loop_header234.us, label %polly.loop_exit236.us

polly.loop_exit236.us:                            ; preds = %polly.loop_header234.us, %polly.loop_exit225.loopexit.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond998.not = icmp eq i64 %polly.indvar_next221.us, 100
  br i1 %exitcond998.not, label %polly.loop_header248.preheader, label %polly.loop_header217.us

polly.loop_exit225.loopexit.us:                   ; preds = %polly.loop_header223.us
  br i1 %polly.loop_guard237.not, label %polly.loop_exit236.us, label %polly.loop_header234.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  br i1 %polly.loop_guard237.not, label %polly.loop_header248.preheader, label %polly.loop_header217

polly.loop_exit250:                               ; preds = %polly.loop_exit257.loopexit.us, %polly.loop_header248.preheader
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %indvars.iv.next1005 = add nsw i64 %indvars.iv1004, -64
  %exitcond1009.not = icmp eq i64 %polly.indvar_next215, 19
  br i1 %exitcond1009.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header211.split, %polly.loop_exit236
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit236 ], [ 0, %polly.loop_header211.split ]
  %110 = add nuw nsw i64 %polly.indvar220, %97
  %polly.access.mul.Packed_MemRef_call1245 = mul nuw nsw i64 %polly.indvar220, 1200
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_header234
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, 100
  br i1 %exitcond.not, label %polly.loop_header248.preheader, label %polly.loop_header217

polly.loop_header248.preheader:                   ; preds = %polly.loop_exit236.us, %polly.loop_exit236, %polly.loop_header211.split
  %111 = mul nsw i64 %polly.indvar214, -64
  %polly.loop_guard2581092 = icmp sgt i64 %111, -1200
  br i1 %polly.loop_guard2581092, label %polly.loop_header248.us, label %polly.loop_exit250

polly.loop_header248.us:                          ; preds = %polly.loop_header248.preheader, %polly.loop_exit257.loopexit.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_exit257.loopexit.us ], [ 0, %polly.loop_header248.preheader ]
  %112 = add nuw nsw i64 %polly.indvar251.us, %97
  %polly.access.mul.Packed_MemRef_call1268.us = mul nuw nsw i64 %polly.indvar251.us, 1200
  %113 = shl i64 %112, 3
  br label %polly.loop_header255.us

polly.loop_header255.us:                          ; preds = %polly.loop_header248.us, %polly.loop_exit264.us
  %indvars.iv999 = phi i64 [ %indvars.iv, %polly.loop_header248.us ], [ %indvars.iv.next1000, %polly.loop_exit264.us ]
  %polly.indvar259.us = phi i64 [ 0, %polly.loop_header248.us ], [ %polly.indvar_next260.us, %polly.loop_exit264.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv999, i64 63)
  %114 = add nuw nsw i64 %polly.indvar259.us, %103
  %115 = add nuw nsw i64 %polly.indvar259.us, %102
  %116 = mul nuw nsw i64 %115, 8000
  %117 = add nuw nsw i64 %116, %113
  %scevgep272.us = getelementptr i8, i8* %call2, i64 %117
  %scevgep272273.us = bitcast i8* %scevgep272.us to double*
  %_p_scalar_274.us = load double, double* %scevgep272273.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1279.us = add nuw nsw i64 %114, %polly.access.mul.Packed_MemRef_call1268.us
  %polly.access.Packed_MemRef_call1280.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1279.us
  %_p_scalar_281.us = load double, double* %polly.access.Packed_MemRef_call1280.us, align 8
  %118 = mul nuw nsw i64 %115, 9600
  br label %polly.loop_header262.us

polly.loop_header262.us:                          ; preds = %polly.loop_header262.us, %polly.loop_header255.us
  %polly.indvar265.us = phi i64 [ 0, %polly.loop_header255.us ], [ %polly.indvar_next266.us, %polly.loop_header262.us ]
  %119 = add nuw nsw i64 %polly.indvar265.us, %99
  %polly.access.add.Packed_MemRef_call1269.us = add nuw nsw i64 %polly.indvar265.us, %polly.access.mul.Packed_MemRef_call1268.us
  %polly.access.Packed_MemRef_call1270.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1269.us
  %_p_scalar_271.us = load double, double* %polly.access.Packed_MemRef_call1270.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_274.us, %_p_scalar_271.us
  %120 = mul nuw nsw i64 %119, 8000
  %121 = add nuw nsw i64 %120, %113
  %scevgep275.us = getelementptr i8, i8* %call2, i64 %121
  %scevgep275276.us = bitcast i8* %scevgep275.us to double*
  %_p_scalar_277.us = load double, double* %scevgep275276.us, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.us = fmul fast double %_p_scalar_281.us, %_p_scalar_277.us
  %122 = shl i64 %119, 3
  %123 = add nuw nsw i64 %122, %118
  %scevgep282.us = getelementptr i8, i8* %call, i64 %123
  %scevgep282283.us = bitcast i8* %scevgep282.us to double*
  %_p_scalar_284.us = load double, double* %scevgep282283.us, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_284.us
  store double %p_add42.i118.us, double* %scevgep282283.us, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next266.us = add nuw nsw i64 %polly.indvar265.us, 1
  %exitcond1001.not = icmp eq i64 %polly.indvar265.us, %smin
  br i1 %exitcond1001.not, label %polly.loop_exit264.us, label %polly.loop_header262.us

polly.loop_exit264.us:                            ; preds = %polly.loop_header262.us
  %polly.indvar_next260.us = add nuw nsw i64 %polly.indvar259.us, 1
  %indvars.iv.next1000 = add nuw nsw i64 %indvars.iv999, 1
  %exitcond1007.not = icmp eq i64 %polly.indvar259.us, %smax
  br i1 %exitcond1007.not, label %polly.loop_exit257.loopexit.us, label %polly.loop_header255.us

polly.loop_exit257.loopexit.us:                   ; preds = %polly.loop_exit264.us
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond1008.not = icmp eq i64 %polly.indvar_next252.us, 100
  br i1 %exitcond1008.not, label %polly.loop_exit250, label %polly.loop_header248.us

polly.loop_header234:                             ; preds = %polly.loop_header217, %polly.loop_header234
  %polly.indvar238 = phi i64 [ %polly.indvar_next239, %polly.loop_header234 ], [ %103, %polly.loop_header217 ]
  %124 = add nuw nsw i64 %polly.indvar238, %99
  %polly.access.mul.call1242 = mul nuw nsw i64 %124, 1000
  %polly.access.add.call1243 = add nuw nsw i64 %110, %polly.access.mul.call1242
  %polly.access.call1244 = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1243
  %polly.access.call1244.load = load double, double* %polly.access.call1244, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1246 = add nuw nsw i64 %polly.indvar238, %polly.access.mul.Packed_MemRef_call1245
  %polly.access.Packed_MemRef_call1247 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246
  store double %polly.access.call1244.load, double* %polly.access.Packed_MemRef_call1247, align 8
  %polly.indvar_next239 = add nuw nsw i64 %polly.indvar238, 1
  %polly.loop_cond240.not.not = icmp ult i64 %polly.indvar238, %106
  br i1 %polly.loop_cond240.not.not, label %polly.loop_header234, label %polly.loop_exit236

polly.start287:                                   ; preds = %kernel_syr2k.exit
  %malloccall289 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header373

polly.exiting288:                                 ; preds = %polly.loop_exit397
  tail call void @free(i8* %malloccall289)
  br label %kernel_syr2k.exit90

polly.loop_header373:                             ; preds = %polly.loop_exit381, %polly.start287
  %indvar1208 = phi i64 [ %indvar.next1209, %polly.loop_exit381 ], [ 0, %polly.start287 ]
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_exit381 ], [ 1, %polly.start287 ]
  %125 = add i64 %indvar1208, 1
  %126 = mul nuw nsw i64 %polly.indvar376, 9600
  %scevgep385 = getelementptr i8, i8* %call, i64 %126
  %min.iters.check1210 = icmp ult i64 %125, 4
  br i1 %min.iters.check1210, label %polly.loop_header379.preheader, label %vector.ph1211

vector.ph1211:                                    ; preds = %polly.loop_header373
  %n.vec1213 = and i64 %125, -4
  br label %vector.body1207

vector.body1207:                                  ; preds = %vector.body1207, %vector.ph1211
  %index1214 = phi i64 [ 0, %vector.ph1211 ], [ %index.next1215, %vector.body1207 ]
  %127 = shl nuw nsw i64 %index1214, 3
  %128 = getelementptr i8, i8* %scevgep385, i64 %127
  %129 = bitcast i8* %128 to <4 x double>*
  %wide.load1218 = load <4 x double>, <4 x double>* %129, align 8, !alias.scope !78, !noalias !80
  %130 = fmul fast <4 x double> %wide.load1218, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %131 = bitcast i8* %128 to <4 x double>*
  store <4 x double> %130, <4 x double>* %131, align 8, !alias.scope !78, !noalias !80
  %index.next1215 = add i64 %index1214, 4
  %132 = icmp eq i64 %index.next1215, %n.vec1213
  br i1 %132, label %middle.block1205, label %vector.body1207, !llvm.loop !84

middle.block1205:                                 ; preds = %vector.body1207
  %cmp.n1217 = icmp eq i64 %125, %n.vec1213
  br i1 %cmp.n1217, label %polly.loop_exit381, label %polly.loop_header379.preheader

polly.loop_header379.preheader:                   ; preds = %polly.loop_header373, %middle.block1205
  %polly.indvar382.ph = phi i64 [ 0, %polly.loop_header373 ], [ %n.vec1213, %middle.block1205 ]
  br label %polly.loop_header379

polly.loop_exit381:                               ; preds = %polly.loop_header379, %middle.block1205
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar_next377, 1200
  %indvar.next1209 = add i64 %indvar1208, 1
  br i1 %exitcond1035.not, label %polly.loop_header389.preheader, label %polly.loop_header373

polly.loop_header389.preheader:                   ; preds = %polly.loop_exit381
  %Packed_MemRef_call1290 = bitcast i8* %malloccall289 to double*
  br label %polly.loop_header389

polly.loop_header379:                             ; preds = %polly.loop_header379.preheader, %polly.loop_header379
  %polly.indvar382 = phi i64 [ %polly.indvar_next383, %polly.loop_header379 ], [ %polly.indvar382.ph, %polly.loop_header379.preheader ]
  %133 = shl nuw nsw i64 %polly.indvar382, 3
  %scevgep386 = getelementptr i8, i8* %scevgep385, i64 %133
  %scevgep386387 = bitcast i8* %scevgep386 to double*
  %_p_scalar_388 = load double, double* %scevgep386387, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_388, 1.200000e+00
  store double %p_mul.i57, double* %scevgep386387, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next383 = add nuw nsw i64 %polly.indvar382, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next383, %polly.indvar376
  br i1 %exitcond1034.not, label %polly.loop_exit381, label %polly.loop_header379, !llvm.loop !85

polly.loop_header389:                             ; preds = %polly.loop_header389.preheader, %polly.loop_exit397
  %polly.indvar392 = phi i64 [ %polly.indvar_next393, %polly.loop_exit397 ], [ 0, %polly.loop_header389.preheader ]
  %134 = mul nuw nsw i64 %polly.indvar392, 100
  br label %polly.loop_header395

polly.loop_exit397:                               ; preds = %polly.loop_exit403
  %polly.indvar_next393 = add nuw nsw i64 %polly.indvar392, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next393, 10
  br i1 %exitcond1033.not, label %polly.exiting288, label %polly.loop_header389

polly.loop_header395:                             ; preds = %polly.loop_exit403, %polly.loop_header389
  %indvars.iv1023 = phi i64 [ %indvars.iv.next1024, %polly.loop_exit403 ], [ 0, %polly.loop_header389 ]
  %polly.indvar398 = phi i64 [ %polly.indvar_next399, %polly.loop_exit403 ], [ 0, %polly.loop_header389 ]
  %135 = mul nsw i64 %polly.indvar398, -64
  %136 = shl nsw i64 %polly.indvar398, 6
  %137 = add nsw i64 %135, 1199
  br label %polly.loop_header401

polly.loop_exit403:                               ; preds = %polly.loop_exit442
  %polly.indvar_next399 = add nuw nsw i64 %polly.indvar398, 1
  %indvars.iv.next1024 = add nsw i64 %indvars.iv1023, -64
  %exitcond1032.not = icmp eq i64 %polly.indvar_next399, 19
  br i1 %exitcond1032.not, label %polly.loop_exit397, label %polly.loop_header395

polly.loop_header401:                             ; preds = %polly.loop_exit442, %polly.loop_header395
  %indvars.iv1025 = phi i64 [ %indvars.iv.next1026, %polly.loop_exit442 ], [ %indvars.iv1023, %polly.loop_header395 ]
  %indvars.iv1017 = phi i64 [ %indvars.iv.next1018, %polly.loop_exit442 ], [ 0, %polly.loop_header395 ]
  %polly.indvar404 = phi i64 [ %polly.indvar_next405, %polly.loop_exit442 ], [ %polly.indvar398, %polly.loop_header395 ]
  %smin1027 = call i64 @llvm.smin.i64(i64 %indvars.iv1025, i64 -1136)
  %138 = add nsw i64 %smin1027, 1199
  %smax1028 = call i64 @llvm.smax.i64(i64 %138, i64 0)
  %139 = shl nsw i64 %polly.indvar404, 6
  %140 = add nsw i64 %139, %135
  %.inv875.not = icmp eq i64 %140, 0
  %141 = or i64 %140, 63
  %142 = icmp ult i64 %137, %141
  %143 = select i1 %142, i64 %137, i64 %141
  %polly.loop_guard429.not = icmp ugt i64 %140, %143
  br i1 %.inv875.not, label %polly.loop_header401.split, label %polly.loop_header407.us

polly.loop_header407.us:                          ; preds = %polly.loop_header401, %polly.loop_exit428.us
  %polly.indvar410.us = phi i64 [ %polly.indvar_next411.us, %polly.loop_exit428.us ], [ 0, %polly.loop_header401 ]
  %144 = add nuw nsw i64 %polly.indvar410.us, %134
  %polly.access.mul.Packed_MemRef_call1290.us = mul nuw nsw i64 %polly.indvar410.us, 1200
  br label %polly.loop_header414.us

polly.loop_header414.us:                          ; preds = %polly.loop_header407.us, %polly.loop_header414.us
  %polly.indvar418.us = phi i64 [ %polly.indvar_next419.us, %polly.loop_header414.us ], [ 0, %polly.loop_header407.us ]
  %145 = add nuw nsw i64 %polly.indvar418.us, %136
  %polly.access.mul.call1422.us = mul nuw nsw i64 %145, 1000
  %polly.access.add.call1423.us = add nuw nsw i64 %144, %polly.access.mul.call1422.us
  %polly.access.call1424.us = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1423.us
  %polly.access.call1424.load.us = load double, double* %polly.access.call1424.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us = add nuw nsw i64 %polly.indvar418.us, %polly.access.mul.Packed_MemRef_call1290.us
  %polly.access.Packed_MemRef_call1290.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us
  store double %polly.access.call1424.load.us, double* %polly.access.Packed_MemRef_call1290.us, align 8
  %polly.indvar_next419.us = add nuw i64 %polly.indvar418.us, 1
  %exitcond1015.not = icmp eq i64 %polly.indvar_next419.us, 64
  br i1 %exitcond1015.not, label %polly.loop_exit416.loopexit.us, label %polly.loop_header414.us

polly.loop_header426.us:                          ; preds = %polly.loop_exit416.loopexit.us, %polly.loop_header426.us
  %polly.indvar430.us = phi i64 [ %polly.indvar_next431.us, %polly.loop_header426.us ], [ %140, %polly.loop_exit416.loopexit.us ]
  %146 = add nuw nsw i64 %polly.indvar430.us, %136
  %polly.access.mul.call1434.us = mul nuw nsw i64 %146, 1000
  %polly.access.add.call1435.us = add nuw nsw i64 %144, %polly.access.mul.call1434.us
  %polly.access.call1436.us = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1435.us
  %polly.access.call1436.load.us = load double, double* %polly.access.call1436.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290438.us = add nuw nsw i64 %polly.indvar430.us, %polly.access.mul.Packed_MemRef_call1290.us
  %polly.access.Packed_MemRef_call1290439.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290438.us
  store double %polly.access.call1436.load.us, double* %polly.access.Packed_MemRef_call1290439.us, align 8
  %polly.indvar_next431.us = add nuw nsw i64 %polly.indvar430.us, 1
  %polly.loop_cond432.not.not.us = icmp ult i64 %polly.indvar430.us, %143
  br i1 %polly.loop_cond432.not.not.us, label %polly.loop_header426.us, label %polly.loop_exit428.us

polly.loop_exit428.us:                            ; preds = %polly.loop_header426.us, %polly.loop_exit416.loopexit.us
  %polly.indvar_next411.us = add nuw nsw i64 %polly.indvar410.us, 1
  %exitcond1016.not = icmp eq i64 %polly.indvar_next411.us, 100
  br i1 %exitcond1016.not, label %polly.loop_header440.preheader, label %polly.loop_header407.us

polly.loop_exit416.loopexit.us:                   ; preds = %polly.loop_header414.us
  br i1 %polly.loop_guard429.not, label %polly.loop_exit428.us, label %polly.loop_header426.us

polly.loop_header401.split:                       ; preds = %polly.loop_header401
  br i1 %polly.loop_guard429.not, label %polly.loop_header440.preheader, label %polly.loop_header407

polly.loop_exit442:                               ; preds = %polly.loop_exit449.loopexit.us, %polly.loop_header440.preheader
  %polly.indvar_next405 = add nuw nsw i64 %polly.indvar404, 1
  %indvars.iv.next1018 = add nuw nsw i64 %indvars.iv1017, 64
  %indvars.iv.next1026 = add nsw i64 %indvars.iv1025, -64
  %exitcond1031.not = icmp eq i64 %polly.indvar_next405, 19
  br i1 %exitcond1031.not, label %polly.loop_exit403, label %polly.loop_header401

polly.loop_header407:                             ; preds = %polly.loop_header401.split, %polly.loop_exit428
  %polly.indvar410 = phi i64 [ %polly.indvar_next411, %polly.loop_exit428 ], [ 0, %polly.loop_header401.split ]
  %147 = add nuw nsw i64 %polly.indvar410, %134
  %polly.access.mul.Packed_MemRef_call1290437 = mul nuw nsw i64 %polly.indvar410, 1200
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_header426
  %polly.indvar_next411 = add nuw nsw i64 %polly.indvar410, 1
  %exitcond1014.not = icmp eq i64 %polly.indvar_next411, 100
  br i1 %exitcond1014.not, label %polly.loop_header440.preheader, label %polly.loop_header407

polly.loop_header440.preheader:                   ; preds = %polly.loop_exit428.us, %polly.loop_exit428, %polly.loop_header401.split
  %148 = mul nsw i64 %polly.indvar404, -64
  %polly.loop_guard4501093 = icmp sgt i64 %148, -1200
  br i1 %polly.loop_guard4501093, label %polly.loop_header440.us, label %polly.loop_exit442

polly.loop_header440.us:                          ; preds = %polly.loop_header440.preheader, %polly.loop_exit449.loopexit.us
  %polly.indvar443.us = phi i64 [ %polly.indvar_next444.us, %polly.loop_exit449.loopexit.us ], [ 0, %polly.loop_header440.preheader ]
  %149 = add nuw nsw i64 %polly.indvar443.us, %134
  %polly.access.mul.Packed_MemRef_call1290460.us = mul nuw nsw i64 %polly.indvar443.us, 1200
  %150 = shl i64 %149, 3
  br label %polly.loop_header447.us

polly.loop_header447.us:                          ; preds = %polly.loop_header440.us, %polly.loop_exit456.us
  %indvars.iv1019 = phi i64 [ %indvars.iv1017, %polly.loop_header440.us ], [ %indvars.iv.next1020, %polly.loop_exit456.us ]
  %polly.indvar451.us = phi i64 [ 0, %polly.loop_header440.us ], [ %polly.indvar_next452.us, %polly.loop_exit456.us ]
  %smin1021 = call i64 @llvm.smin.i64(i64 %indvars.iv1019, i64 63)
  %151 = add nuw nsw i64 %polly.indvar451.us, %140
  %152 = add nuw nsw i64 %polly.indvar451.us, %139
  %153 = mul nuw nsw i64 %152, 8000
  %154 = add nuw nsw i64 %153, %150
  %scevgep464.us = getelementptr i8, i8* %call2, i64 %154
  %scevgep464465.us = bitcast i8* %scevgep464.us to double*
  %_p_scalar_466.us = load double, double* %scevgep464465.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290471.us = add nuw nsw i64 %151, %polly.access.mul.Packed_MemRef_call1290460.us
  %polly.access.Packed_MemRef_call1290472.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290471.us
  %_p_scalar_473.us = load double, double* %polly.access.Packed_MemRef_call1290472.us, align 8
  %155 = mul nuw nsw i64 %152, 9600
  br label %polly.loop_header454.us

polly.loop_header454.us:                          ; preds = %polly.loop_header454.us, %polly.loop_header447.us
  %polly.indvar457.us = phi i64 [ 0, %polly.loop_header447.us ], [ %polly.indvar_next458.us, %polly.loop_header454.us ]
  %156 = add nuw nsw i64 %polly.indvar457.us, %136
  %polly.access.add.Packed_MemRef_call1290461.us = add nuw nsw i64 %polly.indvar457.us, %polly.access.mul.Packed_MemRef_call1290460.us
  %polly.access.Packed_MemRef_call1290462.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290461.us
  %_p_scalar_463.us = load double, double* %polly.access.Packed_MemRef_call1290462.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_466.us, %_p_scalar_463.us
  %157 = mul nuw nsw i64 %156, 8000
  %158 = add nuw nsw i64 %157, %150
  %scevgep467.us = getelementptr i8, i8* %call2, i64 %158
  %scevgep467468.us = bitcast i8* %scevgep467.us to double*
  %_p_scalar_469.us = load double, double* %scevgep467468.us, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.us = fmul fast double %_p_scalar_473.us, %_p_scalar_469.us
  %159 = shl i64 %156, 3
  %160 = add nuw nsw i64 %159, %155
  %scevgep474.us = getelementptr i8, i8* %call, i64 %160
  %scevgep474475.us = bitcast i8* %scevgep474.us to double*
  %_p_scalar_476.us = load double, double* %scevgep474475.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_476.us
  store double %p_add42.i79.us, double* %scevgep474475.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next458.us = add nuw nsw i64 %polly.indvar457.us, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar457.us, %smin1021
  br i1 %exitcond1022.not, label %polly.loop_exit456.us, label %polly.loop_header454.us

polly.loop_exit456.us:                            ; preds = %polly.loop_header454.us
  %polly.indvar_next452.us = add nuw nsw i64 %polly.indvar451.us, 1
  %indvars.iv.next1020 = add nuw nsw i64 %indvars.iv1019, 1
  %exitcond1029.not = icmp eq i64 %polly.indvar451.us, %smax1028
  br i1 %exitcond1029.not, label %polly.loop_exit449.loopexit.us, label %polly.loop_header447.us

polly.loop_exit449.loopexit.us:                   ; preds = %polly.loop_exit456.us
  %polly.indvar_next444.us = add nuw nsw i64 %polly.indvar443.us, 1
  %exitcond1030.not = icmp eq i64 %polly.indvar_next444.us, 100
  br i1 %exitcond1030.not, label %polly.loop_exit442, label %polly.loop_header440.us

polly.loop_header426:                             ; preds = %polly.loop_header407, %polly.loop_header426
  %polly.indvar430 = phi i64 [ %polly.indvar_next431, %polly.loop_header426 ], [ %140, %polly.loop_header407 ]
  %161 = add nuw nsw i64 %polly.indvar430, %136
  %polly.access.mul.call1434 = mul nuw nsw i64 %161, 1000
  %polly.access.add.call1435 = add nuw nsw i64 %147, %polly.access.mul.call1434
  %polly.access.call1436 = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1435
  %polly.access.call1436.load = load double, double* %polly.access.call1436, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290438 = add nuw nsw i64 %polly.indvar430, %polly.access.mul.Packed_MemRef_call1290437
  %polly.access.Packed_MemRef_call1290439 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290438
  store double %polly.access.call1436.load, double* %polly.access.Packed_MemRef_call1290439, align 8
  %polly.indvar_next431 = add nuw nsw i64 %polly.indvar430, 1
  %polly.loop_cond432.not.not = icmp ult i64 %polly.indvar430, %143
  br i1 %polly.loop_cond432.not.not, label %polly.loop_header426, label %polly.loop_exit428

polly.start479:                                   ; preds = %init_array.exit
  %malloccall481 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header565

polly.exiting480:                                 ; preds = %polly.loop_exit589
  tail call void @free(i8* %malloccall481)
  br label %kernel_syr2k.exit

polly.loop_header565:                             ; preds = %polly.loop_exit573, %polly.start479
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit573 ], [ 0, %polly.start479 ]
  %polly.indvar568 = phi i64 [ %polly.indvar_next569, %polly.loop_exit573 ], [ 1, %polly.start479 ]
  %162 = add i64 %indvar, 1
  %163 = mul nuw nsw i64 %polly.indvar568, 9600
  %scevgep577 = getelementptr i8, i8* %call, i64 %163
  %min.iters.check1184 = icmp ult i64 %162, 4
  br i1 %min.iters.check1184, label %polly.loop_header571.preheader, label %vector.ph1185

vector.ph1185:                                    ; preds = %polly.loop_header565
  %n.vec1187 = and i64 %162, -4
  br label %vector.body1183

vector.body1183:                                  ; preds = %vector.body1183, %vector.ph1185
  %index1188 = phi i64 [ 0, %vector.ph1185 ], [ %index.next1189, %vector.body1183 ]
  %164 = shl nuw nsw i64 %index1188, 3
  %165 = getelementptr i8, i8* %scevgep577, i64 %164
  %166 = bitcast i8* %165 to <4 x double>*
  %wide.load1192 = load <4 x double>, <4 x double>* %166, align 8, !alias.scope !88, !noalias !90
  %167 = fmul fast <4 x double> %wide.load1192, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %168 = bitcast i8* %165 to <4 x double>*
  store <4 x double> %167, <4 x double>* %168, align 8, !alias.scope !88, !noalias !90
  %index.next1189 = add i64 %index1188, 4
  %169 = icmp eq i64 %index.next1189, %n.vec1187
  br i1 %169, label %middle.block1181, label %vector.body1183, !llvm.loop !94

middle.block1181:                                 ; preds = %vector.body1183
  %cmp.n1191 = icmp eq i64 %162, %n.vec1187
  br i1 %cmp.n1191, label %polly.loop_exit573, label %polly.loop_header571.preheader

polly.loop_header571.preheader:                   ; preds = %polly.loop_header565, %middle.block1181
  %polly.indvar574.ph = phi i64 [ 0, %polly.loop_header565 ], [ %n.vec1187, %middle.block1181 ]
  br label %polly.loop_header571

polly.loop_exit573:                               ; preds = %polly.loop_header571, %middle.block1181
  %polly.indvar_next569 = add nuw nsw i64 %polly.indvar568, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar_next569, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1057.not, label %polly.loop_header581.preheader, label %polly.loop_header565

polly.loop_header581.preheader:                   ; preds = %polly.loop_exit573
  %Packed_MemRef_call1482 = bitcast i8* %malloccall481 to double*
  br label %polly.loop_header581

polly.loop_header571:                             ; preds = %polly.loop_header571.preheader, %polly.loop_header571
  %polly.indvar574 = phi i64 [ %polly.indvar_next575, %polly.loop_header571 ], [ %polly.indvar574.ph, %polly.loop_header571.preheader ]
  %170 = shl nuw nsw i64 %polly.indvar574, 3
  %scevgep578 = getelementptr i8, i8* %scevgep577, i64 %170
  %scevgep578579 = bitcast i8* %scevgep578 to double*
  %_p_scalar_580 = load double, double* %scevgep578579, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_580, 1.200000e+00
  store double %p_mul.i, double* %scevgep578579, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next575 = add nuw nsw i64 %polly.indvar574, 1
  %exitcond1056.not = icmp eq i64 %polly.indvar_next575, %polly.indvar568
  br i1 %exitcond1056.not, label %polly.loop_exit573, label %polly.loop_header571, !llvm.loop !95

polly.loop_header581:                             ; preds = %polly.loop_header581.preheader, %polly.loop_exit589
  %polly.indvar584 = phi i64 [ %polly.indvar_next585, %polly.loop_exit589 ], [ 0, %polly.loop_header581.preheader ]
  %171 = mul nuw nsw i64 %polly.indvar584, 100
  br label %polly.loop_header587

polly.loop_exit589:                               ; preds = %polly.loop_exit595
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar_next585, 10
  br i1 %exitcond1055.not, label %polly.exiting480, label %polly.loop_header581

polly.loop_header587:                             ; preds = %polly.loop_exit595, %polly.loop_header581
  %indvars.iv1045 = phi i64 [ %indvars.iv.next1046, %polly.loop_exit595 ], [ 0, %polly.loop_header581 ]
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_exit595 ], [ 0, %polly.loop_header581 ]
  %172 = mul nsw i64 %polly.indvar590, -64
  %173 = shl nsw i64 %polly.indvar590, 6
  %174 = add nsw i64 %172, 1199
  br label %polly.loop_header593

polly.loop_exit595:                               ; preds = %polly.loop_exit634
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %indvars.iv.next1046 = add nsw i64 %indvars.iv1045, -64
  %exitcond1054.not = icmp eq i64 %polly.indvar_next591, 19
  br i1 %exitcond1054.not, label %polly.loop_exit589, label %polly.loop_header587

polly.loop_header593:                             ; preds = %polly.loop_exit634, %polly.loop_header587
  %indvars.iv1047 = phi i64 [ %indvars.iv.next1048, %polly.loop_exit634 ], [ %indvars.iv1045, %polly.loop_header587 ]
  %indvars.iv1039 = phi i64 [ %indvars.iv.next1040, %polly.loop_exit634 ], [ 0, %polly.loop_header587 ]
  %polly.indvar596 = phi i64 [ %polly.indvar_next597, %polly.loop_exit634 ], [ %polly.indvar590, %polly.loop_header587 ]
  %smin1049 = call i64 @llvm.smin.i64(i64 %indvars.iv1047, i64 -1136)
  %175 = add nsw i64 %smin1049, 1199
  %smax1050 = call i64 @llvm.smax.i64(i64 %175, i64 0)
  %176 = shl nsw i64 %polly.indvar596, 6
  %177 = add nsw i64 %176, %172
  %.inv876.not = icmp eq i64 %177, 0
  %178 = or i64 %177, 63
  %179 = icmp ult i64 %174, %178
  %180 = select i1 %179, i64 %174, i64 %178
  %polly.loop_guard621.not = icmp ugt i64 %177, %180
  br i1 %.inv876.not, label %polly.loop_header593.split, label %polly.loop_header599.us

polly.loop_header599.us:                          ; preds = %polly.loop_header593, %polly.loop_exit620.us
  %polly.indvar602.us = phi i64 [ %polly.indvar_next603.us, %polly.loop_exit620.us ], [ 0, %polly.loop_header593 ]
  %181 = add nuw nsw i64 %polly.indvar602.us, %171
  %polly.access.mul.Packed_MemRef_call1482.us = mul nuw nsw i64 %polly.indvar602.us, 1200
  br label %polly.loop_header606.us

polly.loop_header606.us:                          ; preds = %polly.loop_header599.us, %polly.loop_header606.us
  %polly.indvar610.us = phi i64 [ %polly.indvar_next611.us, %polly.loop_header606.us ], [ 0, %polly.loop_header599.us ]
  %182 = add nuw nsw i64 %polly.indvar610.us, %173
  %polly.access.mul.call1614.us = mul nuw nsw i64 %182, 1000
  %polly.access.add.call1615.us = add nuw nsw i64 %181, %polly.access.mul.call1614.us
  %polly.access.call1616.us = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1615.us
  %polly.access.call1616.load.us = load double, double* %polly.access.call1616.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1482.us = add nuw nsw i64 %polly.indvar610.us, %polly.access.mul.Packed_MemRef_call1482.us
  %polly.access.Packed_MemRef_call1482.us = getelementptr double, double* %Packed_MemRef_call1482, i64 %polly.access.add.Packed_MemRef_call1482.us
  store double %polly.access.call1616.load.us, double* %polly.access.Packed_MemRef_call1482.us, align 8
  %polly.indvar_next611.us = add nuw i64 %polly.indvar610.us, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar_next611.us, 64
  br i1 %exitcond1037.not, label %polly.loop_exit608.loopexit.us, label %polly.loop_header606.us

polly.loop_header618.us:                          ; preds = %polly.loop_exit608.loopexit.us, %polly.loop_header618.us
  %polly.indvar622.us = phi i64 [ %polly.indvar_next623.us, %polly.loop_header618.us ], [ %177, %polly.loop_exit608.loopexit.us ]
  %183 = add nuw nsw i64 %polly.indvar622.us, %173
  %polly.access.mul.call1626.us = mul nuw nsw i64 %183, 1000
  %polly.access.add.call1627.us = add nuw nsw i64 %181, %polly.access.mul.call1626.us
  %polly.access.call1628.us = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1627.us
  %polly.access.call1628.load.us = load double, double* %polly.access.call1628.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1482630.us = add nuw nsw i64 %polly.indvar622.us, %polly.access.mul.Packed_MemRef_call1482.us
  %polly.access.Packed_MemRef_call1482631.us = getelementptr double, double* %Packed_MemRef_call1482, i64 %polly.access.add.Packed_MemRef_call1482630.us
  store double %polly.access.call1628.load.us, double* %polly.access.Packed_MemRef_call1482631.us, align 8
  %polly.indvar_next623.us = add nuw nsw i64 %polly.indvar622.us, 1
  %polly.loop_cond624.not.not.us = icmp ult i64 %polly.indvar622.us, %180
  br i1 %polly.loop_cond624.not.not.us, label %polly.loop_header618.us, label %polly.loop_exit620.us

polly.loop_exit620.us:                            ; preds = %polly.loop_header618.us, %polly.loop_exit608.loopexit.us
  %polly.indvar_next603.us = add nuw nsw i64 %polly.indvar602.us, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar_next603.us, 100
  br i1 %exitcond1038.not, label %polly.loop_header632.preheader, label %polly.loop_header599.us

polly.loop_exit608.loopexit.us:                   ; preds = %polly.loop_header606.us
  br i1 %polly.loop_guard621.not, label %polly.loop_exit620.us, label %polly.loop_header618.us

polly.loop_header593.split:                       ; preds = %polly.loop_header593
  br i1 %polly.loop_guard621.not, label %polly.loop_header632.preheader, label %polly.loop_header599

polly.loop_exit634:                               ; preds = %polly.loop_exit641.loopexit.us, %polly.loop_header632.preheader
  %polly.indvar_next597 = add nuw nsw i64 %polly.indvar596, 1
  %indvars.iv.next1040 = add nuw nsw i64 %indvars.iv1039, 64
  %indvars.iv.next1048 = add nsw i64 %indvars.iv1047, -64
  %exitcond1053.not = icmp eq i64 %polly.indvar_next597, 19
  br i1 %exitcond1053.not, label %polly.loop_exit595, label %polly.loop_header593

polly.loop_header599:                             ; preds = %polly.loop_header593.split, %polly.loop_exit620
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit620 ], [ 0, %polly.loop_header593.split ]
  %184 = add nuw nsw i64 %polly.indvar602, %171
  %polly.access.mul.Packed_MemRef_call1482629 = mul nuw nsw i64 %polly.indvar602, 1200
  br label %polly.loop_header618

polly.loop_exit620:                               ; preds = %polly.loop_header618
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar_next603, 100
  br i1 %exitcond1036.not, label %polly.loop_header632.preheader, label %polly.loop_header599

polly.loop_header632.preheader:                   ; preds = %polly.loop_exit620.us, %polly.loop_exit620, %polly.loop_header593.split
  %185 = mul nsw i64 %polly.indvar596, -64
  %polly.loop_guard6421094 = icmp sgt i64 %185, -1200
  br i1 %polly.loop_guard6421094, label %polly.loop_header632.us, label %polly.loop_exit634

polly.loop_header632.us:                          ; preds = %polly.loop_header632.preheader, %polly.loop_exit641.loopexit.us
  %polly.indvar635.us = phi i64 [ %polly.indvar_next636.us, %polly.loop_exit641.loopexit.us ], [ 0, %polly.loop_header632.preheader ]
  %186 = add nuw nsw i64 %polly.indvar635.us, %171
  %polly.access.mul.Packed_MemRef_call1482652.us = mul nuw nsw i64 %polly.indvar635.us, 1200
  %187 = shl i64 %186, 3
  br label %polly.loop_header639.us

polly.loop_header639.us:                          ; preds = %polly.loop_header632.us, %polly.loop_exit648.us
  %indvars.iv1041 = phi i64 [ %indvars.iv1039, %polly.loop_header632.us ], [ %indvars.iv.next1042, %polly.loop_exit648.us ]
  %polly.indvar643.us = phi i64 [ 0, %polly.loop_header632.us ], [ %polly.indvar_next644.us, %polly.loop_exit648.us ]
  %smin1043 = call i64 @llvm.smin.i64(i64 %indvars.iv1041, i64 63)
  %188 = add nuw nsw i64 %polly.indvar643.us, %177
  %189 = add nuw nsw i64 %polly.indvar643.us, %176
  %190 = mul nuw nsw i64 %189, 8000
  %191 = add nuw nsw i64 %190, %187
  %scevgep656.us = getelementptr i8, i8* %call2, i64 %191
  %scevgep656657.us = bitcast i8* %scevgep656.us to double*
  %_p_scalar_658.us = load double, double* %scevgep656657.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1482663.us = add nuw nsw i64 %188, %polly.access.mul.Packed_MemRef_call1482652.us
  %polly.access.Packed_MemRef_call1482664.us = getelementptr double, double* %Packed_MemRef_call1482, i64 %polly.access.add.Packed_MemRef_call1482663.us
  %_p_scalar_665.us = load double, double* %polly.access.Packed_MemRef_call1482664.us, align 8
  %192 = mul nuw nsw i64 %189, 9600
  br label %polly.loop_header646.us

polly.loop_header646.us:                          ; preds = %polly.loop_header646.us, %polly.loop_header639.us
  %polly.indvar649.us = phi i64 [ 0, %polly.loop_header639.us ], [ %polly.indvar_next650.us, %polly.loop_header646.us ]
  %193 = add nuw nsw i64 %polly.indvar649.us, %173
  %polly.access.add.Packed_MemRef_call1482653.us = add nuw nsw i64 %polly.indvar649.us, %polly.access.mul.Packed_MemRef_call1482652.us
  %polly.access.Packed_MemRef_call1482654.us = getelementptr double, double* %Packed_MemRef_call1482, i64 %polly.access.add.Packed_MemRef_call1482653.us
  %_p_scalar_655.us = load double, double* %polly.access.Packed_MemRef_call1482654.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_658.us, %_p_scalar_655.us
  %194 = mul nuw nsw i64 %193, 8000
  %195 = add nuw nsw i64 %194, %187
  %scevgep659.us = getelementptr i8, i8* %call2, i64 %195
  %scevgep659660.us = bitcast i8* %scevgep659.us to double*
  %_p_scalar_661.us = load double, double* %scevgep659660.us, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.us = fmul fast double %_p_scalar_665.us, %_p_scalar_661.us
  %196 = shl i64 %193, 3
  %197 = add nuw nsw i64 %196, %192
  %scevgep666.us = getelementptr i8, i8* %call, i64 %197
  %scevgep666667.us = bitcast i8* %scevgep666.us to double*
  %_p_scalar_668.us = load double, double* %scevgep666667.us, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_668.us
  store double %p_add42.i.us, double* %scevgep666667.us, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next650.us = add nuw nsw i64 %polly.indvar649.us, 1
  %exitcond1044.not = icmp eq i64 %polly.indvar649.us, %smin1043
  br i1 %exitcond1044.not, label %polly.loop_exit648.us, label %polly.loop_header646.us

polly.loop_exit648.us:                            ; preds = %polly.loop_header646.us
  %polly.indvar_next644.us = add nuw nsw i64 %polly.indvar643.us, 1
  %indvars.iv.next1042 = add nuw nsw i64 %indvars.iv1041, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar643.us, %smax1050
  br i1 %exitcond1051.not, label %polly.loop_exit641.loopexit.us, label %polly.loop_header639.us

polly.loop_exit641.loopexit.us:                   ; preds = %polly.loop_exit648.us
  %polly.indvar_next636.us = add nuw nsw i64 %polly.indvar635.us, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next636.us, 100
  br i1 %exitcond1052.not, label %polly.loop_exit634, label %polly.loop_header632.us

polly.loop_header618:                             ; preds = %polly.loop_header599, %polly.loop_header618
  %polly.indvar622 = phi i64 [ %polly.indvar_next623, %polly.loop_header618 ], [ %177, %polly.loop_header599 ]
  %198 = add nuw nsw i64 %polly.indvar622, %173
  %polly.access.mul.call1626 = mul nuw nsw i64 %198, 1000
  %polly.access.add.call1627 = add nuw nsw i64 %184, %polly.access.mul.call1626
  %polly.access.call1628 = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1627
  %polly.access.call1628.load = load double, double* %polly.access.call1628, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1482630 = add nuw nsw i64 %polly.indvar622, %polly.access.mul.Packed_MemRef_call1482629
  %polly.access.Packed_MemRef_call1482631 = getelementptr double, double* %Packed_MemRef_call1482, i64 %polly.access.add.Packed_MemRef_call1482630
  store double %polly.access.call1628.load, double* %polly.access.Packed_MemRef_call1482631, align 8
  %polly.indvar_next623 = add nuw nsw i64 %polly.indvar622, 1
  %polly.loop_cond624.not.not = icmp ult i64 %polly.indvar622, %180
  br i1 %polly.loop_cond624.not.not, label %polly.loop_header618, label %polly.loop_exit620

polly.loop_header795:                             ; preds = %entry, %polly.loop_exit803
  %indvars.iv1082 = phi i64 [ %indvars.iv.next1083, %polly.loop_exit803 ], [ 0, %entry ]
  %polly.indvar798 = phi i64 [ %polly.indvar_next799, %polly.loop_exit803 ], [ 0, %entry ]
  %smin1084 = call i64 @llvm.smin.i64(i64 %indvars.iv1082, i64 -1168)
  %199 = shl nsw i64 %polly.indvar798, 5
  %200 = add nsw i64 %smin1084, 1199
  br label %polly.loop_header801

polly.loop_exit803:                               ; preds = %polly.loop_exit809
  %polly.indvar_next799 = add nuw nsw i64 %polly.indvar798, 1
  %indvars.iv.next1083 = add nsw i64 %indvars.iv1082, -32
  %exitcond1087.not = icmp eq i64 %polly.indvar_next799, 38
  br i1 %exitcond1087.not, label %polly.loop_header822, label %polly.loop_header795

polly.loop_header801:                             ; preds = %polly.loop_exit809, %polly.loop_header795
  %indvars.iv1078 = phi i64 [ %indvars.iv.next1079, %polly.loop_exit809 ], [ 0, %polly.loop_header795 ]
  %polly.indvar804 = phi i64 [ %polly.indvar_next805, %polly.loop_exit809 ], [ 0, %polly.loop_header795 ]
  %201 = mul nsw i64 %polly.indvar804, -32
  %smin1122 = call i64 @llvm.smin.i64(i64 %201, i64 -1168)
  %202 = add nsw i64 %smin1122, 1200
  %smin1080 = call i64 @llvm.smin.i64(i64 %indvars.iv1078, i64 -1168)
  %203 = shl nsw i64 %polly.indvar804, 5
  %204 = add nsw i64 %smin1080, 1199
  br label %polly.loop_header807

polly.loop_exit809:                               ; preds = %polly.loop_exit815
  %polly.indvar_next805 = add nuw nsw i64 %polly.indvar804, 1
  %indvars.iv.next1079 = add nsw i64 %indvars.iv1078, -32
  %exitcond1086.not = icmp eq i64 %polly.indvar_next805, 38
  br i1 %exitcond1086.not, label %polly.loop_exit803, label %polly.loop_header801

polly.loop_header807:                             ; preds = %polly.loop_exit815, %polly.loop_header801
  %polly.indvar810 = phi i64 [ 0, %polly.loop_header801 ], [ %polly.indvar_next811, %polly.loop_exit815 ]
  %205 = add nuw nsw i64 %polly.indvar810, %199
  %206 = trunc i64 %205 to i32
  %207 = mul nuw nsw i64 %205, 9600
  %min.iters.check = icmp eq i64 %202, 0
  br i1 %min.iters.check, label %polly.loop_header813, label %vector.ph1123

vector.ph1123:                                    ; preds = %polly.loop_header807
  %broadcast.splatinsert1130 = insertelement <4 x i64> poison, i64 %203, i32 0
  %broadcast.splat1131 = shufflevector <4 x i64> %broadcast.splatinsert1130, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1132 = insertelement <4 x i32> poison, i32 %206, i32 0
  %broadcast.splat1133 = shufflevector <4 x i32> %broadcast.splatinsert1132, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1121

vector.body1121:                                  ; preds = %vector.body1121, %vector.ph1123
  %index1124 = phi i64 [ 0, %vector.ph1123 ], [ %index.next1125, %vector.body1121 ]
  %vec.ind1128 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1123 ], [ %vec.ind.next1129, %vector.body1121 ]
  %208 = add nuw nsw <4 x i64> %vec.ind1128, %broadcast.splat1131
  %209 = trunc <4 x i64> %208 to <4 x i32>
  %210 = mul <4 x i32> %broadcast.splat1133, %209
  %211 = add <4 x i32> %210, <i32 3, i32 3, i32 3, i32 3>
  %212 = urem <4 x i32> %211, <i32 1200, i32 1200, i32 1200, i32 1200>
  %213 = sitofp <4 x i32> %212 to <4 x double>
  %214 = fmul fast <4 x double> %213, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %215 = extractelement <4 x i64> %208, i32 0
  %216 = shl i64 %215, 3
  %217 = add nuw nsw i64 %216, %207
  %218 = getelementptr i8, i8* %call, i64 %217
  %219 = bitcast i8* %218 to <4 x double>*
  store <4 x double> %214, <4 x double>* %219, align 8, !alias.scope !98, !noalias !100
  %index.next1125 = add i64 %index1124, 4
  %vec.ind.next1129 = add <4 x i64> %vec.ind1128, <i64 4, i64 4, i64 4, i64 4>
  %220 = icmp eq i64 %index.next1125, %202
  br i1 %220, label %polly.loop_exit815, label %vector.body1121, !llvm.loop !103

polly.loop_exit815:                               ; preds = %vector.body1121, %polly.loop_header813
  %polly.indvar_next811 = add nuw nsw i64 %polly.indvar810, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar810, %200
  br i1 %exitcond1085.not, label %polly.loop_exit809, label %polly.loop_header807

polly.loop_header813:                             ; preds = %polly.loop_header807, %polly.loop_header813
  %polly.indvar816 = phi i64 [ %polly.indvar_next817, %polly.loop_header813 ], [ 0, %polly.loop_header807 ]
  %221 = add nuw nsw i64 %polly.indvar816, %203
  %222 = trunc i64 %221 to i32
  %223 = mul i32 %222, %206
  %224 = add i32 %223, 3
  %225 = urem i32 %224, 1200
  %p_conv31.i = sitofp i32 %225 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %226 = shl i64 %221, 3
  %227 = add nuw nsw i64 %226, %207
  %scevgep819 = getelementptr i8, i8* %call, i64 %227
  %scevgep819820 = bitcast i8* %scevgep819 to double*
  store double %p_div33.i, double* %scevgep819820, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next817 = add nuw nsw i64 %polly.indvar816, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar816, %204
  br i1 %exitcond1081.not, label %polly.loop_exit815, label %polly.loop_header813, !llvm.loop !104

polly.loop_header822:                             ; preds = %polly.loop_exit803, %polly.loop_exit830
  %indvars.iv1072 = phi i64 [ %indvars.iv.next1073, %polly.loop_exit830 ], [ 0, %polly.loop_exit803 ]
  %polly.indvar825 = phi i64 [ %polly.indvar_next826, %polly.loop_exit830 ], [ 0, %polly.loop_exit803 ]
  %smin1074 = call i64 @llvm.smin.i64(i64 %indvars.iv1072, i64 -1168)
  %228 = shl nsw i64 %polly.indvar825, 5
  %229 = add nsw i64 %smin1074, 1199
  br label %polly.loop_header828

polly.loop_exit830:                               ; preds = %polly.loop_exit836
  %polly.indvar_next826 = add nuw nsw i64 %polly.indvar825, 1
  %indvars.iv.next1073 = add nsw i64 %indvars.iv1072, -32
  %exitcond1077.not = icmp eq i64 %polly.indvar_next826, 38
  br i1 %exitcond1077.not, label %polly.loop_header848, label %polly.loop_header822

polly.loop_header828:                             ; preds = %polly.loop_exit836, %polly.loop_header822
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069, %polly.loop_exit836 ], [ 0, %polly.loop_header822 ]
  %polly.indvar831 = phi i64 [ %polly.indvar_next832, %polly.loop_exit836 ], [ 0, %polly.loop_header822 ]
  %230 = mul nsw i64 %polly.indvar831, -32
  %smin1137 = call i64 @llvm.smin.i64(i64 %230, i64 -968)
  %231 = add nsw i64 %smin1137, 1000
  %smin1070 = call i64 @llvm.smin.i64(i64 %indvars.iv1068, i64 -968)
  %232 = shl nsw i64 %polly.indvar831, 5
  %233 = add nsw i64 %smin1070, 999
  br label %polly.loop_header834

polly.loop_exit836:                               ; preds = %polly.loop_exit842
  %polly.indvar_next832 = add nuw nsw i64 %polly.indvar831, 1
  %indvars.iv.next1069 = add nsw i64 %indvars.iv1068, -32
  %exitcond1076.not = icmp eq i64 %polly.indvar_next832, 32
  br i1 %exitcond1076.not, label %polly.loop_exit830, label %polly.loop_header828

polly.loop_header834:                             ; preds = %polly.loop_exit842, %polly.loop_header828
  %polly.indvar837 = phi i64 [ 0, %polly.loop_header828 ], [ %polly.indvar_next838, %polly.loop_exit842 ]
  %234 = add nuw nsw i64 %polly.indvar837, %228
  %235 = trunc i64 %234 to i32
  %236 = mul nuw nsw i64 %234, 8000
  %min.iters.check1138 = icmp eq i64 %231, 0
  br i1 %min.iters.check1138, label %polly.loop_header840, label %vector.ph1139

vector.ph1139:                                    ; preds = %polly.loop_header834
  %broadcast.splatinsert1148 = insertelement <4 x i64> poison, i64 %232, i32 0
  %broadcast.splat1149 = shufflevector <4 x i64> %broadcast.splatinsert1148, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1150 = insertelement <4 x i32> poison, i32 %235, i32 0
  %broadcast.splat1151 = shufflevector <4 x i32> %broadcast.splatinsert1150, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.body1136, %vector.ph1139
  %index1142 = phi i64 [ 0, %vector.ph1139 ], [ %index.next1143, %vector.body1136 ]
  %vec.ind1146 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1139 ], [ %vec.ind.next1147, %vector.body1136 ]
  %237 = add nuw nsw <4 x i64> %vec.ind1146, %broadcast.splat1149
  %238 = trunc <4 x i64> %237 to <4 x i32>
  %239 = mul <4 x i32> %broadcast.splat1151, %238
  %240 = add <4 x i32> %239, <i32 2, i32 2, i32 2, i32 2>
  %241 = urem <4 x i32> %240, <i32 1000, i32 1000, i32 1000, i32 1000>
  %242 = sitofp <4 x i32> %241 to <4 x double>
  %243 = fmul fast <4 x double> %242, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %244 = extractelement <4 x i64> %237, i32 0
  %245 = shl i64 %244, 3
  %246 = add nuw nsw i64 %245, %236
  %247 = getelementptr i8, i8* %call2, i64 %246
  %248 = bitcast i8* %247 to <4 x double>*
  store <4 x double> %243, <4 x double>* %248, align 8, !alias.scope !102, !noalias !105
  %index.next1143 = add i64 %index1142, 4
  %vec.ind.next1147 = add <4 x i64> %vec.ind1146, <i64 4, i64 4, i64 4, i64 4>
  %249 = icmp eq i64 %index.next1143, %231
  br i1 %249, label %polly.loop_exit842, label %vector.body1136, !llvm.loop !106

polly.loop_exit842:                               ; preds = %vector.body1136, %polly.loop_header840
  %polly.indvar_next838 = add nuw nsw i64 %polly.indvar837, 1
  %exitcond1075.not = icmp eq i64 %polly.indvar837, %229
  br i1 %exitcond1075.not, label %polly.loop_exit836, label %polly.loop_header834

polly.loop_header840:                             ; preds = %polly.loop_header834, %polly.loop_header840
  %polly.indvar843 = phi i64 [ %polly.indvar_next844, %polly.loop_header840 ], [ 0, %polly.loop_header834 ]
  %250 = add nuw nsw i64 %polly.indvar843, %232
  %251 = trunc i64 %250 to i32
  %252 = mul i32 %251, %235
  %253 = add i32 %252, 2
  %254 = urem i32 %253, 1000
  %p_conv10.i = sitofp i32 %254 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %255 = shl i64 %250, 3
  %256 = add nuw nsw i64 %255, %236
  %scevgep846 = getelementptr i8, i8* %call2, i64 %256
  %scevgep846847 = bitcast i8* %scevgep846 to double*
  store double %p_div12.i, double* %scevgep846847, align 8, !alias.scope !102, !noalias !105
  %polly.indvar_next844 = add nuw nsw i64 %polly.indvar843, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar843, %233
  br i1 %exitcond1071.not, label %polly.loop_exit842, label %polly.loop_header840, !llvm.loop !107

polly.loop_header848:                             ; preds = %polly.loop_exit830, %polly.loop_exit856
  %indvars.iv1062 = phi i64 [ %indvars.iv.next1063, %polly.loop_exit856 ], [ 0, %polly.loop_exit830 ]
  %polly.indvar851 = phi i64 [ %polly.indvar_next852, %polly.loop_exit856 ], [ 0, %polly.loop_exit830 ]
  %smin1064 = call i64 @llvm.smin.i64(i64 %indvars.iv1062, i64 -1168)
  %257 = shl nsw i64 %polly.indvar851, 5
  %258 = add nsw i64 %smin1064, 1199
  br label %polly.loop_header854

polly.loop_exit856:                               ; preds = %polly.loop_exit862
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %indvars.iv.next1063 = add nsw i64 %indvars.iv1062, -32
  %exitcond1067.not = icmp eq i64 %polly.indvar_next852, 38
  br i1 %exitcond1067.not, label %init_array.exit, label %polly.loop_header848

polly.loop_header854:                             ; preds = %polly.loop_exit862, %polly.loop_header848
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %polly.loop_exit862 ], [ 0, %polly.loop_header848 ]
  %polly.indvar857 = phi i64 [ %polly.indvar_next858, %polly.loop_exit862 ], [ 0, %polly.loop_header848 ]
  %259 = mul nsw i64 %polly.indvar857, -32
  %smin1155 = call i64 @llvm.smin.i64(i64 %259, i64 -968)
  %260 = add nsw i64 %smin1155, 1000
  %smin1060 = call i64 @llvm.smin.i64(i64 %indvars.iv1058, i64 -968)
  %261 = shl nsw i64 %polly.indvar857, 5
  %262 = add nsw i64 %smin1060, 999
  br label %polly.loop_header860

polly.loop_exit862:                               ; preds = %polly.loop_exit868
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %indvars.iv.next1059 = add nsw i64 %indvars.iv1058, -32
  %exitcond1066.not = icmp eq i64 %polly.indvar_next858, 32
  br i1 %exitcond1066.not, label %polly.loop_exit856, label %polly.loop_header854

polly.loop_header860:                             ; preds = %polly.loop_exit868, %polly.loop_header854
  %polly.indvar863 = phi i64 [ 0, %polly.loop_header854 ], [ %polly.indvar_next864, %polly.loop_exit868 ]
  %263 = add nuw nsw i64 %polly.indvar863, %257
  %264 = trunc i64 %263 to i32
  %265 = mul nuw nsw i64 %263, 8000
  %min.iters.check1156 = icmp eq i64 %260, 0
  br i1 %min.iters.check1156, label %polly.loop_header866, label %vector.ph1157

vector.ph1157:                                    ; preds = %polly.loop_header860
  %broadcast.splatinsert1166 = insertelement <4 x i64> poison, i64 %261, i32 0
  %broadcast.splat1167 = shufflevector <4 x i64> %broadcast.splatinsert1166, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1168 = insertelement <4 x i32> poison, i32 %264, i32 0
  %broadcast.splat1169 = shufflevector <4 x i32> %broadcast.splatinsert1168, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1154

vector.body1154:                                  ; preds = %vector.body1154, %vector.ph1157
  %index1160 = phi i64 [ 0, %vector.ph1157 ], [ %index.next1161, %vector.body1154 ]
  %vec.ind1164 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1157 ], [ %vec.ind.next1165, %vector.body1154 ]
  %266 = add nuw nsw <4 x i64> %vec.ind1164, %broadcast.splat1167
  %267 = trunc <4 x i64> %266 to <4 x i32>
  %268 = mul <4 x i32> %broadcast.splat1169, %267
  %269 = add <4 x i32> %268, <i32 1, i32 1, i32 1, i32 1>
  %270 = urem <4 x i32> %269, <i32 1200, i32 1200, i32 1200, i32 1200>
  %271 = sitofp <4 x i32> %270 to <4 x double>
  %272 = fmul fast <4 x double> %271, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %273 = extractelement <4 x i64> %266, i32 0
  %274 = shl i64 %273, 3
  %275 = add nuw nsw i64 %274, %265
  %276 = getelementptr i8, i8* %call1, i64 %275
  %277 = bitcast i8* %276 to <4 x double>*
  store <4 x double> %272, <4 x double>* %277, align 8, !alias.scope !101, !noalias !108
  %index.next1161 = add i64 %index1160, 4
  %vec.ind.next1165 = add <4 x i64> %vec.ind1164, <i64 4, i64 4, i64 4, i64 4>
  %278 = icmp eq i64 %index.next1161, %260
  br i1 %278, label %polly.loop_exit868, label %vector.body1154, !llvm.loop !109

polly.loop_exit868:                               ; preds = %vector.body1154, %polly.loop_header866
  %polly.indvar_next864 = add nuw nsw i64 %polly.indvar863, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar863, %258
  br i1 %exitcond1065.not, label %polly.loop_exit862, label %polly.loop_header860

polly.loop_header866:                             ; preds = %polly.loop_header860, %polly.loop_header866
  %polly.indvar869 = phi i64 [ %polly.indvar_next870, %polly.loop_header866 ], [ 0, %polly.loop_header860 ]
  %279 = add nuw nsw i64 %polly.indvar869, %261
  %280 = trunc i64 %279 to i32
  %281 = mul i32 %280, %264
  %282 = add i32 %281, 1
  %283 = urem i32 %282, 1200
  %p_conv.i = sitofp i32 %283 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %284 = shl i64 %279, 3
  %285 = add nuw nsw i64 %284, %265
  %scevgep873 = getelementptr i8, i8* %call1, i64 %285
  %scevgep873874 = bitcast i8* %scevgep873 to double*
  store double %p_div.i, double* %scevgep873874, align 8, !alias.scope !101, !noalias !108
  %polly.indvar_next870 = add nuw nsw i64 %polly.indvar869, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar869, %262
  br i1 %exitcond1061.not, label %polly.loop_exit868, label %polly.loop_header866, !llvm.loop !110
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
!25 = !{!"llvm.loop.tile.size", i32 64}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 100}
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
!46 = distinct !{!46, !12, !23, !47, !48, !49, !25, !50, !56}
!47 = !{!"llvm.loop.id", !"i"}
!48 = !{!"llvm.loop.tile.enable", i1 true}
!49 = !{!"llvm.loop.tile.depth", i32 3}
!50 = !{!"llvm.loop.tile.followup_floor", !51}
!51 = distinct !{!51, !12, !23, !52, !53, !54, !55}
!52 = !{!"llvm.loop.id", !"i1"}
!53 = !{!"llvm.loop.interchange.enable", i1 true}
!54 = !{!"llvm.loop.interchange.depth", i32 5}
!55 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!56 = !{!"llvm.loop.tile.followup_tile", !57}
!57 = distinct !{!57, !12, !23, !58}
!58 = !{!"llvm.loop.id", !"i2"}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = !{!64, !64, i64 0}
!64 = !{!"any pointer", !4, i64 0}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !68, !"polly.alias.scope.MemRef_call"}
!68 = distinct !{!68, !"polly.alias.scope.domain"}
!69 = !{!70, !71, !72}
!70 = distinct !{!70, !68, !"polly.alias.scope.MemRef_call1"}
!71 = distinct !{!71, !68, !"polly.alias.scope.MemRef_call2"}
!72 = distinct !{!72, !68, !"polly.alias.scope.Packed_MemRef_call1"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !75, !13}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{!67, !71, !72}
!77 = !{!67, !70, !72}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call1"}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !75, !13}
!86 = !{!78, !82, !83}
!87 = !{!78, !81, !83}
!88 = distinct !{!88, !89, !"polly.alias.scope.MemRef_call"}
!89 = distinct !{!89, !"polly.alias.scope.domain"}
!90 = !{!91, !92, !93}
!91 = distinct !{!91, !89, !"polly.alias.scope.MemRef_call1"}
!92 = distinct !{!92, !89, !"polly.alias.scope.MemRef_call2"}
!93 = distinct !{!93, !89, !"polly.alias.scope.Packed_MemRef_call1"}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !75, !13}
!96 = !{!88, !92, !93}
!97 = !{!88, !91, !93}
!98 = distinct !{!98, !99, !"polly.alias.scope.MemRef_call"}
!99 = distinct !{!99, !"polly.alias.scope.domain"}
!100 = !{!101, !102}
!101 = distinct !{!101, !99, !"polly.alias.scope.MemRef_call1"}
!102 = distinct !{!102, !99, !"polly.alias.scope.MemRef_call2"}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !75, !13}
!105 = !{!101, !98}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !75, !13}
!108 = !{!102, !98}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !75, !13}
