; ModuleID = 'syr2k_exhaustive/mmp_all_SM_2240.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_2240.c"
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
  %call864 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1716 = bitcast i8* %call1 to double*
  %polly.access.call1725 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2726 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1725, %call2
  %polly.access.call2745 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2745, %call1
  %2 = or i1 %0, %1
  %polly.access.call765 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call765, %call2
  %4 = icmp ule i8* %polly.access.call2745, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call765, %call1
  %8 = icmp ule i8* %polly.access.call1725, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header838, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1147 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1146 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1145 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1144 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1144, %scevgep1147
  %bound1 = icmp ult i8* %scevgep1146, %scevgep1145
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
  br i1 %exitcond18.not.i, label %vector.ph1151, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1151:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1158 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1159 = shufflevector <4 x i64> %broadcast.splatinsert1158, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1150

vector.body1150:                                  ; preds = %vector.body1150, %vector.ph1151
  %index1152 = phi i64 [ 0, %vector.ph1151 ], [ %index.next1153, %vector.body1150 ]
  %vec.ind1156 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1151 ], [ %vec.ind.next1157, %vector.body1150 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1156, %broadcast.splat1159
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv7.i, i64 %index1152
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1153 = add i64 %index1152, 4
  %vec.ind.next1157 = add <4 x i64> %vec.ind1156, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1153, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1150, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1150
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1151, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit899
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start506, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1213 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1213, label %for.body3.i46.preheader1347, label %vector.ph1214

vector.ph1214:                                    ; preds = %for.body3.i46.preheader
  %n.vec1216 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1212

vector.body1212:                                  ; preds = %vector.body1212, %vector.ph1214
  %index1217 = phi i64 [ 0, %vector.ph1214 ], [ %index.next1218, %vector.body1212 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i, i64 %index1217
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1218 = add i64 %index1217, 4
  %46 = icmp eq i64 %index.next1218, %n.vec1216
  br i1 %46, label %middle.block1210, label %vector.body1212, !llvm.loop !18

middle.block1210:                                 ; preds = %vector.body1212
  %cmp.n1220 = icmp eq i64 %indvars.iv21.i, %n.vec1216
  br i1 %cmp.n1220, label %for.inc6.i, label %for.body3.i46.preheader1347

for.body3.i46.preheader1347:                      ; preds = %for.body3.i46.preheader, %middle.block1210
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1216, %middle.block1210 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1347, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1347 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1210, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting507
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start298, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1255 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1255, label %for.body3.i60.preheader1345, label %vector.ph1256

vector.ph1256:                                    ; preds = %for.body3.i60.preheader
  %n.vec1258 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1254

vector.body1254:                                  ; preds = %vector.body1254, %vector.ph1256
  %index1259 = phi i64 [ 0, %vector.ph1256 ], [ %index.next1260, %vector.body1254 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i52, i64 %index1259
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1263 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1263, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1260 = add i64 %index1259, 4
  %57 = icmp eq i64 %index.next1260, %n.vec1258
  br i1 %57, label %middle.block1252, label %vector.body1254, !llvm.loop !56

middle.block1252:                                 ; preds = %vector.body1254
  %cmp.n1262 = icmp eq i64 %indvars.iv21.i52, %n.vec1258
  br i1 %cmp.n1262, label %for.inc6.i63, label %for.body3.i60.preheader1345

for.body3.i60.preheader1345:                      ; preds = %for.body3.i60.preheader, %middle.block1252
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1258, %middle.block1252 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1345, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1345 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !57

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1252, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1300 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1300, label %for.body3.i99.preheader1343, label %vector.ph1301

vector.ph1301:                                    ; preds = %for.body3.i99.preheader
  %n.vec1303 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1299

vector.body1299:                                  ; preds = %vector.body1299, %vector.ph1301
  %index1304 = phi i64 [ 0, %vector.ph1301 ], [ %index.next1305, %vector.body1299 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i91, i64 %index1304
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1308 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1308, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1305 = add i64 %index1304, 4
  %68 = icmp eq i64 %index.next1305, %n.vec1303
  br i1 %68, label %middle.block1297, label %vector.body1299, !llvm.loop !58

middle.block1297:                                 ; preds = %vector.body1299
  %cmp.n1307 = icmp eq i64 %indvars.iv21.i91, %n.vec1303
  br i1 %cmp.n1307, label %for.inc6.i102, label %for.body3.i99.preheader1343

for.body3.i99.preheader1343:                      ; preds = %for.body3.i99.preheader, %middle.block1297
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1303, %middle.block1297 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1343, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1343 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !59

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1297, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !60
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !62

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !63

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1312 = phi i64 [ %indvar.next1313, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1312, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1314 = icmp ult i64 %88, 4
  br i1 %min.iters.check1314, label %polly.loop_header192.preheader, label %vector.ph1315

vector.ph1315:                                    ; preds = %polly.loop_header
  %n.vec1317 = and i64 %88, -4
  br label %vector.body1311

vector.body1311:                                  ; preds = %vector.body1311, %vector.ph1315
  %index1318 = phi i64 [ 0, %vector.ph1315 ], [ %index.next1319, %vector.body1311 ]
  %90 = shl nuw nsw i64 %index1318, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1322 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !64, !noalias !66
  %93 = fmul fast <4 x double> %wide.load1322, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !64, !noalias !66
  %index.next1319 = add i64 %index1318, 4
  %95 = icmp eq i64 %index.next1319, %n.vec1317
  br i1 %95, label %middle.block1309, label %vector.body1311, !llvm.loop !71

middle.block1309:                                 ; preds = %vector.body1311
  %cmp.n1321 = icmp eq i64 %88, %n.vec1317
  br i1 %cmp.n1321, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1309
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1317, %middle.block1309 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1309
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1313 = add i64 %indvar1312, 1
  br i1 %exitcond1052.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !64, !noalias !66
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1051.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !72

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1050.not, label %polly.loop_header216, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 1000
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2726, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !68, !noalias !74
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1049.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit224 ], [ 1, %polly.loop_exit208 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = mul nuw nsw i64 %polly.indvar219, 80
  %98 = mul nuw nsw i64 %polly.indvar219, 80
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 80
  %indvars.iv.next1045 = add nuw nsw i64 %indvars.iv1044, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar_next220, 15
  br i1 %exitcond1048.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  %99 = mul nuw nsw i64 %polly.indvar225, 50
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar_next226, 20
  br i1 %exitcond1047.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035, %polly.loop_exit236 ], [ %indvars.iv, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %100 = mul nsw i64 %polly.indvar231, -80
  %101 = add i64 %97, %100
  %102 = mul nuw nsw i64 %polly.indvar231, 80
  %103 = sub nsw i64 %98, %102
  %104 = add nuw nsw i64 %102, 80
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit265
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, -80
  %exitcond1046.not = icmp eq i64 %polly.indvar_next232, %indvars.iv1044
  br i1 %exitcond1046.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_exit265, %polly.loop_header228
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit265 ], [ %indvars.iv1034, %polly.loop_header228 ]
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit265 ], [ 0, %polly.loop_header228 ]
  %105 = add i64 %101, %polly.indvar237
  %smin1326 = call i64 @llvm.smin.i64(i64 %105, i64 79)
  %106 = add nsw i64 %smin1326, 1
  %smin1040 = call i64 @llvm.smin.i64(i64 %indvars.iv1036, i64 79)
  %107 = add nsw i64 %polly.indvar237, %103
  %polly.loop_guard1133 = icmp sgt i64 %107, -1
  %108 = add nuw nsw i64 %polly.indvar237, %98
  %.not = icmp ult i64 %108, %104
  %polly.access.mul.call1257 = mul nuw nsw i64 %108, 1000
  %109 = add nuw nsw i64 %polly.access.mul.call1257, %99
  br i1 %polly.loop_guard1133, label %polly.loop_header240.us, label %polly.loop_header234.split

polly.loop_header240.us:                          ; preds = %polly.loop_header234, %polly.merge.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.merge.us ], [ 0, %polly.loop_header234 ]
  %110 = add nuw nsw i64 %polly.indvar243.us, %99
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar243.us, 1200
  br label %polly.loop_header246.us

polly.loop_header246.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header246.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_header246.us ], [ 0, %polly.loop_header240.us ]
  %111 = add nuw nsw i64 %polly.indvar249.us, %102
  %polly.access.mul.call1253.us = mul nuw nsw i64 %111, 1000
  %polly.access.add.call1254.us = add nuw nsw i64 %110, %polly.access.mul.call1253.us
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar249.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar249.us, %smin1040
  br i1 %exitcond1038.not, label %polly.cond.loopexit.us, label %polly.loop_header246.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1258.us = add nuw nsw i64 %109, %polly.indvar243.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %107
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1262.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1039.not = icmp eq i64 %polly.indvar_next244.us, 50
  br i1 %exitcond1039.not, label %polly.loop_header263.preheader, label %polly.loop_header240.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header246.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit265, label %polly.loop_header240

polly.loop_exit265:                               ; preds = %polly.loop_exit272.loopexit.us, %polly.loop_header234.split, %polly.loop_header263.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar_next238, 80
  br i1 %exitcond1043.not, label %polly.loop_exit236, label %polly.loop_header234

polly.loop_header240:                             ; preds = %polly.loop_header234.split, %polly.loop_header240
  %polly.indvar243 = phi i64 [ %polly.indvar_next244, %polly.loop_header240 ], [ 0, %polly.loop_header234.split ]
  %polly.access.add.call1258 = add nuw nsw i64 %109, %polly.indvar243
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !67, !noalias !75
  %polly.access.mul.Packed_MemRef_call1260 = mul nuw nsw i64 %polly.indvar243, 1200
  %polly.access.add.Packed_MemRef_call1261 = add nsw i64 %polly.access.mul.Packed_MemRef_call1260, %107
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.indvar_next244 = add nuw nsw i64 %polly.indvar243, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next244, 50
  br i1 %exitcond.not, label %polly.loop_header263.preheader, label %polly.loop_header240

polly.loop_header263.preheader:                   ; preds = %polly.loop_header240, %polly.merge.us
  %112 = mul nuw nsw i64 %108, 9600
  br i1 %polly.loop_guard1133, label %polly.loop_header263.us, label %polly.loop_exit265

polly.loop_header263.us:                          ; preds = %polly.loop_header263.preheader, %polly.loop_exit272.loopexit.us
  %polly.indvar266.us = phi i64 [ %polly.indvar_next267.us, %polly.loop_exit272.loopexit.us ], [ 0, %polly.loop_header263.preheader ]
  %polly.access.mul.Packed_MemRef_call1277.us = mul nuw nsw i64 %polly.indvar266.us, 1200
  %113 = add nuw nsw i64 %polly.indvar266.us, %99
  %polly.access.mul.Packed_MemRef_call2281.us = mul nuw nsw i64 %113, 1200
  %polly.access.add.Packed_MemRef_call2282.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2281.us, %108
  %polly.access.Packed_MemRef_call2283.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call2283.us, align 8
  %polly.access.add.Packed_MemRef_call1290.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1277.us, %107
  %polly.access.Packed_MemRef_call1291.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call1291.us, align 8
  %min.iters.check1327 = icmp ult i64 %106, 4
  br i1 %min.iters.check1327, label %polly.loop_header270.us.preheader, label %vector.ph1328

vector.ph1328:                                    ; preds = %polly.loop_header263.us
  %n.vec1330 = and i64 %106, -4
  %broadcast.splatinsert1336 = insertelement <4 x double> poison, double %_p_scalar_284.us, i32 0
  %broadcast.splat1337 = shufflevector <4 x double> %broadcast.splatinsert1336, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1339 = insertelement <4 x double> poison, double %_p_scalar_292.us, i32 0
  %broadcast.splat1340 = shufflevector <4 x double> %broadcast.splatinsert1339, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1325

vector.body1325:                                  ; preds = %vector.body1325, %vector.ph1328
  %index1331 = phi i64 [ 0, %vector.ph1328 ], [ %index.next1332, %vector.body1325 ]
  %114 = add nuw nsw i64 %index1331, %102
  %115 = add nuw nsw i64 %index1331, %polly.access.mul.Packed_MemRef_call1277.us
  %116 = getelementptr double, double* %Packed_MemRef_call1, i64 %115
  %117 = bitcast double* %116 to <4 x double>*
  %wide.load1335 = load <4 x double>, <4 x double>* %117, align 8
  %118 = fmul fast <4 x double> %broadcast.splat1337, %wide.load1335
  %119 = add nuw nsw i64 %114, %polly.access.mul.Packed_MemRef_call2281.us
  %120 = getelementptr double, double* %Packed_MemRef_call2, i64 %119
  %121 = bitcast double* %120 to <4 x double>*
  %wide.load1338 = load <4 x double>, <4 x double>* %121, align 8
  %122 = fmul fast <4 x double> %broadcast.splat1340, %wide.load1338
  %123 = shl i64 %114, 3
  %124 = add nuw nsw i64 %123, %112
  %125 = getelementptr i8, i8* %call, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load1341 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !64, !noalias !66
  %127 = fadd fast <4 x double> %122, %118
  %128 = fmul fast <4 x double> %127, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %129 = fadd fast <4 x double> %128, %wide.load1341
  %130 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %129, <4 x double>* %130, align 8, !alias.scope !64, !noalias !66
  %index.next1332 = add i64 %index1331, 4
  %131 = icmp eq i64 %index.next1332, %n.vec1330
  br i1 %131, label %middle.block1323, label %vector.body1325, !llvm.loop !76

middle.block1323:                                 ; preds = %vector.body1325
  %cmp.n1334 = icmp eq i64 %106, %n.vec1330
  br i1 %cmp.n1334, label %polly.loop_exit272.loopexit.us, label %polly.loop_header270.us.preheader

polly.loop_header270.us.preheader:                ; preds = %polly.loop_header263.us, %middle.block1323
  %polly.indvar274.us.ph = phi i64 [ 0, %polly.loop_header263.us ], [ %n.vec1330, %middle.block1323 ]
  br label %polly.loop_header270.us

polly.loop_header270.us:                          ; preds = %polly.loop_header270.us.preheader, %polly.loop_header270.us
  %polly.indvar274.us = phi i64 [ %polly.indvar_next275.us, %polly.loop_header270.us ], [ %polly.indvar274.us.ph, %polly.loop_header270.us.preheader ]
  %132 = add nuw nsw i64 %polly.indvar274.us, %102
  %polly.access.add.Packed_MemRef_call1278.us = add nuw nsw i64 %polly.indvar274.us, %polly.access.mul.Packed_MemRef_call1277.us
  %polly.access.Packed_MemRef_call1279.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278.us
  %_p_scalar_280.us = load double, double* %polly.access.Packed_MemRef_call1279.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_284.us, %_p_scalar_280.us
  %polly.access.add.Packed_MemRef_call2286.us = add nuw nsw i64 %132, %polly.access.mul.Packed_MemRef_call2281.us
  %polly.access.Packed_MemRef_call2287.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call2287.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_292.us, %_p_scalar_288.us
  %133 = shl i64 %132, 3
  %134 = add nuw nsw i64 %133, %112
  %scevgep293.us = getelementptr i8, i8* %call, i64 %134
  %scevgep293294.us = bitcast i8* %scevgep293.us to double*
  %_p_scalar_295.us = load double, double* %scevgep293294.us, align 8, !alias.scope !64, !noalias !66
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_295.us
  store double %p_add42.i118.us, double* %scevgep293294.us, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next275.us = add nuw nsw i64 %polly.indvar274.us, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar274.us, %smin1040
  br i1 %exitcond1041.not, label %polly.loop_exit272.loopexit.us, label %polly.loop_header270.us, !llvm.loop !77

polly.loop_exit272.loopexit.us:                   ; preds = %polly.loop_header270.us, %middle.block1323
  %polly.indvar_next267.us = add nuw nsw i64 %polly.indvar266.us, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar_next267.us, 50
  br i1 %exitcond1042.not, label %polly.loop_exit265, label %polly.loop_header263.us

polly.start298:                                   ; preds = %kernel_syr2k.exit
  %malloccall300 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall302 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header386

polly.exiting299:                                 ; preds = %polly.loop_exit426
  tail call void @free(i8* %malloccall300)
  tail call void @free(i8* %malloccall302)
  br label %kernel_syr2k.exit90

polly.loop_header386:                             ; preds = %polly.loop_exit394, %polly.start298
  %indvar1267 = phi i64 [ %indvar.next1268, %polly.loop_exit394 ], [ 0, %polly.start298 ]
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_exit394 ], [ 1, %polly.start298 ]
  %135 = add i64 %indvar1267, 1
  %136 = mul nuw nsw i64 %polly.indvar389, 9600
  %scevgep398 = getelementptr i8, i8* %call, i64 %136
  %min.iters.check1269 = icmp ult i64 %135, 4
  br i1 %min.iters.check1269, label %polly.loop_header392.preheader, label %vector.ph1270

