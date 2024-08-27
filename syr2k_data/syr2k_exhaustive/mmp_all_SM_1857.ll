; ModuleID = 'syr2k_exhaustive/mmp_all_SM_1857.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_1857.c"
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
  %call866 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1718 = bitcast i8* %call1 to double*
  %polly.access.call1727 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2728 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1727, %call2
  %polly.access.call2747 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2747, %call1
  %2 = or i1 %0, %1
  %polly.access.call767 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call767, %call2
  %4 = icmp ule i8* %polly.access.call2747, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call767, %call1
  %8 = icmp ule i8* %polly.access.call1727, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header840, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1146 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1145 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1144 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1143 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1143, %scevgep1146
  %bound1 = icmp ult i8* %scevgep1145, %scevgep1144
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
  br i1 %exitcond18.not.i, label %vector.ph1150, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1150:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1157 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1158 = shufflevector <4 x i64> %broadcast.splatinsert1157, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1149

vector.body1149:                                  ; preds = %vector.body1149, %vector.ph1150
  %index1151 = phi i64 [ 0, %vector.ph1150 ], [ %index.next1152, %vector.body1149 ]
  %vec.ind1155 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1150 ], [ %vec.ind.next1156, %vector.body1149 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1155, %broadcast.splat1158
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv7.i, i64 %index1151
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1152 = add i64 %index1151, 4
  %vec.ind.next1156 = add <4 x i64> %vec.ind1155, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1152, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1149, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1149
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1150, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit901
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start507, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1212 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1212, label %for.body3.i46.preheader1376, label %vector.ph1213

vector.ph1213:                                    ; preds = %for.body3.i46.preheader
  %n.vec1215 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1211

vector.body1211:                                  ; preds = %vector.body1211, %vector.ph1213
  %index1216 = phi i64 [ 0, %vector.ph1213 ], [ %index.next1217, %vector.body1211 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i, i64 %index1216
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1217 = add i64 %index1216, 4
  %46 = icmp eq i64 %index.next1217, %n.vec1215
  br i1 %46, label %middle.block1209, label %vector.body1211, !llvm.loop !18

middle.block1209:                                 ; preds = %vector.body1211
  %cmp.n1219 = icmp eq i64 %indvars.iv21.i, %n.vec1215
  br i1 %cmp.n1219, label %for.inc6.i, label %for.body3.i46.preheader1376

for.body3.i46.preheader1376:                      ; preds = %for.body3.i46.preheader, %middle.block1209
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1215, %middle.block1209 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1376, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1376 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1209, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !45

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting508
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start298, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1265 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1265, label %for.body3.i60.preheader1375, label %vector.ph1266

vector.ph1266:                                    ; preds = %for.body3.i60.preheader
  %n.vec1268 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1264

vector.body1264:                                  ; preds = %vector.body1264, %vector.ph1266
  %index1269 = phi i64 [ 0, %vector.ph1266 ], [ %index.next1270, %vector.body1264 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i52, i64 %index1269
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1273 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1273, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1270 = add i64 %index1269, 4
  %57 = icmp eq i64 %index.next1270, %n.vec1268
  br i1 %57, label %middle.block1262, label %vector.body1264, !llvm.loop !57

middle.block1262:                                 ; preds = %vector.body1264
  %cmp.n1272 = icmp eq i64 %indvars.iv21.i52, %n.vec1268
  br i1 %cmp.n1272, label %for.inc6.i63, label %for.body3.i60.preheader1375

for.body3.i60.preheader1375:                      ; preds = %for.body3.i60.preheader, %middle.block1262
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1268, %middle.block1262 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1375, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1375 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1262, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !45

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting299
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1321 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1321, label %for.body3.i99.preheader1374, label %vector.ph1322

vector.ph1322:                                    ; preds = %for.body3.i99.preheader
  %n.vec1324 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1320

vector.body1320:                                  ; preds = %vector.body1320, %vector.ph1322
  %index1325 = phi i64 [ 0, %vector.ph1322 ], [ %index.next1326, %vector.body1320 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i91, i64 %index1325
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1329 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1329, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1326 = add i64 %index1325, 4
  %68 = icmp eq i64 %index.next1326, %n.vec1324
  br i1 %68, label %middle.block1318, label %vector.body1320, !llvm.loop !59

middle.block1318:                                 ; preds = %vector.body1320
  %cmp.n1328 = icmp eq i64 %indvars.iv21.i91, %n.vec1324
  br i1 %cmp.n1328, label %for.inc6.i102, label %for.body3.i99.preheader1374

for.body3.i99.preheader1374:                      ; preds = %for.body3.i99.preheader, %middle.block1318
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1324, %middle.block1318 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1374, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1374 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1318, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !45

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !61
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !63

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !64

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1333 = phi i64 [ %indvar.next1334, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1333, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1335 = icmp ult i64 %88, 4
  br i1 %min.iters.check1335, label %polly.loop_header192.preheader, label %vector.ph1336

vector.ph1336:                                    ; preds = %polly.loop_header
  %n.vec1338 = and i64 %88, -4
  br label %vector.body1332

vector.body1332:                                  ; preds = %vector.body1332, %vector.ph1336
  %index1339 = phi i64 [ 0, %vector.ph1336 ], [ %index.next1340, %vector.body1332 ]
  %90 = shl nuw nsw i64 %index1339, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1343 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1343, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1340 = add i64 %index1339, 4
  %95 = icmp eq i64 %index.next1340, %n.vec1338
  br i1 %95, label %middle.block1330, label %vector.body1332, !llvm.loop !72

middle.block1330:                                 ; preds = %vector.body1332
  %cmp.n1342 = icmp eq i64 %88, %n.vec1338
  br i1 %cmp.n1342, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1330
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1338, %middle.block1330 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1330
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1334 = add i64 %indvar1333, 1
  br i1 %exitcond1055.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1054.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1053.not, label %polly.loop_header216, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 1000
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2728, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !69, !noalias !75
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1052.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv1045 = phi i64 [ %indvars.iv.next1046, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = shl nuw nsw i64 %polly.indvar219, 5
  %98 = mul nuw nsw i64 %polly.indvar219, 307200
  %99 = or i64 %98, 8
  %100 = shl nuw nsw i64 %polly.indvar219, 5
  %101 = lshr i64 %polly.indvar219, 2
  %smin1047 = call i64 @llvm.smin.i64(i64 %indvars.iv1045, i64 -1168)
  %102 = shl nsw i64 %polly.indvar219, 5
  %103 = add nsw i64 %smin1047, 1199
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %indvars.iv.next1046 = add nsw i64 %indvars.iv1045, -32
  %exitcond1051.not = icmp eq i64 %polly.indvar_next220, 38
  br i1 %exitcond1051.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  %104 = mul nuw nsw i64 %polly.indvar225, 20
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar_next226, 50
  br i1 %exitcond1050.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit236 ], [ %indvars.iv, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %105 = mul nsw i64 %polly.indvar231, -128
  %106 = add i64 %97, %105
  %107 = shl nuw nsw i64 %polly.indvar231, 10
  %108 = add nuw i64 %98, %107
  %109 = add nuw i64 %99, %107
  %110 = mul nsw i64 %polly.indvar231, -128
  %111 = add i64 %100, %110
  %112 = shl nsw i64 %polly.indvar231, 7
  %113 = sub nsw i64 %102, %112
  %114 = add nuw nsw i64 %112, 128
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit265
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, -128
  %exitcond1049.not = icmp eq i64 %polly.indvar231, %101
  br i1 %exitcond1049.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_exit265, %polly.loop_header228
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit265 ], [ %indvars.iv1036, %polly.loop_header228 ]
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit265 ], [ 0, %polly.loop_header228 ]
  %115 = add i64 %106, %polly.indvar237
  %smin1358 = call i64 @llvm.smin.i64(i64 %115, i64 127)
  %116 = add nsw i64 %smin1358, 1
  %117 = mul i64 %polly.indvar237, 9600
  %118 = add i64 %108, %117
  %scevgep1345 = getelementptr i8, i8* %call, i64 %118
  %119 = add i64 %109, %117
  %scevgep1346 = getelementptr i8, i8* %call, i64 %119
  %120 = add i64 %111, %polly.indvar237
  %smin1347 = call i64 @llvm.smin.i64(i64 %120, i64 127)
  %121 = shl nsw i64 %smin1347, 3
  %scevgep1348 = getelementptr i8, i8* %scevgep1346, i64 %121
  %122 = add nsw i64 %121, 8
  %smin1042 = call i64 @llvm.smin.i64(i64 %indvars.iv1038, i64 127)
  %123 = add nsw i64 %polly.indvar237, %113
  %polly.loop_guard1138 = icmp sgt i64 %123, -1
  %124 = add nuw nsw i64 %polly.indvar237, %102
  %.not = icmp ult i64 %124, %114
  %polly.access.mul.call1257 = mul nuw nsw i64 %124, 1000
  %125 = add nuw nsw i64 %polly.access.mul.call1257, %104
  br i1 %polly.loop_guard1138, label %polly.loop_header240.us, label %polly.loop_header234.split

polly.loop_header240.us:                          ; preds = %polly.loop_header234, %polly.merge.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.merge.us ], [ 0, %polly.loop_header234 ]
  %126 = add nuw nsw i64 %polly.indvar243.us, %104
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar243.us, 1200
  br label %polly.loop_header246.us

polly.loop_header246.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header246.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_header246.us ], [ 0, %polly.loop_header240.us ]
  %127 = add nuw nsw i64 %polly.indvar249.us, %112
  %polly.access.mul.call1253.us = mul nuw nsw i64 %127, 1000
  %polly.access.add.call1254.us = add nuw nsw i64 %126, %polly.access.mul.call1253.us
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar249.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar249.us, %smin1042
  br i1 %exitcond1040.not, label %polly.cond.loopexit.us, label %polly.loop_header246.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1258.us = add nuw nsw i64 %125, %polly.indvar243.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %123
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1262.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar_next244.us, 20
  br i1 %exitcond1041.not, label %polly.loop_header263.preheader, label %polly.loop_header240.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header246.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit265, label %polly.loop_header240.preheader

polly.loop_header240.preheader:                   ; preds = %polly.loop_header234.split
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1718, i64 %125
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %123
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.access.add.call1258.1 = or i64 %125, 1
  %polly.access.call1259.1 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.1
  %polly.access.call1259.load.1 = load double, double* %polly.access.call1259.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.1 = add nsw i64 %123, 1200
  %polly.access.Packed_MemRef_call1262.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.1
  store double %polly.access.call1259.load.1, double* %polly.access.Packed_MemRef_call1262.1, align 8
  %polly.access.add.call1258.2 = or i64 %125, 2
  %polly.access.call1259.2 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.2
  %polly.access.call1259.load.2 = load double, double* %polly.access.call1259.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.2 = add nsw i64 %123, 2400
  %polly.access.Packed_MemRef_call1262.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.2
  store double %polly.access.call1259.load.2, double* %polly.access.Packed_MemRef_call1262.2, align 8
  %polly.access.add.call1258.3 = or i64 %125, 3
  %polly.access.call1259.3 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.3
  %polly.access.call1259.load.3 = load double, double* %polly.access.call1259.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.3 = add nsw i64 %123, 3600
  %polly.access.Packed_MemRef_call1262.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.3
  store double %polly.access.call1259.load.3, double* %polly.access.Packed_MemRef_call1262.3, align 8
  %polly.access.add.call1258.4 = add nuw nsw i64 %125, 4
  %polly.access.call1259.4 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.4
  %polly.access.call1259.load.4 = load double, double* %polly.access.call1259.4, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.4 = add nsw i64 %123, 4800
  %polly.access.Packed_MemRef_call1262.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.4
  store double %polly.access.call1259.load.4, double* %polly.access.Packed_MemRef_call1262.4, align 8
  %polly.access.add.call1258.5 = add nuw nsw i64 %125, 5
  %polly.access.call1259.5 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.5
  %polly.access.call1259.load.5 = load double, double* %polly.access.call1259.5, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.5 = add nsw i64 %123, 6000
  %polly.access.Packed_MemRef_call1262.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.5
  store double %polly.access.call1259.load.5, double* %polly.access.Packed_MemRef_call1262.5, align 8
  %polly.access.add.call1258.6 = add nuw nsw i64 %125, 6
  %polly.access.call1259.6 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.6
  %polly.access.call1259.load.6 = load double, double* %polly.access.call1259.6, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.6 = add nsw i64 %123, 7200
  %polly.access.Packed_MemRef_call1262.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.6
  store double %polly.access.call1259.load.6, double* %polly.access.Packed_MemRef_call1262.6, align 8
  %polly.access.add.call1258.7 = add nuw nsw i64 %125, 7
  %polly.access.call1259.7 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.7
  %polly.access.call1259.load.7 = load double, double* %polly.access.call1259.7, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.7 = add nsw i64 %123, 8400
  %polly.access.Packed_MemRef_call1262.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.7
  store double %polly.access.call1259.load.7, double* %polly.access.Packed_MemRef_call1262.7, align 8
  %polly.access.add.call1258.8 = add nuw nsw i64 %125, 8
  %polly.access.call1259.8 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.8
  %polly.access.call1259.load.8 = load double, double* %polly.access.call1259.8, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.8 = add nsw i64 %123, 9600
  %polly.access.Packed_MemRef_call1262.8 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.8
  store double %polly.access.call1259.load.8, double* %polly.access.Packed_MemRef_call1262.8, align 8
  %polly.access.add.call1258.9 = add nuw nsw i64 %125, 9
  %polly.access.call1259.9 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.9
  %polly.access.call1259.load.9 = load double, double* %polly.access.call1259.9, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.9 = add nsw i64 %123, 10800
  %polly.access.Packed_MemRef_call1262.9 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.9
  store double %polly.access.call1259.load.9, double* %polly.access.Packed_MemRef_call1262.9, align 8
  %polly.access.add.call1258.10 = add nuw nsw i64 %125, 10
  %polly.access.call1259.10 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.10
  %polly.access.call1259.load.10 = load double, double* %polly.access.call1259.10, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.10 = add nsw i64 %123, 12000
  %polly.access.Packed_MemRef_call1262.10 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.10
  store double %polly.access.call1259.load.10, double* %polly.access.Packed_MemRef_call1262.10, align 8
  %polly.access.add.call1258.11 = add nuw nsw i64 %125, 11
  %polly.access.call1259.11 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.11
  %polly.access.call1259.load.11 = load double, double* %polly.access.call1259.11, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.11 = add nsw i64 %123, 13200
  %polly.access.Packed_MemRef_call1262.11 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.11
  store double %polly.access.call1259.load.11, double* %polly.access.Packed_MemRef_call1262.11, align 8
  %polly.access.add.call1258.12 = add nuw nsw i64 %125, 12
  %polly.access.call1259.12 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.12
  %polly.access.call1259.load.12 = load double, double* %polly.access.call1259.12, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.12 = add nsw i64 %123, 14400
  %polly.access.Packed_MemRef_call1262.12 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.12
  store double %polly.access.call1259.load.12, double* %polly.access.Packed_MemRef_call1262.12, align 8
  %polly.access.add.call1258.13 = add nuw nsw i64 %125, 13
  %polly.access.call1259.13 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.13
  %polly.access.call1259.load.13 = load double, double* %polly.access.call1259.13, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.13 = add nsw i64 %123, 15600
  %polly.access.Packed_MemRef_call1262.13 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.13
  store double %polly.access.call1259.load.13, double* %polly.access.Packed_MemRef_call1262.13, align 8
  %polly.access.add.call1258.14 = add nuw nsw i64 %125, 14
  %polly.access.call1259.14 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.14
  %polly.access.call1259.load.14 = load double, double* %polly.access.call1259.14, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.14 = add nsw i64 %123, 16800
  %polly.access.Packed_MemRef_call1262.14 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.14
  store double %polly.access.call1259.load.14, double* %polly.access.Packed_MemRef_call1262.14, align 8
  %polly.access.add.call1258.15 = add nuw nsw i64 %125, 15
  %polly.access.call1259.15 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.15
  %polly.access.call1259.load.15 = load double, double* %polly.access.call1259.15, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.15 = add nsw i64 %123, 18000
  %polly.access.Packed_MemRef_call1262.15 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.15
  store double %polly.access.call1259.load.15, double* %polly.access.Packed_MemRef_call1262.15, align 8
  %polly.access.add.call1258.16 = add nuw nsw i64 %125, 16
  %polly.access.call1259.16 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.16
  %polly.access.call1259.load.16 = load double, double* %polly.access.call1259.16, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.16 = add nsw i64 %123, 19200
  %polly.access.Packed_MemRef_call1262.16 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.16
  store double %polly.access.call1259.load.16, double* %polly.access.Packed_MemRef_call1262.16, align 8
  %polly.access.add.call1258.17 = add nuw nsw i64 %125, 17
  %polly.access.call1259.17 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.17
  %polly.access.call1259.load.17 = load double, double* %polly.access.call1259.17, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.17 = add nsw i64 %123, 20400
  %polly.access.Packed_MemRef_call1262.17 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.17
  store double %polly.access.call1259.load.17, double* %polly.access.Packed_MemRef_call1262.17, align 8
  %polly.access.add.call1258.18 = add nuw nsw i64 %125, 18
  %polly.access.call1259.18 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.18
  %polly.access.call1259.load.18 = load double, double* %polly.access.call1259.18, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.18 = add nsw i64 %123, 21600
  %polly.access.Packed_MemRef_call1262.18 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.18
  store double %polly.access.call1259.load.18, double* %polly.access.Packed_MemRef_call1262.18, align 8
  %polly.access.add.call1258.19 = add nuw nsw i64 %125, 19
  %polly.access.call1259.19 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.19
  %polly.access.call1259.load.19 = load double, double* %polly.access.call1259.19, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.19 = add nsw i64 %123, 22800
  %polly.access.Packed_MemRef_call1262.19 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.19
  store double %polly.access.call1259.load.19, double* %polly.access.Packed_MemRef_call1262.19, align 8
  br label %polly.loop_exit265

polly.loop_exit265:                               ; preds = %polly.loop_exit272.loopexit.us, %polly.loop_header234.split, %polly.loop_header240.preheader, %polly.loop_header263.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %indvars.iv.next1039 = add nsw i64 %indvars.iv1038, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar237, %103
  br i1 %exitcond1048.not, label %polly.loop_exit236, label %polly.loop_header234

polly.loop_header263.preheader:                   ; preds = %polly.merge.us
  %128 = mul nuw nsw i64 %124, 9600
  br i1 %polly.loop_guard1138, label %polly.loop_header263.us, label %polly.loop_exit265

polly.loop_header263.us:                          ; preds = %polly.loop_header263.preheader, %polly.loop_exit272.loopexit.us
  %polly.indvar266.us = phi i64 [ %polly.indvar_next267.us, %polly.loop_exit272.loopexit.us ], [ 0, %polly.loop_header263.preheader ]
  %129 = mul nuw nsw i64 %polly.indvar266.us, 9600
  %polly.access.mul.Packed_MemRef_call1277.us = mul nuw nsw i64 %polly.indvar266.us, 1200
  %130 = add nuw nsw i64 %polly.indvar266.us, %104
  %polly.access.mul.Packed_MemRef_call2281.us = mul nuw nsw i64 %130, 1200
  %polly.access.add.Packed_MemRef_call2282.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2281.us, %124
  %polly.access.Packed_MemRef_call2283.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call2283.us, align 8
  %polly.access.add.Packed_MemRef_call1290.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1277.us, %123
  %polly.access.Packed_MemRef_call1291.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call1291.us, align 8
  %min.iters.check1359 = icmp ult i64 %116, 4
  br i1 %min.iters.check1359, label %polly.loop_header270.us.preheader, label %vector.memcheck1344

vector.memcheck1344:                              ; preds = %polly.loop_header263.us
  %131 = add i64 %122, %129
  %scevgep1350 = getelementptr i8, i8* %malloccall, i64 %131
  %scevgep1349 = getelementptr i8, i8* %malloccall, i64 %129
  %bound01351 = icmp ult i8* %scevgep1345, %scevgep1350
  %bound11352 = icmp ult i8* %scevgep1349, %scevgep1348
  %found.conflict1353 = and i1 %bound01351, %bound11352
  br i1 %found.conflict1353, label %polly.loop_header270.us.preheader, label %vector.ph1360

vector.ph1360:                                    ; preds = %vector.memcheck1344
  %n.vec1362 = and i64 %116, -4
  %broadcast.splatinsert1368 = insertelement <4 x double> poison, double %_p_scalar_284.us, i32 0
  %broadcast.splat1369 = shufflevector <4 x double> %broadcast.splatinsert1368, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1371 = insertelement <4 x double> poison, double %_p_scalar_292.us, i32 0
  %broadcast.splat1372 = shufflevector <4 x double> %broadcast.splatinsert1371, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1357

vector.body1357:                                  ; preds = %vector.body1357, %vector.ph1360
  %index1363 = phi i64 [ 0, %vector.ph1360 ], [ %index.next1364, %vector.body1357 ]
  %132 = add nuw nsw i64 %index1363, %112
  %133 = add nuw nsw i64 %index1363, %polly.access.mul.Packed_MemRef_call1277.us
  %134 = getelementptr double, double* %Packed_MemRef_call1, i64 %133
  %135 = bitcast double* %134 to <4 x double>*
  %wide.load1367 = load <4 x double>, <4 x double>* %135, align 8, !alias.scope !77
  %136 = fmul fast <4 x double> %broadcast.splat1369, %wide.load1367
  %137 = add nuw nsw i64 %132, %polly.access.mul.Packed_MemRef_call2281.us
  %138 = getelementptr double, double* %Packed_MemRef_call2, i64 %137
  %139 = bitcast double* %138 to <4 x double>*
  %wide.load1370 = load <4 x double>, <4 x double>* %139, align 8
  %140 = fmul fast <4 x double> %broadcast.splat1372, %wide.load1370
  %141 = shl i64 %132, 3
  %142 = add nuw nsw i64 %141, %128
  %143 = getelementptr i8, i8* %call, i64 %142
  %144 = bitcast i8* %143 to <4 x double>*
  %wide.load1373 = load <4 x double>, <4 x double>* %144, align 8, !alias.scope !80, !noalias !82
  %145 = fadd fast <4 x double> %140, %136
  %146 = fmul fast <4 x double> %145, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %147 = fadd fast <4 x double> %146, %wide.load1373
  %148 = bitcast i8* %143 to <4 x double>*
  store <4 x double> %147, <4 x double>* %148, align 8, !alias.scope !80, !noalias !82
  %index.next1364 = add i64 %index1363, 4
  %149 = icmp eq i64 %index.next1364, %n.vec1362
  br i1 %149, label %middle.block1355, label %vector.body1357, !llvm.loop !83

middle.block1355:                                 ; preds = %vector.body1357
  %cmp.n1366 = icmp eq i64 %116, %n.vec1362
  br i1 %cmp.n1366, label %polly.loop_exit272.loopexit.us, label %polly.loop_header270.us.preheader

polly.loop_header270.us.preheader:                ; preds = %vector.memcheck1344, %polly.loop_header263.us, %middle.block1355
  %polly.indvar274.us.ph = phi i64 [ 0, %vector.memcheck1344 ], [ 0, %polly.loop_header263.us ], [ %n.vec1362, %middle.block1355 ]
  br label %polly.loop_header270.us

polly.loop_header270.us:                          ; preds = %polly.loop_header270.us.preheader, %polly.loop_header270.us
  %polly.indvar274.us = phi i64 [ %polly.indvar_next275.us, %polly.loop_header270.us ], [ %polly.indvar274.us.ph, %polly.loop_header270.us.preheader ]
  %150 = add nuw nsw i64 %polly.indvar274.us, %112
  %polly.access.add.Packed_MemRef_call1278.us = add nuw nsw i64 %polly.indvar274.us, %polly.access.mul.Packed_MemRef_call1277.us
  %polly.access.Packed_MemRef_call1279.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278.us
  %_p_scalar_280.us = load double, double* %polly.access.Packed_MemRef_call1279.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_284.us, %_p_scalar_280.us
  %polly.access.add.Packed_MemRef_call2286.us = add nuw nsw i64 %150, %polly.access.mul.Packed_MemRef_call2281.us
  %polly.access.Packed_MemRef_call2287.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call2287.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_292.us, %_p_scalar_288.us
  %151 = shl i64 %150, 3
  %152 = add nuw nsw i64 %151, %128
  %scevgep293.us = getelementptr i8, i8* %call, i64 %152
  %scevgep293294.us = bitcast i8* %scevgep293.us to double*
  %_p_scalar_295.us = load double, double* %scevgep293294.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_295.us
  store double %p_add42.i118.us, double* %scevgep293294.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next275.us = add nuw nsw i64 %polly.indvar274.us, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar274.us, %smin1042
  br i1 %exitcond1043.not, label %polly.loop_exit272.loopexit.us, label %polly.loop_header270.us, !llvm.loop !84

polly.loop_exit272.loopexit.us:                   ; preds = %polly.loop_header270.us, %middle.block1355
  %polly.indvar_next267.us = add nuw nsw i64 %polly.indvar266.us, 1
  %exitcond1044.not = icmp eq i64 %polly.indvar_next267.us, 20
  br i1 %exitcond1044.not, label %polly.loop_exit265, label %polly.loop_header263.us

polly.start298:                                   ; preds = %kernel_syr2k.exit
  %malloccall300 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall302 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header386

polly.exiting299:                                 ; preds = %polly.loop_exit426
  tail call void @free(i8* %malloccall300)
  tail call void @free(i8* %malloccall302)
  br label %kernel_syr2k.exit90

polly.loop_header386:                             ; preds = %polly.loop_exit394, %polly.start298
  %indvar1277 = phi i64 [ %indvar.next1278, %polly.loop_exit394 ], [ 0, %polly.start298 ]
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_exit394 ], [ 1, %polly.start298 ]
  %153 = add i64 %indvar1277, 1
  %154 = mul nuw nsw i64 %polly.indvar389, 9600
  %scevgep398 = getelementptr i8, i8* %call, i64 %154
  %min.iters.check1279 = icmp ult i64 %153, 4
  br i1 %min.iters.check1279, label %polly.loop_header392.preheader, label %vector.ph1280

vector.ph1280:                                    ; preds = %polly.loop_header386
  %n.vec1282 = and i64 %153, -4
  br label %vector.body1276

vector.body1276:                                  ; preds = %vector.body1276, %vector.ph1280
  %index1283 = phi i64 [ 0, %vector.ph1280 ], [ %index.next1284, %vector.body1276 ]
  %155 = shl nuw nsw i64 %index1283, 3
  %156 = getelementptr i8, i8* %scevgep398, i64 %155
  %157 = bitcast i8* %156 to <4 x double>*
  %wide.load1287 = load <4 x double>, <4 x double>* %157, align 8, !alias.scope !85, !noalias !87
  %158 = fmul fast <4 x double> %wide.load1287, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %159 = bitcast i8* %156 to <4 x double>*
  store <4 x double> %158, <4 x double>* %159, align 8, !alias.scope !85, !noalias !87
  %index.next1284 = add i64 %index1283, 4
  %160 = icmp eq i64 %index.next1284, %n.vec1282
  br i1 %160, label %middle.block1274, label %vector.body1276, !llvm.loop !92

middle.block1274:                                 ; preds = %vector.body1276
  %cmp.n1286 = icmp eq i64 %153, %n.vec1282
  br i1 %cmp.n1286, label %polly.loop_exit394, label %polly.loop_header392.preheader

polly.loop_header392.preheader:                   ; preds = %polly.loop_header386, %middle.block1274
  %polly.indvar395.ph = phi i64 [ 0, %polly.loop_header386 ], [ %n.vec1282, %middle.block1274 ]
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_header392, %middle.block1274
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar_next390, 1200
  %indvar.next1278 = add i64 %indvar1277, 1
  br i1 %exitcond1079.not, label %polly.loop_header402.preheader, label %polly.loop_header386

polly.loop_header402.preheader:                   ; preds = %polly.loop_exit394
  %Packed_MemRef_call1301 = bitcast i8* %malloccall300 to double*
  %Packed_MemRef_call2303 = bitcast i8* %malloccall302 to double*
  br label %polly.loop_header402

polly.loop_header392:                             ; preds = %polly.loop_header392.preheader, %polly.loop_header392
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_header392 ], [ %polly.indvar395.ph, %polly.loop_header392.preheader ]
  %161 = shl nuw nsw i64 %polly.indvar395, 3
  %scevgep399 = getelementptr i8, i8* %scevgep398, i64 %161
  %scevgep399400 = bitcast i8* %scevgep399 to double*
  %_p_scalar_401 = load double, double* %scevgep399400, align 8, !alias.scope !85, !noalias !87
  %p_mul.i57 = fmul fast double %_p_scalar_401, 1.200000e+00
  store double %p_mul.i57, double* %scevgep399400, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond1078.not = icmp eq i64 %polly.indvar_next396, %polly.indvar389
  br i1 %exitcond1078.not, label %polly.loop_exit394, label %polly.loop_header392, !llvm.loop !93

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_exit410
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit410 ], [ 0, %polly.loop_header402.preheader ]
  %polly.access.mul.Packed_MemRef_call2303 = mul nuw nsw i64 %polly.indvar405, 1200
  br label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_header408
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar_next406, 1000
  br i1 %exitcond1077.not, label %polly.loop_header418, label %polly.loop_header402

