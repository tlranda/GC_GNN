; ModuleID = 'syr2k_exhaustive/mmp_all_SM_2173.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_2173.c"
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
  %call846 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1698 = bitcast i8* %call1 to double*
  %polly.access.call1707 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2708 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1707, %call2
  %polly.access.call2727 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2727, %call1
  %2 = or i1 %0, %1
  %polly.access.call747 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call747, %call2
  %4 = icmp ule i8* %polly.access.call2727, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call747, %call1
  %8 = icmp ule i8* %polly.access.call1707, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header820, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1135 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1134 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1133 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1132 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1132, %scevgep1135
  %bound1 = icmp ult i8* %scevgep1134, %scevgep1133
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
  br i1 %exitcond18.not.i, label %vector.ph1139, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1139:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1146 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1147 = shufflevector <4 x i64> %broadcast.splatinsert1146, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1138

vector.body1138:                                  ; preds = %vector.body1138, %vector.ph1139
  %index1140 = phi i64 [ 0, %vector.ph1139 ], [ %index.next1141, %vector.body1138 ]
  %vec.ind1144 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1139 ], [ %vec.ind.next1145, %vector.body1138 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1144, %broadcast.splat1147
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call846, i64 %indvars.iv7.i, i64 %index1140
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1141 = add i64 %index1140, 4
  %vec.ind.next1145 = add <4 x i64> %vec.ind1144, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1141, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1138, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1138
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1139, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit881
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start494, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1201 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1201, label %for.body3.i46.preheader1335, label %vector.ph1202

vector.ph1202:                                    ; preds = %for.body3.i46.preheader
  %n.vec1204 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %vector.ph1202
  %index1205 = phi i64 [ 0, %vector.ph1202 ], [ %index.next1206, %vector.body1200 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call846, i64 %indvars.iv21.i, i64 %index1205
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1206 = add i64 %index1205, 4
  %46 = icmp eq i64 %index.next1206, %n.vec1204
  br i1 %46, label %middle.block1198, label %vector.body1200, !llvm.loop !18

middle.block1198:                                 ; preds = %vector.body1200
  %cmp.n1208 = icmp eq i64 %indvars.iv21.i, %n.vec1204
  br i1 %cmp.n1208, label %for.inc6.i, label %for.body3.i46.preheader1335

for.body3.i46.preheader1335:                      ; preds = %for.body3.i46.preheader, %middle.block1198
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1204, %middle.block1198 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1335, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1335 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call846, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1198, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call846, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting495
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start292, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1243 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1243, label %for.body3.i60.preheader1333, label %vector.ph1244

vector.ph1244:                                    ; preds = %for.body3.i60.preheader
  %n.vec1246 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1242

vector.body1242:                                  ; preds = %vector.body1242, %vector.ph1244
  %index1247 = phi i64 [ 0, %vector.ph1244 ], [ %index.next1248, %vector.body1242 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call846, i64 %indvars.iv21.i52, i64 %index1247
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1251 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1251, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1248 = add i64 %index1247, 4
  %57 = icmp eq i64 %index.next1248, %n.vec1246
  br i1 %57, label %middle.block1240, label %vector.body1242, !llvm.loop !56

middle.block1240:                                 ; preds = %vector.body1242
  %cmp.n1250 = icmp eq i64 %indvars.iv21.i52, %n.vec1246
  br i1 %cmp.n1250, label %for.inc6.i63, label %for.body3.i60.preheader1333

for.body3.i60.preheader1333:                      ; preds = %for.body3.i60.preheader, %middle.block1240
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1246, %middle.block1240 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1333, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1333 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call846, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !57

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1240, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call846, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting293
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1288 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1288, label %for.body3.i99.preheader1331, label %vector.ph1289

vector.ph1289:                                    ; preds = %for.body3.i99.preheader
  %n.vec1291 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1287

vector.body1287:                                  ; preds = %vector.body1287, %vector.ph1289
  %index1292 = phi i64 [ 0, %vector.ph1289 ], [ %index.next1293, %vector.body1287 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call846, i64 %indvars.iv21.i91, i64 %index1292
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1296 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1296, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1293 = add i64 %index1292, 4
  %68 = icmp eq i64 %index.next1293, %n.vec1291
  br i1 %68, label %middle.block1285, label %vector.body1287, !llvm.loop !58

middle.block1285:                                 ; preds = %vector.body1287
  %cmp.n1295 = icmp eq i64 %indvars.iv21.i91, %n.vec1291
  br i1 %cmp.n1295, label %for.inc6.i102, label %for.body3.i99.preheader1331

for.body3.i99.preheader1331:                      ; preds = %for.body3.i99.preheader, %middle.block1285
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1291, %middle.block1285 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1331, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1331 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call846, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !59

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1285, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call846, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call846, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1300 = phi i64 [ %indvar.next1301, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1300, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1302 = icmp ult i64 %88, 4
  br i1 %min.iters.check1302, label %polly.loop_header192.preheader, label %vector.ph1303

vector.ph1303:                                    ; preds = %polly.loop_header
  %n.vec1305 = and i64 %88, -4
  br label %vector.body1299

vector.body1299:                                  ; preds = %vector.body1299, %vector.ph1303
  %index1306 = phi i64 [ 0, %vector.ph1303 ], [ %index.next1307, %vector.body1299 ]
  %90 = shl nuw nsw i64 %index1306, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1310 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !64, !noalias !66
  %93 = fmul fast <4 x double> %wide.load1310, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !64, !noalias !66
  %index.next1307 = add i64 %index1306, 4
  %95 = icmp eq i64 %index.next1307, %n.vec1305
  br i1 %95, label %middle.block1297, label %vector.body1299, !llvm.loop !71

middle.block1297:                                 ; preds = %vector.body1299
  %cmp.n1309 = icmp eq i64 %88, %n.vec1305
  br i1 %cmp.n1309, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1297
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1305, %middle.block1297 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1297
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1301 = add i64 %indvar1300, 1
  br i1 %exitcond1036.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1035.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1035.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !72

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1034.not, label %polly.loop_header216, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 1000
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2708, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !68, !noalias !74
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1033.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv1029 = phi i64 [ %indvars.iv.next1030, %polly.loop_exit224 ], [ 1, %polly.loop_exit208 ]
  %indvars.iv1025 = phi i64 [ %indvars.iv.next1026, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = shl nuw nsw i64 %polly.indvar219, 6
  %smin1027 = call i64 @llvm.smin.i64(i64 %indvars.iv1025, i64 -1136)
  %98 = shl nsw i64 %polly.indvar219, 6
  %99 = add nsw i64 %smin1027, 1199
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %indvars.iv.next1026 = add nsw i64 %indvars.iv1025, -64
  %indvars.iv.next1030 = add nuw nsw i64 %indvars.iv1029, 1
  %exitcond1032.not = icmp eq i64 %polly.indvar_next220, 19
  br i1 %exitcond1032.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %polly.loop_exit230 ], [ %indvars.iv, %polly.loop_header216 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit230 ], [ 0, %polly.loop_header216 ]
  %100 = mul nsw i64 %polly.indvar225, -64
  %101 = add i64 %97, %100
  %102 = shl nsw i64 %polly.indvar225, 6
  %103 = sub nsw i64 %98, %102
  %104 = add nuw nsw i64 %102, 64
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit259
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next1017 = add nsw i64 %indvars.iv1016, -64
  %exitcond1031.not = icmp eq i64 %polly.indvar_next226, %indvars.iv1029
  br i1 %exitcond1031.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit259, %polly.loop_header222
  %indvars.iv1018 = phi i64 [ %indvars.iv.next1019, %polly.loop_exit259 ], [ %indvars.iv1016, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit259 ], [ 0, %polly.loop_header222 ]
  %105 = add i64 %101, %polly.indvar231
  %smin1314 = call i64 @llvm.smin.i64(i64 %105, i64 63)
  %106 = add nsw i64 %smin1314, 1
  %smin1022 = call i64 @llvm.smin.i64(i64 %indvars.iv1018, i64 63)
  %107 = add nsw i64 %polly.indvar231, %103
  %polly.loop_guard1121 = icmp sgt i64 %107, -1
  %108 = add nuw nsw i64 %polly.indvar231, %98
  %.not = icmp ult i64 %108, %104
  %polly.access.mul.call1251 = mul nuw nsw i64 %108, 1000
  br i1 %polly.loop_guard1121, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.us ], [ 0, %polly.loop_header228 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %109 = add nuw nsw i64 %polly.indvar243.us, %102
  %polly.access.mul.call1247.us = mul nuw nsw i64 %109, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %polly.access.mul.call1247.us, %polly.indvar237.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1698, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar243.us, %smin1022
  br i1 %exitcond1020.not, label %polly.cond.loopexit.us, label %polly.loop_header240.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1252.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.call1251
  %polly.access.call1253.us = getelementptr double, double* %polly.access.cast.call1698, i64 %polly.access.add.call1252.us
  %polly.access.call1253.load.us = load double, double* %polly.access.call1253.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1255.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %107
  %polly.access.Packed_MemRef_call1256.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255.us
  store double %polly.access.call1253.load.us, double* %polly.access.Packed_MemRef_call1256.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1021.not = icmp eq i64 %polly.indvar_next238.us, 1000
  br i1 %exitcond1021.not, label %polly.loop_header257.preheader, label %polly.loop_header234.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header240.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %.not, label %polly.loop_exit259, label %polly.loop_header234

polly.loop_exit259:                               ; preds = %polly.loop_exit266.loopexit.us, %polly.loop_header228.split, %polly.loop_header257.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1019 = add nsw i64 %indvars.iv1018, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar231, %99
  br i1 %exitcond1028.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_header234
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_header234 ], [ 0, %polly.loop_header228.split ]
  %polly.access.add.call1252 = add nuw nsw i64 %polly.indvar237, %polly.access.mul.call1251
  %polly.access.call1253 = getelementptr double, double* %polly.access.cast.call1698, i64 %polly.access.add.call1252
  %polly.access.call1253.load = load double, double* %polly.access.call1253, align 8, !alias.scope !67, !noalias !75
  %polly.access.mul.Packed_MemRef_call1254 = mul nuw nsw i64 %polly.indvar237, 1200
  %polly.access.add.Packed_MemRef_call1255 = add nsw i64 %polly.access.mul.Packed_MemRef_call1254, %107
  %polly.access.Packed_MemRef_call1256 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255
  store double %polly.access.call1253.load, double* %polly.access.Packed_MemRef_call1256, align 8
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next238, 1000
  br i1 %exitcond.not, label %polly.loop_header257.preheader, label %polly.loop_header234

polly.loop_header257.preheader:                   ; preds = %polly.loop_header234, %polly.merge.us
  %110 = mul nuw nsw i64 %108, 9600
  br i1 %polly.loop_guard1121, label %polly.loop_header257.us, label %polly.loop_exit259

polly.loop_header257.us:                          ; preds = %polly.loop_header257.preheader, %polly.loop_exit266.loopexit.us
  %polly.indvar260.us = phi i64 [ %polly.indvar_next261.us, %polly.loop_exit266.loopexit.us ], [ 0, %polly.loop_header257.preheader ]
  %polly.access.mul.Packed_MemRef_call1271.us = mul nuw nsw i64 %polly.indvar260.us, 1200
  %polly.access.add.Packed_MemRef_call2276.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1271.us, %108
  %polly.access.Packed_MemRef_call2277.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2276.us
  %_p_scalar_278.us = load double, double* %polly.access.Packed_MemRef_call2277.us, align 8
  %polly.access.add.Packed_MemRef_call1284.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1271.us, %107
  %polly.access.Packed_MemRef_call1285.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call1285.us, align 8
  %min.iters.check1315 = icmp ult i64 %106, 4
  br i1 %min.iters.check1315, label %polly.loop_header264.us.preheader, label %vector.ph1316

vector.ph1316:                                    ; preds = %polly.loop_header257.us
  %n.vec1318 = and i64 %106, -4
  %broadcast.splatinsert1324 = insertelement <4 x double> poison, double %_p_scalar_278.us, i32 0
  %broadcast.splat1325 = shufflevector <4 x double> %broadcast.splatinsert1324, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1327 = insertelement <4 x double> poison, double %_p_scalar_286.us, i32 0
  %broadcast.splat1328 = shufflevector <4 x double> %broadcast.splatinsert1327, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1313

vector.body1313:                                  ; preds = %vector.body1313, %vector.ph1316
  %index1319 = phi i64 [ 0, %vector.ph1316 ], [ %index.next1320, %vector.body1313 ]
  %111 = add nuw nsw i64 %index1319, %102
  %112 = add nuw nsw i64 %index1319, %polly.access.mul.Packed_MemRef_call1271.us
  %113 = getelementptr double, double* %Packed_MemRef_call1, i64 %112
  %114 = bitcast double* %113 to <4 x double>*
  %wide.load1323 = load <4 x double>, <4 x double>* %114, align 8
  %115 = fmul fast <4 x double> %broadcast.splat1325, %wide.load1323
  %116 = add nuw nsw i64 %111, %polly.access.mul.Packed_MemRef_call1271.us
  %117 = getelementptr double, double* %Packed_MemRef_call2, i64 %116
  %118 = bitcast double* %117 to <4 x double>*
  %wide.load1326 = load <4 x double>, <4 x double>* %118, align 8
  %119 = fmul fast <4 x double> %broadcast.splat1328, %wide.load1326
  %120 = shl i64 %111, 3
  %121 = add nuw nsw i64 %120, %110
  %122 = getelementptr i8, i8* %call, i64 %121
  %123 = bitcast i8* %122 to <4 x double>*
  %wide.load1329 = load <4 x double>, <4 x double>* %123, align 8, !alias.scope !64, !noalias !66
  %124 = fadd fast <4 x double> %119, %115
  %125 = fmul fast <4 x double> %124, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %126 = fadd fast <4 x double> %125, %wide.load1329
  %127 = bitcast i8* %122 to <4 x double>*
  store <4 x double> %126, <4 x double>* %127, align 8, !alias.scope !64, !noalias !66
  %index.next1320 = add i64 %index1319, 4
  %128 = icmp eq i64 %index.next1320, %n.vec1318
  br i1 %128, label %middle.block1311, label %vector.body1313, !llvm.loop !76

middle.block1311:                                 ; preds = %vector.body1313
  %cmp.n1322 = icmp eq i64 %106, %n.vec1318
  br i1 %cmp.n1322, label %polly.loop_exit266.loopexit.us, label %polly.loop_header264.us.preheader

polly.loop_header264.us.preheader:                ; preds = %polly.loop_header257.us, %middle.block1311
  %polly.indvar268.us.ph = phi i64 [ 0, %polly.loop_header257.us ], [ %n.vec1318, %middle.block1311 ]
  br label %polly.loop_header264.us

polly.loop_header264.us:                          ; preds = %polly.loop_header264.us.preheader, %polly.loop_header264.us
  %polly.indvar268.us = phi i64 [ %polly.indvar_next269.us, %polly.loop_header264.us ], [ %polly.indvar268.us.ph, %polly.loop_header264.us.preheader ]
  %129 = add nuw nsw i64 %polly.indvar268.us, %102
  %polly.access.add.Packed_MemRef_call1272.us = add nuw nsw i64 %polly.indvar268.us, %polly.access.mul.Packed_MemRef_call1271.us
  %polly.access.Packed_MemRef_call1273.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1272.us
  %_p_scalar_274.us = load double, double* %polly.access.Packed_MemRef_call1273.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_278.us, %_p_scalar_274.us
  %polly.access.add.Packed_MemRef_call2280.us = add nuw nsw i64 %129, %polly.access.mul.Packed_MemRef_call1271.us
  %polly.access.Packed_MemRef_call2281.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2280.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call2281.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %130 = shl i64 %129, 3
  %131 = add nuw nsw i64 %130, %110
  %scevgep287.us = getelementptr i8, i8* %call, i64 %131
  %scevgep287288.us = bitcast i8* %scevgep287.us to double*
  %_p_scalar_289.us = load double, double* %scevgep287288.us, align 8, !alias.scope !64, !noalias !66
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_289.us
  store double %p_add42.i118.us, double* %scevgep287288.us, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next269.us = add nuw nsw i64 %polly.indvar268.us, 1
  %exitcond1023.not = icmp eq i64 %polly.indvar268.us, %smin1022
  br i1 %exitcond1023.not, label %polly.loop_exit266.loopexit.us, label %polly.loop_header264.us, !llvm.loop !77

polly.loop_exit266.loopexit.us:                   ; preds = %polly.loop_header264.us, %middle.block1311
  %polly.indvar_next261.us = add nuw nsw i64 %polly.indvar260.us, 1
  %exitcond1024.not = icmp eq i64 %polly.indvar_next261.us, 1000
  br i1 %exitcond1024.not, label %polly.loop_exit259, label %polly.loop_header257.us

polly.start292:                                   ; preds = %kernel_syr2k.exit
  %malloccall294 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall296 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header380

polly.exiting293:                                 ; preds = %polly.loop_exit420
  tail call void @free(i8* %malloccall294)
  tail call void @free(i8* %malloccall296)
  br label %kernel_syr2k.exit90

polly.loop_header380:                             ; preds = %polly.loop_exit388, %polly.start292
  %indvar1255 = phi i64 [ %indvar.next1256, %polly.loop_exit388 ], [ 0, %polly.start292 ]
  %polly.indvar383 = phi i64 [ %polly.indvar_next384, %polly.loop_exit388 ], [ 1, %polly.start292 ]
  %132 = add i64 %indvar1255, 1
  %133 = mul nuw nsw i64 %polly.indvar383, 9600
  %scevgep392 = getelementptr i8, i8* %call, i64 %133
  %min.iters.check1257 = icmp ult i64 %132, 4
  br i1 %min.iters.check1257, label %polly.loop_header386.preheader, label %vector.ph1258

vector.ph1258:                                    ; preds = %polly.loop_header380
  %n.vec1260 = and i64 %132, -4
  br label %vector.body1254

vector.body1254:                                  ; preds = %vector.body1254, %vector.ph1258
  %index1261 = phi i64 [ 0, %vector.ph1258 ], [ %index.next1262, %vector.body1254 ]
  %134 = shl nuw nsw i64 %index1261, 3
  %135 = getelementptr i8, i8* %scevgep392, i64 %134
  %136 = bitcast i8* %135 to <4 x double>*
  %wide.load1265 = load <4 x double>, <4 x double>* %136, align 8, !alias.scope !78, !noalias !80
  %137 = fmul fast <4 x double> %wide.load1265, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %138 = bitcast i8* %135 to <4 x double>*
  store <4 x double> %137, <4 x double>* %138, align 8, !alias.scope !78, !noalias !80
  %index.next1262 = add i64 %index1261, 4
  %139 = icmp eq i64 %index.next1262, %n.vec1260
  br i1 %139, label %middle.block1252, label %vector.body1254, !llvm.loop !85

middle.block1252:                                 ; preds = %vector.body1254
  %cmp.n1264 = icmp eq i64 %132, %n.vec1260
  br i1 %cmp.n1264, label %polly.loop_exit388, label %polly.loop_header386.preheader

polly.loop_header386.preheader:                   ; preds = %polly.loop_header380, %middle.block1252
  %polly.indvar389.ph = phi i64 [ 0, %polly.loop_header380 ], [ %n.vec1260, %middle.block1252 ]
  br label %polly.loop_header386

polly.loop_exit388:                               ; preds = %polly.loop_header386, %middle.block1252
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar_next384, 1200
  %indvar.next1256 = add i64 %indvar1255, 1
  br i1 %exitcond1061.not, label %polly.loop_header396.preheader, label %polly.loop_header380

polly.loop_header396.preheader:                   ; preds = %polly.loop_exit388
  %Packed_MemRef_call1295 = bitcast i8* %malloccall294 to double*
  %Packed_MemRef_call2297 = bitcast i8* %malloccall296 to double*
  br label %polly.loop_header396

polly.loop_header386:                             ; preds = %polly.loop_header386.preheader, %polly.loop_header386
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_header386 ], [ %polly.indvar389.ph, %polly.loop_header386.preheader ]
  %140 = shl nuw nsw i64 %polly.indvar389, 3
  %scevgep393 = getelementptr i8, i8* %scevgep392, i64 %140
  %scevgep393394 = bitcast i8* %scevgep393 to double*
  %_p_scalar_395 = load double, double* %scevgep393394, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_395, 1.200000e+00
  store double %p_mul.i57, double* %scevgep393394, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar_next390, %polly.indvar383
  br i1 %exitcond1060.not, label %polly.loop_exit388, label %polly.loop_header386, !llvm.loop !86

polly.loop_header396:                             ; preds = %polly.loop_header396.preheader, %polly.loop_exit404
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 0, %polly.loop_header396.preheader ]
  %polly.access.mul.Packed_MemRef_call2297 = mul nuw nsw i64 %polly.indvar399, 1200
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_header402
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar_next400, 1000
  br i1 %exitcond1059.not, label %polly.loop_header412, label %polly.loop_header396

polly.loop_header402:                             ; preds = %polly.loop_header402, %polly.loop_header396
  %polly.indvar405 = phi i64 [ 0, %polly.loop_header396 ], [ %polly.indvar_next406, %polly.loop_header402 ]
  %polly.access.mul.call2409 = mul nuw nsw i64 %polly.indvar405, 1000
  %polly.access.add.call2410 = add nuw nsw i64 %polly.access.mul.call2409, %polly.indvar399
  %polly.access.call2411 = getelementptr double, double* %polly.access.cast.call2708, i64 %polly.access.add.call2410
  %polly.access.call2411.load = load double, double* %polly.access.call2411, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call2297 = add nuw nsw i64 %polly.indvar405, %polly.access.mul.Packed_MemRef_call2297
  %polly.access.Packed_MemRef_call2297 = getelementptr double, double* %Packed_MemRef_call2297, i64 %polly.access.add.Packed_MemRef_call2297
  store double %polly.access.call2411.load, double* %polly.access.Packed_MemRef_call2297, align 8
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar_next406, 1200
  br i1 %exitcond1058.not, label %polly.loop_exit404, label %polly.loop_header402

polly.loop_header412:                             ; preds = %polly.loop_exit404, %polly.loop_exit420
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055, %polly.loop_exit420 ], [ 1, %polly.loop_exit404 ]
  %indvars.iv1050 = phi i64 [ %indvars.iv.next1051, %polly.loop_exit420 ], [ 0, %polly.loop_exit404 ]
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit420 ], [ 0, %polly.loop_exit404 ]
  %polly.indvar415 = phi i64 [ %polly.indvar_next416, %polly.loop_exit420 ], [ 0, %polly.loop_exit404 ]
  %141 = shl nuw nsw i64 %polly.indvar415, 6
  %smin1052 = call i64 @llvm.smin.i64(i64 %indvars.iv1050, i64 -1136)
  %142 = shl nsw i64 %polly.indvar415, 6
  %143 = add nsw i64 %smin1052, 1199
  br label %polly.loop_header418

