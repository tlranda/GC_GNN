; ModuleID = 'syr2k_exhaustive/mmp_all_XL_3195.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_3195.c"
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
  %call835 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1687 = bitcast i8* %call1 to double*
  %polly.access.call1696 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1696, %call2
  %polly.access.call2716 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2716, %call1
  %2 = or i1 %0, %1
  %polly.access.call736 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call736, %call2
  %4 = icmp ule i8* %polly.access.call2716, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call736, %call1
  %8 = icmp ule i8* %polly.access.call1696, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header809, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1144 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1143 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1142 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1141 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1141, %scevgep1144
  %bound1 = icmp ult i8* %scevgep1143, %scevgep1142
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
  br i1 %exitcond18.not.i, label %vector.ph1148, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1148:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1155 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1156 = shufflevector <4 x i64> %broadcast.splatinsert1155, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1147

vector.body1147:                                  ; preds = %vector.body1147, %vector.ph1148
  %index1149 = phi i64 [ 0, %vector.ph1148 ], [ %index.next1150, %vector.body1147 ]
  %vec.ind1153 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1148 ], [ %vec.ind.next1154, %vector.body1147 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1153, %broadcast.splat1156
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call835, i64 %indvars.iv7.i, i64 %index1149
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1150 = add i64 %index1149, 4
  %vec.ind.next1154 = add <4 x i64> %vec.ind1153, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1150, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1147, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1147
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1148, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit870
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start488, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1210 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1210, label %for.body3.i46.preheader1290, label %vector.ph1211

vector.ph1211:                                    ; preds = %for.body3.i46.preheader
  %n.vec1213 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %vector.ph1211
  %index1214 = phi i64 [ 0, %vector.ph1211 ], [ %index.next1215, %vector.body1209 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call835, i64 %indvars.iv21.i, i64 %index1214
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1215 = add i64 %index1214, 4
  %46 = icmp eq i64 %index.next1215, %n.vec1213
  br i1 %46, label %middle.block1207, label %vector.body1209, !llvm.loop !18

middle.block1207:                                 ; preds = %vector.body1209
  %cmp.n1217 = icmp eq i64 %indvars.iv21.i, %n.vec1213
  br i1 %cmp.n1217, label %for.inc6.i, label %for.body3.i46.preheader1290

for.body3.i46.preheader1290:                      ; preds = %for.body3.i46.preheader, %middle.block1207
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1213, %middle.block1207 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1290, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1290 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call835, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1207, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call835, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting489
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start291, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1233 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1233, label %for.body3.i60.preheader1287, label %vector.ph1234

vector.ph1234:                                    ; preds = %for.body3.i60.preheader
  %n.vec1236 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1232

vector.body1232:                                  ; preds = %vector.body1232, %vector.ph1234
  %index1237 = phi i64 [ 0, %vector.ph1234 ], [ %index.next1238, %vector.body1232 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call835, i64 %indvars.iv21.i52, i64 %index1237
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1241 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1241, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1238 = add i64 %index1237, 4
  %57 = icmp eq i64 %index.next1238, %n.vec1236
  br i1 %57, label %middle.block1230, label %vector.body1232, !llvm.loop !59

middle.block1230:                                 ; preds = %vector.body1232
  %cmp.n1240 = icmp eq i64 %indvars.iv21.i52, %n.vec1236
  br i1 %cmp.n1240, label %for.inc6.i63, label %for.body3.i60.preheader1287

for.body3.i60.preheader1287:                      ; preds = %for.body3.i60.preheader, %middle.block1230
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1236, %middle.block1230 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1287, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1287 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call835, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1230, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call835, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting292
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1259 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1259, label %for.body3.i99.preheader1284, label %vector.ph1260

vector.ph1260:                                    ; preds = %for.body3.i99.preheader
  %n.vec1262 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1258

vector.body1258:                                  ; preds = %vector.body1258, %vector.ph1260
  %index1263 = phi i64 [ 0, %vector.ph1260 ], [ %index.next1264, %vector.body1258 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call835, i64 %indvars.iv21.i91, i64 %index1263
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1267 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1267, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1264 = add i64 %index1263, 4
  %68 = icmp eq i64 %index.next1264, %n.vec1262
  br i1 %68, label %middle.block1256, label %vector.body1258, !llvm.loop !61

middle.block1256:                                 ; preds = %vector.body1258
  %cmp.n1266 = icmp eq i64 %indvars.iv21.i91, %n.vec1262
  br i1 %cmp.n1266, label %for.inc6.i102, label %for.body3.i99.preheader1284

for.body3.i99.preheader1284:                      ; preds = %for.body3.i99.preheader, %middle.block1256
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1262, %middle.block1256 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1284, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1284 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call835, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1256, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call835, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call835, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1271 = phi i64 [ %indvar.next1272, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1271, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1273 = icmp ult i64 %88, 4
  br i1 %min.iters.check1273, label %polly.loop_header191.preheader, label %vector.ph1274

vector.ph1274:                                    ; preds = %polly.loop_header
  %n.vec1276 = and i64 %88, -4
  br label %vector.body1270

vector.body1270:                                  ; preds = %vector.body1270, %vector.ph1274
  %index1277 = phi i64 [ 0, %vector.ph1274 ], [ %index.next1278, %vector.body1270 ]
  %90 = shl nuw nsw i64 %index1277, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1281 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1281, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1278 = add i64 %index1277, 4
  %95 = icmp eq i64 %index.next1278, %n.vec1276
  br i1 %95, label %middle.block1268, label %vector.body1270, !llvm.loop !73

middle.block1268:                                 ; preds = %vector.body1270
  %cmp.n1280 = icmp eq i64 %88, %n.vec1276
  br i1 %cmp.n1280, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1268
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1276, %middle.block1268 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1268
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1272 = add i64 %indvar1271, 1
  br i1 %exitcond1033.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond1032.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1032.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %smin1028 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -968)
  %97 = add nsw i64 %smin1028, 1000
  %98 = shl nsw i64 %polly.indvar202, 5
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %exitcond1031.not = icmp eq i64 %polly.indvar_next203, 32
  br i1 %exitcond1031.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv1020 = phi i64 [ %indvars.iv.next1021, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %polly.loop_exit213 ], [ 15, %polly.loop_header199 ]
  %indvars.iv1014 = phi i64 [ %indvars.iv.next1015, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %99 = shl nuw nsw i64 %indvars.iv1016, 1
  %100 = and i64 %99, 9223372036854775776
  %101 = shl nuw nsw i64 %polly.indvar208, 1
  %102 = mul nuw nsw i64 %polly.indvar208, 7
  %103 = add nuw nsw i64 %102, 15
  %pexp.p_div_q = lshr i64 %103, 4
  %104 = sub nsw i64 %101, %pexp.p_div_q
  %polly.loop_guard = icmp slt i64 %104, 38
  br i1 %polly.loop_guard, label %polly.loop_header211.preheader, label %polly.loop_exit213

polly.loop_header211.preheader:                   ; preds = %polly.loop_header205
  %105 = sub nsw i64 %indvars.iv1020, %100
  %106 = add i64 %indvars.iv1014, %100
  %107 = mul nsw i64 %polly.indvar208, -50
  %108 = mul nuw nsw i64 %polly.indvar208, 50
  %109 = add nsw i64 %107, 1199
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit252, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next1015 = add nsw i64 %indvars.iv1014, -14
  %indvars.iv.next1017 = add nuw nsw i64 %indvars.iv1016, 7
  %indvars.iv.next1021 = add nuw nsw i64 %indvars.iv1020, 14
  %exitcond1030.not = icmp eq i64 %polly.indvar_next209, 24
  br i1 %exitcond1030.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211.preheader, %polly.loop_exit252
  %indvars.iv1022 = phi i64 [ %105, %polly.loop_header211.preheader ], [ %indvars.iv.next1023, %polly.loop_exit252 ]
  %indvars.iv1018 = phi i64 [ %106, %polly.loop_header211.preheader ], [ %indvars.iv.next1019, %polly.loop_exit252 ]
  %polly.indvar214 = phi i64 [ %104, %polly.loop_header211.preheader ], [ %polly.indvar_next215, %polly.loop_exit252 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1018, i64 0)
  %110 = add i64 %smax, %indvars.iv1022
  %111 = shl nsw i64 %polly.indvar214, 5
  %112 = add nsw i64 %111, %107
  %113 = add nsw i64 %112, -1
  %.inv = icmp sgt i64 %112, 49
  %114 = select i1 %.inv, i64 49, i64 %113
  %polly.loop_guard227 = icmp sgt i64 %114, -1
  %115 = icmp sgt i64 %112, 0
  %116 = select i1 %115, i64 %112, i64 0
  %117 = add nsw i64 %112, 31
  %118 = icmp slt i64 %109, %117
  %119 = select i1 %118, i64 %109, i64 %117
  %polly.loop_guard239.not = icmp sgt i64 %116, %119
  br i1 %polly.loop_guard227, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_exit238.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit238.us ], [ 0, %polly.loop_header211 ]
  %120 = add nuw nsw i64 %polly.indvar220.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header224.us

polly.loop_header224.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header224.us
  %polly.indvar228.us = phi i64 [ %polly.indvar_next229.us, %polly.loop_header224.us ], [ 0, %polly.loop_header217.us ]
  %121 = add nuw nsw i64 %polly.indvar228.us, %108
  %polly.access.mul.call1232.us = mul nuw nsw i64 %121, 1000
  %polly.access.add.call1233.us = add nuw nsw i64 %120, %polly.access.mul.call1232.us
  %polly.access.call1234.us = getelementptr double, double* %polly.access.cast.call1687, i64 %polly.access.add.call1233.us
  %polly.access.call1234.load.us = load double, double* %polly.access.call1234.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar228.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1234.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next229.us = add nuw i64 %polly.indvar228.us, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar228.us, %114
  br i1 %exitcond1011.not, label %polly.loop_exit226.loopexit.us, label %polly.loop_header224.us

polly.loop_header236.us:                          ; preds = %polly.loop_exit226.loopexit.us, %polly.loop_header236.us
  %polly.indvar240.us = phi i64 [ %polly.indvar_next241.us, %polly.loop_header236.us ], [ %116, %polly.loop_exit226.loopexit.us ]
  %122 = add nuw nsw i64 %polly.indvar240.us, %108
  %polly.access.mul.call1244.us = mul nsw i64 %122, 1000
  %polly.access.add.call1245.us = add nuw nsw i64 %120, %polly.access.mul.call1244.us
  %polly.access.call1246.us = getelementptr double, double* %polly.access.cast.call1687, i64 %polly.access.add.call1245.us
  %polly.access.call1246.load.us = load double, double* %polly.access.call1246.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1248.us = add nuw nsw i64 %polly.indvar240.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1249.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.us
  store double %polly.access.call1246.load.us, double* %polly.access.Packed_MemRef_call1249.us, align 8
  %polly.indvar_next241.us = add nuw nsw i64 %polly.indvar240.us, 1
  %polly.loop_cond242.not.not.us = icmp slt i64 %polly.indvar240.us, %119
  br i1 %polly.loop_cond242.not.not.us, label %polly.loop_header236.us, label %polly.loop_exit238.us

polly.loop_exit238.us:                            ; preds = %polly.loop_header236.us, %polly.loop_exit226.loopexit.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond1013.not = icmp eq i64 %polly.indvar_next221.us, %97
  br i1 %exitcond1013.not, label %polly.loop_header250.preheader, label %polly.loop_header217.us

polly.loop_exit226.loopexit.us:                   ; preds = %polly.loop_header224.us
  br i1 %polly.loop_guard239.not, label %polly.loop_exit238.us, label %polly.loop_header236.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  br i1 %polly.loop_guard239.not, label %polly.loop_header250.preheader, label %polly.loop_header217

polly.loop_exit252:                               ; preds = %polly.loop_exit259, %polly.loop_header250.preheader
  %polly.indvar_next215 = add nsw i64 %polly.indvar214, 1
  %polly.loop_cond216 = icmp slt i64 %polly.indvar214, 37
  %indvars.iv.next1019 = add i64 %indvars.iv1018, -32
  %indvars.iv.next1023 = add i64 %indvars.iv1022, 32
  br i1 %polly.loop_cond216, label %polly.loop_header211, label %polly.loop_exit213

polly.loop_header217:                             ; preds = %polly.loop_header211.split, %polly.loop_exit238
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit238 ], [ 0, %polly.loop_header211.split ]
  %123 = add nuw nsw i64 %polly.indvar220, %98
  %polly.access.mul.Packed_MemRef_call1247 = mul nuw nsw i64 %polly.indvar220, 1200
  br label %polly.loop_header236

polly.loop_exit238:                               ; preds = %polly.loop_header236
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %97
  br i1 %exitcond.not, label %polly.loop_header250.preheader, label %polly.loop_header217

polly.loop_header250.preheader:                   ; preds = %polly.loop_exit238, %polly.loop_exit238.us, %polly.loop_header211.split
  %124 = sub nsw i64 %108, %111
  %125 = icmp sgt i64 %124, 0
  %126 = select i1 %125, i64 %124, i64 0
  %127 = mul nsw i64 %polly.indvar214, -32
  %128 = icmp slt i64 %127, -1168
  %129 = select i1 %128, i64 %127, i64 -1168
  %130 = add nsw i64 %129, 1199
  %polly.loop_guard260.not = icmp sgt i64 %126, %130
  br i1 %polly.loop_guard260.not, label %polly.loop_exit252, label %polly.loop_header250

polly.loop_header236:                             ; preds = %polly.loop_header217, %polly.loop_header236
  %polly.indvar240 = phi i64 [ %polly.indvar_next241, %polly.loop_header236 ], [ %116, %polly.loop_header217 ]
  %131 = add nuw nsw i64 %polly.indvar240, %108
  %polly.access.mul.call1244 = mul nsw i64 %131, 1000
  %polly.access.add.call1245 = add nuw nsw i64 %123, %polly.access.mul.call1244
  %polly.access.call1246 = getelementptr double, double* %polly.access.cast.call1687, i64 %polly.access.add.call1245
  %polly.access.call1246.load = load double, double* %polly.access.call1246, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1248 = add nuw nsw i64 %polly.indvar240, %polly.access.mul.Packed_MemRef_call1247
  %polly.access.Packed_MemRef_call1249 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248
  store double %polly.access.call1246.load, double* %polly.access.Packed_MemRef_call1249, align 8
  %polly.indvar_next241 = add nuw nsw i64 %polly.indvar240, 1
  %polly.loop_cond242.not.not = icmp slt i64 %polly.indvar240, %119
  br i1 %polly.loop_cond242.not.not, label %polly.loop_header236, label %polly.loop_exit238

polly.loop_header250:                             ; preds = %polly.loop_header250.preheader, %polly.loop_exit259
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_exit259 ], [ 0, %polly.loop_header250.preheader ]
  %132 = add nuw nsw i64 %polly.indvar253, %98
  %polly.access.mul.Packed_MemRef_call1272 = mul nuw nsw i64 %polly.indvar253, 1200
  %133 = shl i64 %132, 3
  br label %polly.loop_header257

polly.loop_exit259:                               ; preds = %polly.loop_exit267
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %exitcond1029.not = icmp eq i64 %polly.indvar_next254, %97
  br i1 %exitcond1029.not, label %polly.loop_exit252, label %polly.loop_header250

polly.loop_header257:                             ; preds = %polly.loop_header250, %polly.loop_exit267
  %indvars.iv1024 = phi i64 [ %110, %polly.loop_header250 ], [ %indvars.iv.next1025, %polly.loop_exit267 ]
  %polly.indvar261 = phi i64 [ %126, %polly.loop_header250 ], [ %polly.indvar_next262, %polly.loop_exit267 ]
  %smin1026 = call i64 @llvm.smin.i64(i64 %indvars.iv1024, i64 49)
  %134 = add nsw i64 %polly.indvar261, %112
  %polly.loop_guard2681127 = icmp sgt i64 %134, -1
  br i1 %polly.loop_guard2681127, label %polly.loop_header265.preheader, label %polly.loop_exit267

polly.loop_header265.preheader:                   ; preds = %polly.loop_header257
  %135 = add nsw i64 %polly.indvar261, %111
  %136 = mul i64 %135, 8000
  %137 = add i64 %136, %133
  %scevgep276 = getelementptr i8, i8* %call2, i64 %137
  %scevgep276277 = bitcast i8* %scevgep276 to double*
  %_p_scalar_278 = load double, double* %scevgep276277, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1283 = add nsw i64 %134, %polly.access.mul.Packed_MemRef_call1272
  %polly.access.Packed_MemRef_call1284 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1283
  %_p_scalar_285 = load double, double* %polly.access.Packed_MemRef_call1284, align 8
  %138 = mul i64 %135, 9600
  br label %polly.loop_header265

polly.loop_exit267:                               ; preds = %polly.loop_header265, %polly.loop_header257
  %polly.indvar_next262 = add nuw nsw i64 %polly.indvar261, 1
  %polly.loop_cond263.not.not = icmp slt i64 %polly.indvar261, %130
  %indvars.iv.next1025 = add i64 %indvars.iv1024, 1
  br i1 %polly.loop_cond263.not.not, label %polly.loop_header257, label %polly.loop_exit259

polly.loop_header265:                             ; preds = %polly.loop_header265.preheader, %polly.loop_header265
  %polly.indvar269 = phi i64 [ %polly.indvar_next270, %polly.loop_header265 ], [ 0, %polly.loop_header265.preheader ]
  %139 = add nuw nsw i64 %polly.indvar269, %108
  %polly.access.add.Packed_MemRef_call1273 = add nuw nsw i64 %polly.indvar269, %polly.access.mul.Packed_MemRef_call1272
  %polly.access.Packed_MemRef_call1274 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273
  %_p_scalar_275 = load double, double* %polly.access.Packed_MemRef_call1274, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_278, %_p_scalar_275
  %140 = mul nuw nsw i64 %139, 8000
  %141 = add nuw nsw i64 %140, %133
  %scevgep279 = getelementptr i8, i8* %call2, i64 %141
  %scevgep279280 = bitcast i8* %scevgep279 to double*
  %_p_scalar_281 = load double, double* %scevgep279280, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114 = fmul fast double %_p_scalar_285, %_p_scalar_281
  %142 = shl i64 %139, 3
  %143 = add i64 %142, %138
  %scevgep286 = getelementptr i8, i8* %call, i64 %143
  %scevgep286287 = bitcast i8* %scevgep286 to double*
  %_p_scalar_288 = load double, double* %scevgep286287, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_288
  store double %p_add42.i118, double* %scevgep286287, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next270 = add nuw nsw i64 %polly.indvar269, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar269, %smin1026
  br i1 %exitcond1027.not, label %polly.loop_exit267, label %polly.loop_header265

polly.start291:                                   ; preds = %kernel_syr2k.exit
  %malloccall293 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header377

polly.exiting292:                                 ; preds = %polly.loop_exit401
  tail call void @free(i8* %malloccall293)
  br label %kernel_syr2k.exit90

polly.loop_header377:                             ; preds = %polly.loop_exit385, %polly.start291
  %indvar1245 = phi i64 [ %indvar.next1246, %polly.loop_exit385 ], [ 0, %polly.start291 ]
  %polly.indvar380 = phi i64 [ %polly.indvar_next381, %polly.loop_exit385 ], [ 1, %polly.start291 ]
  %144 = add i64 %indvar1245, 1
  %145 = mul nuw nsw i64 %polly.indvar380, 9600
  %scevgep389 = getelementptr i8, i8* %call, i64 %145
  %min.iters.check1247 = icmp ult i64 %144, 4
  br i1 %min.iters.check1247, label %polly.loop_header383.preheader, label %vector.ph1248

vector.ph1248:                                    ; preds = %polly.loop_header377
  %n.vec1250 = and i64 %144, -4
  br label %vector.body1244

vector.body1244:                                  ; preds = %vector.body1244, %vector.ph1248
  %index1251 = phi i64 [ 0, %vector.ph1248 ], [ %index.next1252, %vector.body1244 ]
  %146 = shl nuw nsw i64 %index1251, 3
  %147 = getelementptr i8, i8* %scevgep389, i64 %146
  %148 = bitcast i8* %147 to <4 x double>*
  %wide.load1255 = load <4 x double>, <4 x double>* %148, align 8, !alias.scope !78, !noalias !80
  %149 = fmul fast <4 x double> %wide.load1255, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %150 = bitcast i8* %147 to <4 x double>*
  store <4 x double> %149, <4 x double>* %150, align 8, !alias.scope !78, !noalias !80
  %index.next1252 = add i64 %index1251, 4
  %151 = icmp eq i64 %index.next1252, %n.vec1250
  br i1 %151, label %middle.block1242, label %vector.body1244, !llvm.loop !84

middle.block1242:                                 ; preds = %vector.body1244
  %cmp.n1254 = icmp eq i64 %144, %n.vec1250
  br i1 %cmp.n1254, label %polly.loop_exit385, label %polly.loop_header383.preheader

polly.loop_header383.preheader:                   ; preds = %polly.loop_header377, %middle.block1242
  %polly.indvar386.ph = phi i64 [ 0, %polly.loop_header377 ], [ %n.vec1250, %middle.block1242 ]
  br label %polly.loop_header383

polly.loop_exit385:                               ; preds = %polly.loop_header383, %middle.block1242
  %polly.indvar_next381 = add nuw nsw i64 %polly.indvar380, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar_next381, 1200
  %indvar.next1246 = add i64 %indvar1245, 1
  br i1 %exitcond1061.not, label %polly.loop_header393.preheader, label %polly.loop_header377

polly.loop_header393.preheader:                   ; preds = %polly.loop_exit385
  %Packed_MemRef_call1294 = bitcast i8* %malloccall293 to double*
  br label %polly.loop_header393

polly.loop_header383:                             ; preds = %polly.loop_header383.preheader, %polly.loop_header383
  %polly.indvar386 = phi i64 [ %polly.indvar_next387, %polly.loop_header383 ], [ %polly.indvar386.ph, %polly.loop_header383.preheader ]
  %152 = shl nuw nsw i64 %polly.indvar386, 3
  %scevgep390 = getelementptr i8, i8* %scevgep389, i64 %152
  %scevgep390391 = bitcast i8* %scevgep390 to double*
  %_p_scalar_392 = load double, double* %scevgep390391, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_392, 1.200000e+00
  store double %p_mul.i57, double* %scevgep390391, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next387 = add nuw nsw i64 %polly.indvar386, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar_next387, %polly.indvar380
  br i1 %exitcond1060.not, label %polly.loop_exit385, label %polly.loop_header383, !llvm.loop !85

polly.loop_header393:                             ; preds = %polly.loop_header393.preheader, %polly.loop_exit401
  %indvars.iv1034 = phi i64 [ 0, %polly.loop_header393.preheader ], [ %indvars.iv.next1035, %polly.loop_exit401 ]
  %polly.indvar396 = phi i64 [ 0, %polly.loop_header393.preheader ], [ %polly.indvar_next397, %polly.loop_exit401 ]
  %smin1056 = call i64 @llvm.smin.i64(i64 %indvars.iv1034, i64 -968)
  %153 = add nsw i64 %smin1056, 1000
  %154 = shl nsw i64 %polly.indvar396, 5
  br label %polly.loop_header399

polly.loop_exit401:                               ; preds = %polly.loop_exit409
  %polly.indvar_next397 = add nuw nsw i64 %polly.indvar396, 1
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, -32
  %exitcond1059.not = icmp eq i64 %polly.indvar_next397, 32
  br i1 %exitcond1059.not, label %polly.exiting292, label %polly.loop_header393

polly.loop_header399:                             ; preds = %polly.loop_exit409, %polly.loop_header393
  %indvars.iv1048 = phi i64 [ %indvars.iv.next1049, %polly.loop_exit409 ], [ 0, %polly.loop_header393 ]
  %indvars.iv1043 = phi i64 [ %indvars.iv.next1044, %polly.loop_exit409 ], [ 15, %polly.loop_header393 ]
  %indvars.iv1041 = phi i64 [ %indvars.iv.next1042, %polly.loop_exit409 ], [ 0, %polly.loop_header393 ]
  %polly.indvar402 = phi i64 [ %polly.indvar_next403, %polly.loop_exit409 ], [ 0, %polly.loop_header393 ]
  %155 = shl nuw nsw i64 %indvars.iv1043, 1
  %156 = and i64 %155, 9223372036854775776
  %157 = shl nuw nsw i64 %polly.indvar402, 1
  %158 = mul nuw nsw i64 %polly.indvar402, 7
  %159 = add nuw nsw i64 %158, 15
  %pexp.p_div_q405 = lshr i64 %159, 4
  %160 = sub nsw i64 %157, %pexp.p_div_q405
  %polly.loop_guard410 = icmp slt i64 %160, 38
  br i1 %polly.loop_guard410, label %polly.loop_header407.preheader, label %polly.loop_exit409

polly.loop_header407.preheader:                   ; preds = %polly.loop_header399
  %161 = sub nsw i64 %indvars.iv1048, %156
  %162 = add i64 %indvars.iv1041, %156
  %163 = mul nsw i64 %polly.indvar402, -50
  %164 = mul nuw nsw i64 %polly.indvar402, 50
  %165 = add nsw i64 %163, 1199
  br label %polly.loop_header407

polly.loop_exit409:                               ; preds = %polly.loop_exit449, %polly.loop_header399
  %polly.indvar_next403 = add nuw nsw i64 %polly.indvar402, 1
  %indvars.iv.next1042 = add nsw i64 %indvars.iv1041, -14
  %indvars.iv.next1044 = add nuw nsw i64 %indvars.iv1043, 7
  %indvars.iv.next1049 = add nuw nsw i64 %indvars.iv1048, 14
  %exitcond1058.not = icmp eq i64 %polly.indvar_next403, 24
  br i1 %exitcond1058.not, label %polly.loop_exit401, label %polly.loop_header399

polly.loop_header407:                             ; preds = %polly.loop_header407.preheader, %polly.loop_exit449
  %indvars.iv1050 = phi i64 [ %161, %polly.loop_header407.preheader ], [ %indvars.iv.next1051, %polly.loop_exit449 ]
  %indvars.iv1045 = phi i64 [ %162, %polly.loop_header407.preheader ], [ %indvars.iv.next1046, %polly.loop_exit449 ]
  %polly.indvar411 = phi i64 [ %160, %polly.loop_header407.preheader ], [ %polly.indvar_next412, %polly.loop_exit449 ]
  %smax1047 = call i64 @llvm.smax.i64(i64 %indvars.iv1045, i64 0)
  %166 = add i64 %smax1047, %indvars.iv1050
  %167 = shl nsw i64 %polly.indvar411, 5
  %168 = add nsw i64 %167, %163
  %169 = add nsw i64 %168, -1
  %.inv889 = icmp sgt i64 %168, 49
  %170 = select i1 %.inv889, i64 49, i64 %169
  %polly.loop_guard424 = icmp sgt i64 %170, -1
  %171 = icmp sgt i64 %168, 0
  %172 = select i1 %171, i64 %168, i64 0
  %173 = add nsw i64 %168, 31
  %174 = icmp slt i64 %165, %173
  %175 = select i1 %174, i64 %165, i64 %173
  %polly.loop_guard436.not = icmp sgt i64 %172, %175
  br i1 %polly.loop_guard424, label %polly.loop_header414.us, label %polly.loop_header407.split

polly.loop_header414.us:                          ; preds = %polly.loop_header407, %polly.loop_exit435.us
  %polly.indvar417.us = phi i64 [ %polly.indvar_next418.us, %polly.loop_exit435.us ], [ 0, %polly.loop_header407 ]
  %176 = add nuw nsw i64 %polly.indvar417.us, %154
  %polly.access.mul.Packed_MemRef_call1294.us = mul nuw nsw i64 %polly.indvar417.us, 1200
  br label %polly.loop_header421.us

polly.loop_header421.us:                          ; preds = %polly.loop_header414.us, %polly.loop_header421.us
  %polly.indvar425.us = phi i64 [ %polly.indvar_next426.us, %polly.loop_header421.us ], [ 0, %polly.loop_header414.us ]
  %177 = add nuw nsw i64 %polly.indvar425.us, %164
  %polly.access.mul.call1429.us = mul nuw nsw i64 %177, 1000
  %polly.access.add.call1430.us = add nuw nsw i64 %176, %polly.access.mul.call1429.us
  %polly.access.call1431.us = getelementptr double, double* %polly.access.cast.call1687, i64 %polly.access.add.call1430.us
  %polly.access.call1431.load.us = load double, double* %polly.access.call1431.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1294.us = add nuw nsw i64 %polly.indvar425.us, %polly.access.mul.Packed_MemRef_call1294.us
  %polly.access.Packed_MemRef_call1294.us = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294.us
  store double %polly.access.call1431.load.us, double* %polly.access.Packed_MemRef_call1294.us, align 8
  %polly.indvar_next426.us = add nuw i64 %polly.indvar425.us, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar425.us, %170
  br i1 %exitcond1038.not, label %polly.loop_exit423.loopexit.us, label %polly.loop_header421.us

polly.loop_header433.us:                          ; preds = %polly.loop_exit423.loopexit.us, %polly.loop_header433.us
  %polly.indvar437.us = phi i64 [ %polly.indvar_next438.us, %polly.loop_header433.us ], [ %172, %polly.loop_exit423.loopexit.us ]
  %178 = add nuw nsw i64 %polly.indvar437.us, %164
  %polly.access.mul.call1441.us = mul nsw i64 %178, 1000
  %polly.access.add.call1442.us = add nuw nsw i64 %176, %polly.access.mul.call1441.us
  %polly.access.call1443.us = getelementptr double, double* %polly.access.cast.call1687, i64 %polly.access.add.call1442.us
  %polly.access.call1443.load.us = load double, double* %polly.access.call1443.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1294445.us = add nuw nsw i64 %polly.indvar437.us, %polly.access.mul.Packed_MemRef_call1294.us
  %polly.access.Packed_MemRef_call1294446.us = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294445.us
  store double %polly.access.call1443.load.us, double* %polly.access.Packed_MemRef_call1294446.us, align 8
  %polly.indvar_next438.us = add nuw nsw i64 %polly.indvar437.us, 1
  %polly.loop_cond439.not.not.us = icmp slt i64 %polly.indvar437.us, %175
  br i1 %polly.loop_cond439.not.not.us, label %polly.loop_header433.us, label %polly.loop_exit435.us

polly.loop_exit435.us:                            ; preds = %polly.loop_header433.us, %polly.loop_exit423.loopexit.us
  %polly.indvar_next418.us = add nuw nsw i64 %polly.indvar417.us, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar_next418.us, %153
  br i1 %exitcond1040.not, label %polly.loop_header447.preheader, label %polly.loop_header414.us

polly.loop_exit423.loopexit.us:                   ; preds = %polly.loop_header421.us
  br i1 %polly.loop_guard436.not, label %polly.loop_exit435.us, label %polly.loop_header433.us

polly.loop_header407.split:                       ; preds = %polly.loop_header407
  br i1 %polly.loop_guard436.not, label %polly.loop_header447.preheader, label %polly.loop_header414

polly.loop_exit449:                               ; preds = %polly.loop_exit456, %polly.loop_header447.preheader
  %polly.indvar_next412 = add nsw i64 %polly.indvar411, 1
  %polly.loop_cond413 = icmp slt i64 %polly.indvar411, 37
  %indvars.iv.next1046 = add i64 %indvars.iv1045, -32
  %indvars.iv.next1051 = add i64 %indvars.iv1050, 32
  br i1 %polly.loop_cond413, label %polly.loop_header407, label %polly.loop_exit409

polly.loop_header414:                             ; preds = %polly.loop_header407.split, %polly.loop_exit435
  %polly.indvar417 = phi i64 [ %polly.indvar_next418, %polly.loop_exit435 ], [ 0, %polly.loop_header407.split ]
  %179 = add nuw nsw i64 %polly.indvar417, %154
  %polly.access.mul.Packed_MemRef_call1294444 = mul nuw nsw i64 %polly.indvar417, 1200
  br label %polly.loop_header433

polly.loop_exit435:                               ; preds = %polly.loop_header433
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar_next418, %153
  br i1 %exitcond1037.not, label %polly.loop_header447.preheader, label %polly.loop_header414

polly.loop_header447.preheader:                   ; preds = %polly.loop_exit435, %polly.loop_exit435.us, %polly.loop_header407.split
  %180 = sub nsw i64 %164, %167
  %181 = icmp sgt i64 %180, 0
  %182 = select i1 %181, i64 %180, i64 0
  %183 = mul nsw i64 %polly.indvar411, -32
  %184 = icmp slt i64 %183, -1168
  %185 = select i1 %184, i64 %183, i64 -1168
  %186 = add nsw i64 %185, 1199
  %polly.loop_guard457.not = icmp sgt i64 %182, %186
  br i1 %polly.loop_guard457.not, label %polly.loop_exit449, label %polly.loop_header447

polly.loop_header433:                             ; preds = %polly.loop_header414, %polly.loop_header433
  %polly.indvar437 = phi i64 [ %polly.indvar_next438, %polly.loop_header433 ], [ %172, %polly.loop_header414 ]
  %187 = add nuw nsw i64 %polly.indvar437, %164
  %polly.access.mul.call1441 = mul nsw i64 %187, 1000
  %polly.access.add.call1442 = add nuw nsw i64 %179, %polly.access.mul.call1441
  %polly.access.call1443 = getelementptr double, double* %polly.access.cast.call1687, i64 %polly.access.add.call1442
  %polly.access.call1443.load = load double, double* %polly.access.call1443, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1294445 = add nuw nsw i64 %polly.indvar437, %polly.access.mul.Packed_MemRef_call1294444
  %polly.access.Packed_MemRef_call1294446 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294445
  store double %polly.access.call1443.load, double* %polly.access.Packed_MemRef_call1294446, align 8
  %polly.indvar_next438 = add nuw nsw i64 %polly.indvar437, 1
  %polly.loop_cond439.not.not = icmp slt i64 %polly.indvar437, %175
  br i1 %polly.loop_cond439.not.not, label %polly.loop_header433, label %polly.loop_exit435

polly.loop_header447:                             ; preds = %polly.loop_header447.preheader, %polly.loop_exit456
  %polly.indvar450 = phi i64 [ %polly.indvar_next451, %polly.loop_exit456 ], [ 0, %polly.loop_header447.preheader ]
  %188 = add nuw nsw i64 %polly.indvar450, %154
  %polly.access.mul.Packed_MemRef_call1294469 = mul nuw nsw i64 %polly.indvar450, 1200
  %189 = shl i64 %188, 3
  br label %polly.loop_header454

polly.loop_exit456:                               ; preds = %polly.loop_exit464
  %polly.indvar_next451 = add nuw nsw i64 %polly.indvar450, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar_next451, %153
  br i1 %exitcond1057.not, label %polly.loop_exit449, label %polly.loop_header447

polly.loop_header454:                             ; preds = %polly.loop_header447, %polly.loop_exit464
  %indvars.iv1052 = phi i64 [ %166, %polly.loop_header447 ], [ %indvars.iv.next1053, %polly.loop_exit464 ]
  %polly.indvar458 = phi i64 [ %182, %polly.loop_header447 ], [ %polly.indvar_next459, %polly.loop_exit464 ]
  %smin1054 = call i64 @llvm.smin.i64(i64 %indvars.iv1052, i64 49)
  %190 = add nsw i64 %polly.indvar458, %168
  %polly.loop_guard4651128 = icmp sgt i64 %190, -1
  br i1 %polly.loop_guard4651128, label %polly.loop_header462.preheader, label %polly.loop_exit464

polly.loop_header462.preheader:                   ; preds = %polly.loop_header454
  %191 = add nsw i64 %polly.indvar458, %167
  %192 = mul i64 %191, 8000
  %193 = add i64 %192, %189
  %scevgep473 = getelementptr i8, i8* %call2, i64 %193
  %scevgep473474 = bitcast i8* %scevgep473 to double*
  %_p_scalar_475 = load double, double* %scevgep473474, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1294480 = add nsw i64 %190, %polly.access.mul.Packed_MemRef_call1294469
  %polly.access.Packed_MemRef_call1294481 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294480
  %_p_scalar_482 = load double, double* %polly.access.Packed_MemRef_call1294481, align 8
  %194 = mul i64 %191, 9600
  br label %polly.loop_header462

polly.loop_exit464:                               ; preds = %polly.loop_header462, %polly.loop_header454
  %polly.indvar_next459 = add nuw nsw i64 %polly.indvar458, 1
  %polly.loop_cond460.not.not = icmp slt i64 %polly.indvar458, %186
  %indvars.iv.next1053 = add i64 %indvars.iv1052, 1
  br i1 %polly.loop_cond460.not.not, label %polly.loop_header454, label %polly.loop_exit456

polly.loop_header462:                             ; preds = %polly.loop_header462.preheader, %polly.loop_header462
  %polly.indvar466 = phi i64 [ %polly.indvar_next467, %polly.loop_header462 ], [ 0, %polly.loop_header462.preheader ]
  %195 = add nuw nsw i64 %polly.indvar466, %164
  %polly.access.add.Packed_MemRef_call1294470 = add nuw nsw i64 %polly.indvar466, %polly.access.mul.Packed_MemRef_call1294469
  %polly.access.Packed_MemRef_call1294471 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294470
  %_p_scalar_472 = load double, double* %polly.access.Packed_MemRef_call1294471, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_475, %_p_scalar_472
  %196 = mul nuw nsw i64 %195, 8000
  %197 = add nuw nsw i64 %196, %189
  %scevgep476 = getelementptr i8, i8* %call2, i64 %197
  %scevgep476477 = bitcast i8* %scevgep476 to double*
  %_p_scalar_478 = load double, double* %scevgep476477, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75 = fmul fast double %_p_scalar_482, %_p_scalar_478
  %198 = shl i64 %195, 3
  %199 = add i64 %198, %194
  %scevgep483 = getelementptr i8, i8* %call, i64 %199
  %scevgep483484 = bitcast i8* %scevgep483 to double*
  %_p_scalar_485 = load double, double* %scevgep483484, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_485
  store double %p_add42.i79, double* %scevgep483484, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next467 = add nuw nsw i64 %polly.indvar466, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar466, %smin1054
  br i1 %exitcond1055.not, label %polly.loop_exit464, label %polly.loop_header462

polly.start488:                                   ; preds = %init_array.exit
  %malloccall490 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header574

polly.exiting489:                                 ; preds = %polly.loop_exit598
  tail call void @free(i8* %malloccall490)
  br label %kernel_syr2k.exit

polly.loop_header574:                             ; preds = %polly.loop_exit582, %polly.start488
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit582 ], [ 0, %polly.start488 ]
  %polly.indvar577 = phi i64 [ %polly.indvar_next578, %polly.loop_exit582 ], [ 1, %polly.start488 ]
  %200 = add i64 %indvar, 1
  %201 = mul nuw nsw i64 %polly.indvar577, 9600
  %scevgep586 = getelementptr i8, i8* %call, i64 %201
  %min.iters.check1221 = icmp ult i64 %200, 4
  br i1 %min.iters.check1221, label %polly.loop_header580.preheader, label %vector.ph1222

vector.ph1222:                                    ; preds = %polly.loop_header574
  %n.vec1224 = and i64 %200, -4
  br label %vector.body1220

vector.body1220:                                  ; preds = %vector.body1220, %vector.ph1222
  %index1225 = phi i64 [ 0, %vector.ph1222 ], [ %index.next1226, %vector.body1220 ]
  %202 = shl nuw nsw i64 %index1225, 3
  %203 = getelementptr i8, i8* %scevgep586, i64 %202
  %204 = bitcast i8* %203 to <4 x double>*
  %wide.load1229 = load <4 x double>, <4 x double>* %204, align 8, !alias.scope !88, !noalias !90
  %205 = fmul fast <4 x double> %wide.load1229, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %206 = bitcast i8* %203 to <4 x double>*
  store <4 x double> %205, <4 x double>* %206, align 8, !alias.scope !88, !noalias !90
  %index.next1226 = add i64 %index1225, 4
  %207 = icmp eq i64 %index.next1226, %n.vec1224
  br i1 %207, label %middle.block1218, label %vector.body1220, !llvm.loop !94

middle.block1218:                                 ; preds = %vector.body1220
  %cmp.n1228 = icmp eq i64 %200, %n.vec1224
  br i1 %cmp.n1228, label %polly.loop_exit582, label %polly.loop_header580.preheader

polly.loop_header580.preheader:                   ; preds = %polly.loop_header574, %middle.block1218
  %polly.indvar583.ph = phi i64 [ 0, %polly.loop_header574 ], [ %n.vec1224, %middle.block1218 ]
  br label %polly.loop_header580

polly.loop_exit582:                               ; preds = %polly.loop_header580, %middle.block1218
  %polly.indvar_next578 = add nuw nsw i64 %polly.indvar577, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next578, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1089.not, label %polly.loop_header590.preheader, label %polly.loop_header574

polly.loop_header590.preheader:                   ; preds = %polly.loop_exit582
  %Packed_MemRef_call1491 = bitcast i8* %malloccall490 to double*
  br label %polly.loop_header590

polly.loop_header580:                             ; preds = %polly.loop_header580.preheader, %polly.loop_header580
  %polly.indvar583 = phi i64 [ %polly.indvar_next584, %polly.loop_header580 ], [ %polly.indvar583.ph, %polly.loop_header580.preheader ]
  %208 = shl nuw nsw i64 %polly.indvar583, 3
  %scevgep587 = getelementptr i8, i8* %scevgep586, i64 %208
  %scevgep587588 = bitcast i8* %scevgep587 to double*
  %_p_scalar_589 = load double, double* %scevgep587588, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_589, 1.200000e+00
  store double %p_mul.i, double* %scevgep587588, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next584 = add nuw nsw i64 %polly.indvar583, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next584, %polly.indvar577
  br i1 %exitcond1088.not, label %polly.loop_exit582, label %polly.loop_header580, !llvm.loop !95

polly.loop_header590:                             ; preds = %polly.loop_header590.preheader, %polly.loop_exit598
  %indvars.iv1062 = phi i64 [ 0, %polly.loop_header590.preheader ], [ %indvars.iv.next1063, %polly.loop_exit598 ]
  %polly.indvar593 = phi i64 [ 0, %polly.loop_header590.preheader ], [ %polly.indvar_next594, %polly.loop_exit598 ]
  %smin1084 = call i64 @llvm.smin.i64(i64 %indvars.iv1062, i64 -968)
  %209 = add nsw i64 %smin1084, 1000
  %210 = shl nsw i64 %polly.indvar593, 5
  br label %polly.loop_header596

polly.loop_exit598:                               ; preds = %polly.loop_exit606
  %polly.indvar_next594 = add nuw nsw i64 %polly.indvar593, 1
  %indvars.iv.next1063 = add nsw i64 %indvars.iv1062, -32
  %exitcond1087.not = icmp eq i64 %polly.indvar_next594, 32
  br i1 %exitcond1087.not, label %polly.exiting489, label %polly.loop_header590

polly.loop_header596:                             ; preds = %polly.loop_exit606, %polly.loop_header590
  %indvars.iv1076 = phi i64 [ %indvars.iv.next1077, %polly.loop_exit606 ], [ 0, %polly.loop_header590 ]
  %indvars.iv1071 = phi i64 [ %indvars.iv.next1072, %polly.loop_exit606 ], [ 15, %polly.loop_header590 ]
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit606 ], [ 0, %polly.loop_header590 ]
  %polly.indvar599 = phi i64 [ %polly.indvar_next600, %polly.loop_exit606 ], [ 0, %polly.loop_header590 ]
  %211 = shl nuw nsw i64 %indvars.iv1071, 1
  %212 = and i64 %211, 9223372036854775776
  %213 = shl nuw nsw i64 %polly.indvar599, 1
  %214 = mul nuw nsw i64 %polly.indvar599, 7
  %215 = add nuw nsw i64 %214, 15
  %pexp.p_div_q602 = lshr i64 %215, 4
  %216 = sub nsw i64 %213, %pexp.p_div_q602
  %polly.loop_guard607 = icmp slt i64 %216, 38
  br i1 %polly.loop_guard607, label %polly.loop_header604.preheader, label %polly.loop_exit606