polly.loop_header408:                             ; preds = %polly.loop_header408, %polly.loop_header402
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header402 ], [ %polly.indvar_next412, %polly.loop_header408 ]
  %polly.access.mul.call2415 = mul nuw nsw i64 %polly.indvar411, 1000
  %polly.access.add.call2416 = add nuw nsw i64 %polly.access.mul.call2415, %polly.indvar405
  %polly.access.call2417 = getelementptr double, double* %polly.access.cast.call2728, i64 %polly.access.add.call2416
  %polly.access.call2417.load = load double, double* %polly.access.call2417, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2303 = add nuw nsw i64 %polly.indvar411, %polly.access.mul.Packed_MemRef_call2303
  %polly.access.Packed_MemRef_call2303 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303
  store double %polly.access.call2417.load, double* %polly.access.Packed_MemRef_call2303, align 8
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar_next412, 1200
  br i1 %exitcond1076.not, label %polly.loop_exit410, label %polly.loop_header408

polly.loop_header418:                             ; preds = %polly.loop_exit410, %polly.loop_exit426
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit426 ], [ 0, %polly.loop_exit410 ]
  %indvars.iv1057 = phi i64 [ %indvars.iv.next1058, %polly.loop_exit426 ], [ 0, %polly.loop_exit410 ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit426 ], [ 0, %polly.loop_exit410 ]
  %162 = shl nuw nsw i64 %polly.indvar421, 5
  %163 = mul nuw nsw i64 %polly.indvar421, 307200
  %164 = or i64 %163, 8
  %165 = shl nuw nsw i64 %polly.indvar421, 5
  %166 = lshr i64 %polly.indvar421, 2
  %smin1071 = call i64 @llvm.smin.i64(i64 %indvars.iv1069, i64 -1168)
  %167 = shl nsw i64 %polly.indvar421, 5
  %168 = add nsw i64 %smin1071, 1199
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit433
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1058 = add nuw nsw i64 %indvars.iv1057, 32
  %indvars.iv.next1070 = add nsw i64 %indvars.iv1069, -32
  %exitcond1075.not = icmp eq i64 %polly.indvar_next422, 38
  br i1 %exitcond1075.not, label %polly.exiting299, label %polly.loop_header418