vector.ph1270:                                    ; preds = %polly.loop_header386
  %n.vec1272 = and i64 %135, -4
  br label %vector.body1266

vector.body1266:                                  ; preds = %vector.body1266, %vector.ph1270
  %index1273 = phi i64 [ 0, %vector.ph1270 ], [ %index.next1274, %vector.body1266 ]
  %137 = shl nuw nsw i64 %index1273, 3
  %138 = getelementptr i8, i8* %scevgep398, i64 %137
  %139 = bitcast i8* %138 to <4 x double>*
  %wide.load1277 = load <4 x double>, <4 x double>* %139, align 8, !alias.scope !78, !noalias !80
  %140 = fmul fast <4 x double> %wide.load1277, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %141 = bitcast i8* %138 to <4 x double>*
  store <4 x double> %140, <4 x double>* %141, align 8, !alias.scope !78, !noalias !80
  %index.next1274 = add i64 %index1273, 4
  %142 = icmp eq i64 %index.next1274, %n.vec1272
  br i1 %142, label %middle.block1264, label %vector.body1266, !llvm.loop !85

middle.block1264:                                 ; preds = %vector.body1266
  %cmp.n1276 = icmp eq i64 %135, %n.vec1272
  br i1 %cmp.n1276, label %polly.loop_exit394, label %polly.loop_header392.preheader

polly.loop_header392.preheader:                   ; preds = %polly.loop_header386, %middle.block1264
  %polly.indvar395.ph = phi i64 [ 0, %polly.loop_header386 ], [ %n.vec1272, %middle.block1264 ]
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_header392, %middle.block1264
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond1075.not = icmp eq i64 %polly.indvar_next390, 1200
  %indvar.next1268 = add i64 %indvar1267, 1
  br i1 %exitcond1075.not, label %polly.loop_header402.preheader, label %polly.loop_header386

polly.loop_header402.preheader:                   ; preds = %polly.loop_exit394
  %Packed_MemRef_call1301 = bitcast i8* %malloccall300 to double*
  %Packed_MemRef_call2303 = bitcast i8* %malloccall302 to double*
  br label %polly.loop_header402