polly.loop_header604.preheader:                   ; preds = %polly.loop_header596
  %217 = sub nsw i64 %indvars.iv1076, %212
  %218 = add i64 %indvars.iv1069, %212
  %219 = mul nsw i64 %polly.indvar599, -50
  %220 = mul nuw nsw i64 %polly.indvar599, 50
  %221 = add nsw i64 %219, 1199
  br label %polly.loop_header604

polly.loop_exit606:                               ; preds = %polly.loop_exit646, %polly.loop_header596
  %polly.indvar_next600 = add nuw nsw i64 %polly.indvar599, 1
  %indvars.iv.next1070 = add nsw i64 %indvars.iv1069, -14
  %indvars.iv.next1072 = add nuw nsw i64 %indvars.iv1071, 7
  %indvars.iv.next1077 = add nuw nsw i64 %indvars.iv1076, 14
  %exitcond1086.not = icmp eq i64 %polly.indvar_next600, 24
  br i1 %exitcond1086.not, label %polly.loop_exit598, label %polly.loop_header596

polly.loop_header604:                             ; preds = %polly.loop_header604.preheader, %polly.loop_exit646
  %indvars.iv1078 = phi i64 [ %217, %polly.loop_header604.preheader ], [ %indvars.iv.next1079, %polly.loop_exit646 ]
  %indvars.iv1073 = phi i64 [ %218, %polly.loop_header604.preheader ], [ %indvars.iv.next1074, %polly.loop_exit646 ]
  %polly.indvar608 = phi i64 [ %216, %polly.loop_header604.preheader ], [ %polly.indvar_next609, %polly.loop_exit646 ]
  %smax1075 = call i64 @llvm.smax.i64(i64 %indvars.iv1073, i64 0)
  %222 = add i64 %smax1075, %indvars.iv1078
  %223 = shl nsw i64 %polly.indvar608, 5
  %224 = add nsw i64 %223, %219
  %225 = add nsw i64 %224, -1
  %.inv890 = icmp sgt i64 %224, 49
  %226 = select i1 %.inv890, i64 49, i64 %225
  %polly.loop_guard621 = icmp sgt i64 %226, -1
  %227 = icmp sgt i64 %224, 0
  %228 = select i1 %227, i64 %224, i64 0
  %229 = add nsw i64 %224, 31
  %230 = icmp slt i64 %221, %229
  %231 = select i1 %230, i64 %221, i64 %229
  %polly.loop_guard633.not = icmp sgt i64 %228, %231
  br i1 %polly.loop_guard621, label %polly.loop_header611.us, label %polly.loop_header604.split