polly.loop_header424:                             ; preds = %polly.loop_exit433, %polly.loop_header418
  %polly.indvar427 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next428, %polly.loop_exit433 ]
  %169 = mul nuw nsw i64 %polly.indvar427, 20
  br label %polly.loop_header431

polly.loop_exit433:                               ; preds = %polly.loop_exit439
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar_next428, 50
  br i1 %exitcond1074.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header431:                             ; preds = %polly.loop_exit439, %polly.loop_header424
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %polly.loop_exit439 ], [ %indvars.iv1057, %polly.loop_header424 ]
  %polly.indvar434 = phi i64 [ %polly.indvar_next435, %polly.loop_exit439 ], [ 0, %polly.loop_header424 ]
  %170 = mul nsw i64 %polly.indvar434, -128
  %171 = add i64 %162, %170
  %172 = shl nuw nsw i64 %polly.indvar434, 10
  %173 = add nuw i64 %163, %172
  %174 = add nuw i64 %164, %172
  %175 = mul nsw i64 %polly.indvar434, -128
  %176 = add i64 %165, %175
  %177 = shl nsw i64 %polly.indvar434, 7
  %178 = sub nsw i64 %167, %177
  %179 = add nuw nsw i64 %177, 128
  br label %polly.loop_header437

polly.loop_exit439:                               ; preds = %polly.loop_exit474
  %polly.indvar_next435 = add nuw nsw i64 %polly.indvar434, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, -128
  %exitcond1073.not = icmp eq i64 %polly.indvar434, %166
  br i1 %exitcond1073.not, label %polly.loop_exit433, label %polly.loop_header431

polly.loop_header437:                             ; preds = %polly.loop_exit474, %polly.loop_header431
  %indvars.iv1061 = phi i64 [ %indvars.iv.next1062, %polly.loop_exit474 ], [ %indvars.iv1059, %polly.loop_header431 ]
  %polly.indvar440 = phi i64 [ %polly.indvar_next441, %polly.loop_exit474 ], [ 0, %polly.loop_header431 ]
  %180 = add i64 %171, %polly.indvar440
  %smin1302 = call i64 @llvm.smin.i64(i64 %180, i64 127)
  %181 = add nsw i64 %smin1302, 1
  %182 = mul i64 %polly.indvar440, 9600
  %183 = add i64 %173, %182
  %scevgep1289 = getelementptr i8, i8* %call, i64 %183
  %184 = add i64 %174, %182
  %scevgep1290 = getelementptr i8, i8* %call, i64 %184
  %185 = add i64 %176, %polly.indvar440
  %smin1291 = call i64 @llvm.smin.i64(i64 %185, i64 127)
  %186 = shl nsw i64 %smin1291, 3
  %scevgep1292 = getelementptr i8, i8* %scevgep1290, i64 %186
  %187 = add nsw i64 %186, 8
  %smin1066 = call i64 @llvm.smin.i64(i64 %indvars.iv1061, i64 127)
  %188 = add nsw i64 %polly.indvar440, %178
  %polly.loop_guard4531139 = icmp sgt i64 %188, -1
  %189 = add nuw nsw i64 %polly.indvar440, %167
  %.not920 = icmp ult i64 %189, %179
  %polly.access.mul.call1466 = mul nuw nsw i64 %189, 1000
  %190 = add nuw nsw i64 %polly.access.mul.call1466, %169
  br i1 %polly.loop_guard4531139, label %polly.loop_header443.us, label %polly.loop_header437.split

polly.loop_header443.us:                          ; preds = %polly.loop_header437, %polly.merge462.us
  %polly.indvar446.us = phi i64 [ %polly.indvar_next447.us, %polly.merge462.us ], [ 0, %polly.loop_header437 ]
  %191 = add nuw nsw i64 %polly.indvar446.us, %169
  %polly.access.mul.Packed_MemRef_call1301.us = mul nuw nsw i64 %polly.indvar446.us, 1200
  br label %polly.loop_header450.us

polly.loop_header450.us:                          ; preds = %polly.loop_header443.us, %polly.loop_header450.us
  %polly.indvar454.us = phi i64 [ %polly.indvar_next455.us, %polly.loop_header450.us ], [ 0, %polly.loop_header443.us ]
  %192 = add nuw nsw i64 %polly.indvar454.us, %177
  %polly.access.mul.call1458.us = mul nuw nsw i64 %192, 1000
  %polly.access.add.call1459.us = add nuw nsw i64 %191, %polly.access.mul.call1458.us
  %polly.access.call1460.us = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1459.us
  %polly.access.call1460.load.us = load double, double* %polly.access.call1460.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301.us = add nuw nsw i64 %polly.indvar454.us, %polly.access.mul.Packed_MemRef_call1301.us
  %polly.access.Packed_MemRef_call1301.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us
  store double %polly.access.call1460.load.us, double* %polly.access.Packed_MemRef_call1301.us, align 8
  %polly.indvar_next455.us = add nuw nsw i64 %polly.indvar454.us, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar454.us, %smin1066
  br i1 %exitcond1064.not, label %polly.cond461.loopexit.us, label %polly.loop_header450.us

polly.then463.us:                                 ; preds = %polly.cond461.loopexit.us
  %polly.access.add.call1467.us = add nuw nsw i64 %190, %polly.indvar446.us
  %polly.access.call1468.us = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.us
  %polly.access.call1468.load.us = load double, double* %polly.access.call1468.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1301.us, %188
  %polly.access.Packed_MemRef_call1301471.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.us
  store double %polly.access.call1468.load.us, double* %polly.access.Packed_MemRef_call1301471.us, align 8
  br label %polly.merge462.us

polly.merge462.us:                                ; preds = %polly.then463.us, %polly.cond461.loopexit.us
  %polly.indvar_next447.us = add nuw nsw i64 %polly.indvar446.us, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next447.us, 20
  br i1 %exitcond1065.not, label %polly.loop_header472.preheader, label %polly.loop_header443.us

polly.cond461.loopexit.us:                        ; preds = %polly.loop_header450.us
  br i1 %.not920, label %polly.merge462.us, label %polly.then463.us

polly.loop_header437.split:                       ; preds = %polly.loop_header437
  br i1 %.not920, label %polly.loop_exit474, label %polly.loop_header443.preheader