polly.loop_exit420:                               ; preds = %polly.loop_exit426
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %indvars.iv.next1039 = add nuw nsw i64 %indvars.iv1038, 64
  %indvars.iv.next1051 = add nsw i64 %indvars.iv1050, -64
  %indvars.iv.next1055 = add nuw nsw i64 %indvars.iv1054, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar_next416, 19
  br i1 %exitcond1057.not, label %polly.exiting293, label %polly.loop_header412

polly.loop_header418:                             ; preds = %polly.loop_exit426, %polly.loop_header412
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit426 ], [ %indvars.iv1038, %polly.loop_header412 ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit426 ], [ 0, %polly.loop_header412 ]
  %144 = mul nsw i64 %polly.indvar421, -64
  %145 = add i64 %141, %144
  %146 = shl nsw i64 %polly.indvar421, 6
  %147 = sub nsw i64 %142, %146
  %148 = add nuw nsw i64 %146, 64
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit461
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1041 = add nsw i64 %indvars.iv1040, -64
  %exitcond1056.not = icmp eq i64 %polly.indvar_next422, %indvars.iv1054
  br i1 %exitcond1056.not, label %polly.loop_exit420, label %polly.loop_header418

polly.loop_header424:                             ; preds = %polly.loop_exit461, %polly.loop_header418
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %polly.loop_exit461 ], [ %indvars.iv1040, %polly.loop_header418 ]
  %polly.indvar427 = phi i64 [ %polly.indvar_next428, %polly.loop_exit461 ], [ 0, %polly.loop_header418 ]
  %149 = add i64 %145, %polly.indvar427
  %smin1269 = call i64 @llvm.smin.i64(i64 %149, i64 63)
  %150 = add nsw i64 %smin1269, 1
  %smin1047 = call i64 @llvm.smin.i64(i64 %indvars.iv1042, i64 63)
  %151 = add nsw i64 %polly.indvar427, %147
  %polly.loop_guard4401122 = icmp sgt i64 %151, -1
  %152 = add nuw nsw i64 %polly.indvar427, %142
  %.not900 = icmp ult i64 %152, %148
  %polly.access.mul.call1453 = mul nuw nsw i64 %152, 1000
  br i1 %polly.loop_guard4401122, label %polly.loop_header430.us, label %polly.loop_header424.split