polly.loop_header392:                             ; preds = %polly.loop_header392.preheader, %polly.loop_header392
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_header392 ], [ %polly.indvar395.ph, %polly.loop_header392.preheader ]
  %143 = shl nuw nsw i64 %polly.indvar395, 3
  %scevgep399 = getelementptr i8, i8* %scevgep398, i64 %143
  %scevgep399400 = bitcast i8* %scevgep399 to double*
  %_p_scalar_401 = load double, double* %scevgep399400, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_401, 1.200000e+00
  store double %p_mul.i57, double* %scevgep399400, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar_next396, %polly.indvar389
  br i1 %exitcond1074.not, label %polly.loop_exit394, label %polly.loop_header392, !llvm.loop !86

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_exit410
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit410 ], [ 0, %polly.loop_header402.preheader ]
  %polly.access.mul.Packed_MemRef_call2303 = mul nuw nsw i64 %polly.indvar405, 1200
  br label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_header408
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1073.not = icmp eq i64 %polly.indvar_next406, 1000
  br i1 %exitcond1073.not, label %polly.loop_header418, label %polly.loop_header402

polly.loop_header408:                             ; preds = %polly.loop_header408, %polly.loop_header402
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header402 ], [ %polly.indvar_next412, %polly.loop_header408 ]
  %polly.access.mul.call2415 = mul nuw nsw i64 %polly.indvar411, 1000
  %polly.access.add.call2416 = add nuw nsw i64 %polly.access.mul.call2415, %polly.indvar405
  %polly.access.call2417 = getelementptr double, double* %polly.access.cast.call2726, i64 %polly.access.add.call2416
  %polly.access.call2417.load = load double, double* %polly.access.call2417, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call2303 = add nuw nsw i64 %polly.indvar411, %polly.access.mul.Packed_MemRef_call2303
  %polly.access.Packed_MemRef_call2303 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303
  store double %polly.access.call2417.load, double* %polly.access.Packed_MemRef_call2303, align 8
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar_next412, 1200
  br i1 %exitcond1072.not, label %polly.loop_exit410, label %polly.loop_header408

polly.loop_header418:                             ; preds = %polly.loop_exit410, %polly.loop_exit426
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit426 ], [ 1, %polly.loop_exit410 ]
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055, %polly.loop_exit426 ], [ 0, %polly.loop_exit410 ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit426 ], [ 0, %polly.loop_exit410 ]
  %144 = mul nuw nsw i64 %polly.indvar421, 80
  %145 = mul nuw nsw i64 %polly.indvar421, 80
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit432
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1055 = add nuw nsw i64 %indvars.iv1054, 80
  %indvars.iv.next1068 = add nuw nsw i64 %indvars.iv1067, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar_next422, 15
  br i1 %exitcond1071.not, label %polly.exiting299, label %polly.loop_header418

polly.loop_header424:                             ; preds = %polly.loop_exit432, %polly.loop_header418
  %polly.indvar427 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next428, %polly.loop_exit432 ]
  %146 = mul nuw nsw i64 %polly.indvar427, 50
  br label %polly.loop_header430

polly.loop_exit432:                               ; preds = %polly.loop_exit438
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar_next428, 20
  br i1 %exitcond1070.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header430:                             ; preds = %polly.loop_exit438, %polly.loop_header424
  %indvars.iv1056 = phi i64 [ %indvars.iv.next1057, %polly.loop_exit438 ], [ %indvars.iv1054, %polly.loop_header424 ]
  %polly.indvar433 = phi i64 [ %polly.indvar_next434, %polly.loop_exit438 ], [ 0, %polly.loop_header424 ]
  %147 = mul nsw i64 %polly.indvar433, -80
  %148 = add i64 %144, %147
  %149 = mul nuw nsw i64 %polly.indvar433, 80
  %150 = sub nsw i64 %145, %149
  %151 = add nuw nsw i64 %149, 80
  br label %polly.loop_header436

polly.loop_exit438:                               ; preds = %polly.loop_exit473
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %indvars.iv.next1057 = add nsw i64 %indvars.iv1056, -80
  %exitcond1069.not = icmp eq i64 %polly.indvar_next434, %indvars.iv1067
  br i1 %exitcond1069.not, label %polly.loop_exit432, label %polly.loop_header430

polly.loop_header436:                             ; preds = %polly.loop_exit473, %polly.loop_header430
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %polly.loop_exit473 ], [ %indvars.iv1056, %polly.loop_header430 ]
  %polly.indvar439 = phi i64 [ %polly.indvar_next440, %polly.loop_exit473 ], [ 0, %polly.loop_header430 ]
  %152 = add i64 %148, %polly.indvar439
  %smin1281 = call i64 @llvm.smin.i64(i64 %152, i64 79)
  %153 = add nsw i64 %smin1281, 1
  %smin1063 = call i64 @llvm.smin.i64(i64 %indvars.iv1058, i64 79)
  %154 = add nsw i64 %polly.indvar439, %150
  %polly.loop_guard4521134 = icmp sgt i64 %154, -1
  %155 = add nuw nsw i64 %polly.indvar439, %145
  %.not918 = icmp ult i64 %155, %151
  %polly.access.mul.call1465 = mul nuw nsw i64 %155, 1000
  %156 = add nuw nsw i64 %polly.access.mul.call1465, %146
  br i1 %polly.loop_guard4521134, label %polly.loop_header442.us, label %polly.loop_header436.split

polly.loop_header442.us:                          ; preds = %polly.loop_header436, %polly.merge461.us
  %polly.indvar445.us = phi i64 [ %polly.indvar_next446.us, %polly.merge461.us ], [ 0, %polly.loop_header436 ]
  %157 = add nuw nsw i64 %polly.indvar445.us, %146
  %polly.access.mul.Packed_MemRef_call1301.us = mul nuw nsw i64 %polly.indvar445.us, 1200
  br label %polly.loop_header449.us

polly.loop_header449.us:                          ; preds = %polly.loop_header442.us, %polly.loop_header449.us
  %polly.indvar453.us = phi i64 [ %polly.indvar_next454.us, %polly.loop_header449.us ], [ 0, %polly.loop_header442.us ]
  %158 = add nuw nsw i64 %polly.indvar453.us, %149
  %polly.access.mul.call1457.us = mul nuw nsw i64 %158, 1000
  %polly.access.add.call1458.us = add nuw nsw i64 %157, %polly.access.mul.call1457.us
  %polly.access.call1459.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1458.us
  %polly.access.call1459.load.us = load double, double* %polly.access.call1459.us, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1301.us = add nuw nsw i64 %polly.indvar453.us, %polly.access.mul.Packed_MemRef_call1301.us
  %polly.access.Packed_MemRef_call1301.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us
  store double %polly.access.call1459.load.us, double* %polly.access.Packed_MemRef_call1301.us, align 8
  %polly.indvar_next454.us = add nuw nsw i64 %polly.indvar453.us, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar453.us, %smin1063
  br i1 %exitcond1061.not, label %polly.cond460.loopexit.us, label %polly.loop_header449.us

polly.then462.us:                                 ; preds = %polly.cond460.loopexit.us
  %polly.access.add.call1466.us = add nuw nsw i64 %156, %polly.indvar445.us
  %polly.access.call1467.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.us
  %polly.access.call1467.load.us = load double, double* %polly.access.call1467.us, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1301469.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1301.us, %154
  %polly.access.Packed_MemRef_call1301470.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.us
  store double %polly.access.call1467.load.us, double* %polly.access.Packed_MemRef_call1301470.us, align 8
  br label %polly.merge461.us

polly.merge461.us:                                ; preds = %polly.then462.us, %polly.cond460.loopexit.us
  %polly.indvar_next446.us = add nuw nsw i64 %polly.indvar445.us, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar_next446.us, 50
  br i1 %exitcond1062.not, label %polly.loop_header471.preheader, label %polly.loop_header442.us

polly.cond460.loopexit.us:                        ; preds = %polly.loop_header449.us
  br i1 %.not918, label %polly.merge461.us, label %polly.then462.us

polly.loop_header436.split:                       ; preds = %polly.loop_header436
  br i1 %.not918, label %polly.loop_exit473, label %polly.loop_header442

polly.loop_exit473:                               ; preds = %polly.loop_exit480.loopexit.us, %polly.loop_header436.split, %polly.loop_header471.preheader
  %polly.indvar_next440 = add nuw nsw i64 %polly.indvar439, 1
  %indvars.iv.next1059 = add nsw i64 %indvars.iv1058, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar_next440, 80
  br i1 %exitcond1066.not, label %polly.loop_exit438, label %polly.loop_header436

polly.loop_header442:                             ; preds = %polly.loop_header436.split, %polly.loop_header442
  %polly.indvar445 = phi i64 [ %polly.indvar_next446, %polly.loop_header442 ], [ 0, %polly.loop_header436.split ]
  %polly.access.add.call1466 = add nuw nsw i64 %156, %polly.indvar445
  %polly.access.call1467 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466
  %polly.access.call1467.load = load double, double* %polly.access.call1467, align 8, !alias.scope !81, !noalias !88
  %polly.access.mul.Packed_MemRef_call1301468 = mul nuw nsw i64 %polly.indvar445, 1200
  %polly.access.add.Packed_MemRef_call1301469 = add nsw i64 %polly.access.mul.Packed_MemRef_call1301468, %154
  %polly.access.Packed_MemRef_call1301470 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469
  store double %polly.access.call1467.load, double* %polly.access.Packed_MemRef_call1301470, align 8
  %polly.indvar_next446 = add nuw nsw i64 %polly.indvar445, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar_next446, 50
  br i1 %exitcond1053.not, label %polly.loop_header471.preheader, label %polly.loop_header442