polly.loop_header443.preheader:                   ; preds = %polly.loop_header437.split
  %polly.access.call1468 = getelementptr double, double* %polly.access.cast.call1718, i64 %190
  %polly.access.call1468.load = load double, double* %polly.access.call1468, align 8, !alias.scope !88, !noalias !95
  %polly.access.Packed_MemRef_call1301471 = getelementptr double, double* %Packed_MemRef_call1301, i64 %188
  store double %polly.access.call1468.load, double* %polly.access.Packed_MemRef_call1301471, align 8
  %polly.access.add.call1467.1 = or i64 %190, 1
  %polly.access.call1468.1 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.1
  %polly.access.call1468.load.1 = load double, double* %polly.access.call1468.1, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.1 = add nsw i64 %188, 1200
  %polly.access.Packed_MemRef_call1301471.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.1
  store double %polly.access.call1468.load.1, double* %polly.access.Packed_MemRef_call1301471.1, align 8
  %polly.access.add.call1467.2 = or i64 %190, 2
  %polly.access.call1468.2 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.2
  %polly.access.call1468.load.2 = load double, double* %polly.access.call1468.2, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.2 = add nsw i64 %188, 2400
  %polly.access.Packed_MemRef_call1301471.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.2
  store double %polly.access.call1468.load.2, double* %polly.access.Packed_MemRef_call1301471.2, align 8
  %polly.access.add.call1467.3 = or i64 %190, 3
  %polly.access.call1468.3 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.3
  %polly.access.call1468.load.3 = load double, double* %polly.access.call1468.3, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.3 = add nsw i64 %188, 3600
  %polly.access.Packed_MemRef_call1301471.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.3
  store double %polly.access.call1468.load.3, double* %polly.access.Packed_MemRef_call1301471.3, align 8
  %polly.access.add.call1467.4 = add nuw nsw i64 %190, 4
  %polly.access.call1468.4 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.4
  %polly.access.call1468.load.4 = load double, double* %polly.access.call1468.4, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.4 = add nsw i64 %188, 4800
  %polly.access.Packed_MemRef_call1301471.4 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.4
  store double %polly.access.call1468.load.4, double* %polly.access.Packed_MemRef_call1301471.4, align 8
  %polly.access.add.call1467.5 = add nuw nsw i64 %190, 5
  %polly.access.call1468.5 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.5
  %polly.access.call1468.load.5 = load double, double* %polly.access.call1468.5, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.5 = add nsw i64 %188, 6000
  %polly.access.Packed_MemRef_call1301471.5 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.5
  store double %polly.access.call1468.load.5, double* %polly.access.Packed_MemRef_call1301471.5, align 8
  %polly.access.add.call1467.6 = add nuw nsw i64 %190, 6
  %polly.access.call1468.6 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.6
  %polly.access.call1468.load.6 = load double, double* %polly.access.call1468.6, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.6 = add nsw i64 %188, 7200
  %polly.access.Packed_MemRef_call1301471.6 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.6
  store double %polly.access.call1468.load.6, double* %polly.access.Packed_MemRef_call1301471.6, align 8
  %polly.access.add.call1467.7 = add nuw nsw i64 %190, 7
  %polly.access.call1468.7 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.7
  %polly.access.call1468.load.7 = load double, double* %polly.access.call1468.7, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.7 = add nsw i64 %188, 8400
  %polly.access.Packed_MemRef_call1301471.7 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.7
  store double %polly.access.call1468.load.7, double* %polly.access.Packed_MemRef_call1301471.7, align 8
  %polly.access.add.call1467.8 = add nuw nsw i64 %190, 8
  %polly.access.call1468.8 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.8
  %polly.access.call1468.load.8 = load double, double* %polly.access.call1468.8, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.8 = add nsw i64 %188, 9600
  %polly.access.Packed_MemRef_call1301471.8 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.8
  store double %polly.access.call1468.load.8, double* %polly.access.Packed_MemRef_call1301471.8, align 8
  %polly.access.add.call1467.9 = add nuw nsw i64 %190, 9
  %polly.access.call1468.9 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.9
  %polly.access.call1468.load.9 = load double, double* %polly.access.call1468.9, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.9 = add nsw i64 %188, 10800
  %polly.access.Packed_MemRef_call1301471.9 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.9
  store double %polly.access.call1468.load.9, double* %polly.access.Packed_MemRef_call1301471.9, align 8
  %polly.access.add.call1467.10 = add nuw nsw i64 %190, 10
  %polly.access.call1468.10 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.10
  %polly.access.call1468.load.10 = load double, double* %polly.access.call1468.10, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.10 = add nsw i64 %188, 12000
  %polly.access.Packed_MemRef_call1301471.10 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.10
  store double %polly.access.call1468.load.10, double* %polly.access.Packed_MemRef_call1301471.10, align 8
  %polly.access.add.call1467.11 = add nuw nsw i64 %190, 11
  %polly.access.call1468.11 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.11
  %polly.access.call1468.load.11 = load double, double* %polly.access.call1468.11, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.11 = add nsw i64 %188, 13200
  %polly.access.Packed_MemRef_call1301471.11 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.11
  store double %polly.access.call1468.load.11, double* %polly.access.Packed_MemRef_call1301471.11, align 8
  %polly.access.add.call1467.12 = add nuw nsw i64 %190, 12
  %polly.access.call1468.12 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.12
  %polly.access.call1468.load.12 = load double, double* %polly.access.call1468.12, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.12 = add nsw i64 %188, 14400
  %polly.access.Packed_MemRef_call1301471.12 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.12
  store double %polly.access.call1468.load.12, double* %polly.access.Packed_MemRef_call1301471.12, align 8
  %polly.access.add.call1467.13 = add nuw nsw i64 %190, 13
  %polly.access.call1468.13 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.13
  %polly.access.call1468.load.13 = load double, double* %polly.access.call1468.13, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.13 = add nsw i64 %188, 15600
  %polly.access.Packed_MemRef_call1301471.13 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.13
  store double %polly.access.call1468.load.13, double* %polly.access.Packed_MemRef_call1301471.13, align 8
  %polly.access.add.call1467.14 = add nuw nsw i64 %190, 14
  %polly.access.call1468.14 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.14
  %polly.access.call1468.load.14 = load double, double* %polly.access.call1468.14, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.14 = add nsw i64 %188, 16800
  %polly.access.Packed_MemRef_call1301471.14 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.14
  store double %polly.access.call1468.load.14, double* %polly.access.Packed_MemRef_call1301471.14, align 8
  %polly.access.add.call1467.15 = add nuw nsw i64 %190, 15
  %polly.access.call1468.15 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.15
  %polly.access.call1468.load.15 = load double, double* %polly.access.call1468.15, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.15 = add nsw i64 %188, 18000
  %polly.access.Packed_MemRef_call1301471.15 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.15
  store double %polly.access.call1468.load.15, double* %polly.access.Packed_MemRef_call1301471.15, align 8
  %polly.access.add.call1467.16 = add nuw nsw i64 %190, 16
  %polly.access.call1468.16 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.16
  %polly.access.call1468.load.16 = load double, double* %polly.access.call1468.16, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.16 = add nsw i64 %188, 19200
  %polly.access.Packed_MemRef_call1301471.16 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.16
  store double %polly.access.call1468.load.16, double* %polly.access.Packed_MemRef_call1301471.16, align 8
  %polly.access.add.call1467.17 = add nuw nsw i64 %190, 17
  %polly.access.call1468.17 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.17
  %polly.access.call1468.load.17 = load double, double* %polly.access.call1468.17, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.17 = add nsw i64 %188, 20400
  %polly.access.Packed_MemRef_call1301471.17 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.17
  store double %polly.access.call1468.load.17, double* %polly.access.Packed_MemRef_call1301471.17, align 8
  %polly.access.add.call1467.18 = add nuw nsw i64 %190, 18
  %polly.access.call1468.18 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.18
  %polly.access.call1468.load.18 = load double, double* %polly.access.call1468.18, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.18 = add nsw i64 %188, 21600
  %polly.access.Packed_MemRef_call1301471.18 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.18
  store double %polly.access.call1468.load.18, double* %polly.access.Packed_MemRef_call1301471.18, align 8
  %polly.access.add.call1467.19 = add nuw nsw i64 %190, 19
  %polly.access.call1468.19 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.19
  %polly.access.call1468.load.19 = load double, double* %polly.access.call1468.19, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.19 = add nsw i64 %188, 22800
  %polly.access.Packed_MemRef_call1301471.19 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.19
  store double %polly.access.call1468.load.19, double* %polly.access.Packed_MemRef_call1301471.19, align 8
  br label %polly.loop_exit474

polly.loop_exit474:                               ; preds = %polly.loop_exit481.loopexit.us, %polly.loop_header437.split, %polly.loop_header443.preheader, %polly.loop_header472.preheader
  %polly.indvar_next441 = add nuw nsw i64 %polly.indvar440, 1
  %indvars.iv.next1062 = add nsw i64 %indvars.iv1061, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar440, %168
  br i1 %exitcond1072.not, label %polly.loop_exit439, label %polly.loop_header437

polly.loop_header472.preheader:                   ; preds = %polly.merge462.us
  %193 = mul nuw nsw i64 %189, 9600
  br i1 %polly.loop_guard4531139, label %polly.loop_header472.us, label %polly.loop_exit474

polly.loop_header472.us:                          ; preds = %polly.loop_header472.preheader, %polly.loop_exit481.loopexit.us
  %polly.indvar475.us = phi i64 [ %polly.indvar_next476.us, %polly.loop_exit481.loopexit.us ], [ 0, %polly.loop_header472.preheader ]
  %194 = mul nuw nsw i64 %polly.indvar475.us, 9600
  %polly.access.mul.Packed_MemRef_call1301486.us = mul nuw nsw i64 %polly.indvar475.us, 1200
  %195 = add nuw nsw i64 %polly.indvar475.us, %169
  %polly.access.mul.Packed_MemRef_call2303490.us = mul nuw nsw i64 %195, 1200
  %polly.access.add.Packed_MemRef_call2303491.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2303490.us, %189
  %polly.access.Packed_MemRef_call2303492.us = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303491.us
  %_p_scalar_493.us = load double, double* %polly.access.Packed_MemRef_call2303492.us, align 8
  %polly.access.add.Packed_MemRef_call1301499.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1301486.us, %188
  %polly.access.Packed_MemRef_call1301500.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301499.us
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call1301500.us, align 8
  %min.iters.check1303 = icmp ult i64 %181, 4
  br i1 %min.iters.check1303, label %polly.loop_header479.us.preheader, label %vector.memcheck1288

vector.memcheck1288:                              ; preds = %polly.loop_header472.us
  %196 = add i64 %187, %194
  %scevgep1294 = getelementptr i8, i8* %malloccall300, i64 %196
  %scevgep1293 = getelementptr i8, i8* %malloccall300, i64 %194
  %bound01295 = icmp ult i8* %scevgep1289, %scevgep1294
  %bound11296 = icmp ult i8* %scevgep1293, %scevgep1292
  %found.conflict1297 = and i1 %bound01295, %bound11296
  br i1 %found.conflict1297, label %polly.loop_header479.us.preheader, label %vector.ph1304

vector.ph1304:                                    ; preds = %vector.memcheck1288
  %n.vec1306 = and i64 %181, -4
  %broadcast.splatinsert1312 = insertelement <4 x double> poison, double %_p_scalar_493.us, i32 0
  %broadcast.splat1313 = shufflevector <4 x double> %broadcast.splatinsert1312, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1315 = insertelement <4 x double> poison, double %_p_scalar_501.us, i32 0
  %broadcast.splat1316 = shufflevector <4 x double> %broadcast.splatinsert1315, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1301

vector.body1301:                                  ; preds = %vector.body1301, %vector.ph1304
  %index1307 = phi i64 [ 0, %vector.ph1304 ], [ %index.next1308, %vector.body1301 ]
  %197 = add nuw nsw i64 %index1307, %177
  %198 = add nuw nsw i64 %index1307, %polly.access.mul.Packed_MemRef_call1301486.us
  %199 = getelementptr double, double* %Packed_MemRef_call1301, i64 %198
  %200 = bitcast double* %199 to <4 x double>*
  %wide.load1311 = load <4 x double>, <4 x double>* %200, align 8, !alias.scope !96
  %201 = fmul fast <4 x double> %broadcast.splat1313, %wide.load1311
  %202 = add nuw nsw i64 %197, %polly.access.mul.Packed_MemRef_call2303490.us
  %203 = getelementptr double, double* %Packed_MemRef_call2303, i64 %202
  %204 = bitcast double* %203 to <4 x double>*
  %wide.load1314 = load <4 x double>, <4 x double>* %204, align 8
  %205 = fmul fast <4 x double> %broadcast.splat1316, %wide.load1314
  %206 = shl i64 %197, 3
  %207 = add nuw nsw i64 %206, %193
  %208 = getelementptr i8, i8* %call, i64 %207
  %209 = bitcast i8* %208 to <4 x double>*
  %wide.load1317 = load <4 x double>, <4 x double>* %209, align 8, !alias.scope !99, !noalias !101
  %210 = fadd fast <4 x double> %205, %201
  %211 = fmul fast <4 x double> %210, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %212 = fadd fast <4 x double> %211, %wide.load1317
  %213 = bitcast i8* %208 to <4 x double>*
  store <4 x double> %212, <4 x double>* %213, align 8, !alias.scope !99, !noalias !101
  %index.next1308 = add i64 %index1307, 4
  %214 = icmp eq i64 %index.next1308, %n.vec1306
  br i1 %214, label %middle.block1299, label %vector.body1301, !llvm.loop !102

middle.block1299:                                 ; preds = %vector.body1301
  %cmp.n1310 = icmp eq i64 %181, %n.vec1306
  br i1 %cmp.n1310, label %polly.loop_exit481.loopexit.us, label %polly.loop_header479.us.preheader

polly.loop_header479.us.preheader:                ; preds = %vector.memcheck1288, %polly.loop_header472.us, %middle.block1299
  %polly.indvar483.us.ph = phi i64 [ 0, %vector.memcheck1288 ], [ 0, %polly.loop_header472.us ], [ %n.vec1306, %middle.block1299 ]
  br label %polly.loop_header479.us