polly.loop_header430.us:                          ; preds = %polly.loop_header424, %polly.merge449.us
  %polly.indvar433.us = phi i64 [ %polly.indvar_next434.us, %polly.merge449.us ], [ 0, %polly.loop_header424 ]
  %polly.access.mul.Packed_MemRef_call1295.us = mul nuw nsw i64 %polly.indvar433.us, 1200
  br label %polly.loop_header437.us

polly.loop_header437.us:                          ; preds = %polly.loop_header430.us, %polly.loop_header437.us
  %polly.indvar441.us = phi i64 [ %polly.indvar_next442.us, %polly.loop_header437.us ], [ 0, %polly.loop_header430.us ]
  %153 = add nuw nsw i64 %polly.indvar441.us, %146
  %polly.access.mul.call1445.us = mul nuw nsw i64 %153, 1000
  %polly.access.add.call1446.us = add nuw nsw i64 %polly.access.mul.call1445.us, %polly.indvar433.us
  %polly.access.call1447.us = getelementptr double, double* %polly.access.cast.call1698, i64 %polly.access.add.call1446.us
  %polly.access.call1447.load.us = load double, double* %polly.access.call1447.us, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1295.us = add nuw nsw i64 %polly.indvar441.us, %polly.access.mul.Packed_MemRef_call1295.us
  %polly.access.Packed_MemRef_call1295.us = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295.us
  store double %polly.access.call1447.load.us, double* %polly.access.Packed_MemRef_call1295.us, align 8
  %polly.indvar_next442.us = add nuw nsw i64 %polly.indvar441.us, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar441.us, %smin1047
  br i1 %exitcond1045.not, label %polly.cond448.loopexit.us, label %polly.loop_header437.us

polly.then450.us:                                 ; preds = %polly.cond448.loopexit.us
  %polly.access.add.call1454.us = add nuw nsw i64 %polly.indvar433.us, %polly.access.mul.call1453
  %polly.access.call1455.us = getelementptr double, double* %polly.access.cast.call1698, i64 %polly.access.add.call1454.us
  %polly.access.call1455.load.us = load double, double* %polly.access.call1455.us, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1295457.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1295.us, %151
  %polly.access.Packed_MemRef_call1295458.us = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295457.us
  store double %polly.access.call1455.load.us, double* %polly.access.Packed_MemRef_call1295458.us, align 8
  br label %polly.merge449.us

polly.merge449.us:                                ; preds = %polly.then450.us, %polly.cond448.loopexit.us
  %polly.indvar_next434.us = add nuw nsw i64 %polly.indvar433.us, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar_next434.us, 1000
  br i1 %exitcond1046.not, label %polly.loop_header459.preheader, label %polly.loop_header430.us

polly.cond448.loopexit.us:                        ; preds = %polly.loop_header437.us
  br i1 %.not900, label %polly.merge449.us, label %polly.then450.us