polly.loop_header611.us:                          ; preds = %polly.loop_header604, %polly.loop_exit632.us
  %polly.indvar614.us = phi i64 [ %polly.indvar_next615.us, %polly.loop_exit632.us ], [ 0, %polly.loop_header604 ]
  %232 = add nuw nsw i64 %polly.indvar614.us, %210
  %polly.access.mul.Packed_MemRef_call1491.us = mul nuw nsw i64 %polly.indvar614.us, 1200
  br label %polly.loop_header618.us

polly.loop_header618.us:                          ; preds = %polly.loop_header611.us, %polly.loop_header618.us
  %polly.indvar622.us = phi i64 [ %polly.indvar_next623.us, %polly.loop_header618.us ], [ 0, %polly.loop_header611.us ]
  %233 = add nuw nsw i64 %polly.indvar622.us, %220
  %polly.access.mul.call1626.us = mul nuw nsw i64 %233, 1000
  %polly.access.add.call1627.us = add nuw nsw i64 %232, %polly.access.mul.call1626.us
  %polly.access.call1628.us = getelementptr double, double* %polly.access.cast.call1687, i64 %polly.access.add.call1627.us
  %polly.access.call1628.load.us = load double, double* %polly.access.call1628.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1491.us = add nuw nsw i64 %polly.indvar622.us, %polly.access.mul.Packed_MemRef_call1491.us
  %polly.access.Packed_MemRef_call1491.us = getelementptr double, double* %Packed_MemRef_call1491, i64 %polly.access.add.Packed_MemRef_call1491.us
  store double %polly.access.call1628.load.us, double* %polly.access.Packed_MemRef_call1491.us, align 8
  %polly.indvar_next623.us = add nuw i64 %polly.indvar622.us, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar622.us, %226
  br i1 %exitcond1066.not, label %polly.loop_exit620.loopexit.us, label %polly.loop_header618.us