polly.loop_header479.us:                          ; preds = %polly.loop_header479.us.preheader, %polly.loop_header479.us
  %polly.indvar483.us = phi i64 [ %polly.indvar_next484.us, %polly.loop_header479.us ], [ %polly.indvar483.us.ph, %polly.loop_header479.us.preheader ]
  %215 = add nuw nsw i64 %polly.indvar483.us, %177
  %polly.access.add.Packed_MemRef_call1301487.us = add nuw nsw i64 %polly.indvar483.us, %polly.access.mul.Packed_MemRef_call1301486.us
  %polly.access.Packed_MemRef_call1301488.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301487.us
  %_p_scalar_489.us = load double, double* %polly.access.Packed_MemRef_call1301488.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_493.us, %_p_scalar_489.us
  %polly.access.add.Packed_MemRef_call2303495.us = add nuw nsw i64 %215, %polly.access.mul.Packed_MemRef_call2303490.us
  %polly.access.Packed_MemRef_call2303496.us = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303495.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call2303496.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_501.us, %_p_scalar_497.us
  %216 = shl i64 %215, 3
  %217 = add nuw nsw i64 %216, %193
  %scevgep502.us = getelementptr i8, i8* %call, i64 %217
  %scevgep502503.us = bitcast i8* %scevgep502.us to double*
  %_p_scalar_504.us = load double, double* %scevgep502503.us, align 8, !alias.scope !85, !noalias !87
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_504.us
  store double %p_add42.i79.us, double* %scevgep502503.us, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next484.us = add nuw nsw i64 %polly.indvar483.us, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar483.us, %smin1066
  br i1 %exitcond1067.not, label %polly.loop_exit481.loopexit.us, label %polly.loop_header479.us, !llvm.loop !103

polly.loop_exit481.loopexit.us:                   ; preds = %polly.loop_header479.us, %middle.block1299
  %polly.indvar_next476.us = add nuw nsw i64 %polly.indvar475.us, 1
  %exitcond1068.not = icmp eq i64 %polly.indvar_next476.us, 20
  br i1 %exitcond1068.not, label %polly.loop_exit474, label %polly.loop_header472.us

polly.start507:                                   ; preds = %init_array.exit
  %malloccall509 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall511 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header595

polly.exiting508:                                 ; preds = %polly.loop_exit635
  tail call void @free(i8* %malloccall509)
  tail call void @free(i8* %malloccall511)
  br label %kernel_syr2k.exit

polly.loop_header595:                             ; preds = %polly.loop_exit603, %polly.start507
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit603 ], [ 0, %polly.start507 ]
  %polly.indvar598 = phi i64 [ %polly.indvar_next599, %polly.loop_exit603 ], [ 1, %polly.start507 ]
  %218 = add i64 %indvar, 1
  %219 = mul nuw nsw i64 %polly.indvar598, 9600
  %scevgep607 = getelementptr i8, i8* %call, i64 %219
  %min.iters.check1223 = icmp ult i64 %218, 4
  br i1 %min.iters.check1223, label %polly.loop_header601.preheader, label %vector.ph1224

vector.ph1224:                                    ; preds = %polly.loop_header595
  %n.vec1226 = and i64 %218, -4
  br label %vector.body1222

vector.body1222:                                  ; preds = %vector.body1222, %vector.ph1224
  %index1227 = phi i64 [ 0, %vector.ph1224 ], [ %index.next1228, %vector.body1222 ]
  %220 = shl nuw nsw i64 %index1227, 3
  %221 = getelementptr i8, i8* %scevgep607, i64 %220
  %222 = bitcast i8* %221 to <4 x double>*
  %wide.load1231 = load <4 x double>, <4 x double>* %222, align 8, !alias.scope !104, !noalias !106
  %223 = fmul fast <4 x double> %wide.load1231, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %224 = bitcast i8* %221 to <4 x double>*
  store <4 x double> %223, <4 x double>* %224, align 8, !alias.scope !104, !noalias !106
  %index.next1228 = add i64 %index1227, 4
  %225 = icmp eq i64 %index.next1228, %n.vec1226
  br i1 %225, label %middle.block1220, label %vector.body1222, !llvm.loop !111

middle.block1220:                                 ; preds = %vector.body1222
  %cmp.n1230 = icmp eq i64 %218, %n.vec1226
  br i1 %cmp.n1230, label %polly.loop_exit603, label %polly.loop_header601.preheader

polly.loop_header601.preheader:                   ; preds = %polly.loop_header595, %middle.block1220
  %polly.indvar604.ph = phi i64 [ 0, %polly.loop_header595 ], [ %n.vec1226, %middle.block1220 ]
  br label %polly.loop_header601

polly.loop_exit603:                               ; preds = %polly.loop_header601, %middle.block1220
  %polly.indvar_next599 = add nuw nsw i64 %polly.indvar598, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next599, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1103.not, label %polly.loop_header611.preheader, label %polly.loop_header595

polly.loop_header611.preheader:                   ; preds = %polly.loop_exit603
  %Packed_MemRef_call1510 = bitcast i8* %malloccall509 to double*
  %Packed_MemRef_call2512 = bitcast i8* %malloccall511 to double*
  br label %polly.loop_header611

polly.loop_header601:                             ; preds = %polly.loop_header601.preheader, %polly.loop_header601
  %polly.indvar604 = phi i64 [ %polly.indvar_next605, %polly.loop_header601 ], [ %polly.indvar604.ph, %polly.loop_header601.preheader ]
  %226 = shl nuw nsw i64 %polly.indvar604, 3
  %scevgep608 = getelementptr i8, i8* %scevgep607, i64 %226
  %scevgep608609 = bitcast i8* %scevgep608 to double*
  %_p_scalar_610 = load double, double* %scevgep608609, align 8, !alias.scope !104, !noalias !106
  %p_mul.i = fmul fast double %_p_scalar_610, 1.200000e+00
  store double %p_mul.i, double* %scevgep608609, align 8, !alias.scope !104, !noalias !106
  %polly.indvar_next605 = add nuw nsw i64 %polly.indvar604, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar_next605, %polly.indvar598
  br i1 %exitcond1102.not, label %polly.loop_exit603, label %polly.loop_header601, !llvm.loop !112

polly.loop_header611:                             ; preds = %polly.loop_header611.preheader, %polly.loop_exit619
  %polly.indvar614 = phi i64 [ %polly.indvar_next615, %polly.loop_exit619 ], [ 0, %polly.loop_header611.preheader ]
  %polly.access.mul.Packed_MemRef_call2512 = mul nuw nsw i64 %polly.indvar614, 1200
  br label %polly.loop_header617

polly.loop_exit619:                               ; preds = %polly.loop_header617
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1101.not = icmp eq i64 %polly.indvar_next615, 1000
  br i1 %exitcond1101.not, label %polly.loop_header627, label %polly.loop_header611

polly.loop_header617:                             ; preds = %polly.loop_header617, %polly.loop_header611
  %polly.indvar620 = phi i64 [ 0, %polly.loop_header611 ], [ %polly.indvar_next621, %polly.loop_header617 ]
  %polly.access.mul.call2624 = mul nuw nsw i64 %polly.indvar620, 1000
  %polly.access.add.call2625 = add nuw nsw i64 %polly.access.mul.call2624, %polly.indvar614
  %polly.access.call2626 = getelementptr double, double* %polly.access.cast.call2728, i64 %polly.access.add.call2625
  %polly.access.call2626.load = load double, double* %polly.access.call2626, align 8, !alias.scope !108, !noalias !113
  %polly.access.add.Packed_MemRef_call2512 = add nuw nsw i64 %polly.indvar620, %polly.access.mul.Packed_MemRef_call2512
  %polly.access.Packed_MemRef_call2512 = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512
  store double %polly.access.call2626.load, double* %polly.access.Packed_MemRef_call2512, align 8
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1100.not = icmp eq i64 %polly.indvar_next621, 1200
  br i1 %exitcond1100.not, label %polly.loop_exit619, label %polly.loop_header617

polly.loop_header627:                             ; preds = %polly.loop_exit619, %polly.loop_exit635
  %indvars.iv1093 = phi i64 [ %indvars.iv.next1094, %polly.loop_exit635 ], [ 0, %polly.loop_exit619 ]
  %indvars.iv1081 = phi i64 [ %indvars.iv.next1082, %polly.loop_exit635 ], [ 0, %polly.loop_exit619 ]
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_exit635 ], [ 0, %polly.loop_exit619 ]
  %227 = shl nuw nsw i64 %polly.indvar630, 5
  %228 = mul nuw nsw i64 %polly.indvar630, 307200
  %229 = or i64 %228, 8
  %230 = shl nuw nsw i64 %polly.indvar630, 5
  %231 = lshr i64 %polly.indvar630, 2
  %smin1095 = call i64 @llvm.smin.i64(i64 %indvars.iv1093, i64 -1168)
  %232 = shl nsw i64 %polly.indvar630, 5
  %233 = add nsw i64 %smin1095, 1199
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit642
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %indvars.iv.next1082 = add nuw nsw i64 %indvars.iv1081, 32
  %indvars.iv.next1094 = add nsw i64 %indvars.iv1093, -32
  %exitcond1099.not = icmp eq i64 %polly.indvar_next631, 38
  br i1 %exitcond1099.not, label %polly.exiting508, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit642, %polly.loop_header627
  %polly.indvar636 = phi i64 [ 0, %polly.loop_header627 ], [ %polly.indvar_next637, %polly.loop_exit642 ]
  %234 = mul nuw nsw i64 %polly.indvar636, 20
  br label %polly.loop_header640

polly.loop_exit642:                               ; preds = %polly.loop_exit648
  %polly.indvar_next637 = add nuw nsw i64 %polly.indvar636, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar_next637, 50
  br i1 %exitcond1098.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header640:                             ; preds = %polly.loop_exit648, %polly.loop_header633
  %indvars.iv1083 = phi i64 [ %indvars.iv.next1084, %polly.loop_exit648 ], [ %indvars.iv1081, %polly.loop_header633 ]
  %polly.indvar643 = phi i64 [ %polly.indvar_next644, %polly.loop_exit648 ], [ 0, %polly.loop_header633 ]
  %235 = mul nsw i64 %polly.indvar643, -128
  %236 = add i64 %227, %235
  %237 = shl nuw nsw i64 %polly.indvar643, 10
  %238 = add nuw i64 %228, %237
  %239 = add nuw i64 %229, %237
  %240 = mul nsw i64 %polly.indvar643, -128
  %241 = add i64 %230, %240
  %242 = shl nsw i64 %polly.indvar643, 7
  %243 = sub nsw i64 %232, %242
  %244 = add nuw nsw i64 %242, 128
  br label %polly.loop_header646

polly.loop_exit648:                               ; preds = %polly.loop_exit683
  %polly.indvar_next644 = add nuw nsw i64 %polly.indvar643, 1
  %indvars.iv.next1084 = add nsw i64 %indvars.iv1083, -128
  %exitcond1097.not = icmp eq i64 %polly.indvar643, %231
  br i1 %exitcond1097.not, label %polly.loop_exit642, label %polly.loop_header640

polly.loop_header646:                             ; preds = %polly.loop_exit683, %polly.loop_header640
  %indvars.iv1085 = phi i64 [ %indvars.iv.next1086, %polly.loop_exit683 ], [ %indvars.iv1083, %polly.loop_header640 ]
  %polly.indvar649 = phi i64 [ %polly.indvar_next650, %polly.loop_exit683 ], [ 0, %polly.loop_header640 ]
  %245 = add i64 %236, %polly.indvar649
  %smin1246 = call i64 @llvm.smin.i64(i64 %245, i64 127)
  %246 = add nsw i64 %smin1246, 1
  %247 = mul i64 %polly.indvar649, 9600
  %248 = add i64 %238, %247
  %scevgep1233 = getelementptr i8, i8* %call, i64 %248
  %249 = add i64 %239, %247
  %scevgep1234 = getelementptr i8, i8* %call, i64 %249
  %250 = add i64 %241, %polly.indvar649
  %smin1235 = call i64 @llvm.smin.i64(i64 %250, i64 127)
  %251 = shl nsw i64 %smin1235, 3
  %scevgep1236 = getelementptr i8, i8* %scevgep1234, i64 %251
  %252 = add nsw i64 %251, 8
  %smin1090 = call i64 @llvm.smin.i64(i64 %indvars.iv1085, i64 127)
  %253 = add nsw i64 %polly.indvar649, %243
  %polly.loop_guard6621140 = icmp sgt i64 %253, -1
  %254 = add nuw nsw i64 %polly.indvar649, %232
  %.not921 = icmp ult i64 %254, %244
  %polly.access.mul.call1675 = mul nuw nsw i64 %254, 1000
  %255 = add nuw nsw i64 %polly.access.mul.call1675, %234
  br i1 %polly.loop_guard6621140, label %polly.loop_header652.us, label %polly.loop_header646.split

polly.loop_header652.us:                          ; preds = %polly.loop_header646, %polly.merge671.us
  %polly.indvar655.us = phi i64 [ %polly.indvar_next656.us, %polly.merge671.us ], [ 0, %polly.loop_header646 ]
  %256 = add nuw nsw i64 %polly.indvar655.us, %234
  %polly.access.mul.Packed_MemRef_call1510.us = mul nuw nsw i64 %polly.indvar655.us, 1200
  br label %polly.loop_header659.us