polly.loop_header471.preheader:                   ; preds = %polly.loop_header442, %polly.merge461.us
  %159 = mul nuw nsw i64 %155, 9600
  br i1 %polly.loop_guard4521134, label %polly.loop_header471.us, label %polly.loop_exit473

polly.loop_header471.us:                          ; preds = %polly.loop_header471.preheader, %polly.loop_exit480.loopexit.us
  %polly.indvar474.us = phi i64 [ %polly.indvar_next475.us, %polly.loop_exit480.loopexit.us ], [ 0, %polly.loop_header471.preheader ]
  %polly.access.mul.Packed_MemRef_call1301485.us = mul nuw nsw i64 %polly.indvar474.us, 1200
  %160 = add nuw nsw i64 %polly.indvar474.us, %146
  %polly.access.mul.Packed_MemRef_call2303489.us = mul nuw nsw i64 %160, 1200
  %polly.access.add.Packed_MemRef_call2303490.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2303489.us, %155
  %polly.access.Packed_MemRef_call2303491.us = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303490.us
  %_p_scalar_492.us = load double, double* %polly.access.Packed_MemRef_call2303491.us, align 8
  %polly.access.add.Packed_MemRef_call1301498.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1301485.us, %154
  %polly.access.Packed_MemRef_call1301499.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301498.us
  %_p_scalar_500.us = load double, double* %polly.access.Packed_MemRef_call1301499.us, align 8
  %min.iters.check1282 = icmp ult i64 %153, 4
  br i1 %min.iters.check1282, label %polly.loop_header478.us.preheader, label %vector.ph1283

vector.ph1283:                                    ; preds = %polly.loop_header471.us
  %n.vec1285 = and i64 %153, -4
  %broadcast.splatinsert1291 = insertelement <4 x double> poison, double %_p_scalar_492.us, i32 0
  %broadcast.splat1292 = shufflevector <4 x double> %broadcast.splatinsert1291, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1294 = insertelement <4 x double> poison, double %_p_scalar_500.us, i32 0
  %broadcast.splat1295 = shufflevector <4 x double> %broadcast.splatinsert1294, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1280

vector.body1280:                                  ; preds = %vector.body1280, %vector.ph1283
  %index1286 = phi i64 [ 0, %vector.ph1283 ], [ %index.next1287, %vector.body1280 ]
  %161 = add nuw nsw i64 %index1286, %149
  %162 = add nuw nsw i64 %index1286, %polly.access.mul.Packed_MemRef_call1301485.us
  %163 = getelementptr double, double* %Packed_MemRef_call1301, i64 %162
  %164 = bitcast double* %163 to <4 x double>*
  %wide.load1290 = load <4 x double>, <4 x double>* %164, align 8
  %165 = fmul fast <4 x double> %broadcast.splat1292, %wide.load1290
  %166 = add nuw nsw i64 %161, %polly.access.mul.Packed_MemRef_call2303489.us
  %167 = getelementptr double, double* %Packed_MemRef_call2303, i64 %166
  %168 = bitcast double* %167 to <4 x double>*
  %wide.load1293 = load <4 x double>, <4 x double>* %168, align 8
  %169 = fmul fast <4 x double> %broadcast.splat1295, %wide.load1293
  %170 = shl i64 %161, 3
  %171 = add nuw nsw i64 %170, %159
  %172 = getelementptr i8, i8* %call, i64 %171
  %173 = bitcast i8* %172 to <4 x double>*
  %wide.load1296 = load <4 x double>, <4 x double>* %173, align 8, !alias.scope !78, !noalias !80
  %174 = fadd fast <4 x double> %169, %165
  %175 = fmul fast <4 x double> %174, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %176 = fadd fast <4 x double> %175, %wide.load1296
  %177 = bitcast i8* %172 to <4 x double>*
  store <4 x double> %176, <4 x double>* %177, align 8, !alias.scope !78, !noalias !80
  %index.next1287 = add i64 %index1286, 4
  %178 = icmp eq i64 %index.next1287, %n.vec1285
  br i1 %178, label %middle.block1278, label %vector.body1280, !llvm.loop !89

middle.block1278:                                 ; preds = %vector.body1280
  %cmp.n1289 = icmp eq i64 %153, %n.vec1285
  br i1 %cmp.n1289, label %polly.loop_exit480.loopexit.us, label %polly.loop_header478.us.preheader

polly.loop_header478.us.preheader:                ; preds = %polly.loop_header471.us, %middle.block1278
  %polly.indvar482.us.ph = phi i64 [ 0, %polly.loop_header471.us ], [ %n.vec1285, %middle.block1278 ]
  br label %polly.loop_header478.us

polly.loop_header478.us:                          ; preds = %polly.loop_header478.us.preheader, %polly.loop_header478.us
  %polly.indvar482.us = phi i64 [ %polly.indvar_next483.us, %polly.loop_header478.us ], [ %polly.indvar482.us.ph, %polly.loop_header478.us.preheader ]
  %179 = add nuw nsw i64 %polly.indvar482.us, %149
  %polly.access.add.Packed_MemRef_call1301486.us = add nuw nsw i64 %polly.indvar482.us, %polly.access.mul.Packed_MemRef_call1301485.us
  %polly.access.Packed_MemRef_call1301487.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301486.us
  %_p_scalar_488.us = load double, double* %polly.access.Packed_MemRef_call1301487.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_492.us, %_p_scalar_488.us
  %polly.access.add.Packed_MemRef_call2303494.us = add nuw nsw i64 %179, %polly.access.mul.Packed_MemRef_call2303489.us
  %polly.access.Packed_MemRef_call2303495.us = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303494.us
  %_p_scalar_496.us = load double, double* %polly.access.Packed_MemRef_call2303495.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_500.us, %_p_scalar_496.us
  %180 = shl i64 %179, 3
  %181 = add nuw nsw i64 %180, %159
  %scevgep501.us = getelementptr i8, i8* %call, i64 %181
  %scevgep501502.us = bitcast i8* %scevgep501.us to double*
  %_p_scalar_503.us = load double, double* %scevgep501502.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_503.us
  store double %p_add42.i79.us, double* %scevgep501502.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next483.us = add nuw nsw i64 %polly.indvar482.us, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar482.us, %smin1063
  br i1 %exitcond1064.not, label %polly.loop_exit480.loopexit.us, label %polly.loop_header478.us, !llvm.loop !90

polly.loop_exit480.loopexit.us:                   ; preds = %polly.loop_header478.us, %middle.block1278
  %polly.indvar_next475.us = add nuw nsw i64 %polly.indvar474.us, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next475.us, 50
  br i1 %exitcond1065.not, label %polly.loop_exit473, label %polly.loop_header471.us

polly.start506:                                   ; preds = %init_array.exit
  %malloccall508 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall510 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header594

polly.exiting507:                                 ; preds = %polly.loop_exit634
  tail call void @free(i8* %malloccall508)
  tail call void @free(i8* %malloccall510)
  br label %kernel_syr2k.exit

polly.loop_header594:                             ; preds = %polly.loop_exit602, %polly.start506
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit602 ], [ 0, %polly.start506 ]
  %polly.indvar597 = phi i64 [ %polly.indvar_next598, %polly.loop_exit602 ], [ 1, %polly.start506 ]
  %182 = add i64 %indvar, 1
  %183 = mul nuw nsw i64 %polly.indvar597, 9600
  %scevgep606 = getelementptr i8, i8* %call, i64 %183
  %min.iters.check1224 = icmp ult i64 %182, 4
  br i1 %min.iters.check1224, label %polly.loop_header600.preheader, label %vector.ph1225

vector.ph1225:                                    ; preds = %polly.loop_header594
  %n.vec1227 = and i64 %182, -4
  br label %vector.body1223

vector.body1223:                                  ; preds = %vector.body1223, %vector.ph1225
  %index1228 = phi i64 [ 0, %vector.ph1225 ], [ %index.next1229, %vector.body1223 ]
  %184 = shl nuw nsw i64 %index1228, 3
  %185 = getelementptr i8, i8* %scevgep606, i64 %184
  %186 = bitcast i8* %185 to <4 x double>*
  %wide.load1232 = load <4 x double>, <4 x double>* %186, align 8, !alias.scope !91, !noalias !93
  %187 = fmul fast <4 x double> %wide.load1232, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %188 = bitcast i8* %185 to <4 x double>*
  store <4 x double> %187, <4 x double>* %188, align 8, !alias.scope !91, !noalias !93
  %index.next1229 = add i64 %index1228, 4
  %189 = icmp eq i64 %index.next1229, %n.vec1227
  br i1 %189, label %middle.block1221, label %vector.body1223, !llvm.loop !98

middle.block1221:                                 ; preds = %vector.body1223
  %cmp.n1231 = icmp eq i64 %182, %n.vec1227
  br i1 %cmp.n1231, label %polly.loop_exit602, label %polly.loop_header600.preheader

polly.loop_header600.preheader:                   ; preds = %polly.loop_header594, %middle.block1221
  %polly.indvar603.ph = phi i64 [ 0, %polly.loop_header594 ], [ %n.vec1227, %middle.block1221 ]
  br label %polly.loop_header600