polly.loop_header424.split:                       ; preds = %polly.loop_header424
  br i1 %.not900, label %polly.loop_exit461, label %polly.loop_header430

polly.loop_exit461:                               ; preds = %polly.loop_exit468.loopexit.us, %polly.loop_header424.split, %polly.loop_header459.preheader
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %indvars.iv.next1043 = add nsw i64 %indvars.iv1042, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar427, %143
  br i1 %exitcond1053.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header430:                             ; preds = %polly.loop_header424.split, %polly.loop_header430
  %polly.indvar433 = phi i64 [ %polly.indvar_next434, %polly.loop_header430 ], [ 0, %polly.loop_header424.split ]
  %polly.access.add.call1454 = add nuw nsw i64 %polly.indvar433, %polly.access.mul.call1453
  %polly.access.call1455 = getelementptr double, double* %polly.access.cast.call1698, i64 %polly.access.add.call1454
  %polly.access.call1455.load = load double, double* %polly.access.call1455, align 8, !alias.scope !81, !noalias !88
  %polly.access.mul.Packed_MemRef_call1295456 = mul nuw nsw i64 %polly.indvar433, 1200
  %polly.access.add.Packed_MemRef_call1295457 = add nsw i64 %polly.access.mul.Packed_MemRef_call1295456, %151
  %polly.access.Packed_MemRef_call1295458 = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295457
  store double %polly.access.call1455.load, double* %polly.access.Packed_MemRef_call1295458, align 8
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar_next434, 1000
  br i1 %exitcond1037.not, label %polly.loop_header459.preheader, label %polly.loop_header430

polly.loop_header459.preheader:                   ; preds = %polly.loop_header430, %polly.merge449.us
  %154 = mul nuw nsw i64 %152, 9600
  br i1 %polly.loop_guard4401122, label %polly.loop_header459.us, label %polly.loop_exit461

polly.loop_header459.us:                          ; preds = %polly.loop_header459.preheader, %polly.loop_exit468.loopexit.us
  %polly.indvar462.us = phi i64 [ %polly.indvar_next463.us, %polly.loop_exit468.loopexit.us ], [ 0, %polly.loop_header459.preheader ]
  %polly.access.mul.Packed_MemRef_call1295473.us = mul nuw nsw i64 %polly.indvar462.us, 1200
  %polly.access.add.Packed_MemRef_call2297478.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1295473.us, %152
  %polly.access.Packed_MemRef_call2297479.us = getelementptr double, double* %Packed_MemRef_call2297, i64 %polly.access.add.Packed_MemRef_call2297478.us
  %_p_scalar_480.us = load double, double* %polly.access.Packed_MemRef_call2297479.us, align 8
  %polly.access.add.Packed_MemRef_call1295486.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1295473.us, %151
  %polly.access.Packed_MemRef_call1295487.us = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295486.us
  %_p_scalar_488.us = load double, double* %polly.access.Packed_MemRef_call1295487.us, align 8
  %min.iters.check1270 = icmp ult i64 %150, 4
  br i1 %min.iters.check1270, label %polly.loop_header466.us.preheader, label %vector.ph1271

vector.ph1271:                                    ; preds = %polly.loop_header459.us
  %n.vec1273 = and i64 %150, -4
  %broadcast.splatinsert1279 = insertelement <4 x double> poison, double %_p_scalar_480.us, i32 0
  %broadcast.splat1280 = shufflevector <4 x double> %broadcast.splatinsert1279, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1282 = insertelement <4 x double> poison, double %_p_scalar_488.us, i32 0
  %broadcast.splat1283 = shufflevector <4 x double> %broadcast.splatinsert1282, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1268

vector.body1268:                                  ; preds = %vector.body1268, %vector.ph1271
  %index1274 = phi i64 [ 0, %vector.ph1271 ], [ %index.next1275, %vector.body1268 ]
  %155 = add nuw nsw i64 %index1274, %146
  %156 = add nuw nsw i64 %index1274, %polly.access.mul.Packed_MemRef_call1295473.us
  %157 = getelementptr double, double* %Packed_MemRef_call1295, i64 %156
  %158 = bitcast double* %157 to <4 x double>*
  %wide.load1278 = load <4 x double>, <4 x double>* %158, align 8
  %159 = fmul fast <4 x double> %broadcast.splat1280, %wide.load1278
  %160 = add nuw nsw i64 %155, %polly.access.mul.Packed_MemRef_call1295473.us
  %161 = getelementptr double, double* %Packed_MemRef_call2297, i64 %160
  %162 = bitcast double* %161 to <4 x double>*
  %wide.load1281 = load <4 x double>, <4 x double>* %162, align 8
  %163 = fmul fast <4 x double> %broadcast.splat1283, %wide.load1281
  %164 = shl i64 %155, 3
  %165 = add nuw nsw i64 %164, %154
  %166 = getelementptr i8, i8* %call, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  %wide.load1284 = load <4 x double>, <4 x double>* %167, align 8, !alias.scope !78, !noalias !80
  %168 = fadd fast <4 x double> %163, %159
  %169 = fmul fast <4 x double> %168, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %170 = fadd fast <4 x double> %169, %wide.load1284
  %171 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %170, <4 x double>* %171, align 8, !alias.scope !78, !noalias !80
  %index.next1275 = add i64 %index1274, 4
  %172 = icmp eq i64 %index.next1275, %n.vec1273
  br i1 %172, label %middle.block1266, label %vector.body1268, !llvm.loop !89

middle.block1266:                                 ; preds = %vector.body1268
  %cmp.n1277 = icmp eq i64 %150, %n.vec1273
  br i1 %cmp.n1277, label %polly.loop_exit468.loopexit.us, label %polly.loop_header466.us.preheader

polly.loop_header466.us.preheader:                ; preds = %polly.loop_header459.us, %middle.block1266
  %polly.indvar470.us.ph = phi i64 [ 0, %polly.loop_header459.us ], [ %n.vec1273, %middle.block1266 ]
  br label %polly.loop_header466.us

polly.loop_header466.us:                          ; preds = %polly.loop_header466.us.preheader, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %polly.indvar470.us.ph, %polly.loop_header466.us.preheader ]
  %173 = add nuw nsw i64 %polly.indvar470.us, %146
  %polly.access.add.Packed_MemRef_call1295474.us = add nuw nsw i64 %polly.indvar470.us, %polly.access.mul.Packed_MemRef_call1295473.us
  %polly.access.Packed_MemRef_call1295475.us = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295474.us
  %_p_scalar_476.us = load double, double* %polly.access.Packed_MemRef_call1295475.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_480.us, %_p_scalar_476.us
  %polly.access.add.Packed_MemRef_call2297482.us = add nuw nsw i64 %173, %polly.access.mul.Packed_MemRef_call1295473.us
  %polly.access.Packed_MemRef_call2297483.us = getelementptr double, double* %Packed_MemRef_call2297, i64 %polly.access.add.Packed_MemRef_call2297482.us
  %_p_scalar_484.us = load double, double* %polly.access.Packed_MemRef_call2297483.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_488.us, %_p_scalar_484.us
  %174 = shl i64 %173, 3
  %175 = add nuw nsw i64 %174, %154
  %scevgep489.us = getelementptr i8, i8* %call, i64 %175
  %scevgep489490.us = bitcast i8* %scevgep489.us to double*
  %_p_scalar_491.us = load double, double* %scevgep489490.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_491.us
  store double %p_add42.i79.us, double* %scevgep489490.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar470.us, %smin1047
  br i1 %exitcond1048.not, label %polly.loop_exit468.loopexit.us, label %polly.loop_header466.us, !llvm.loop !90

polly.loop_exit468.loopexit.us:                   ; preds = %polly.loop_header466.us, %middle.block1266
  %polly.indvar_next463.us = add nuw nsw i64 %polly.indvar462.us, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar_next463.us, 1000
  br i1 %exitcond1049.not, label %polly.loop_exit461, label %polly.loop_header459.us

polly.start494:                                   ; preds = %init_array.exit
  %malloccall496 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall498 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header582

polly.exiting495:                                 ; preds = %polly.loop_exit622
  tail call void @free(i8* %malloccall496)
  tail call void @free(i8* %malloccall498)
  br label %kernel_syr2k.exit

polly.loop_header582:                             ; preds = %polly.loop_exit590, %polly.start494
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit590 ], [ 0, %polly.start494 ]
  %polly.indvar585 = phi i64 [ %polly.indvar_next586, %polly.loop_exit590 ], [ 1, %polly.start494 ]
  %176 = add i64 %indvar, 1
  %177 = mul nuw nsw i64 %polly.indvar585, 9600
  %scevgep594 = getelementptr i8, i8* %call, i64 %177
  %min.iters.check1212 = icmp ult i64 %176, 4
  br i1 %min.iters.check1212, label %polly.loop_header588.preheader, label %vector.ph1213

vector.ph1213:                                    ; preds = %polly.loop_header582
  %n.vec1215 = and i64 %176, -4
  br label %vector.body1211

vector.body1211:                                  ; preds = %vector.body1211, %vector.ph1213
  %index1216 = phi i64 [ 0, %vector.ph1213 ], [ %index.next1217, %vector.body1211 ]
  %178 = shl nuw nsw i64 %index1216, 3
  %179 = getelementptr i8, i8* %scevgep594, i64 %178
  %180 = bitcast i8* %179 to <4 x double>*
  %wide.load1220 = load <4 x double>, <4 x double>* %180, align 8, !alias.scope !91, !noalias !93
  %181 = fmul fast <4 x double> %wide.load1220, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %182 = bitcast i8* %179 to <4 x double>*
  store <4 x double> %181, <4 x double>* %182, align 8, !alias.scope !91, !noalias !93
  %index.next1217 = add i64 %index1216, 4
  %183 = icmp eq i64 %index.next1217, %n.vec1215
  br i1 %183, label %middle.block1209, label %vector.body1211, !llvm.loop !98