polly.loop_header630.us:                          ; preds = %polly.loop_exit620.loopexit.us, %polly.loop_header630.us
  %polly.indvar634.us = phi i64 [ %polly.indvar_next635.us, %polly.loop_header630.us ], [ %228, %polly.loop_exit620.loopexit.us ]
  %234 = add nuw nsw i64 %polly.indvar634.us, %220
  %polly.access.mul.call1638.us = mul nsw i64 %234, 1000
  %polly.access.add.call1639.us = add nuw nsw i64 %232, %polly.access.mul.call1638.us
  %polly.access.call1640.us = getelementptr double, double* %polly.access.cast.call1687, i64 %polly.access.add.call1639.us
  %polly.access.call1640.load.us = load double, double* %polly.access.call1640.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1491642.us = add nuw nsw i64 %polly.indvar634.us, %polly.access.mul.Packed_MemRef_call1491.us
  %polly.access.Packed_MemRef_call1491643.us = getelementptr double, double* %Packed_MemRef_call1491, i64 %polly.access.add.Packed_MemRef_call1491642.us
  store double %polly.access.call1640.load.us, double* %polly.access.Packed_MemRef_call1491643.us, align 8
  %polly.indvar_next635.us = add nuw nsw i64 %polly.indvar634.us, 1
  %polly.loop_cond636.not.not.us = icmp slt i64 %polly.indvar634.us, %231
  br i1 %polly.loop_cond636.not.not.us, label %polly.loop_header630.us, label %polly.loop_exit632.us