polly.loop_exit602:                               ; preds = %polly.loop_header600, %middle.block1221
  %polly.indvar_next598 = add nuw nsw i64 %polly.indvar597, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar_next598, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1098.not, label %polly.loop_header610.preheader, label %polly.loop_header594

polly.loop_header610.preheader:                   ; preds = %polly.loop_exit602
  %Packed_MemRef_call1509 = bitcast i8* %malloccall508 to double*
  %Packed_MemRef_call2511 = bitcast i8* %malloccall510 to double*
  br label %polly.loop_header610

polly.loop_header600:                             ; preds = %polly.loop_header600.preheader, %polly.loop_header600
  %polly.indvar603 = phi i64 [ %polly.indvar_next604, %polly.loop_header600 ], [ %polly.indvar603.ph, %polly.loop_header600.preheader ]
  %190 = shl nuw nsw i64 %polly.indvar603, 3
  %scevgep607 = getelementptr i8, i8* %scevgep606, i64 %190
  %scevgep607608 = bitcast i8* %scevgep607 to double*
  %_p_scalar_609 = load double, double* %scevgep607608, align 8, !alias.scope !91, !noalias !93
  %p_mul.i = fmul fast double %_p_scalar_609, 1.200000e+00
  store double %p_mul.i, double* %scevgep607608, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next604 = add nuw nsw i64 %polly.indvar603, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar_next604, %polly.indvar597
  br i1 %exitcond1097.not, label %polly.loop_exit602, label %polly.loop_header600, !llvm.loop !99

polly.loop_header610:                             ; preds = %polly.loop_header610.preheader, %polly.loop_exit618
  %polly.indvar613 = phi i64 [ %polly.indvar_next614, %polly.loop_exit618 ], [ 0, %polly.loop_header610.preheader ]
  %polly.access.mul.Packed_MemRef_call2511 = mul nuw nsw i64 %polly.indvar613, 1200
  br label %polly.loop_header616

polly.loop_exit618:                               ; preds = %polly.loop_header616
  %polly.indvar_next614 = add nuw nsw i64 %polly.indvar613, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar_next614, 1000
  br i1 %exitcond1096.not, label %polly.loop_header626, label %polly.loop_header610

polly.loop_header616:                             ; preds = %polly.loop_header616, %polly.loop_header610
  %polly.indvar619 = phi i64 [ 0, %polly.loop_header610 ], [ %polly.indvar_next620, %polly.loop_header616 ]
  %polly.access.mul.call2623 = mul nuw nsw i64 %polly.indvar619, 1000
  %polly.access.add.call2624 = add nuw nsw i64 %polly.access.mul.call2623, %polly.indvar613
  %polly.access.call2625 = getelementptr double, double* %polly.access.cast.call2726, i64 %polly.access.add.call2624
  %polly.access.call2625.load = load double, double* %polly.access.call2625, align 8, !alias.scope !95, !noalias !100
  %polly.access.add.Packed_MemRef_call2511 = add nuw nsw i64 %polly.indvar619, %polly.access.mul.Packed_MemRef_call2511
  %polly.access.Packed_MemRef_call2511 = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511
  store double %polly.access.call2625.load, double* %polly.access.Packed_MemRef_call2511, align 8
  %polly.indvar_next620 = add nuw nsw i64 %polly.indvar619, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar_next620, 1200
  br i1 %exitcond1095.not, label %polly.loop_exit618, label %polly.loop_header616

polly.loop_header626:                             ; preds = %polly.loop_exit618, %polly.loop_exit634
  %indvars.iv1090 = phi i64 [ %indvars.iv.next1091, %polly.loop_exit634 ], [ 1, %polly.loop_exit618 ]
  %indvars.iv1077 = phi i64 [ %indvars.iv.next1078, %polly.loop_exit634 ], [ 0, %polly.loop_exit618 ]
  %polly.indvar629 = phi i64 [ %polly.indvar_next630, %polly.loop_exit634 ], [ 0, %polly.loop_exit618 ]
  %191 = mul nuw nsw i64 %polly.indvar629, 80
  %192 = mul nuw nsw i64 %polly.indvar629, 80
  br label %polly.loop_header632

polly.loop_exit634:                               ; preds = %polly.loop_exit640
  %polly.indvar_next630 = add nuw nsw i64 %polly.indvar629, 1
  %indvars.iv.next1078 = add nuw nsw i64 %indvars.iv1077, 80
  %indvars.iv.next1091 = add nuw nsw i64 %indvars.iv1090, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar_next630, 15
  br i1 %exitcond1094.not, label %polly.exiting507, label %polly.loop_header626

polly.loop_header632:                             ; preds = %polly.loop_exit640, %polly.loop_header626
  %polly.indvar635 = phi i64 [ 0, %polly.loop_header626 ], [ %polly.indvar_next636, %polly.loop_exit640 ]
  %193 = mul nuw nsw i64 %polly.indvar635, 50
  br label %polly.loop_header638

polly.loop_exit640:                               ; preds = %polly.loop_exit646
  %polly.indvar_next636 = add nuw nsw i64 %polly.indvar635, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar_next636, 20
  br i1 %exitcond1093.not, label %polly.loop_exit634, label %polly.loop_header632

polly.loop_header638:                             ; preds = %polly.loop_exit646, %polly.loop_header632
  %indvars.iv1079 = phi i64 [ %indvars.iv.next1080, %polly.loop_exit646 ], [ %indvars.iv1077, %polly.loop_header632 ]
  %polly.indvar641 = phi i64 [ %polly.indvar_next642, %polly.loop_exit646 ], [ 0, %polly.loop_header632 ]
  %194 = mul nsw i64 %polly.indvar641, -80
  %195 = add i64 %191, %194
  %196 = mul nuw nsw i64 %polly.indvar641, 80
  %197 = sub nsw i64 %192, %196
  %198 = add nuw nsw i64 %196, 80
  br label %polly.loop_header644

polly.loop_exit646:                               ; preds = %polly.loop_exit681
  %polly.indvar_next642 = add nuw nsw i64 %polly.indvar641, 1
  %indvars.iv.next1080 = add nsw i64 %indvars.iv1079, -80
  %exitcond1092.not = icmp eq i64 %polly.indvar_next642, %indvars.iv1090
  br i1 %exitcond1092.not, label %polly.loop_exit640, label %polly.loop_header638

polly.loop_header644:                             ; preds = %polly.loop_exit681, %polly.loop_header638
  %indvars.iv1081 = phi i64 [ %indvars.iv.next1082, %polly.loop_exit681 ], [ %indvars.iv1079, %polly.loop_header638 ]
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit681 ], [ 0, %polly.loop_header638 ]
  %199 = add i64 %195, %polly.indvar647
  %smin1236 = call i64 @llvm.smin.i64(i64 %199, i64 79)
  %200 = add nsw i64 %smin1236, 1
  %smin1086 = call i64 @llvm.smin.i64(i64 %indvars.iv1081, i64 79)
  %201 = add nsw i64 %polly.indvar647, %197
  %polly.loop_guard6601135 = icmp sgt i64 %201, -1
  %202 = add nuw nsw i64 %polly.indvar647, %192
  %.not919 = icmp ult i64 %202, %198
  %polly.access.mul.call1673 = mul nuw nsw i64 %202, 1000
  %203 = add nuw nsw i64 %polly.access.mul.call1673, %193
  br i1 %polly.loop_guard6601135, label %polly.loop_header650.us, label %polly.loop_header644.split

polly.loop_header650.us:                          ; preds = %polly.loop_header644, %polly.merge669.us
  %polly.indvar653.us = phi i64 [ %polly.indvar_next654.us, %polly.merge669.us ], [ 0, %polly.loop_header644 ]
  %204 = add nuw nsw i64 %polly.indvar653.us, %193
  %polly.access.mul.Packed_MemRef_call1509.us = mul nuw nsw i64 %polly.indvar653.us, 1200
  br label %polly.loop_header657.us

polly.loop_header657.us:                          ; preds = %polly.loop_header650.us, %polly.loop_header657.us
  %polly.indvar661.us = phi i64 [ %polly.indvar_next662.us, %polly.loop_header657.us ], [ 0, %polly.loop_header650.us ]
  %205 = add nuw nsw i64 %polly.indvar661.us, %196
  %polly.access.mul.call1665.us = mul nuw nsw i64 %205, 1000
  %polly.access.add.call1666.us = add nuw nsw i64 %204, %polly.access.mul.call1665.us
  %polly.access.call1667.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1666.us
  %polly.access.call1667.load.us = load double, double* %polly.access.call1667.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1509.us = add nuw nsw i64 %polly.indvar661.us, %polly.access.mul.Packed_MemRef_call1509.us
  %polly.access.Packed_MemRef_call1509.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us
  store double %polly.access.call1667.load.us, double* %polly.access.Packed_MemRef_call1509.us, align 8
  %polly.indvar_next662.us = add nuw nsw i64 %polly.indvar661.us, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar661.us, %smin1086
  br i1 %exitcond1084.not, label %polly.cond668.loopexit.us, label %polly.loop_header657.us

polly.then670.us:                                 ; preds = %polly.cond668.loopexit.us
  %polly.access.add.call1674.us = add nuw nsw i64 %203, %polly.indvar653.us
  %polly.access.call1675.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.us
  %polly.access.call1675.load.us = load double, double* %polly.access.call1675.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1509677.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1509.us, %201
  %polly.access.Packed_MemRef_call1509678.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.us
  store double %polly.access.call1675.load.us, double* %polly.access.Packed_MemRef_call1509678.us, align 8
  br label %polly.merge669.us