middle.block1209:                                 ; preds = %vector.body1211
  %cmp.n1219 = icmp eq i64 %176, %n.vec1215
  br i1 %cmp.n1219, label %polly.loop_exit590, label %polly.loop_header588.preheader

polly.loop_header588.preheader:                   ; preds = %polly.loop_header582, %middle.block1209
  %polly.indvar591.ph = phi i64 [ 0, %polly.loop_header582 ], [ %n.vec1215, %middle.block1209 ]
  br label %polly.loop_header588

polly.loop_exit590:                               ; preds = %polly.loop_header588, %middle.block1209
  %polly.indvar_next586 = add nuw nsw i64 %polly.indvar585, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar_next586, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1086.not, label %polly.loop_header598.preheader, label %polly.loop_header582

polly.loop_header598.preheader:                   ; preds = %polly.loop_exit590
  %Packed_MemRef_call1497 = bitcast i8* %malloccall496 to double*
  %Packed_MemRef_call2499 = bitcast i8* %malloccall498 to double*
  br label %polly.loop_header598

polly.loop_header588:                             ; preds = %polly.loop_header588.preheader, %polly.loop_header588
  %polly.indvar591 = phi i64 [ %polly.indvar_next592, %polly.loop_header588 ], [ %polly.indvar591.ph, %polly.loop_header588.preheader ]
  %184 = shl nuw nsw i64 %polly.indvar591, 3
  %scevgep595 = getelementptr i8, i8* %scevgep594, i64 %184
  %scevgep595596 = bitcast i8* %scevgep595 to double*
  %_p_scalar_597 = load double, double* %scevgep595596, align 8, !alias.scope !91, !noalias !93
  %p_mul.i = fmul fast double %_p_scalar_597, 1.200000e+00
  store double %p_mul.i, double* %scevgep595596, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next592 = add nuw nsw i64 %polly.indvar591, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar_next592, %polly.indvar585
  br i1 %exitcond1085.not, label %polly.loop_exit590, label %polly.loop_header588, !llvm.loop !99

polly.loop_header598:                             ; preds = %polly.loop_header598.preheader, %polly.loop_exit606
  %polly.indvar601 = phi i64 [ %polly.indvar_next602, %polly.loop_exit606 ], [ 0, %polly.loop_header598.preheader ]
  %polly.access.mul.Packed_MemRef_call2499 = mul nuw nsw i64 %polly.indvar601, 1200
  br label %polly.loop_header604

polly.loop_exit606:                               ; preds = %polly.loop_header604
  %polly.indvar_next602 = add nuw nsw i64 %polly.indvar601, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar_next602, 1000
  br i1 %exitcond1084.not, label %polly.loop_header614, label %polly.loop_header598

polly.loop_header604:                             ; preds = %polly.loop_header604, %polly.loop_header598
  %polly.indvar607 = phi i64 [ 0, %polly.loop_header598 ], [ %polly.indvar_next608, %polly.loop_header604 ]
  %polly.access.mul.call2611 = mul nuw nsw i64 %polly.indvar607, 1000
  %polly.access.add.call2612 = add nuw nsw i64 %polly.access.mul.call2611, %polly.indvar601
  %polly.access.call2613 = getelementptr double, double* %polly.access.cast.call2708, i64 %polly.access.add.call2612
  %polly.access.call2613.load = load double, double* %polly.access.call2613, align 8, !alias.scope !95, !noalias !100
  %polly.access.add.Packed_MemRef_call2499 = add nuw nsw i64 %polly.indvar607, %polly.access.mul.Packed_MemRef_call2499
  %polly.access.Packed_MemRef_call2499 = getelementptr double, double* %Packed_MemRef_call2499, i64 %polly.access.add.Packed_MemRef_call2499
  store double %polly.access.call2613.load, double* %polly.access.Packed_MemRef_call2499, align 8
  %polly.indvar_next608 = add nuw nsw i64 %polly.indvar607, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next608, 1200
  br i1 %exitcond1083.not, label %polly.loop_exit606, label %polly.loop_header604

polly.loop_header614:                             ; preds = %polly.loop_exit606, %polly.loop_exit622
  %indvars.iv1079 = phi i64 [ %indvars.iv.next1080, %polly.loop_exit622 ], [ 1, %polly.loop_exit606 ]
  %indvars.iv1075 = phi i64 [ %indvars.iv.next1076, %polly.loop_exit622 ], [ 0, %polly.loop_exit606 ]
  %indvars.iv1063 = phi i64 [ %indvars.iv.next1064, %polly.loop_exit622 ], [ 0, %polly.loop_exit606 ]
  %polly.indvar617 = phi i64 [ %polly.indvar_next618, %polly.loop_exit622 ], [ 0, %polly.loop_exit606 ]
  %185 = shl nuw nsw i64 %polly.indvar617, 6
  %smin1077 = call i64 @llvm.smin.i64(i64 %indvars.iv1075, i64 -1136)
  %186 = shl nsw i64 %polly.indvar617, 6
  %187 = add nsw i64 %smin1077, 1199
  br label %polly.loop_header620

polly.loop_exit622:                               ; preds = %polly.loop_exit628
  %polly.indvar_next618 = add nuw nsw i64 %polly.indvar617, 1
  %indvars.iv.next1064 = add nuw nsw i64 %indvars.iv1063, 64
  %indvars.iv.next1076 = add nsw i64 %indvars.iv1075, -64
  %indvars.iv.next1080 = add nuw nsw i64 %indvars.iv1079, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar_next618, 19
  br i1 %exitcond1082.not, label %polly.exiting495, label %polly.loop_header614

polly.loop_header620:                             ; preds = %polly.loop_exit628, %polly.loop_header614
  %indvars.iv1065 = phi i64 [ %indvars.iv.next1066, %polly.loop_exit628 ], [ %indvars.iv1063, %polly.loop_header614 ]
  %polly.indvar623 = phi i64 [ %polly.indvar_next624, %polly.loop_exit628 ], [ 0, %polly.loop_header614 ]
  %188 = mul nsw i64 %polly.indvar623, -64
  %189 = add i64 %185, %188
  %190 = shl nsw i64 %polly.indvar623, 6
  %191 = sub nsw i64 %186, %190
  %192 = add nuw nsw i64 %190, 64
  br label %polly.loop_header626

polly.loop_exit628:                               ; preds = %polly.loop_exit663
  %polly.indvar_next624 = add nuw nsw i64 %polly.indvar623, 1
  %indvars.iv.next1066 = add nsw i64 %indvars.iv1065, -64
  %exitcond1081.not = icmp eq i64 %polly.indvar_next624, %indvars.iv1079
  br i1 %exitcond1081.not, label %polly.loop_exit622, label %polly.loop_header620

polly.loop_header626:                             ; preds = %polly.loop_exit663, %polly.loop_header620
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit663 ], [ %indvars.iv1065, %polly.loop_header620 ]
  %polly.indvar629 = phi i64 [ %polly.indvar_next630, %polly.loop_exit663 ], [ 0, %polly.loop_header620 ]
  %193 = add i64 %189, %polly.indvar629
  %smin1224 = call i64 @llvm.smin.i64(i64 %193, i64 63)
  %194 = add nsw i64 %smin1224, 1
  %smin1072 = call i64 @llvm.smin.i64(i64 %indvars.iv1067, i64 63)
  %195 = add nsw i64 %polly.indvar629, %191
  %polly.loop_guard6421123 = icmp sgt i64 %195, -1
  %196 = add nuw nsw i64 %polly.indvar629, %186
  %.not901 = icmp ult i64 %196, %192
  %polly.access.mul.call1655 = mul nuw nsw i64 %196, 1000
  br i1 %polly.loop_guard6421123, label %polly.loop_header632.us, label %polly.loop_header626.split

polly.loop_header632.us:                          ; preds = %polly.loop_header626, %polly.merge651.us
  %polly.indvar635.us = phi i64 [ %polly.indvar_next636.us, %polly.merge651.us ], [ 0, %polly.loop_header626 ]
  %polly.access.mul.Packed_MemRef_call1497.us = mul nuw nsw i64 %polly.indvar635.us, 1200
  br label %polly.loop_header639.us

polly.loop_header639.us:                          ; preds = %polly.loop_header632.us, %polly.loop_header639.us
  %polly.indvar643.us = phi i64 [ %polly.indvar_next644.us, %polly.loop_header639.us ], [ 0, %polly.loop_header632.us ]
  %197 = add nuw nsw i64 %polly.indvar643.us, %190
  %polly.access.mul.call1647.us = mul nuw nsw i64 %197, 1000
  %polly.access.add.call1648.us = add nuw nsw i64 %polly.access.mul.call1647.us, %polly.indvar635.us
  %polly.access.call1649.us = getelementptr double, double* %polly.access.cast.call1698, i64 %polly.access.add.call1648.us
  %polly.access.call1649.load.us = load double, double* %polly.access.call1649.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1497.us = add nuw nsw i64 %polly.indvar643.us, %polly.access.mul.Packed_MemRef_call1497.us
  %polly.access.Packed_MemRef_call1497.us = getelementptr double, double* %Packed_MemRef_call1497, i64 %polly.access.add.Packed_MemRef_call1497.us
  store double %polly.access.call1649.load.us, double* %polly.access.Packed_MemRef_call1497.us, align 8
  %polly.indvar_next644.us = add nuw nsw i64 %polly.indvar643.us, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar643.us, %smin1072
  br i1 %exitcond1070.not, label %polly.cond650.loopexit.us, label %polly.loop_header639.us