polly.loop_header659.us:                          ; preds = %polly.loop_header652.us, %polly.loop_header659.us
  %polly.indvar663.us = phi i64 [ %polly.indvar_next664.us, %polly.loop_header659.us ], [ 0, %polly.loop_header652.us ]
  %257 = add nuw nsw i64 %polly.indvar663.us, %242
  %polly.access.mul.call1667.us = mul nuw nsw i64 %257, 1000
  %polly.access.add.call1668.us = add nuw nsw i64 %256, %polly.access.mul.call1667.us
  %polly.access.call1669.us = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1668.us
  %polly.access.call1669.load.us = load double, double* %polly.access.call1669.us, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510.us = add nuw nsw i64 %polly.indvar663.us, %polly.access.mul.Packed_MemRef_call1510.us
  %polly.access.Packed_MemRef_call1510.us = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510.us
  store double %polly.access.call1669.load.us, double* %polly.access.Packed_MemRef_call1510.us, align 8
  %polly.indvar_next664.us = add nuw nsw i64 %polly.indvar663.us, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar663.us, %smin1090
  br i1 %exitcond1088.not, label %polly.cond670.loopexit.us, label %polly.loop_header659.us

polly.then672.us:                                 ; preds = %polly.cond670.loopexit.us
  %polly.access.add.call1676.us = add nuw nsw i64 %255, %polly.indvar655.us
  %polly.access.call1677.us = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.us
  %polly.access.call1677.load.us = load double, double* %polly.access.call1677.us, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1510.us, %253
  %polly.access.Packed_MemRef_call1510680.us = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.us
  store double %polly.access.call1677.load.us, double* %polly.access.Packed_MemRef_call1510680.us, align 8
  br label %polly.merge671.us

polly.merge671.us:                                ; preds = %polly.then672.us, %polly.cond670.loopexit.us
  %polly.indvar_next656.us = add nuw nsw i64 %polly.indvar655.us, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next656.us, 20
  br i1 %exitcond1089.not, label %polly.loop_header681.preheader, label %polly.loop_header652.us

polly.cond670.loopexit.us:                        ; preds = %polly.loop_header659.us
  br i1 %.not921, label %polly.merge671.us, label %polly.then672.us

polly.loop_header646.split:                       ; preds = %polly.loop_header646
  br i1 %.not921, label %polly.loop_exit683, label %polly.loop_header652.preheader

polly.loop_header652.preheader:                   ; preds = %polly.loop_header646.split
  %polly.access.call1677 = getelementptr double, double* %polly.access.cast.call1718, i64 %255
  %polly.access.call1677.load = load double, double* %polly.access.call1677, align 8, !alias.scope !107, !noalias !114
  %polly.access.Packed_MemRef_call1510680 = getelementptr double, double* %Packed_MemRef_call1510, i64 %253
  store double %polly.access.call1677.load, double* %polly.access.Packed_MemRef_call1510680, align 8
  %polly.access.add.call1676.1 = or i64 %255, 1
  %polly.access.call1677.1 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.1
  %polly.access.call1677.load.1 = load double, double* %polly.access.call1677.1, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.1 = add nsw i64 %253, 1200
  %polly.access.Packed_MemRef_call1510680.1 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.1
  store double %polly.access.call1677.load.1, double* %polly.access.Packed_MemRef_call1510680.1, align 8
  %polly.access.add.call1676.2 = or i64 %255, 2
  %polly.access.call1677.2 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.2
  %polly.access.call1677.load.2 = load double, double* %polly.access.call1677.2, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.2 = add nsw i64 %253, 2400
  %polly.access.Packed_MemRef_call1510680.2 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.2
  store double %polly.access.call1677.load.2, double* %polly.access.Packed_MemRef_call1510680.2, align 8
  %polly.access.add.call1676.3 = or i64 %255, 3
  %polly.access.call1677.3 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.3
  %polly.access.call1677.load.3 = load double, double* %polly.access.call1677.3, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.3 = add nsw i64 %253, 3600
  %polly.access.Packed_MemRef_call1510680.3 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.3
  store double %polly.access.call1677.load.3, double* %polly.access.Packed_MemRef_call1510680.3, align 8
  %polly.access.add.call1676.4 = add nuw nsw i64 %255, 4
  %polly.access.call1677.4 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.4
  %polly.access.call1677.load.4 = load double, double* %polly.access.call1677.4, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.4 = add nsw i64 %253, 4800
  %polly.access.Packed_MemRef_call1510680.4 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.4
  store double %polly.access.call1677.load.4, double* %polly.access.Packed_MemRef_call1510680.4, align 8
  %polly.access.add.call1676.5 = add nuw nsw i64 %255, 5
  %polly.access.call1677.5 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.5
  %polly.access.call1677.load.5 = load double, double* %polly.access.call1677.5, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.5 = add nsw i64 %253, 6000
  %polly.access.Packed_MemRef_call1510680.5 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.5
  store double %polly.access.call1677.load.5, double* %polly.access.Packed_MemRef_call1510680.5, align 8
  %polly.access.add.call1676.6 = add nuw nsw i64 %255, 6
  %polly.access.call1677.6 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.6
  %polly.access.call1677.load.6 = load double, double* %polly.access.call1677.6, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.6 = add nsw i64 %253, 7200
  %polly.access.Packed_MemRef_call1510680.6 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.6
  store double %polly.access.call1677.load.6, double* %polly.access.Packed_MemRef_call1510680.6, align 8
  %polly.access.add.call1676.7 = add nuw nsw i64 %255, 7
  %polly.access.call1677.7 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.7
  %polly.access.call1677.load.7 = load double, double* %polly.access.call1677.7, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.7 = add nsw i64 %253, 8400
  %polly.access.Packed_MemRef_call1510680.7 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.7
  store double %polly.access.call1677.load.7, double* %polly.access.Packed_MemRef_call1510680.7, align 8
  %polly.access.add.call1676.8 = add nuw nsw i64 %255, 8
  %polly.access.call1677.8 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.8
  %polly.access.call1677.load.8 = load double, double* %polly.access.call1677.8, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.8 = add nsw i64 %253, 9600
  %polly.access.Packed_MemRef_call1510680.8 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.8
  store double %polly.access.call1677.load.8, double* %polly.access.Packed_MemRef_call1510680.8, align 8
  %polly.access.add.call1676.9 = add nuw nsw i64 %255, 9
  %polly.access.call1677.9 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.9
  %polly.access.call1677.load.9 = load double, double* %polly.access.call1677.9, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.9 = add nsw i64 %253, 10800
  %polly.access.Packed_MemRef_call1510680.9 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.9
  store double %polly.access.call1677.load.9, double* %polly.access.Packed_MemRef_call1510680.9, align 8
  %polly.access.add.call1676.10 = add nuw nsw i64 %255, 10
  %polly.access.call1677.10 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.10
  %polly.access.call1677.load.10 = load double, double* %polly.access.call1677.10, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.10 = add nsw i64 %253, 12000
  %polly.access.Packed_MemRef_call1510680.10 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.10
  store double %polly.access.call1677.load.10, double* %polly.access.Packed_MemRef_call1510680.10, align 8
  %polly.access.add.call1676.11 = add nuw nsw i64 %255, 11
  %polly.access.call1677.11 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.11
  %polly.access.call1677.load.11 = load double, double* %polly.access.call1677.11, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.11 = add nsw i64 %253, 13200
  %polly.access.Packed_MemRef_call1510680.11 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.11
  store double %polly.access.call1677.load.11, double* %polly.access.Packed_MemRef_call1510680.11, align 8
  %polly.access.add.call1676.12 = add nuw nsw i64 %255, 12
  %polly.access.call1677.12 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.12
  %polly.access.call1677.load.12 = load double, double* %polly.access.call1677.12, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.12 = add nsw i64 %253, 14400
  %polly.access.Packed_MemRef_call1510680.12 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.12
  store double %polly.access.call1677.load.12, double* %polly.access.Packed_MemRef_call1510680.12, align 8
  %polly.access.add.call1676.13 = add nuw nsw i64 %255, 13
  %polly.access.call1677.13 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.13
  %polly.access.call1677.load.13 = load double, double* %polly.access.call1677.13, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.13 = add nsw i64 %253, 15600
  %polly.access.Packed_MemRef_call1510680.13 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.13
  store double %polly.access.call1677.load.13, double* %polly.access.Packed_MemRef_call1510680.13, align 8
  %polly.access.add.call1676.14 = add nuw nsw i64 %255, 14
  %polly.access.call1677.14 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.14
  %polly.access.call1677.load.14 = load double, double* %polly.access.call1677.14, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.14 = add nsw i64 %253, 16800
  %polly.access.Packed_MemRef_call1510680.14 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.14
  store double %polly.access.call1677.load.14, double* %polly.access.Packed_MemRef_call1510680.14, align 8
  %polly.access.add.call1676.15 = add nuw nsw i64 %255, 15
  %polly.access.call1677.15 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.15
  %polly.access.call1677.load.15 = load double, double* %polly.access.call1677.15, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.15 = add nsw i64 %253, 18000
  %polly.access.Packed_MemRef_call1510680.15 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.15
  store double %polly.access.call1677.load.15, double* %polly.access.Packed_MemRef_call1510680.15, align 8
  %polly.access.add.call1676.16 = add nuw nsw i64 %255, 16
  %polly.access.call1677.16 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.16
  %polly.access.call1677.load.16 = load double, double* %polly.access.call1677.16, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.16 = add nsw i64 %253, 19200
  %polly.access.Packed_MemRef_call1510680.16 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.16
  store double %polly.access.call1677.load.16, double* %polly.access.Packed_MemRef_call1510680.16, align 8
  %polly.access.add.call1676.17 = add nuw nsw i64 %255, 17
  %polly.access.call1677.17 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.17
  %polly.access.call1677.load.17 = load double, double* %polly.access.call1677.17, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.17 = add nsw i64 %253, 20400
  %polly.access.Packed_MemRef_call1510680.17 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.17
  store double %polly.access.call1677.load.17, double* %polly.access.Packed_MemRef_call1510680.17, align 8
  %polly.access.add.call1676.18 = add nuw nsw i64 %255, 18
  %polly.access.call1677.18 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.18
  %polly.access.call1677.load.18 = load double, double* %polly.access.call1677.18, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.18 = add nsw i64 %253, 21600
  %polly.access.Packed_MemRef_call1510680.18 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.18
  store double %polly.access.call1677.load.18, double* %polly.access.Packed_MemRef_call1510680.18, align 8
  %polly.access.add.call1676.19 = add nuw nsw i64 %255, 19
  %polly.access.call1677.19 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.19
  %polly.access.call1677.load.19 = load double, double* %polly.access.call1677.19, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.19 = add nsw i64 %253, 22800
  %polly.access.Packed_MemRef_call1510680.19 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.19
  store double %polly.access.call1677.load.19, double* %polly.access.Packed_MemRef_call1510680.19, align 8
  br label %polly.loop_exit683

polly.loop_exit683:                               ; preds = %polly.loop_exit690.loopexit.us, %polly.loop_header646.split, %polly.loop_header652.preheader, %polly.loop_header681.preheader
  %polly.indvar_next650 = add nuw nsw i64 %polly.indvar649, 1
  %indvars.iv.next1086 = add nsw i64 %indvars.iv1085, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar649, %233
  br i1 %exitcond1096.not, label %polly.loop_exit648, label %polly.loop_header646

polly.loop_header681.preheader:                   ; preds = %polly.merge671.us
  %258 = mul nuw nsw i64 %254, 9600
  br i1 %polly.loop_guard6621140, label %polly.loop_header681.us, label %polly.loop_exit683

polly.loop_header681.us:                          ; preds = %polly.loop_header681.preheader, %polly.loop_exit690.loopexit.us
  %polly.indvar684.us = phi i64 [ %polly.indvar_next685.us, %polly.loop_exit690.loopexit.us ], [ 0, %polly.loop_header681.preheader ]
  %259 = mul nuw nsw i64 %polly.indvar684.us, 9600
  %polly.access.mul.Packed_MemRef_call1510695.us = mul nuw nsw i64 %polly.indvar684.us, 1200
  %260 = add nuw nsw i64 %polly.indvar684.us, %234
  %polly.access.mul.Packed_MemRef_call2512699.us = mul nuw nsw i64 %260, 1200
  %polly.access.add.Packed_MemRef_call2512700.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2512699.us, %254
  %polly.access.Packed_MemRef_call2512701.us = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512700.us
  %_p_scalar_702.us = load double, double* %polly.access.Packed_MemRef_call2512701.us, align 8
  %polly.access.add.Packed_MemRef_call1510708.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1510695.us, %253
  %polly.access.Packed_MemRef_call1510709.us = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510708.us
  %_p_scalar_710.us = load double, double* %polly.access.Packed_MemRef_call1510709.us, align 8
  %min.iters.check1247 = icmp ult i64 %246, 4
  br i1 %min.iters.check1247, label %polly.loop_header688.us.preheader, label %vector.memcheck1232

vector.memcheck1232:                              ; preds = %polly.loop_header681.us
  %261 = add i64 %252, %259
  %scevgep1238 = getelementptr i8, i8* %malloccall509, i64 %261
  %scevgep1237 = getelementptr i8, i8* %malloccall509, i64 %259
  %bound01239 = icmp ult i8* %scevgep1233, %scevgep1238
  %bound11240 = icmp ult i8* %scevgep1237, %scevgep1236
  %found.conflict1241 = and i1 %bound01239, %bound11240
  br i1 %found.conflict1241, label %polly.loop_header688.us.preheader, label %vector.ph1248