polly.merge669.us:                                ; preds = %polly.then670.us, %polly.cond668.loopexit.us
  %polly.indvar_next654.us = add nuw nsw i64 %polly.indvar653.us, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar_next654.us, 50
  br i1 %exitcond1085.not, label %polly.loop_header679.preheader, label %polly.loop_header650.us

polly.cond668.loopexit.us:                        ; preds = %polly.loop_header657.us
  br i1 %.not919, label %polly.merge669.us, label %polly.then670.us

polly.loop_header644.split:                       ; preds = %polly.loop_header644
  br i1 %.not919, label %polly.loop_exit681, label %polly.loop_header650

polly.loop_exit681:                               ; preds = %polly.loop_exit688.loopexit.us, %polly.loop_header644.split, %polly.loop_header679.preheader
  %polly.indvar_next648 = add nuw nsw i64 %polly.indvar647, 1
  %indvars.iv.next1082 = add nsw i64 %indvars.iv1081, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next648, 80
  br i1 %exitcond1089.not, label %polly.loop_exit646, label %polly.loop_header644

polly.loop_header650:                             ; preds = %polly.loop_header644.split, %polly.loop_header650
  %polly.indvar653 = phi i64 [ %polly.indvar_next654, %polly.loop_header650 ], [ 0, %polly.loop_header644.split ]
  %polly.access.add.call1674 = add nuw nsw i64 %203, %polly.indvar653
  %polly.access.call1675 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674
  %polly.access.call1675.load = load double, double* %polly.access.call1675, align 8, !alias.scope !94, !noalias !101
  %polly.access.mul.Packed_MemRef_call1509676 = mul nuw nsw i64 %polly.indvar653, 1200
  %polly.access.add.Packed_MemRef_call1509677 = add nsw i64 %polly.access.mul.Packed_MemRef_call1509676, %201
  %polly.access.Packed_MemRef_call1509678 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677
  store double %polly.access.call1675.load, double* %polly.access.Packed_MemRef_call1509678, align 8
  %polly.indvar_next654 = add nuw nsw i64 %polly.indvar653, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar_next654, 50
  br i1 %exitcond1076.not, label %polly.loop_header679.preheader, label %polly.loop_header650

polly.loop_header679.preheader:                   ; preds = %polly.loop_header650, %polly.merge669.us
  %206 = mul nuw nsw i64 %202, 9600
  br i1 %polly.loop_guard6601135, label %polly.loop_header679.us, label %polly.loop_exit681

polly.loop_header679.us:                          ; preds = %polly.loop_header679.preheader, %polly.loop_exit688.loopexit.us
  %polly.indvar682.us = phi i64 [ %polly.indvar_next683.us, %polly.loop_exit688.loopexit.us ], [ 0, %polly.loop_header679.preheader ]
  %polly.access.mul.Packed_MemRef_call1509693.us = mul nuw nsw i64 %polly.indvar682.us, 1200
  %207 = add nuw nsw i64 %polly.indvar682.us, %193
  %polly.access.mul.Packed_MemRef_call2511697.us = mul nuw nsw i64 %207, 1200
  %polly.access.add.Packed_MemRef_call2511698.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2511697.us, %202
  %polly.access.Packed_MemRef_call2511699.us = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511698.us
  %_p_scalar_700.us = load double, double* %polly.access.Packed_MemRef_call2511699.us, align 8
  %polly.access.add.Packed_MemRef_call1509706.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1509693.us, %201
  %polly.access.Packed_MemRef_call1509707.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509706.us
  %_p_scalar_708.us = load double, double* %polly.access.Packed_MemRef_call1509707.us, align 8
  %min.iters.check1237 = icmp ult i64 %200, 4
  br i1 %min.iters.check1237, label %polly.loop_header686.us.preheader, label %vector.ph1238

vector.ph1238:                                    ; preds = %polly.loop_header679.us
  %n.vec1240 = and i64 %200, -4
  %broadcast.splatinsert1246 = insertelement <4 x double> poison, double %_p_scalar_700.us, i32 0
  %broadcast.splat1247 = shufflevector <4 x double> %broadcast.splatinsert1246, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1249 = insertelement <4 x double> poison, double %_p_scalar_708.us, i32 0
  %broadcast.splat1250 = shufflevector <4 x double> %broadcast.splatinsert1249, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1235

vector.body1235:                                  ; preds = %vector.body1235, %vector.ph1238
  %index1241 = phi i64 [ 0, %vector.ph1238 ], [ %index.next1242, %vector.body1235 ]
  %208 = add nuw nsw i64 %index1241, %196
  %209 = add nuw nsw i64 %index1241, %polly.access.mul.Packed_MemRef_call1509693.us
  %210 = getelementptr double, double* %Packed_MemRef_call1509, i64 %209
  %211 = bitcast double* %210 to <4 x double>*
  %wide.load1245 = load <4 x double>, <4 x double>* %211, align 8
  %212 = fmul fast <4 x double> %broadcast.splat1247, %wide.load1245
  %213 = add nuw nsw i64 %208, %polly.access.mul.Packed_MemRef_call2511697.us
  %214 = getelementptr double, double* %Packed_MemRef_call2511, i64 %213
  %215 = bitcast double* %214 to <4 x double>*
  %wide.load1248 = load <4 x double>, <4 x double>* %215, align 8
  %216 = fmul fast <4 x double> %broadcast.splat1250, %wide.load1248
  %217 = shl i64 %208, 3
  %218 = add nuw nsw i64 %217, %206
  %219 = getelementptr i8, i8* %call, i64 %218
  %220 = bitcast i8* %219 to <4 x double>*
  %wide.load1251 = load <4 x double>, <4 x double>* %220, align 8, !alias.scope !91, !noalias !93
  %221 = fadd fast <4 x double> %216, %212
  %222 = fmul fast <4 x double> %221, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %223 = fadd fast <4 x double> %222, %wide.load1251
  %224 = bitcast i8* %219 to <4 x double>*
  store <4 x double> %223, <4 x double>* %224, align 8, !alias.scope !91, !noalias !93
  %index.next1242 = add i64 %index1241, 4
  %225 = icmp eq i64 %index.next1242, %n.vec1240
  br i1 %225, label %middle.block1233, label %vector.body1235, !llvm.loop !102

middle.block1233:                                 ; preds = %vector.body1235
  %cmp.n1244 = icmp eq i64 %200, %n.vec1240
  br i1 %cmp.n1244, label %polly.loop_exit688.loopexit.us, label %polly.loop_header686.us.preheader

polly.loop_header686.us.preheader:                ; preds = %polly.loop_header679.us, %middle.block1233
  %polly.indvar690.us.ph = phi i64 [ 0, %polly.loop_header679.us ], [ %n.vec1240, %middle.block1233 ]
  br label %polly.loop_header686.us

polly.loop_header686.us:                          ; preds = %polly.loop_header686.us.preheader, %polly.loop_header686.us
  %polly.indvar690.us = phi i64 [ %polly.indvar_next691.us, %polly.loop_header686.us ], [ %polly.indvar690.us.ph, %polly.loop_header686.us.preheader ]
  %226 = add nuw nsw i64 %polly.indvar690.us, %196
  %polly.access.add.Packed_MemRef_call1509694.us = add nuw nsw i64 %polly.indvar690.us, %polly.access.mul.Packed_MemRef_call1509693.us
  %polly.access.Packed_MemRef_call1509695.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509694.us
  %_p_scalar_696.us = load double, double* %polly.access.Packed_MemRef_call1509695.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_700.us, %_p_scalar_696.us
  %polly.access.add.Packed_MemRef_call2511702.us = add nuw nsw i64 %226, %polly.access.mul.Packed_MemRef_call2511697.us
  %polly.access.Packed_MemRef_call2511703.us = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511702.us
  %_p_scalar_704.us = load double, double* %polly.access.Packed_MemRef_call2511703.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_708.us, %_p_scalar_704.us
  %227 = shl i64 %226, 3
  %228 = add nuw nsw i64 %227, %206
  %scevgep709.us = getelementptr i8, i8* %call, i64 %228
  %scevgep709710.us = bitcast i8* %scevgep709.us to double*
  %_p_scalar_711.us = load double, double* %scevgep709710.us, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_711.us
  store double %p_add42.i.us, double* %scevgep709710.us, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next691.us = add nuw nsw i64 %polly.indvar690.us, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar690.us, %smin1086
  br i1 %exitcond1087.not, label %polly.loop_exit688.loopexit.us, label %polly.loop_header686.us, !llvm.loop !103

polly.loop_exit688.loopexit.us:                   ; preds = %polly.loop_header686.us, %middle.block1233
  %polly.indvar_next683.us = add nuw nsw i64 %polly.indvar682.us, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next683.us, 50
  br i1 %exitcond1088.not, label %polly.loop_exit681, label %polly.loop_header679.us

polly.loop_header838:                             ; preds = %entry, %polly.loop_exit846
  %indvars.iv1123 = phi i64 [ %indvars.iv.next1124, %polly.loop_exit846 ], [ 0, %entry ]
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_exit846 ], [ 0, %entry ]
  %smin1125 = call i64 @llvm.smin.i64(i64 %indvars.iv1123, i64 -1168)
  %229 = shl nsw i64 %polly.indvar841, 5
  %230 = add nsw i64 %smin1125, 1199
  br label %polly.loop_header844

polly.loop_exit846:                               ; preds = %polly.loop_exit852
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %indvars.iv.next1124 = add nsw i64 %indvars.iv1123, -32
  %exitcond1128.not = icmp eq i64 %polly.indvar_next842, 38
  br i1 %exitcond1128.not, label %polly.loop_header865, label %polly.loop_header838