polly.loop_exit632.us:                            ; preds = %polly.loop_header630.us, %polly.loop_exit620.loopexit.us
  %polly.indvar_next615.us = add nuw nsw i64 %polly.indvar614.us, 1
  %exitcond1068.not = icmp eq i64 %polly.indvar_next615.us, %209
  br i1 %exitcond1068.not, label %polly.loop_header644.preheader, label %polly.loop_header611.us

polly.loop_exit620.loopexit.us:                   ; preds = %polly.loop_header618.us
  br i1 %polly.loop_guard633.not, label %polly.loop_exit632.us, label %polly.loop_header630.us

polly.loop_header604.split:                       ; preds = %polly.loop_header604
  br i1 %polly.loop_guard633.not, label %polly.loop_header644.preheader, label %polly.loop_header611

polly.loop_exit646:                               ; preds = %polly.loop_exit653, %polly.loop_header644.preheader
  %polly.indvar_next609 = add nsw i64 %polly.indvar608, 1
  %polly.loop_cond610 = icmp slt i64 %polly.indvar608, 37
  %indvars.iv.next1074 = add i64 %indvars.iv1073, -32
  %indvars.iv.next1079 = add i64 %indvars.iv1078, 32
  br i1 %polly.loop_cond610, label %polly.loop_header604, label %polly.loop_exit606