vector.ph1248:                                    ; preds = %vector.memcheck1232
  %n.vec1250 = and i64 %246, -4
  %broadcast.splatinsert1256 = insertelement <4 x double> poison, double %_p_scalar_702.us, i32 0
  %broadcast.splat1257 = shufflevector <4 x double> %broadcast.splatinsert1256, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1259 = insertelement <4 x double> poison, double %_p_scalar_710.us, i32 0
  %broadcast.splat1260 = shufflevector <4 x double> %broadcast.splatinsert1259, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1245

vector.body1245:                                  ; preds = %vector.body1245, %vector.ph1248
  %index1251 = phi i64 [ 0, %vector.ph1248 ], [ %index.next1252, %vector.body1245 ]
  %262 = add nuw nsw i64 %index1251, %242
  %263 = add nuw nsw i64 %index1251, %polly.access.mul.Packed_MemRef_call1510695.us
  %264 = getelementptr double, double* %Packed_MemRef_call1510, i64 %263
  %265 = bitcast double* %264 to <4 x double>*
  %wide.load1255 = load <4 x double>, <4 x double>* %265, align 8, !alias.scope !115
  %266 = fmul fast <4 x double> %broadcast.splat1257, %wide.load1255
  %267 = add nuw nsw i64 %262, %polly.access.mul.Packed_MemRef_call2512699.us
  %268 = getelementptr double, double* %Packed_MemRef_call2512, i64 %267
  %269 = bitcast double* %268 to <4 x double>*
  %wide.load1258 = load <4 x double>, <4 x double>* %269, align 8
  %270 = fmul fast <4 x double> %broadcast.splat1260, %wide.load1258
  %271 = shl i64 %262, 3
  %272 = add nuw nsw i64 %271, %258
  %273 = getelementptr i8, i8* %call, i64 %272
  %274 = bitcast i8* %273 to <4 x double>*
  %wide.load1261 = load <4 x double>, <4 x double>* %274, align 8, !alias.scope !118, !noalias !120
  %275 = fadd fast <4 x double> %270, %266
  %276 = fmul fast <4 x double> %275, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %277 = fadd fast <4 x double> %276, %wide.load1261
  %278 = bitcast i8* %273 to <4 x double>*
  store <4 x double> %277, <4 x double>* %278, align 8, !alias.scope !118, !noalias !120
  %index.next1252 = add i64 %index1251, 4
  %279 = icmp eq i64 %index.next1252, %n.vec1250
  br i1 %279, label %middle.block1243, label %vector.body1245, !llvm.loop !121

middle.block1243:                                 ; preds = %vector.body1245
  %cmp.n1254 = icmp eq i64 %246, %n.vec1250
  br i1 %cmp.n1254, label %polly.loop_exit690.loopexit.us, label %polly.loop_header688.us.preheader

polly.loop_header688.us.preheader:                ; preds = %vector.memcheck1232, %polly.loop_header681.us, %middle.block1243
  %polly.indvar692.us.ph = phi i64 [ 0, %vector.memcheck1232 ], [ 0, %polly.loop_header681.us ], [ %n.vec1250, %middle.block1243 ]
  br label %polly.loop_header688.us

polly.loop_header688.us:                          ; preds = %polly.loop_header688.us.preheader, %polly.loop_header688.us
  %polly.indvar692.us = phi i64 [ %polly.indvar_next693.us, %polly.loop_header688.us ], [ %polly.indvar692.us.ph, %polly.loop_header688.us.preheader ]
  %280 = add nuw nsw i64 %polly.indvar692.us, %242
  %polly.access.add.Packed_MemRef_call1510696.us = add nuw nsw i64 %polly.indvar692.us, %polly.access.mul.Packed_MemRef_call1510695.us
  %polly.access.Packed_MemRef_call1510697.us = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510696.us
  %_p_scalar_698.us = load double, double* %polly.access.Packed_MemRef_call1510697.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_702.us, %_p_scalar_698.us
  %polly.access.add.Packed_MemRef_call2512704.us = add nuw nsw i64 %280, %polly.access.mul.Packed_MemRef_call2512699.us
  %polly.access.Packed_MemRef_call2512705.us = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512704.us
  %_p_scalar_706.us = load double, double* %polly.access.Packed_MemRef_call2512705.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_710.us, %_p_scalar_706.us
  %281 = shl i64 %280, 3
  %282 = add nuw nsw i64 %281, %258
  %scevgep711.us = getelementptr i8, i8* %call, i64 %282
  %scevgep711712.us = bitcast i8* %scevgep711.us to double*
  %_p_scalar_713.us = load double, double* %scevgep711712.us, align 8, !alias.scope !104, !noalias !106
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_713.us
  store double %p_add42.i.us, double* %scevgep711712.us, align 8, !alias.scope !104, !noalias !106
  %polly.indvar_next693.us = add nuw nsw i64 %polly.indvar692.us, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar692.us, %smin1090
  br i1 %exitcond1091.not, label %polly.loop_exit690.loopexit.us, label %polly.loop_header688.us, !llvm.loop !122

polly.loop_exit690.loopexit.us:                   ; preds = %polly.loop_header688.us, %middle.block1243
  %polly.indvar_next685.us = add nuw nsw i64 %polly.indvar684.us, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar_next685.us, 20
  br i1 %exitcond1092.not, label %polly.loop_exit683, label %polly.loop_header681.us

polly.loop_header840:                             ; preds = %entry, %polly.loop_exit848
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit848 ], [ 0, %entry ]
  %polly.indvar843 = phi i64 [ %polly.indvar_next844, %polly.loop_exit848 ], [ 0, %entry ]
  %smin1130 = call i64 @llvm.smin.i64(i64 %indvars.iv1128, i64 -1168)
  %283 = shl nsw i64 %polly.indvar843, 5
  %284 = add nsw i64 %smin1130, 1199
  br label %polly.loop_header846

polly.loop_exit848:                               ; preds = %polly.loop_exit854
  %polly.indvar_next844 = add nuw nsw i64 %polly.indvar843, 1
  %indvars.iv.next1129 = add nsw i64 %indvars.iv1128, -32
  %exitcond1133.not = icmp eq i64 %polly.indvar_next844, 38
  br i1 %exitcond1133.not, label %polly.loop_header867, label %polly.loop_header840

polly.loop_header846:                             ; preds = %polly.loop_exit854, %polly.loop_header840
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit854 ], [ 0, %polly.loop_header840 ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %polly.loop_header840 ]
  %285 = mul nsw i64 %polly.indvar849, -32
  %smin = call i64 @llvm.smin.i64(i64 %285, i64 -1168)
  %286 = add nsw i64 %smin, 1200
  %smin1126 = call i64 @llvm.smin.i64(i64 %indvars.iv1124, i64 -1168)
  %287 = shl nsw i64 %polly.indvar849, 5
  %288 = add nsw i64 %smin1126, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1125 = add nsw i64 %indvars.iv1124, -32
  %exitcond1132.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1132.not, label %polly.loop_exit848, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %polly.indvar855 = phi i64 [ 0, %polly.loop_header846 ], [ %polly.indvar_next856, %polly.loop_exit860 ]
  %289 = add nuw nsw i64 %polly.indvar855, %283
  %290 = trunc i64 %289 to i32
  %291 = mul nuw nsw i64 %289, 9600
  %min.iters.check = icmp eq i64 %286, 0
  br i1 %min.iters.check, label %polly.loop_header858, label %vector.ph1162

vector.ph1162:                                    ; preds = %polly.loop_header852
  %broadcast.splatinsert1169 = insertelement <4 x i64> poison, i64 %287, i32 0
  %broadcast.splat1170 = shufflevector <4 x i64> %broadcast.splatinsert1169, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1171 = insertelement <4 x i32> poison, i32 %290, i32 0
  %broadcast.splat1172 = shufflevector <4 x i32> %broadcast.splatinsert1171, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1161

vector.body1161:                                  ; preds = %vector.body1161, %vector.ph1162
  %index1163 = phi i64 [ 0, %vector.ph1162 ], [ %index.next1164, %vector.body1161 ]
  %vec.ind1167 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1162 ], [ %vec.ind.next1168, %vector.body1161 ]
  %292 = add nuw nsw <4 x i64> %vec.ind1167, %broadcast.splat1170
  %293 = trunc <4 x i64> %292 to <4 x i32>
  %294 = mul <4 x i32> %broadcast.splat1172, %293
  %295 = add <4 x i32> %294, <i32 3, i32 3, i32 3, i32 3>
  %296 = urem <4 x i32> %295, <i32 1200, i32 1200, i32 1200, i32 1200>
  %297 = sitofp <4 x i32> %296 to <4 x double>
  %298 = fmul fast <4 x double> %297, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %299 = extractelement <4 x i64> %292, i32 0
  %300 = shl i64 %299, 3
  %301 = add nuw nsw i64 %300, %291
  %302 = getelementptr i8, i8* %call, i64 %301
  %303 = bitcast i8* %302 to <4 x double>*
  store <4 x double> %298, <4 x double>* %303, align 8, !alias.scope !123, !noalias !125
  %index.next1164 = add i64 %index1163, 4
  %vec.ind.next1168 = add <4 x i64> %vec.ind1167, <i64 4, i64 4, i64 4, i64 4>
  %304 = icmp eq i64 %index.next1164, %286
  br i1 %304, label %polly.loop_exit860, label %vector.body1161, !llvm.loop !128

polly.loop_exit860:                               ; preds = %vector.body1161, %polly.loop_header858
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar855, %284
  br i1 %exitcond1131.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_header852, %polly.loop_header858
  %polly.indvar861 = phi i64 [ %polly.indvar_next862, %polly.loop_header858 ], [ 0, %polly.loop_header852 ]
  %305 = add nuw nsw i64 %polly.indvar861, %287
  %306 = trunc i64 %305 to i32
  %307 = mul i32 %306, %290
  %308 = add i32 %307, 3
  %309 = urem i32 %308, 1200
  %p_conv31.i = sitofp i32 %309 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %310 = shl i64 %305, 3
  %311 = add nuw nsw i64 %310, %291
  %scevgep864 = getelementptr i8, i8* %call, i64 %311
  %scevgep864865 = bitcast i8* %scevgep864 to double*
  store double %p_div33.i, double* %scevgep864865, align 8, !alias.scope !123, !noalias !125
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar861, %288
  br i1 %exitcond1127.not, label %polly.loop_exit860, label %polly.loop_header858, !llvm.loop !129

polly.loop_header867:                             ; preds = %polly.loop_exit848, %polly.loop_exit875
  %indvars.iv1118 = phi i64 [ %indvars.iv.next1119, %polly.loop_exit875 ], [ 0, %polly.loop_exit848 ]
  %polly.indvar870 = phi i64 [ %polly.indvar_next871, %polly.loop_exit875 ], [ 0, %polly.loop_exit848 ]
  %smin1120 = call i64 @llvm.smin.i64(i64 %indvars.iv1118, i64 -1168)
  %312 = shl nsw i64 %polly.indvar870, 5
  %313 = add nsw i64 %smin1120, 1199
  br label %polly.loop_header873

polly.loop_exit875:                               ; preds = %polly.loop_exit881
  %polly.indvar_next871 = add nuw nsw i64 %polly.indvar870, 1
  %indvars.iv.next1119 = add nsw i64 %indvars.iv1118, -32
  %exitcond1123.not = icmp eq i64 %polly.indvar_next871, 38
  br i1 %exitcond1123.not, label %polly.loop_header893, label %polly.loop_header867

polly.loop_header873:                             ; preds = %polly.loop_exit881, %polly.loop_header867
  %indvars.iv1114 = phi i64 [ %indvars.iv.next1115, %polly.loop_exit881 ], [ 0, %polly.loop_header867 ]
  %polly.indvar876 = phi i64 [ %polly.indvar_next877, %polly.loop_exit881 ], [ 0, %polly.loop_header867 ]
  %314 = mul nsw i64 %polly.indvar876, -32
  %smin1176 = call i64 @llvm.smin.i64(i64 %314, i64 -968)
  %315 = add nsw i64 %smin1176, 1000
  %smin1116 = call i64 @llvm.smin.i64(i64 %indvars.iv1114, i64 -968)
  %316 = shl nsw i64 %polly.indvar876, 5
  %317 = add nsw i64 %smin1116, 999
  br label %polly.loop_header879

polly.loop_exit881:                               ; preds = %polly.loop_exit887
  %polly.indvar_next877 = add nuw nsw i64 %polly.indvar876, 1
  %indvars.iv.next1115 = add nsw i64 %indvars.iv1114, -32
  %exitcond1122.not = icmp eq i64 %polly.indvar_next877, 32
  br i1 %exitcond1122.not, label %polly.loop_exit875, label %polly.loop_header873

polly.loop_header879:                             ; preds = %polly.loop_exit887, %polly.loop_header873
  %polly.indvar882 = phi i64 [ 0, %polly.loop_header873 ], [ %polly.indvar_next883, %polly.loop_exit887 ]
  %318 = add nuw nsw i64 %polly.indvar882, %312
  %319 = trunc i64 %318 to i32
  %320 = mul nuw nsw i64 %318, 8000
  %min.iters.check1177 = icmp eq i64 %315, 0
  br i1 %min.iters.check1177, label %polly.loop_header885, label %vector.ph1178