polly.loop_header844:                             ; preds = %polly.loop_exit852, %polly.loop_header838
  %indvars.iv1119 = phi i64 [ %indvars.iv.next1120, %polly.loop_exit852 ], [ 0, %polly.loop_header838 ]
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %polly.loop_header838 ]
  %231 = mul nsw i64 %polly.indvar847, -32
  %smin = call i64 @llvm.smin.i64(i64 %231, i64 -1168)
  %232 = add nsw i64 %smin, 1200
  %smin1121 = call i64 @llvm.smin.i64(i64 %indvars.iv1119, i64 -1168)
  %233 = shl nsw i64 %polly.indvar847, 5
  %234 = add nsw i64 %smin1121, 1199
  br label %polly.loop_header850

polly.loop_exit852:                               ; preds = %polly.loop_exit858
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %indvars.iv.next1120 = add nsw i64 %indvars.iv1119, -32
  %exitcond1127.not = icmp eq i64 %polly.indvar_next848, 38
  br i1 %exitcond1127.not, label %polly.loop_exit846, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_exit858, %polly.loop_header844
  %polly.indvar853 = phi i64 [ 0, %polly.loop_header844 ], [ %polly.indvar_next854, %polly.loop_exit858 ]
  %235 = add nuw nsw i64 %polly.indvar853, %229
  %236 = trunc i64 %235 to i32
  %237 = mul nuw nsw i64 %235, 9600
  %min.iters.check = icmp eq i64 %232, 0
  br i1 %min.iters.check, label %polly.loop_header856, label %vector.ph1163

vector.ph1163:                                    ; preds = %polly.loop_header850
  %broadcast.splatinsert1170 = insertelement <4 x i64> poison, i64 %233, i32 0
  %broadcast.splat1171 = shufflevector <4 x i64> %broadcast.splatinsert1170, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1172 = insertelement <4 x i32> poison, i32 %236, i32 0
  %broadcast.splat1173 = shufflevector <4 x i32> %broadcast.splatinsert1172, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1162

vector.body1162:                                  ; preds = %vector.body1162, %vector.ph1163
  %index1164 = phi i64 [ 0, %vector.ph1163 ], [ %index.next1165, %vector.body1162 ]
  %vec.ind1168 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1163 ], [ %vec.ind.next1169, %vector.body1162 ]
  %238 = add nuw nsw <4 x i64> %vec.ind1168, %broadcast.splat1171
  %239 = trunc <4 x i64> %238 to <4 x i32>
  %240 = mul <4 x i32> %broadcast.splat1173, %239
  %241 = add <4 x i32> %240, <i32 3, i32 3, i32 3, i32 3>
  %242 = urem <4 x i32> %241, <i32 1200, i32 1200, i32 1200, i32 1200>
  %243 = sitofp <4 x i32> %242 to <4 x double>
  %244 = fmul fast <4 x double> %243, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %245 = extractelement <4 x i64> %238, i32 0
  %246 = shl i64 %245, 3
  %247 = add nuw nsw i64 %246, %237
  %248 = getelementptr i8, i8* %call, i64 %247
  %249 = bitcast i8* %248 to <4 x double>*
  store <4 x double> %244, <4 x double>* %249, align 8, !alias.scope !104, !noalias !106
  %index.next1165 = add i64 %index1164, 4
  %vec.ind.next1169 = add <4 x i64> %vec.ind1168, <i64 4, i64 4, i64 4, i64 4>
  %250 = icmp eq i64 %index.next1165, %232
  br i1 %250, label %polly.loop_exit858, label %vector.body1162, !llvm.loop !109

polly.loop_exit858:                               ; preds = %vector.body1162, %polly.loop_header856
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %exitcond1126.not = icmp eq i64 %polly.indvar853, %230
  br i1 %exitcond1126.not, label %polly.loop_exit852, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_header850, %polly.loop_header856
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_header856 ], [ 0, %polly.loop_header850 ]
  %251 = add nuw nsw i64 %polly.indvar859, %233
  %252 = trunc i64 %251 to i32
  %253 = mul i32 %252, %236
  %254 = add i32 %253, 3
  %255 = urem i32 %254, 1200
  %p_conv31.i = sitofp i32 %255 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %256 = shl i64 %251, 3
  %257 = add nuw nsw i64 %256, %237
  %scevgep862 = getelementptr i8, i8* %call, i64 %257
  %scevgep862863 = bitcast i8* %scevgep862 to double*
  store double %p_div33.i, double* %scevgep862863, align 8, !alias.scope !104, !noalias !106
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar859, %234
  br i1 %exitcond1122.not, label %polly.loop_exit858, label %polly.loop_header856, !llvm.loop !110

polly.loop_header865:                             ; preds = %polly.loop_exit846, %polly.loop_exit873
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %polly.loop_exit873 ], [ 0, %polly.loop_exit846 ]
  %polly.indvar868 = phi i64 [ %polly.indvar_next869, %polly.loop_exit873 ], [ 0, %polly.loop_exit846 ]
  %smin1115 = call i64 @llvm.smin.i64(i64 %indvars.iv1113, i64 -1168)
  %258 = shl nsw i64 %polly.indvar868, 5
  %259 = add nsw i64 %smin1115, 1199
  br label %polly.loop_header871

polly.loop_exit873:                               ; preds = %polly.loop_exit879
  %polly.indvar_next869 = add nuw nsw i64 %polly.indvar868, 1
  %indvars.iv.next1114 = add nsw i64 %indvars.iv1113, -32
  %exitcond1118.not = icmp eq i64 %polly.indvar_next869, 38
  br i1 %exitcond1118.not, label %polly.loop_header891, label %polly.loop_header865

polly.loop_header871:                             ; preds = %polly.loop_exit879, %polly.loop_header865
  %indvars.iv1109 = phi i64 [ %indvars.iv.next1110, %polly.loop_exit879 ], [ 0, %polly.loop_header865 ]
  %polly.indvar874 = phi i64 [ %polly.indvar_next875, %polly.loop_exit879 ], [ 0, %polly.loop_header865 ]
  %260 = mul nsw i64 %polly.indvar874, -32
  %smin1177 = call i64 @llvm.smin.i64(i64 %260, i64 -968)
  %261 = add nsw i64 %smin1177, 1000
  %smin1111 = call i64 @llvm.smin.i64(i64 %indvars.iv1109, i64 -968)
  %262 = shl nsw i64 %polly.indvar874, 5
  %263 = add nsw i64 %smin1111, 999
  br label %polly.loop_header877

polly.loop_exit879:                               ; preds = %polly.loop_exit885
  %polly.indvar_next875 = add nuw nsw i64 %polly.indvar874, 1
  %indvars.iv.next1110 = add nsw i64 %indvars.iv1109, -32
  %exitcond1117.not = icmp eq i64 %polly.indvar_next875, 32
  br i1 %exitcond1117.not, label %polly.loop_exit873, label %polly.loop_header871

polly.loop_header877:                             ; preds = %polly.loop_exit885, %polly.loop_header871
  %polly.indvar880 = phi i64 [ 0, %polly.loop_header871 ], [ %polly.indvar_next881, %polly.loop_exit885 ]
  %264 = add nuw nsw i64 %polly.indvar880, %258
  %265 = trunc i64 %264 to i32
  %266 = mul nuw nsw i64 %264, 8000
  %min.iters.check1178 = icmp eq i64 %261, 0
  br i1 %min.iters.check1178, label %polly.loop_header883, label %vector.ph1179

vector.ph1179:                                    ; preds = %polly.loop_header877
  %broadcast.splatinsert1188 = insertelement <4 x i64> poison, i64 %262, i32 0
  %broadcast.splat1189 = shufflevector <4 x i64> %broadcast.splatinsert1188, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1190 = insertelement <4 x i32> poison, i32 %265, i32 0
  %broadcast.splat1191 = shufflevector <4 x i32> %broadcast.splatinsert1190, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1176

vector.body1176:                                  ; preds = %vector.body1176, %vector.ph1179
  %index1182 = phi i64 [ 0, %vector.ph1179 ], [ %index.next1183, %vector.body1176 ]
  %vec.ind1186 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1179 ], [ %vec.ind.next1187, %vector.body1176 ]
  %267 = add nuw nsw <4 x i64> %vec.ind1186, %broadcast.splat1189
  %268 = trunc <4 x i64> %267 to <4 x i32>
  %269 = mul <4 x i32> %broadcast.splat1191, %268
  %270 = add <4 x i32> %269, <i32 2, i32 2, i32 2, i32 2>
  %271 = urem <4 x i32> %270, <i32 1000, i32 1000, i32 1000, i32 1000>
  %272 = sitofp <4 x i32> %271 to <4 x double>
  %273 = fmul fast <4 x double> %272, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %274 = extractelement <4 x i64> %267, i32 0
  %275 = shl i64 %274, 3
  %276 = add nuw nsw i64 %275, %266
  %277 = getelementptr i8, i8* %call2, i64 %276
  %278 = bitcast i8* %277 to <4 x double>*
  store <4 x double> %273, <4 x double>* %278, align 8, !alias.scope !108, !noalias !111
  %index.next1183 = add i64 %index1182, 4
  %vec.ind.next1187 = add <4 x i64> %vec.ind1186, <i64 4, i64 4, i64 4, i64 4>
  %279 = icmp eq i64 %index.next1183, %261
  br i1 %279, label %polly.loop_exit885, label %vector.body1176, !llvm.loop !112