polly.loop_header611:                             ; preds = %polly.loop_header604.split, %polly.loop_exit632
  %polly.indvar614 = phi i64 [ %polly.indvar_next615, %polly.loop_exit632 ], [ 0, %polly.loop_header604.split ]
  %235 = add nuw nsw i64 %polly.indvar614, %210
  %polly.access.mul.Packed_MemRef_call1491641 = mul nuw nsw i64 %polly.indvar614, 1200
  br label %polly.loop_header630

polly.loop_exit632:                               ; preds = %polly.loop_header630
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next615, %209
  br i1 %exitcond1065.not, label %polly.loop_header644.preheader, label %polly.loop_header611

polly.loop_header644.preheader:                   ; preds = %polly.loop_exit632, %polly.loop_exit632.us, %polly.loop_header604.split
  %236 = sub nsw i64 %220, %223
  %237 = icmp sgt i64 %236, 0
  %238 = select i1 %237, i64 %236, i64 0
  %239 = mul nsw i64 %polly.indvar608, -32
  %240 = icmp slt i64 %239, -1168
  %241 = select i1 %240, i64 %239, i64 -1168
  %242 = add nsw i64 %241, 1199
  %polly.loop_guard654.not = icmp sgt i64 %238, %242
  br i1 %polly.loop_guard654.not, label %polly.loop_exit646, label %polly.loop_header644

polly.loop_header630:                             ; preds = %polly.loop_header611, %polly.loop_header630
  %polly.indvar634 = phi i64 [ %polly.indvar_next635, %polly.loop_header630 ], [ %228, %polly.loop_header611 ]
  %243 = add nuw nsw i64 %polly.indvar634, %220
  %polly.access.mul.call1638 = mul nsw i64 %243, 1000
  %polly.access.add.call1639 = add nuw nsw i64 %235, %polly.access.mul.call1638
  %polly.access.call1640 = getelementptr double, double* %polly.access.cast.call1687, i64 %polly.access.add.call1639
  %polly.access.call1640.load = load double, double* %polly.access.call1640, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1491642 = add nuw nsw i64 %polly.indvar634, %polly.access.mul.Packed_MemRef_call1491641
  %polly.access.Packed_MemRef_call1491643 = getelementptr double, double* %Packed_MemRef_call1491, i64 %polly.access.add.Packed_MemRef_call1491642
  store double %polly.access.call1640.load, double* %polly.access.Packed_MemRef_call1491643, align 8
  %polly.indvar_next635 = add nuw nsw i64 %polly.indvar634, 1
  %polly.loop_cond636.not.not = icmp slt i64 %polly.indvar634, %231
  br i1 %polly.loop_cond636.not.not, label %polly.loop_header630, label %polly.loop_exit632

polly.loop_header644:                             ; preds = %polly.loop_header644.preheader, %polly.loop_exit653
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit653 ], [ 0, %polly.loop_header644.preheader ]
  %244 = add nuw nsw i64 %polly.indvar647, %210
  %polly.access.mul.Packed_MemRef_call1491666 = mul nuw nsw i64 %polly.indvar647, 1200
  %245 = shl i64 %244, 3
  br label %polly.loop_header651

polly.loop_exit653:                               ; preds = %polly.loop_exit661
  %polly.indvar_next648 = add nuw nsw i64 %polly.indvar647, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar_next648, %209
  br i1 %exitcond1085.not, label %polly.loop_exit646, label %polly.loop_header644

polly.loop_header651:                             ; preds = %polly.loop_header644, %polly.loop_exit661
  %indvars.iv1080 = phi i64 [ %222, %polly.loop_header644 ], [ %indvars.iv.next1081, %polly.loop_exit661 ]
  %polly.indvar655 = phi i64 [ %238, %polly.loop_header644 ], [ %polly.indvar_next656, %polly.loop_exit661 ]
  %smin1082 = call i64 @llvm.smin.i64(i64 %indvars.iv1080, i64 49)
  %246 = add nsw i64 %polly.indvar655, %224
  %polly.loop_guard6621129 = icmp sgt i64 %246, -1
  br i1 %polly.loop_guard6621129, label %polly.loop_header659.preheader, label %polly.loop_exit661

polly.loop_header659.preheader:                   ; preds = %polly.loop_header651
  %247 = add nsw i64 %polly.indvar655, %223
  %248 = mul i64 %247, 8000
  %249 = add i64 %248, %245
  %scevgep670 = getelementptr i8, i8* %call2, i64 %249
  %scevgep670671 = bitcast i8* %scevgep670 to double*
  %_p_scalar_672 = load double, double* %scevgep670671, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1491677 = add nsw i64 %246, %polly.access.mul.Packed_MemRef_call1491666
  %polly.access.Packed_MemRef_call1491678 = getelementptr double, double* %Packed_MemRef_call1491, i64 %polly.access.add.Packed_MemRef_call1491677
  %_p_scalar_679 = load double, double* %polly.access.Packed_MemRef_call1491678, align 8
  %250 = mul i64 %247, 9600
  br label %polly.loop_header659

polly.loop_exit661:                               ; preds = %polly.loop_header659, %polly.loop_header651
  %polly.indvar_next656 = add nuw nsw i64 %polly.indvar655, 1
  %polly.loop_cond657.not.not = icmp slt i64 %polly.indvar655, %242
  %indvars.iv.next1081 = add i64 %indvars.iv1080, 1
  br i1 %polly.loop_cond657.not.not, label %polly.loop_header651, label %polly.loop_exit653