polly.then652.us:                                 ; preds = %polly.cond650.loopexit.us
  %polly.access.add.call1656.us = add nuw nsw i64 %polly.indvar635.us, %polly.access.mul.call1655
  %polly.access.call1657.us = getelementptr double, double* %polly.access.cast.call1698, i64 %polly.access.add.call1656.us
  %polly.access.call1657.load.us = load double, double* %polly.access.call1657.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1497659.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1497.us, %195
  %polly.access.Packed_MemRef_call1497660.us = getelementptr double, double* %Packed_MemRef_call1497, i64 %polly.access.add.Packed_MemRef_call1497659.us
  store double %polly.access.call1657.load.us, double* %polly.access.Packed_MemRef_call1497660.us, align 8
  br label %polly.merge651.us

polly.merge651.us:                                ; preds = %polly.then652.us, %polly.cond650.loopexit.us
  %polly.indvar_next636.us = add nuw nsw i64 %polly.indvar635.us, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar_next636.us, 1000
  br i1 %exitcond1071.not, label %polly.loop_header661.preheader, label %polly.loop_header632.us

polly.cond650.loopexit.us:                        ; preds = %polly.loop_header639.us
  br i1 %.not901, label %polly.merge651.us, label %polly.then652.us

polly.loop_header626.split:                       ; preds = %polly.loop_header626
  br i1 %.not901, label %polly.loop_exit663, label %polly.loop_header632

polly.loop_exit663:                               ; preds = %polly.loop_exit670.loopexit.us, %polly.loop_header626.split, %polly.loop_header661.preheader
  %polly.indvar_next630 = add nuw nsw i64 %polly.indvar629, 1
  %indvars.iv.next1068 = add nsw i64 %indvars.iv1067, 1
  %exitcond1078.not = icmp eq i64 %polly.indvar629, %187
  br i1 %exitcond1078.not, label %polly.loop_exit628, label %polly.loop_header626

polly.loop_header632:                             ; preds = %polly.loop_header626.split, %polly.loop_header632
  %polly.indvar635 = phi i64 [ %polly.indvar_next636, %polly.loop_header632 ], [ 0, %polly.loop_header626.split ]
  %polly.access.add.call1656 = add nuw nsw i64 %polly.indvar635, %polly.access.mul.call1655
  %polly.access.call1657 = getelementptr double, double* %polly.access.cast.call1698, i64 %polly.access.add.call1656
  %polly.access.call1657.load = load double, double* %polly.access.call1657, align 8, !alias.scope !94, !noalias !101
  %polly.access.mul.Packed_MemRef_call1497658 = mul nuw nsw i64 %polly.indvar635, 1200
  %polly.access.add.Packed_MemRef_call1497659 = add nsw i64 %polly.access.mul.Packed_MemRef_call1497658, %195
  %polly.access.Packed_MemRef_call1497660 = getelementptr double, double* %Packed_MemRef_call1497, i64 %polly.access.add.Packed_MemRef_call1497659
  store double %polly.access.call1657.load, double* %polly.access.Packed_MemRef_call1497660, align 8
  %polly.indvar_next636 = add nuw nsw i64 %polly.indvar635, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar_next636, 1000
  br i1 %exitcond1062.not, label %polly.loop_header661.preheader, label %polly.loop_header632

polly.loop_header661.preheader:                   ; preds = %polly.loop_header632, %polly.merge651.us
  %198 = mul nuw nsw i64 %196, 9600
  br i1 %polly.loop_guard6421123, label %polly.loop_header661.us, label %polly.loop_exit663

polly.loop_header661.us:                          ; preds = %polly.loop_header661.preheader, %polly.loop_exit670.loopexit.us
  %polly.indvar664.us = phi i64 [ %polly.indvar_next665.us, %polly.loop_exit670.loopexit.us ], [ 0, %polly.loop_header661.preheader ]
  %polly.access.mul.Packed_MemRef_call1497675.us = mul nuw nsw i64 %polly.indvar664.us, 1200
  %polly.access.add.Packed_MemRef_call2499680.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1497675.us, %196
  %polly.access.Packed_MemRef_call2499681.us = getelementptr double, double* %Packed_MemRef_call2499, i64 %polly.access.add.Packed_MemRef_call2499680.us
  %_p_scalar_682.us = load double, double* %polly.access.Packed_MemRef_call2499681.us, align 8
  %polly.access.add.Packed_MemRef_call1497688.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1497675.us, %195
  %polly.access.Packed_MemRef_call1497689.us = getelementptr double, double* %Packed_MemRef_call1497, i64 %polly.access.add.Packed_MemRef_call1497688.us
  %_p_scalar_690.us = load double, double* %polly.access.Packed_MemRef_call1497689.us, align 8
  %min.iters.check1225 = icmp ult i64 %194, 4
  br i1 %min.iters.check1225, label %polly.loop_header668.us.preheader, label %vector.ph1226

vector.ph1226:                                    ; preds = %polly.loop_header661.us
  %n.vec1228 = and i64 %194, -4
  %broadcast.splatinsert1234 = insertelement <4 x double> poison, double %_p_scalar_682.us, i32 0
  %broadcast.splat1235 = shufflevector <4 x double> %broadcast.splatinsert1234, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1237 = insertelement <4 x double> poison, double %_p_scalar_690.us, i32 0
  %broadcast.splat1238 = shufflevector <4 x double> %broadcast.splatinsert1237, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1223

vector.body1223:                                  ; preds = %vector.body1223, %vector.ph1226
  %index1229 = phi i64 [ 0, %vector.ph1226 ], [ %index.next1230, %vector.body1223 ]
  %199 = add nuw nsw i64 %index1229, %190
  %200 = add nuw nsw i64 %index1229, %polly.access.mul.Packed_MemRef_call1497675.us
  %201 = getelementptr double, double* %Packed_MemRef_call1497, i64 %200
  %202 = bitcast double* %201 to <4 x double>*
  %wide.load1233 = load <4 x double>, <4 x double>* %202, align 8
  %203 = fmul fast <4 x double> %broadcast.splat1235, %wide.load1233
  %204 = add nuw nsw i64 %199, %polly.access.mul.Packed_MemRef_call1497675.us
  %205 = getelementptr double, double* %Packed_MemRef_call2499, i64 %204
  %206 = bitcast double* %205 to <4 x double>*
  %wide.load1236 = load <4 x double>, <4 x double>* %206, align 8
  %207 = fmul fast <4 x double> %broadcast.splat1238, %wide.load1236
  %208 = shl i64 %199, 3
  %209 = add nuw nsw i64 %208, %198
  %210 = getelementptr i8, i8* %call, i64 %209
  %211 = bitcast i8* %210 to <4 x double>*
  %wide.load1239 = load <4 x double>, <4 x double>* %211, align 8, !alias.scope !91, !noalias !93
  %212 = fadd fast <4 x double> %207, %203
  %213 = fmul fast <4 x double> %212, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %214 = fadd fast <4 x double> %213, %wide.load1239
  %215 = bitcast i8* %210 to <4 x double>*
  store <4 x double> %214, <4 x double>* %215, align 8, !alias.scope !91, !noalias !93
  %index.next1230 = add i64 %index1229, 4
  %216 = icmp eq i64 %index.next1230, %n.vec1228
  br i1 %216, label %middle.block1221, label %vector.body1223, !llvm.loop !102

middle.block1221:                                 ; preds = %vector.body1223
  %cmp.n1232 = icmp eq i64 %194, %n.vec1228
  br i1 %cmp.n1232, label %polly.loop_exit670.loopexit.us, label %polly.loop_header668.us.preheader

polly.loop_header668.us.preheader:                ; preds = %polly.loop_header661.us, %middle.block1221
  %polly.indvar672.us.ph = phi i64 [ 0, %polly.loop_header661.us ], [ %n.vec1228, %middle.block1221 ]
  br label %polly.loop_header668.us

polly.loop_header668.us:                          ; preds = %polly.loop_header668.us.preheader, %polly.loop_header668.us
  %polly.indvar672.us = phi i64 [ %polly.indvar_next673.us, %polly.loop_header668.us ], [ %polly.indvar672.us.ph, %polly.loop_header668.us.preheader ]
  %217 = add nuw nsw i64 %polly.indvar672.us, %190
  %polly.access.add.Packed_MemRef_call1497676.us = add nuw nsw i64 %polly.indvar672.us, %polly.access.mul.Packed_MemRef_call1497675.us
  %polly.access.Packed_MemRef_call1497677.us = getelementptr double, double* %Packed_MemRef_call1497, i64 %polly.access.add.Packed_MemRef_call1497676.us
  %_p_scalar_678.us = load double, double* %polly.access.Packed_MemRef_call1497677.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_682.us, %_p_scalar_678.us
  %polly.access.add.Packed_MemRef_call2499684.us = add nuw nsw i64 %217, %polly.access.mul.Packed_MemRef_call1497675.us
  %polly.access.Packed_MemRef_call2499685.us = getelementptr double, double* %Packed_MemRef_call2499, i64 %polly.access.add.Packed_MemRef_call2499684.us
  %_p_scalar_686.us = load double, double* %polly.access.Packed_MemRef_call2499685.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_690.us, %_p_scalar_686.us
  %218 = shl i64 %217, 3
  %219 = add nuw nsw i64 %218, %198
  %scevgep691.us = getelementptr i8, i8* %call, i64 %219
  %scevgep691692.us = bitcast i8* %scevgep691.us to double*
  %_p_scalar_693.us = load double, double* %scevgep691692.us, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_693.us
  store double %p_add42.i.us, double* %scevgep691692.us, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next673.us = add nuw nsw i64 %polly.indvar672.us, 1
  %exitcond1073.not = icmp eq i64 %polly.indvar672.us, %smin1072
  br i1 %exitcond1073.not, label %polly.loop_exit670.loopexit.us, label %polly.loop_header668.us, !llvm.loop !103