vector.ph1178:                                    ; preds = %polly.loop_header879
  %broadcast.splatinsert1187 = insertelement <4 x i64> poison, i64 %316, i32 0
  %broadcast.splat1188 = shufflevector <4 x i64> %broadcast.splatinsert1187, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1189 = insertelement <4 x i32> poison, i32 %319, i32 0
  %broadcast.splat1190 = shufflevector <4 x i32> %broadcast.splatinsert1189, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1175

vector.body1175:                                  ; preds = %vector.body1175, %vector.ph1178
  %index1181 = phi i64 [ 0, %vector.ph1178 ], [ %index.next1182, %vector.body1175 ]
  %vec.ind1185 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1178 ], [ %vec.ind.next1186, %vector.body1175 ]
  %321 = add nuw nsw <4 x i64> %vec.ind1185, %broadcast.splat1188
  %322 = trunc <4 x i64> %321 to <4 x i32>
  %323 = mul <4 x i32> %broadcast.splat1190, %322
  %324 = add <4 x i32> %323, <i32 2, i32 2, i32 2, i32 2>
  %325 = urem <4 x i32> %324, <i32 1000, i32 1000, i32 1000, i32 1000>
  %326 = sitofp <4 x i32> %325 to <4 x double>
  %327 = fmul fast <4 x double> %326, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %328 = extractelement <4 x i64> %321, i32 0
  %329 = shl i64 %328, 3
  %330 = add nuw nsw i64 %329, %320
  %331 = getelementptr i8, i8* %call2, i64 %330
  %332 = bitcast i8* %331 to <4 x double>*
  store <4 x double> %327, <4 x double>* %332, align 8, !alias.scope !127, !noalias !130
  %index.next1182 = add i64 %index1181, 4
  %vec.ind.next1186 = add <4 x i64> %vec.ind1185, <i64 4, i64 4, i64 4, i64 4>
  %333 = icmp eq i64 %index.next1182, %315
  br i1 %333, label %polly.loop_exit887, label %vector.body1175, !llvm.loop !131

polly.loop_exit887:                               ; preds = %vector.body1175, %polly.loop_header885
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar882, %313
  br i1 %exitcond1121.not, label %polly.loop_exit881, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_header879, %polly.loop_header885
  %polly.indvar888 = phi i64 [ %polly.indvar_next889, %polly.loop_header885 ], [ 0, %polly.loop_header879 ]
  %334 = add nuw nsw i64 %polly.indvar888, %316
  %335 = trunc i64 %334 to i32
  %336 = mul i32 %335, %319
  %337 = add i32 %336, 2
  %338 = urem i32 %337, 1000
  %p_conv10.i = sitofp i32 %338 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %339 = shl i64 %334, 3
  %340 = add nuw nsw i64 %339, %320
  %scevgep891 = getelementptr i8, i8* %call2, i64 %340
  %scevgep891892 = bitcast i8* %scevgep891 to double*
  store double %p_div12.i, double* %scevgep891892, align 8, !alias.scope !127, !noalias !130
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %exitcond1117.not = icmp eq i64 %polly.indvar888, %317
  br i1 %exitcond1117.not, label %polly.loop_exit887, label %polly.loop_header885, !llvm.loop !132

polly.loop_header893:                             ; preds = %polly.loop_exit875, %polly.loop_exit901
  %indvars.iv1108 = phi i64 [ %indvars.iv.next1109, %polly.loop_exit901 ], [ 0, %polly.loop_exit875 ]
  %polly.indvar896 = phi i64 [ %polly.indvar_next897, %polly.loop_exit901 ], [ 0, %polly.loop_exit875 ]
  %smin1110 = call i64 @llvm.smin.i64(i64 %indvars.iv1108, i64 -1168)
  %341 = shl nsw i64 %polly.indvar896, 5
  %342 = add nsw i64 %smin1110, 1199
  br label %polly.loop_header899

polly.loop_exit901:                               ; preds = %polly.loop_exit907
  %polly.indvar_next897 = add nuw nsw i64 %polly.indvar896, 1
  %indvars.iv.next1109 = add nsw i64 %indvars.iv1108, -32
  %exitcond1113.not = icmp eq i64 %polly.indvar_next897, 38
  br i1 %exitcond1113.not, label %init_array.exit, label %polly.loop_header893

polly.loop_header899:                             ; preds = %polly.loop_exit907, %polly.loop_header893
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit907 ], [ 0, %polly.loop_header893 ]
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_exit907 ], [ 0, %polly.loop_header893 ]
  %343 = mul nsw i64 %polly.indvar902, -32
  %smin1194 = call i64 @llvm.smin.i64(i64 %343, i64 -968)
  %344 = add nsw i64 %smin1194, 1000
  %smin1106 = call i64 @llvm.smin.i64(i64 %indvars.iv1104, i64 -968)
  %345 = shl nsw i64 %polly.indvar902, 5
  %346 = add nsw i64 %smin1106, 999
  br label %polly.loop_header905

polly.loop_exit907:                               ; preds = %polly.loop_exit913
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %indvars.iv.next1105 = add nsw i64 %indvars.iv1104, -32
  %exitcond1112.not = icmp eq i64 %polly.indvar_next903, 32
  br i1 %exitcond1112.not, label %polly.loop_exit901, label %polly.loop_header899

polly.loop_header905:                             ; preds = %polly.loop_exit913, %polly.loop_header899
  %polly.indvar908 = phi i64 [ 0, %polly.loop_header899 ], [ %polly.indvar_next909, %polly.loop_exit913 ]
  %347 = add nuw nsw i64 %polly.indvar908, %341
  %348 = trunc i64 %347 to i32
  %349 = mul nuw nsw i64 %347, 8000
  %min.iters.check1195 = icmp eq i64 %344, 0
  br i1 %min.iters.check1195, label %polly.loop_header911, label %vector.ph1196

vector.ph1196:                                    ; preds = %polly.loop_header905
  %broadcast.splatinsert1205 = insertelement <4 x i64> poison, i64 %345, i32 0
  %broadcast.splat1206 = shufflevector <4 x i64> %broadcast.splatinsert1205, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1207 = insertelement <4 x i32> poison, i32 %348, i32 0
  %broadcast.splat1208 = shufflevector <4 x i32> %broadcast.splatinsert1207, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1193

vector.body1193:                                  ; preds = %vector.body1193, %vector.ph1196
  %index1199 = phi i64 [ 0, %vector.ph1196 ], [ %index.next1200, %vector.body1193 ]
  %vec.ind1203 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1196 ], [ %vec.ind.next1204, %vector.body1193 ]
  %350 = add nuw nsw <4 x i64> %vec.ind1203, %broadcast.splat1206
  %351 = trunc <4 x i64> %350 to <4 x i32>
  %352 = mul <4 x i32> %broadcast.splat1208, %351
  %353 = add <4 x i32> %352, <i32 1, i32 1, i32 1, i32 1>
  %354 = urem <4 x i32> %353, <i32 1200, i32 1200, i32 1200, i32 1200>
  %355 = sitofp <4 x i32> %354 to <4 x double>
  %356 = fmul fast <4 x double> %355, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %357 = extractelement <4 x i64> %350, i32 0
  %358 = shl i64 %357, 3
  %359 = add nuw nsw i64 %358, %349
  %360 = getelementptr i8, i8* %call1, i64 %359
  %361 = bitcast i8* %360 to <4 x double>*
  store <4 x double> %356, <4 x double>* %361, align 8, !alias.scope !126, !noalias !133
  %index.next1200 = add i64 %index1199, 4
  %vec.ind.next1204 = add <4 x i64> %vec.ind1203, <i64 4, i64 4, i64 4, i64 4>
  %362 = icmp eq i64 %index.next1200, %344
  br i1 %362, label %polly.loop_exit913, label %vector.body1193, !llvm.loop !134

polly.loop_exit913:                               ; preds = %vector.body1193, %polly.loop_header911
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar908, %342
  br i1 %exitcond1111.not, label %polly.loop_exit907, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_header905, %polly.loop_header911
  %polly.indvar914 = phi i64 [ %polly.indvar_next915, %polly.loop_header911 ], [ 0, %polly.loop_header905 ]
  %363 = add nuw nsw i64 %polly.indvar914, %345
  %364 = trunc i64 %363 to i32
  %365 = mul i32 %364, %348
  %366 = add i32 %365, 1
  %367 = urem i32 %366, 1200
  %p_conv.i = sitofp i32 %367 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %368 = shl i64 %363, 3
  %369 = add nuw nsw i64 %368, %349
  %scevgep918 = getelementptr i8, i8* %call1, i64 %369
  %scevgep918919 = bitcast i8* %scevgep918 to double*
  store double %p_div.i, double* %scevgep918919, align 8, !alias.scope !126, !noalias !133
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar914, %346
  br i1 %exitcond1107.not, label %polly.loop_exit913, label %polly.loop_header911, !llvm.loop !135
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
!26 = !{!"llvm.loop.tile.size", i32 128}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 20}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42, !43, !44}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.data.pack.enable", i1 true}
!43 = !{!"llvm.data.pack.array", !21}
!44 = !{!"llvm.data.pack.allocate", !"malloc"}
!45 = distinct !{!45, !12, !24, !46, !47, !48, !49, !50, !54}
!46 = !{!"llvm.loop.id", !"i"}
!47 = !{!"llvm.loop.tile.enable", i1 true}
!48 = !{!"llvm.loop.tile.depth", i32 3}
!49 = !{!"llvm.loop.tile.size", i32 32}
!50 = !{!"llvm.loop.tile.followup_floor", !51}
!51 = distinct !{!51, !12, !24, !52, !42, !53, !44}
!52 = !{!"llvm.loop.id", !"i1"}
!53 = !{!"llvm.data.pack.array", !22}
!54 = !{!"llvm.loop.tile.followup_tile", !55}
!55 = distinct !{!55, !12, !56}
!56 = !{!"llvm.loop.id", !"i2"}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13}
!61 = !{!62, !62, i64 0}
!62 = !{!"any pointer", !4, i64 0}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !66, !"polly.alias.scope.MemRef_call"}
!66 = distinct !{!66, !"polly.alias.scope.domain"}
!67 = !{!68, !69, !70, !71}
!68 = distinct !{!68, !66, !"polly.alias.scope.MemRef_call1"}
!69 = distinct !{!69, !66, !"polly.alias.scope.MemRef_call2"}
!70 = distinct !{!70, !66, !"polly.alias.scope.Packed_MemRef_call1"}
!71 = distinct !{!71, !66, !"polly.alias.scope.Packed_MemRef_call2"}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !74, !13}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = !{!65, !68, !70, !71}
!76 = !{!65, !69, !70, !71}
!77 = !{!78}
!78 = distinct !{!78, !79}
!79 = distinct !{!79, !"LVerDomain"}
!80 = !{!65, !66, !"polly.alias.scope.MemRef_call", !81}
!81 = distinct !{!81, !79}
!82 = !{!68, !69, !70, !71, !78}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !86, !"polly.alias.scope.MemRef_call"}
!86 = distinct !{!86, !"polly.alias.scope.domain"}
!87 = !{!88, !89, !90, !91}
!88 = distinct !{!88, !86, !"polly.alias.scope.MemRef_call1"}
!89 = distinct !{!89, !86, !"polly.alias.scope.MemRef_call2"}
!90 = distinct !{!90, !86, !"polly.alias.scope.Packed_MemRef_call1"}
!91 = distinct !{!91, !86, !"polly.alias.scope.Packed_MemRef_call2"}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !74, !13}
!94 = !{!85, !88, !90, !91}
!95 = !{!85, !89, !90, !91}
!96 = !{!97}
!97 = distinct !{!97, !98}
!98 = distinct !{!98, !"LVerDomain"}
!99 = !{!85, !86, !"polly.alias.scope.MemRef_call", !100}
!100 = distinct !{!100, !98}
!101 = !{!88, !89, !90, !91, !97}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !105, !"polly.alias.scope.MemRef_call"}
!105 = distinct !{!105, !"polly.alias.scope.domain"}
!106 = !{!107, !108, !109, !110}
!107 = distinct !{!107, !105, !"polly.alias.scope.MemRef_call1"}
!108 = distinct !{!108, !105, !"polly.alias.scope.MemRef_call2"}
!109 = distinct !{!109, !105, !"polly.alias.scope.Packed_MemRef_call1"}
!110 = distinct !{!110, !105, !"polly.alias.scope.Packed_MemRef_call2"}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !74, !13}
!113 = !{!104, !107, !109, !110}
!114 = !{!104, !108, !109, !110}
!115 = !{!116}
!116 = distinct !{!116, !117}
!117 = distinct !{!117, !"LVerDomain"}
!118 = !{!104, !105, !"polly.alias.scope.MemRef_call", !119}
!119 = distinct !{!119, !117}
!120 = !{!107, !108, !109, !110, !116}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !124, !"polly.alias.scope.MemRef_call"}
!124 = distinct !{!124, !"polly.alias.scope.domain"}
!125 = !{!126, !127}
!126 = distinct !{!126, !124, !"polly.alias.scope.MemRef_call1"}
!127 = distinct !{!127, !124, !"polly.alias.scope.MemRef_call2"}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !74, !13}
!130 = !{!126, !123}
!131 = distinct !{!131, !13}
!132 = distinct !{!132, !74, !13}
!133 = !{!127, !123}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, !74, !13}