polly.loop_header659:                             ; preds = %polly.loop_header659.preheader, %polly.loop_header659
  %polly.indvar663 = phi i64 [ %polly.indvar_next664, %polly.loop_header659 ], [ 0, %polly.loop_header659.preheader ]
  %251 = add nuw nsw i64 %polly.indvar663, %220
  %polly.access.add.Packed_MemRef_call1491667 = add nuw nsw i64 %polly.indvar663, %polly.access.mul.Packed_MemRef_call1491666
  %polly.access.Packed_MemRef_call1491668 = getelementptr double, double* %Packed_MemRef_call1491, i64 %polly.access.add.Packed_MemRef_call1491667
  %_p_scalar_669 = load double, double* %polly.access.Packed_MemRef_call1491668, align 8
  %p_mul27.i = fmul fast double %_p_scalar_672, %_p_scalar_669
  %252 = mul nuw nsw i64 %251, 8000
  %253 = add nuw nsw i64 %252, %245
  %scevgep673 = getelementptr i8, i8* %call2, i64 %253
  %scevgep673674 = bitcast i8* %scevgep673 to double*
  %_p_scalar_675 = load double, double* %scevgep673674, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i = fmul fast double %_p_scalar_679, %_p_scalar_675
  %254 = shl i64 %251, 3
  %255 = add i64 %254, %250
  %scevgep680 = getelementptr i8, i8* %call, i64 %255
  %scevgep680681 = bitcast i8* %scevgep680 to double*
  %_p_scalar_682 = load double, double* %scevgep680681, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_682
  store double %p_add42.i, double* %scevgep680681, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next664 = add nuw nsw i64 %polly.indvar663, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar663, %smin1082
  br i1 %exitcond1083.not, label %polly.loop_exit661, label %polly.loop_header659

polly.loop_header809:                             ; preds = %entry, %polly.loop_exit817
  %indvars.iv1114 = phi i64 [ %indvars.iv.next1115, %polly.loop_exit817 ], [ 0, %entry ]
  %polly.indvar812 = phi i64 [ %polly.indvar_next813, %polly.loop_exit817 ], [ 0, %entry ]
  %smin1116 = call i64 @llvm.smin.i64(i64 %indvars.iv1114, i64 -1168)
  %256 = shl nsw i64 %polly.indvar812, 5
  %257 = add nsw i64 %smin1116, 1199
  br label %polly.loop_header815

polly.loop_exit817:                               ; preds = %polly.loop_exit823
  %polly.indvar_next813 = add nuw nsw i64 %polly.indvar812, 1
  %indvars.iv.next1115 = add nsw i64 %indvars.iv1114, -32
  %exitcond1119.not = icmp eq i64 %polly.indvar_next813, 38
  br i1 %exitcond1119.not, label %polly.loop_header836, label %polly.loop_header809

polly.loop_header815:                             ; preds = %polly.loop_exit823, %polly.loop_header809
  %indvars.iv1110 = phi i64 [ %indvars.iv.next1111, %polly.loop_exit823 ], [ 0, %polly.loop_header809 ]
  %polly.indvar818 = phi i64 [ %polly.indvar_next819, %polly.loop_exit823 ], [ 0, %polly.loop_header809 ]
  %258 = mul nsw i64 %polly.indvar818, -32
  %smin = call i64 @llvm.smin.i64(i64 %258, i64 -1168)
  %259 = add nsw i64 %smin, 1200
  %smin1112 = call i64 @llvm.smin.i64(i64 %indvars.iv1110, i64 -1168)
  %260 = shl nsw i64 %polly.indvar818, 5
  %261 = add nsw i64 %smin1112, 1199
  br label %polly.loop_header821

polly.loop_exit823:                               ; preds = %polly.loop_exit829
  %polly.indvar_next819 = add nuw nsw i64 %polly.indvar818, 1
  %indvars.iv.next1111 = add nsw i64 %indvars.iv1110, -32
  %exitcond1118.not = icmp eq i64 %polly.indvar_next819, 38
  br i1 %exitcond1118.not, label %polly.loop_exit817, label %polly.loop_header815

polly.loop_header821:                             ; preds = %polly.loop_exit829, %polly.loop_header815
  %polly.indvar824 = phi i64 [ 0, %polly.loop_header815 ], [ %polly.indvar_next825, %polly.loop_exit829 ]
  %262 = add nuw nsw i64 %polly.indvar824, %256
  %263 = trunc i64 %262 to i32
  %264 = mul nuw nsw i64 %262, 9600
  %min.iters.check = icmp eq i64 %259, 0
  br i1 %min.iters.check, label %polly.loop_header827, label %vector.ph1160

vector.ph1160:                                    ; preds = %polly.loop_header821
  %broadcast.splatinsert1167 = insertelement <4 x i64> poison, i64 %260, i32 0
  %broadcast.splat1168 = shufflevector <4 x i64> %broadcast.splatinsert1167, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1169 = insertelement <4 x i32> poison, i32 %263, i32 0
  %broadcast.splat1170 = shufflevector <4 x i32> %broadcast.splatinsert1169, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1159

vector.body1159:                                  ; preds = %vector.body1159, %vector.ph1160
  %index1161 = phi i64 [ 0, %vector.ph1160 ], [ %index.next1162, %vector.body1159 ]
  %vec.ind1165 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1160 ], [ %vec.ind.next1166, %vector.body1159 ]
  %265 = add nuw nsw <4 x i64> %vec.ind1165, %broadcast.splat1168
  %266 = trunc <4 x i64> %265 to <4 x i32>
  %267 = mul <4 x i32> %broadcast.splat1170, %266
  %268 = add <4 x i32> %267, <i32 3, i32 3, i32 3, i32 3>
  %269 = urem <4 x i32> %268, <i32 1200, i32 1200, i32 1200, i32 1200>
  %270 = sitofp <4 x i32> %269 to <4 x double>
  %271 = fmul fast <4 x double> %270, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %272 = extractelement <4 x i64> %265, i32 0
  %273 = shl i64 %272, 3
  %274 = add nuw nsw i64 %273, %264
  %275 = getelementptr i8, i8* %call, i64 %274
  %276 = bitcast i8* %275 to <4 x double>*
  store <4 x double> %271, <4 x double>* %276, align 8, !alias.scope !98, !noalias !100
  %index.next1162 = add i64 %index1161, 4
  %vec.ind.next1166 = add <4 x i64> %vec.ind1165, <i64 4, i64 4, i64 4, i64 4>
  %277 = icmp eq i64 %index.next1162, %259
  br i1 %277, label %polly.loop_exit829, label %vector.body1159, !llvm.loop !103

polly.loop_exit829:                               ; preds = %vector.body1159, %polly.loop_header827
  %polly.indvar_next825 = add nuw nsw i64 %polly.indvar824, 1
  %exitcond1117.not = icmp eq i64 %polly.indvar824, %257
  br i1 %exitcond1117.not, label %polly.loop_exit823, label %polly.loop_header821

polly.loop_header827:                             ; preds = %polly.loop_header821, %polly.loop_header827
  %polly.indvar830 = phi i64 [ %polly.indvar_next831, %polly.loop_header827 ], [ 0, %polly.loop_header821 ]
  %278 = add nuw nsw i64 %polly.indvar830, %260
  %279 = trunc i64 %278 to i32
  %280 = mul i32 %279, %263
  %281 = add i32 %280, 3
  %282 = urem i32 %281, 1200
  %p_conv31.i = sitofp i32 %282 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %283 = shl i64 %278, 3
  %284 = add nuw nsw i64 %283, %264
  %scevgep833 = getelementptr i8, i8* %call, i64 %284
  %scevgep833834 = bitcast i8* %scevgep833 to double*
  store double %p_div33.i, double* %scevgep833834, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next831 = add nuw nsw i64 %polly.indvar830, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar830, %261
  br i1 %exitcond1113.not, label %polly.loop_exit829, label %polly.loop_header827, !llvm.loop !104

polly.loop_header836:                             ; preds = %polly.loop_exit817, %polly.loop_exit844
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit844 ], [ 0, %polly.loop_exit817 ]
  %polly.indvar839 = phi i64 [ %polly.indvar_next840, %polly.loop_exit844 ], [ 0, %polly.loop_exit817 ]
  %smin1106 = call i64 @llvm.smin.i64(i64 %indvars.iv1104, i64 -1168)
  %285 = shl nsw i64 %polly.indvar839, 5
  %286 = add nsw i64 %smin1106, 1199
  br label %polly.loop_header842

polly.loop_exit844:                               ; preds = %polly.loop_exit850
  %polly.indvar_next840 = add nuw nsw i64 %polly.indvar839, 1
  %indvars.iv.next1105 = add nsw i64 %indvars.iv1104, -32
  %exitcond1109.not = icmp eq i64 %polly.indvar_next840, 38
  br i1 %exitcond1109.not, label %polly.loop_header862, label %polly.loop_header836

polly.loop_header842:                             ; preds = %polly.loop_exit850, %polly.loop_header836
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit850 ], [ 0, %polly.loop_header836 ]
  %polly.indvar845 = phi i64 [ %polly.indvar_next846, %polly.loop_exit850 ], [ 0, %polly.loop_header836 ]
  %287 = mul nsw i64 %polly.indvar845, -32
  %smin1174 = call i64 @llvm.smin.i64(i64 %287, i64 -968)
  %288 = add nsw i64 %smin1174, 1000
  %smin1102 = call i64 @llvm.smin.i64(i64 %indvars.iv1100, i64 -968)
  %289 = shl nsw i64 %polly.indvar845, 5
  %290 = add nsw i64 %smin1102, 999
  br label %polly.loop_header848

polly.loop_exit850:                               ; preds = %polly.loop_exit856
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %indvars.iv.next1101 = add nsw i64 %indvars.iv1100, -32
  %exitcond1108.not = icmp eq i64 %polly.indvar_next846, 32
  br i1 %exitcond1108.not, label %polly.loop_exit844, label %polly.loop_header842