polly.loop_exit670.loopexit.us:                   ; preds = %polly.loop_header668.us, %middle.block1221
  %polly.indvar_next665.us = add nuw nsw i64 %polly.indvar664.us, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar_next665.us, 1000
  br i1 %exitcond1074.not, label %polly.loop_exit663, label %polly.loop_header661.us

polly.loop_header820:                             ; preds = %entry, %polly.loop_exit828
  %indvars.iv1111 = phi i64 [ %indvars.iv.next1112, %polly.loop_exit828 ], [ 0, %entry ]
  %polly.indvar823 = phi i64 [ %polly.indvar_next824, %polly.loop_exit828 ], [ 0, %entry ]
  %smin1113 = call i64 @llvm.smin.i64(i64 %indvars.iv1111, i64 -1168)
  %220 = shl nsw i64 %polly.indvar823, 5
  %221 = add nsw i64 %smin1113, 1199
  br label %polly.loop_header826

polly.loop_exit828:                               ; preds = %polly.loop_exit834
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %indvars.iv.next1112 = add nsw i64 %indvars.iv1111, -32
  %exitcond1116.not = icmp eq i64 %polly.indvar_next824, 38
  br i1 %exitcond1116.not, label %polly.loop_header847, label %polly.loop_header820

polly.loop_header826:                             ; preds = %polly.loop_exit834, %polly.loop_header820
  %indvars.iv1107 = phi i64 [ %indvars.iv.next1108, %polly.loop_exit834 ], [ 0, %polly.loop_header820 ]
  %polly.indvar829 = phi i64 [ %polly.indvar_next830, %polly.loop_exit834 ], [ 0, %polly.loop_header820 ]
  %222 = mul nsw i64 %polly.indvar829, -32
  %smin = call i64 @llvm.smin.i64(i64 %222, i64 -1168)
  %223 = add nsw i64 %smin, 1200
  %smin1109 = call i64 @llvm.smin.i64(i64 %indvars.iv1107, i64 -1168)
  %224 = shl nsw i64 %polly.indvar829, 5
  %225 = add nsw i64 %smin1109, 1199
  br label %polly.loop_header832

polly.loop_exit834:                               ; preds = %polly.loop_exit840
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %indvars.iv.next1108 = add nsw i64 %indvars.iv1107, -32
  %exitcond1115.not = icmp eq i64 %polly.indvar_next830, 38
  br i1 %exitcond1115.not, label %polly.loop_exit828, label %polly.loop_header826

polly.loop_header832:                             ; preds = %polly.loop_exit840, %polly.loop_header826
  %polly.indvar835 = phi i64 [ 0, %polly.loop_header826 ], [ %polly.indvar_next836, %polly.loop_exit840 ]
  %226 = add nuw nsw i64 %polly.indvar835, %220
  %227 = trunc i64 %226 to i32
  %228 = mul nuw nsw i64 %226, 9600
  %min.iters.check = icmp eq i64 %223, 0
  br i1 %min.iters.check, label %polly.loop_header838, label %vector.ph1151

vector.ph1151:                                    ; preds = %polly.loop_header832
  %broadcast.splatinsert1158 = insertelement <4 x i64> poison, i64 %224, i32 0
  %broadcast.splat1159 = shufflevector <4 x i64> %broadcast.splatinsert1158, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1160 = insertelement <4 x i32> poison, i32 %227, i32 0
  %broadcast.splat1161 = shufflevector <4 x i32> %broadcast.splatinsert1160, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1150

vector.body1150:                                  ; preds = %vector.body1150, %vector.ph1151
  %index1152 = phi i64 [ 0, %vector.ph1151 ], [ %index.next1153, %vector.body1150 ]
  %vec.ind1156 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1151 ], [ %vec.ind.next1157, %vector.body1150 ]
  %229 = add nuw nsw <4 x i64> %vec.ind1156, %broadcast.splat1159
  %230 = trunc <4 x i64> %229 to <4 x i32>
  %231 = mul <4 x i32> %broadcast.splat1161, %230
  %232 = add <4 x i32> %231, <i32 3, i32 3, i32 3, i32 3>
  %233 = urem <4 x i32> %232, <i32 1200, i32 1200, i32 1200, i32 1200>
  %234 = sitofp <4 x i32> %233 to <4 x double>
  %235 = fmul fast <4 x double> %234, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %236 = extractelement <4 x i64> %229, i32 0
  %237 = shl i64 %236, 3
  %238 = add nuw nsw i64 %237, %228
  %239 = getelementptr i8, i8* %call, i64 %238
  %240 = bitcast i8* %239 to <4 x double>*
  store <4 x double> %235, <4 x double>* %240, align 8, !alias.scope !104, !noalias !106
  %index.next1153 = add i64 %index1152, 4
  %vec.ind.next1157 = add <4 x i64> %vec.ind1156, <i64 4, i64 4, i64 4, i64 4>
  %241 = icmp eq i64 %index.next1153, %223
  br i1 %241, label %polly.loop_exit840, label %vector.body1150, !llvm.loop !109

polly.loop_exit840:                               ; preds = %vector.body1150, %polly.loop_header838
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar835, %221
  br i1 %exitcond1114.not, label %polly.loop_exit834, label %polly.loop_header832

polly.loop_header838:                             ; preds = %polly.loop_header832, %polly.loop_header838
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_header838 ], [ 0, %polly.loop_header832 ]
  %242 = add nuw nsw i64 %polly.indvar841, %224
  %243 = trunc i64 %242 to i32
  %244 = mul i32 %243, %227
  %245 = add i32 %244, 3
  %246 = urem i32 %245, 1200
  %p_conv31.i = sitofp i32 %246 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %247 = shl i64 %242, 3
  %248 = add nuw nsw i64 %247, %228
  %scevgep844 = getelementptr i8, i8* %call, i64 %248
  %scevgep844845 = bitcast i8* %scevgep844 to double*
  store double %p_div33.i, double* %scevgep844845, align 8, !alias.scope !104, !noalias !106
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar841, %225
  br i1 %exitcond1110.not, label %polly.loop_exit840, label %polly.loop_header838, !llvm.loop !110

polly.loop_header847:                             ; preds = %polly.loop_exit828, %polly.loop_exit855
  %indvars.iv1101 = phi i64 [ %indvars.iv.next1102, %polly.loop_exit855 ], [ 0, %polly.loop_exit828 ]
  %polly.indvar850 = phi i64 [ %polly.indvar_next851, %polly.loop_exit855 ], [ 0, %polly.loop_exit828 ]
  %smin1103 = call i64 @llvm.smin.i64(i64 %indvars.iv1101, i64 -1168)
  %249 = shl nsw i64 %polly.indvar850, 5
  %250 = add nsw i64 %smin1103, 1199
  br label %polly.loop_header853

polly.loop_exit855:                               ; preds = %polly.loop_exit861
  %polly.indvar_next851 = add nuw nsw i64 %polly.indvar850, 1
  %indvars.iv.next1102 = add nsw i64 %indvars.iv1101, -32
  %exitcond1106.not = icmp eq i64 %polly.indvar_next851, 38
  br i1 %exitcond1106.not, label %polly.loop_header873, label %polly.loop_header847

polly.loop_header853:                             ; preds = %polly.loop_exit861, %polly.loop_header847
  %indvars.iv1097 = phi i64 [ %indvars.iv.next1098, %polly.loop_exit861 ], [ 0, %polly.loop_header847 ]
  %polly.indvar856 = phi i64 [ %polly.indvar_next857, %polly.loop_exit861 ], [ 0, %polly.loop_header847 ]
  %251 = mul nsw i64 %polly.indvar856, -32
  %smin1165 = call i64 @llvm.smin.i64(i64 %251, i64 -968)
  %252 = add nsw i64 %smin1165, 1000
  %smin1099 = call i64 @llvm.smin.i64(i64 %indvars.iv1097, i64 -968)
  %253 = shl nsw i64 %polly.indvar856, 5
  %254 = add nsw i64 %smin1099, 999
  br label %polly.loop_header859

polly.loop_exit861:                               ; preds = %polly.loop_exit867
  %polly.indvar_next857 = add nuw nsw i64 %polly.indvar856, 1
  %indvars.iv.next1098 = add nsw i64 %indvars.iv1097, -32
  %exitcond1105.not = icmp eq i64 %polly.indvar_next857, 32
  br i1 %exitcond1105.not, label %polly.loop_exit855, label %polly.loop_header853