polly.loop_exit885:                               ; preds = %vector.body1176, %polly.loop_header883
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar880, %259
  br i1 %exitcond1116.not, label %polly.loop_exit879, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_header877, %polly.loop_header883
  %polly.indvar886 = phi i64 [ %polly.indvar_next887, %polly.loop_header883 ], [ 0, %polly.loop_header877 ]
  %280 = add nuw nsw i64 %polly.indvar886, %262
  %281 = trunc i64 %280 to i32
  %282 = mul i32 %281, %265
  %283 = add i32 %282, 2
  %284 = urem i32 %283, 1000
  %p_conv10.i = sitofp i32 %284 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %285 = shl i64 %280, 3
  %286 = add nuw nsw i64 %285, %266
  %scevgep889 = getelementptr i8, i8* %call2, i64 %286
  %scevgep889890 = bitcast i8* %scevgep889 to double*
  store double %p_div12.i, double* %scevgep889890, align 8, !alias.scope !108, !noalias !111
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar886, %263
  br i1 %exitcond1112.not, label %polly.loop_exit885, label %polly.loop_header883, !llvm.loop !113

polly.loop_header891:                             ; preds = %polly.loop_exit873, %polly.loop_exit899
  %indvars.iv1103 = phi i64 [ %indvars.iv.next1104, %polly.loop_exit899 ], [ 0, %polly.loop_exit873 ]
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_exit899 ], [ 0, %polly.loop_exit873 ]
  %smin1105 = call i64 @llvm.smin.i64(i64 %indvars.iv1103, i64 -1168)
  %287 = shl nsw i64 %polly.indvar894, 5
  %288 = add nsw i64 %smin1105, 1199
  br label %polly.loop_header897

polly.loop_exit899:                               ; preds = %polly.loop_exit905
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %indvars.iv.next1104 = add nsw i64 %indvars.iv1103, -32
  %exitcond1108.not = icmp eq i64 %polly.indvar_next895, 38
  br i1 %exitcond1108.not, label %init_array.exit, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_exit905, %polly.loop_header891
  %indvars.iv1099 = phi i64 [ %indvars.iv.next1100, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %289 = mul nsw i64 %polly.indvar900, -32
  %smin1195 = call i64 @llvm.smin.i64(i64 %289, i64 -968)
  %290 = add nsw i64 %smin1195, 1000
  %smin1101 = call i64 @llvm.smin.i64(i64 %indvars.iv1099, i64 -968)
  %291 = shl nsw i64 %polly.indvar900, 5
  %292 = add nsw i64 %smin1101, 999
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1100 = add nsw i64 %indvars.iv1099, -32
  %exitcond1107.not = icmp eq i64 %polly.indvar_next901, 32
  br i1 %exitcond1107.not, label %polly.loop_exit899, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %polly.indvar906 = phi i64 [ 0, %polly.loop_header897 ], [ %polly.indvar_next907, %polly.loop_exit911 ]
  %293 = add nuw nsw i64 %polly.indvar906, %287
  %294 = trunc i64 %293 to i32
  %295 = mul nuw nsw i64 %293, 8000
  %min.iters.check1196 = icmp eq i64 %290, 0
  br i1 %min.iters.check1196, label %polly.loop_header909, label %vector.ph1197

vector.ph1197:                                    ; preds = %polly.loop_header903
  %broadcast.splatinsert1206 = insertelement <4 x i64> poison, i64 %291, i32 0
  %broadcast.splat1207 = shufflevector <4 x i64> %broadcast.splatinsert1206, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1208 = insertelement <4 x i32> poison, i32 %294, i32 0
  %broadcast.splat1209 = shufflevector <4 x i32> %broadcast.splatinsert1208, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1194

vector.body1194:                                  ; preds = %vector.body1194, %vector.ph1197
  %index1200 = phi i64 [ 0, %vector.ph1197 ], [ %index.next1201, %vector.body1194 ]
  %vec.ind1204 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1197 ], [ %vec.ind.next1205, %vector.body1194 ]
  %296 = add nuw nsw <4 x i64> %vec.ind1204, %broadcast.splat1207
  %297 = trunc <4 x i64> %296 to <4 x i32>
  %298 = mul <4 x i32> %broadcast.splat1209, %297
  %299 = add <4 x i32> %298, <i32 1, i32 1, i32 1, i32 1>
  %300 = urem <4 x i32> %299, <i32 1200, i32 1200, i32 1200, i32 1200>
  %301 = sitofp <4 x i32> %300 to <4 x double>
  %302 = fmul fast <4 x double> %301, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %303 = extractelement <4 x i64> %296, i32 0
  %304 = shl i64 %303, 3
  %305 = add nuw nsw i64 %304, %295
  %306 = getelementptr i8, i8* %call1, i64 %305
  %307 = bitcast i8* %306 to <4 x double>*
  store <4 x double> %302, <4 x double>* %307, align 8, !alias.scope !107, !noalias !114
  %index.next1201 = add i64 %index1200, 4
  %vec.ind.next1205 = add <4 x i64> %vec.ind1204, <i64 4, i64 4, i64 4, i64 4>
  %308 = icmp eq i64 %index.next1201, %290
  br i1 %308, label %polly.loop_exit911, label %vector.body1194, !llvm.loop !115

polly.loop_exit911:                               ; preds = %vector.body1194, %polly.loop_header909
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar906, %288
  br i1 %exitcond1106.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_header903, %polly.loop_header909
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_header909 ], [ 0, %polly.loop_header903 ]
  %309 = add nuw nsw i64 %polly.indvar912, %291
  %310 = trunc i64 %309 to i32
  %311 = mul i32 %310, %294
  %312 = add i32 %311, 1
  %313 = urem i32 %312, 1200
  %p_conv.i = sitofp i32 %313 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %314 = shl i64 %309, 3
  %315 = add nuw nsw i64 %314, %295
  %scevgep916 = getelementptr i8, i8* %call1, i64 %315
  %scevgep916917 = bitcast i8* %scevgep916 to double*
  store double %p_div.i, double* %scevgep916917, align 8, !alias.scope !107, !noalias !114
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar912, %292
  br i1 %exitcond1102.not, label %polly.loop_exit911, label %polly.loop_header909, !llvm.loop !116
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
!26 = !{!"llvm.loop.tile.size", i32 80}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 50}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42, !43, !44}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.data.pack.enable", i1 true}
!43 = !{!"llvm.data.pack.array", !21}
!44 = !{!"llvm.data.pack.allocate", !"malloc"}
!45 = distinct !{!45, !12, !24, !46, !47, !48, !26, !49, !53}
!46 = !{!"llvm.loop.id", !"i"}
!47 = !{!"llvm.loop.tile.enable", i1 true}
!48 = !{!"llvm.loop.tile.depth", i32 3}
!49 = !{!"llvm.loop.tile.followup_floor", !50}
!50 = distinct !{!50, !12, !24, !51, !42, !52, !44}
!51 = !{!"llvm.loop.id", !"i1"}
!52 = !{!"llvm.data.pack.array", !22}
!53 = !{!"llvm.loop.tile.followup_tile", !54}
!54 = distinct !{!54, !12, !55}
!55 = !{!"llvm.loop.id", !"i2"}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = distinct !{!59, !12, !13}
!60 = !{!61, !61, i64 0}
!61 = !{!"any pointer", !4, i64 0}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !65, !"polly.alias.scope.MemRef_call"}
!65 = distinct !{!65, !"polly.alias.scope.domain"}
!66 = !{!67, !68, !69, !70}
!67 = distinct !{!67, !65, !"polly.alias.scope.MemRef_call1"}
!68 = distinct !{!68, !65, !"polly.alias.scope.MemRef_call2"}
!69 = distinct !{!69, !65, !"polly.alias.scope.Packed_MemRef_call1"}
!70 = distinct !{!70, !65, !"polly.alias.scope.Packed_MemRef_call2"}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !73, !13}
!73 = !{!"llvm.loop.unroll.runtime.disable"}
!74 = !{!64, !67, !69, !70}
!75 = !{!64, !68, !69, !70}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !73, !13}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83, !84}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call1"}
!84 = distinct !{!84, !79, !"polly.alias.scope.Packed_MemRef_call2"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !73, !13}
!87 = !{!78, !81, !83, !84}
!88 = !{!78, !82, !83, !84}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !73, !13}
!91 = distinct !{!91, !92, !"polly.alias.scope.MemRef_call"}
!92 = distinct !{!92, !"polly.alias.scope.domain"}
!93 = !{!94, !95, !96, !97}
!94 = distinct !{!94, !92, !"polly.alias.scope.MemRef_call1"}
!95 = distinct !{!95, !92, !"polly.alias.scope.MemRef_call2"}
!96 = distinct !{!96, !92, !"polly.alias.scope.Packed_MemRef_call1"}
!97 = distinct !{!97, !92, !"polly.alias.scope.Packed_MemRef_call2"}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !73, !13}
!100 = !{!91, !94, !96, !97}
!101 = !{!91, !95, !96, !97}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !73, !13}
!104 = distinct !{!104, !105, !"polly.alias.scope.MemRef_call"}
!105 = distinct !{!105, !"polly.alias.scope.domain"}
!106 = !{!107, !108}
!107 = distinct !{!107, !105, !"polly.alias.scope.MemRef_call1"}
!108 = distinct !{!108, !105, !"polly.alias.scope.MemRef_call2"}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !73, !13}
!111 = !{!107, !104}
!112 = distinct !{!112, !13}
!113 = distinct !{!113, !73, !13}
!114 = !{!108, !104}
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !73, !13}