polly.loop_header848:                             ; preds = %polly.loop_exit856, %polly.loop_header842
  %polly.indvar851 = phi i64 [ 0, %polly.loop_header842 ], [ %polly.indvar_next852, %polly.loop_exit856 ]
  %291 = add nuw nsw i64 %polly.indvar851, %285
  %292 = trunc i64 %291 to i32
  %293 = mul nuw nsw i64 %291, 8000
  %min.iters.check1175 = icmp eq i64 %288, 0
  br i1 %min.iters.check1175, label %polly.loop_header854, label %vector.ph1176

vector.ph1176:                                    ; preds = %polly.loop_header848
  %broadcast.splatinsert1185 = insertelement <4 x i64> poison, i64 %289, i32 0
  %broadcast.splat1186 = shufflevector <4 x i64> %broadcast.splatinsert1185, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1187 = insertelement <4 x i32> poison, i32 %292, i32 0
  %broadcast.splat1188 = shufflevector <4 x i32> %broadcast.splatinsert1187, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1173

vector.body1173:                                  ; preds = %vector.body1173, %vector.ph1176
  %index1179 = phi i64 [ 0, %vector.ph1176 ], [ %index.next1180, %vector.body1173 ]
  %vec.ind1183 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1176 ], [ %vec.ind.next1184, %vector.body1173 ]
  %294 = add nuw nsw <4 x i64> %vec.ind1183, %broadcast.splat1186
  %295 = trunc <4 x i64> %294 to <4 x i32>
  %296 = mul <4 x i32> %broadcast.splat1188, %295
  %297 = add <4 x i32> %296, <i32 2, i32 2, i32 2, i32 2>
  %298 = urem <4 x i32> %297, <i32 1000, i32 1000, i32 1000, i32 1000>
  %299 = sitofp <4 x i32> %298 to <4 x double>
  %300 = fmul fast <4 x double> %299, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %301 = extractelement <4 x i64> %294, i32 0
  %302 = shl i64 %301, 3
  %303 = add nuw nsw i64 %302, %293
  %304 = getelementptr i8, i8* %call2, i64 %303
  %305 = bitcast i8* %304 to <4 x double>*
  store <4 x double> %300, <4 x double>* %305, align 8, !alias.scope !102, !noalias !105
  %index.next1180 = add i64 %index1179, 4
  %vec.ind.next1184 = add <4 x i64> %vec.ind1183, <i64 4, i64 4, i64 4, i64 4>
  %306 = icmp eq i64 %index.next1180, %288
  br i1 %306, label %polly.loop_exit856, label %vector.body1173, !llvm.loop !106

polly.loop_exit856:                               ; preds = %vector.body1173, %polly.loop_header854
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar851, %286
  br i1 %exitcond1107.not, label %polly.loop_exit850, label %polly.loop_header848

polly.loop_header854:                             ; preds = %polly.loop_header848, %polly.loop_header854
  %polly.indvar857 = phi i64 [ %polly.indvar_next858, %polly.loop_header854 ], [ 0, %polly.loop_header848 ]
  %307 = add nuw nsw i64 %polly.indvar857, %289
  %308 = trunc i64 %307 to i32
  %309 = mul i32 %308, %292
  %310 = add i32 %309, 2
  %311 = urem i32 %310, 1000
  %p_conv10.i = sitofp i32 %311 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %312 = shl i64 %307, 3
  %313 = add nuw nsw i64 %312, %293
  %scevgep860 = getelementptr i8, i8* %call2, i64 %313
  %scevgep860861 = bitcast i8* %scevgep860 to double*
  store double %p_div12.i, double* %scevgep860861, align 8, !alias.scope !102, !noalias !105
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar857, %290
  br i1 %exitcond1103.not, label %polly.loop_exit856, label %polly.loop_header854, !llvm.loop !107

polly.loop_header862:                             ; preds = %polly.loop_exit844, %polly.loop_exit870
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit870 ], [ 0, %polly.loop_exit844 ]
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_exit870 ], [ 0, %polly.loop_exit844 ]
  %smin1096 = call i64 @llvm.smin.i64(i64 %indvars.iv1094, i64 -1168)
  %314 = shl nsw i64 %polly.indvar865, 5
  %315 = add nsw i64 %smin1096, 1199
  br label %polly.loop_header868

polly.loop_exit870:                               ; preds = %polly.loop_exit876
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %indvars.iv.next1095 = add nsw i64 %indvars.iv1094, -32
  %exitcond1099.not = icmp eq i64 %polly.indvar_next866, 38
  br i1 %exitcond1099.not, label %init_array.exit, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_exit876, %polly.loop_header862
  %indvars.iv1090 = phi i64 [ %indvars.iv.next1091, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %316 = mul nsw i64 %polly.indvar871, -32
  %smin1192 = call i64 @llvm.smin.i64(i64 %316, i64 -968)
  %317 = add nsw i64 %smin1192, 1000
  %smin1092 = call i64 @llvm.smin.i64(i64 %indvars.iv1090, i64 -968)
  %318 = shl nsw i64 %polly.indvar871, 5
  %319 = add nsw i64 %smin1092, 999
  br label %polly.loop_header874

polly.loop_exit876:                               ; preds = %polly.loop_exit882
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %indvars.iv.next1091 = add nsw i64 %indvars.iv1090, -32
  %exitcond1098.not = icmp eq i64 %polly.indvar_next872, 32
  br i1 %exitcond1098.not, label %polly.loop_exit870, label %polly.loop_header868

polly.loop_header874:                             ; preds = %polly.loop_exit882, %polly.loop_header868
  %polly.indvar877 = phi i64 [ 0, %polly.loop_header868 ], [ %polly.indvar_next878, %polly.loop_exit882 ]
  %320 = add nuw nsw i64 %polly.indvar877, %314
  %321 = trunc i64 %320 to i32
  %322 = mul nuw nsw i64 %320, 8000
  %min.iters.check1193 = icmp eq i64 %317, 0
  br i1 %min.iters.check1193, label %polly.loop_header880, label %vector.ph1194

vector.ph1194:                                    ; preds = %polly.loop_header874
  %broadcast.splatinsert1203 = insertelement <4 x i64> poison, i64 %318, i32 0
  %broadcast.splat1204 = shufflevector <4 x i64> %broadcast.splatinsert1203, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1205 = insertelement <4 x i32> poison, i32 %321, i32 0
  %broadcast.splat1206 = shufflevector <4 x i32> %broadcast.splatinsert1205, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1191

vector.body1191:                                  ; preds = %vector.body1191, %vector.ph1194
  %index1197 = phi i64 [ 0, %vector.ph1194 ], [ %index.next1198, %vector.body1191 ]
  %vec.ind1201 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1194 ], [ %vec.ind.next1202, %vector.body1191 ]
  %323 = add nuw nsw <4 x i64> %vec.ind1201, %broadcast.splat1204
  %324 = trunc <4 x i64> %323 to <4 x i32>
  %325 = mul <4 x i32> %broadcast.splat1206, %324
  %326 = add <4 x i32> %325, <i32 1, i32 1, i32 1, i32 1>
  %327 = urem <4 x i32> %326, <i32 1200, i32 1200, i32 1200, i32 1200>
  %328 = sitofp <4 x i32> %327 to <4 x double>
  %329 = fmul fast <4 x double> %328, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %330 = extractelement <4 x i64> %323, i32 0
  %331 = shl i64 %330, 3
  %332 = add nuw nsw i64 %331, %322
  %333 = getelementptr i8, i8* %call1, i64 %332
  %334 = bitcast i8* %333 to <4 x double>*
  store <4 x double> %329, <4 x double>* %334, align 8, !alias.scope !101, !noalias !108
  %index.next1198 = add i64 %index1197, 4
  %vec.ind.next1202 = add <4 x i64> %vec.ind1201, <i64 4, i64 4, i64 4, i64 4>
  %335 = icmp eq i64 %index.next1198, %317
  br i1 %335, label %polly.loop_exit882, label %vector.body1191, !llvm.loop !109

polly.loop_exit882:                               ; preds = %vector.body1191, %polly.loop_header880
  %polly.indvar_next878 = add nuw nsw i64 %polly.indvar877, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar877, %315
  br i1 %exitcond1097.not, label %polly.loop_exit876, label %polly.loop_header874

polly.loop_header880:                             ; preds = %polly.loop_header874, %polly.loop_header880
  %polly.indvar883 = phi i64 [ %polly.indvar_next884, %polly.loop_header880 ], [ 0, %polly.loop_header874 ]
  %336 = add nuw nsw i64 %polly.indvar883, %318
  %337 = trunc i64 %336 to i32
  %338 = mul i32 %337, %321
  %339 = add i32 %338, 1
  %340 = urem i32 %339, 1200
  %p_conv.i = sitofp i32 %340 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %341 = shl i64 %336, 3
  %342 = add nuw nsw i64 %341, %322
  %scevgep887 = getelementptr i8, i8* %call1, i64 %342
  %scevgep887888 = bitcast i8* %scevgep887 to double*
  store double %p_div.i, double* %scevgep887888, align 8, !alias.scope !101, !noalias !108
  %polly.indvar_next884 = add nuw nsw i64 %polly.indvar883, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar883, %319
  br i1 %exitcond1093.not, label %polly.loop_exit882, label %polly.loop_header880, !llvm.loop !110
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
!25 = !{!"llvm.loop.tile.size", i32 50}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 32}
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
!46 = distinct !{!46, !12, !23, !47, !48, !49, !34, !50, !56}
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