polly.loop_header859:                             ; preds = %polly.loop_exit867, %polly.loop_header853
  %polly.indvar862 = phi i64 [ 0, %polly.loop_header853 ], [ %polly.indvar_next863, %polly.loop_exit867 ]
  %255 = add nuw nsw i64 %polly.indvar862, %249
  %256 = trunc i64 %255 to i32
  %257 = mul nuw nsw i64 %255, 8000
  %min.iters.check1166 = icmp eq i64 %252, 0
  br i1 %min.iters.check1166, label %polly.loop_header865, label %vector.ph1167

vector.ph1167:                                    ; preds = %polly.loop_header859
  %broadcast.splatinsert1176 = insertelement <4 x i64> poison, i64 %253, i32 0
  %broadcast.splat1177 = shufflevector <4 x i64> %broadcast.splatinsert1176, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1178 = insertelement <4 x i32> poison, i32 %256, i32 0
  %broadcast.splat1179 = shufflevector <4 x i32> %broadcast.splatinsert1178, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1164

vector.body1164:                                  ; preds = %vector.body1164, %vector.ph1167
  %index1170 = phi i64 [ 0, %vector.ph1167 ], [ %index.next1171, %vector.body1164 ]
  %vec.ind1174 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1167 ], [ %vec.ind.next1175, %vector.body1164 ]
  %258 = add nuw nsw <4 x i64> %vec.ind1174, %broadcast.splat1177
  %259 = trunc <4 x i64> %258 to <4 x i32>
  %260 = mul <4 x i32> %broadcast.splat1179, %259
  %261 = add <4 x i32> %260, <i32 2, i32 2, i32 2, i32 2>
  %262 = urem <4 x i32> %261, <i32 1000, i32 1000, i32 1000, i32 1000>
  %263 = sitofp <4 x i32> %262 to <4 x double>
  %264 = fmul fast <4 x double> %263, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %265 = extractelement <4 x i64> %258, i32 0
  %266 = shl i64 %265, 3
  %267 = add nuw nsw i64 %266, %257
  %268 = getelementptr i8, i8* %call2, i64 %267
  %269 = bitcast i8* %268 to <4 x double>*
  store <4 x double> %264, <4 x double>* %269, align 8, !alias.scope !108, !noalias !111
  %index.next1171 = add i64 %index1170, 4
  %vec.ind.next1175 = add <4 x i64> %vec.ind1174, <i64 4, i64 4, i64 4, i64 4>
  %270 = icmp eq i64 %index.next1171, %252
  br i1 %270, label %polly.loop_exit867, label %vector.body1164, !llvm.loop !112

polly.loop_exit867:                               ; preds = %vector.body1164, %polly.loop_header865
  %polly.indvar_next863 = add nuw nsw i64 %polly.indvar862, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar862, %250
  br i1 %exitcond1104.not, label %polly.loop_exit861, label %polly.loop_header859

polly.loop_header865:                             ; preds = %polly.loop_header859, %polly.loop_header865
  %polly.indvar868 = phi i64 [ %polly.indvar_next869, %polly.loop_header865 ], [ 0, %polly.loop_header859 ]
  %271 = add nuw nsw i64 %polly.indvar868, %253
  %272 = trunc i64 %271 to i32
  %273 = mul i32 %272, %256
  %274 = add i32 %273, 2
  %275 = urem i32 %274, 1000
  %p_conv10.i = sitofp i32 %275 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %276 = shl i64 %271, 3
  %277 = add nuw nsw i64 %276, %257
  %scevgep871 = getelementptr i8, i8* %call2, i64 %277
  %scevgep871872 = bitcast i8* %scevgep871 to double*
  store double %p_div12.i, double* %scevgep871872, align 8, !alias.scope !108, !noalias !111
  %polly.indvar_next869 = add nuw nsw i64 %polly.indvar868, 1
  %exitcond1100.not = icmp eq i64 %polly.indvar868, %254
  br i1 %exitcond1100.not, label %polly.loop_exit867, label %polly.loop_header865, !llvm.loop !113

polly.loop_header873:                             ; preds = %polly.loop_exit855, %polly.loop_exit881
  %indvars.iv1091 = phi i64 [ %indvars.iv.next1092, %polly.loop_exit881 ], [ 0, %polly.loop_exit855 ]
  %polly.indvar876 = phi i64 [ %polly.indvar_next877, %polly.loop_exit881 ], [ 0, %polly.loop_exit855 ]
  %smin1093 = call i64 @llvm.smin.i64(i64 %indvars.iv1091, i64 -1168)
  %278 = shl nsw i64 %polly.indvar876, 5
  %279 = add nsw i64 %smin1093, 1199
  br label %polly.loop_header879

polly.loop_exit881:                               ; preds = %polly.loop_exit887
  %polly.indvar_next877 = add nuw nsw i64 %polly.indvar876, 1
  %indvars.iv.next1092 = add nsw i64 %indvars.iv1091, -32
  %exitcond1096.not = icmp eq i64 %polly.indvar_next877, 38
  br i1 %exitcond1096.not, label %init_array.exit, label %polly.loop_header873

polly.loop_header879:                             ; preds = %polly.loop_exit887, %polly.loop_header873
  %indvars.iv1087 = phi i64 [ %indvars.iv.next1088, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %280 = mul nsw i64 %polly.indvar882, -32
  %smin1183 = call i64 @llvm.smin.i64(i64 %280, i64 -968)
  %281 = add nsw i64 %smin1183, 1000
  %smin1089 = call i64 @llvm.smin.i64(i64 %indvars.iv1087, i64 -968)
  %282 = shl nsw i64 %polly.indvar882, 5
  %283 = add nsw i64 %smin1089, 999
  br label %polly.loop_header885

polly.loop_exit887:                               ; preds = %polly.loop_exit893
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %indvars.iv.next1088 = add nsw i64 %indvars.iv1087, -32
  %exitcond1095.not = icmp eq i64 %polly.indvar_next883, 32
  br i1 %exitcond1095.not, label %polly.loop_exit881, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_exit893, %polly.loop_header879
  %polly.indvar888 = phi i64 [ 0, %polly.loop_header879 ], [ %polly.indvar_next889, %polly.loop_exit893 ]
  %284 = add nuw nsw i64 %polly.indvar888, %278
  %285 = trunc i64 %284 to i32
  %286 = mul nuw nsw i64 %284, 8000
  %min.iters.check1184 = icmp eq i64 %281, 0
  br i1 %min.iters.check1184, label %polly.loop_header891, label %vector.ph1185

vector.ph1185:                                    ; preds = %polly.loop_header885
  %broadcast.splatinsert1194 = insertelement <4 x i64> poison, i64 %282, i32 0
  %broadcast.splat1195 = shufflevector <4 x i64> %broadcast.splatinsert1194, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1196 = insertelement <4 x i32> poison, i32 %285, i32 0
  %broadcast.splat1197 = shufflevector <4 x i32> %broadcast.splatinsert1196, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1182

vector.body1182:                                  ; preds = %vector.body1182, %vector.ph1185
  %index1188 = phi i64 [ 0, %vector.ph1185 ], [ %index.next1189, %vector.body1182 ]
  %vec.ind1192 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1185 ], [ %vec.ind.next1193, %vector.body1182 ]
  %287 = add nuw nsw <4 x i64> %vec.ind1192, %broadcast.splat1195
  %288 = trunc <4 x i64> %287 to <4 x i32>
  %289 = mul <4 x i32> %broadcast.splat1197, %288
  %290 = add <4 x i32> %289, <i32 1, i32 1, i32 1, i32 1>
  %291 = urem <4 x i32> %290, <i32 1200, i32 1200, i32 1200, i32 1200>
  %292 = sitofp <4 x i32> %291 to <4 x double>
  %293 = fmul fast <4 x double> %292, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %294 = extractelement <4 x i64> %287, i32 0
  %295 = shl i64 %294, 3
  %296 = add nuw nsw i64 %295, %286
  %297 = getelementptr i8, i8* %call1, i64 %296
  %298 = bitcast i8* %297 to <4 x double>*
  store <4 x double> %293, <4 x double>* %298, align 8, !alias.scope !107, !noalias !114
  %index.next1189 = add i64 %index1188, 4
  %vec.ind.next1193 = add <4 x i64> %vec.ind1192, <i64 4, i64 4, i64 4, i64 4>
  %299 = icmp eq i64 %index.next1189, %281
  br i1 %299, label %polly.loop_exit893, label %vector.body1182, !llvm.loop !115

polly.loop_exit893:                               ; preds = %vector.body1182, %polly.loop_header891
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar888, %279
  br i1 %exitcond1094.not, label %polly.loop_exit887, label %polly.loop_header885

polly.loop_header891:                             ; preds = %polly.loop_header885, %polly.loop_header891
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_header891 ], [ 0, %polly.loop_header885 ]
  %300 = add nuw nsw i64 %polly.indvar894, %282
  %301 = trunc i64 %300 to i32
  %302 = mul i32 %301, %285
  %303 = add i32 %302, 1
  %304 = urem i32 %303, 1200
  %p_conv.i = sitofp i32 %304 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %305 = shl i64 %300, 3
  %306 = add nuw nsw i64 %305, %286
  %scevgep898 = getelementptr i8, i8* %call1, i64 %306
  %scevgep898899 = bitcast i8* %scevgep898 to double*
  store double %p_div.i, double* %scevgep898899, align 8, !alias.scope !107, !noalias !114
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar894, %283
  br i1 %exitcond1090.not, label %polly.loop_exit893, label %polly.loop_header891, !llvm.loop !116
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
!26 = !{!"llvm.loop.tile.size", i32 64}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 2048}
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
