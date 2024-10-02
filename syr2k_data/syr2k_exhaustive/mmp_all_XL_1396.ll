; ModuleID = 'syr2k_exhaustive/mmp_all_XL_1396.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_1396.c"
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
  %scevgep1143 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1142 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1141 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1140 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1140, %scevgep1143
  %bound1 = icmp ult i8* %scevgep1142, %scevgep1141
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
  br i1 %exitcond18.not.i, label %vector.ph1147, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1147:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1154 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1155 = shufflevector <4 x i64> %broadcast.splatinsert1154, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1146

vector.body1146:                                  ; preds = %vector.body1146, %vector.ph1147
  %index1148 = phi i64 [ 0, %vector.ph1147 ], [ %index.next1149, %vector.body1146 ]
  %vec.ind1152 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1147 ], [ %vec.ind.next1153, %vector.body1146 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1152, %broadcast.splat1155
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv7.i, i64 %index1148
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1149 = add i64 %index1148, 4
  %vec.ind.next1153 = add <4 x i64> %vec.ind1152, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1149, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1146, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1146
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1147, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit901
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start507, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1209 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1209, label %for.body3.i46.preheader1343, label %vector.ph1210

vector.ph1210:                                    ; preds = %for.body3.i46.preheader
  %n.vec1212 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1208

vector.body1208:                                  ; preds = %vector.body1208, %vector.ph1210
  %index1213 = phi i64 [ 0, %vector.ph1210 ], [ %index.next1214, %vector.body1208 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i, i64 %index1213
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1214 = add i64 %index1213, 4
  %46 = icmp eq i64 %index.next1214, %n.vec1212
  br i1 %46, label %middle.block1206, label %vector.body1208, !llvm.loop !18

middle.block1206:                                 ; preds = %vector.body1208
  %cmp.n1216 = icmp eq i64 %indvars.iv21.i, %n.vec1212
  br i1 %cmp.n1216, label %for.inc6.i, label %for.body3.i46.preheader1343

for.body3.i46.preheader1343:                      ; preds = %for.body3.i46.preheader, %middle.block1206
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1212, %middle.block1206 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1343, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1343 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1206, %for.cond1.preheader.i45
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
  %min.iters.check1251 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1251, label %for.body3.i60.preheader1341, label %vector.ph1252

vector.ph1252:                                    ; preds = %for.body3.i60.preheader
  %n.vec1254 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1250

vector.body1250:                                  ; preds = %vector.body1250, %vector.ph1252
  %index1255 = phi i64 [ 0, %vector.ph1252 ], [ %index.next1256, %vector.body1250 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i52, i64 %index1255
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1259 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1259, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1256 = add i64 %index1255, 4
  %57 = icmp eq i64 %index.next1256, %n.vec1254
  br i1 %57, label %middle.block1248, label %vector.body1250, !llvm.loop !57

middle.block1248:                                 ; preds = %vector.body1250
  %cmp.n1258 = icmp eq i64 %indvars.iv21.i52, %n.vec1254
  br i1 %cmp.n1258, label %for.inc6.i63, label %for.body3.i60.preheader1341

for.body3.i60.preheader1341:                      ; preds = %for.body3.i60.preheader, %middle.block1248
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1254, %middle.block1248 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1341, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1341 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1248, %for.cond1.preheader.i54
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
  %min.iters.check1296 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1296, label %for.body3.i99.preheader1339, label %vector.ph1297

vector.ph1297:                                    ; preds = %for.body3.i99.preheader
  %n.vec1299 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1295

vector.body1295:                                  ; preds = %vector.body1295, %vector.ph1297
  %index1300 = phi i64 [ 0, %vector.ph1297 ], [ %index.next1301, %vector.body1295 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i91, i64 %index1300
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1304 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1304, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1301 = add i64 %index1300, 4
  %68 = icmp eq i64 %index.next1301, %n.vec1299
  br i1 %68, label %middle.block1293, label %vector.body1295, !llvm.loop !59

middle.block1293:                                 ; preds = %vector.body1295
  %cmp.n1303 = icmp eq i64 %indvars.iv21.i91, %n.vec1299
  br i1 %cmp.n1303, label %for.inc6.i102, label %for.body3.i99.preheader1339

for.body3.i99.preheader1339:                      ; preds = %for.body3.i99.preheader, %middle.block1293
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1299, %middle.block1293 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1339, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1339 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1293, %for.cond1.preheader.i93
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
  %malloccall = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1308 = phi i64 [ %indvar.next1309, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1308, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1310 = icmp ult i64 %88, 4
  br i1 %min.iters.check1310, label %polly.loop_header192.preheader, label %vector.ph1311

vector.ph1311:                                    ; preds = %polly.loop_header
  %n.vec1313 = and i64 %88, -4
  br label %vector.body1307

vector.body1307:                                  ; preds = %vector.body1307, %vector.ph1311
  %index1314 = phi i64 [ 0, %vector.ph1311 ], [ %index.next1315, %vector.body1307 ]
  %90 = shl nuw nsw i64 %index1314, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1318 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1318, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1315 = add i64 %index1314, 4
  %95 = icmp eq i64 %index.next1315, %n.vec1313
  br i1 %95, label %middle.block1305, label %vector.body1307, !llvm.loop !72

middle.block1305:                                 ; preds = %vector.body1307
  %cmp.n1317 = icmp eq i64 %88, %n.vec1313
  br i1 %cmp.n1317, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1305
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1313, %middle.block1305 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1305
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1309 = add i64 %indvar1308, 1
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
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1051.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

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
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2728, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !69, !noalias !75
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1049.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = shl nuw nsw i64 %polly.indvar219, 2
  %98 = lshr i64 %polly.indvar219, 6
  %99 = shl nsw i64 %polly.indvar219, 2
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond1048.not = icmp eq i64 %polly.indvar_next220, 300
  br i1 %exitcond1048.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  %100 = mul nuw nsw i64 %polly.indvar225, 50
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar_next226, 20
  br i1 %exitcond1047.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit236 ], [ %indvars.iv, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %101 = mul nsw i64 %polly.indvar231, -256
  %102 = add i64 %97, %101
  %103 = shl nsw i64 %polly.indvar231, 8
  %104 = sub nsw i64 %99, %103
  %105 = add nuw nsw i64 %103, 256
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit265
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, -256
  %exitcond1046.not = icmp eq i64 %polly.indvar231, %98
  br i1 %exitcond1046.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_exit265, %polly.loop_header228
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit265 ], [ %indvars.iv1036, %polly.loop_header228 ]
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit265 ], [ 0, %polly.loop_header228 ]
  %106 = add i64 %102, %polly.indvar237
  %smin1322 = call i64 @llvm.smin.i64(i64 %106, i64 255)
  %107 = add nsw i64 %smin1322, 1
  %smin1042 = call i64 @llvm.smin.i64(i64 %indvars.iv1038, i64 255)
  %108 = add nsw i64 %polly.indvar237, %104
  %polly.loop_guard1129 = icmp sgt i64 %108, -1
  %109 = add nuw nsw i64 %polly.indvar237, %99
  %.not = icmp ult i64 %109, %105
  %polly.access.mul.call1257 = mul nuw nsw i64 %109, 1000
  %110 = add nuw nsw i64 %polly.access.mul.call1257, %100
  br i1 %polly.loop_guard1129, label %polly.loop_header240.us, label %polly.loop_header234.split

polly.loop_header240.us:                          ; preds = %polly.loop_header234, %polly.merge.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.merge.us ], [ 0, %polly.loop_header234 ]
  %111 = add nuw nsw i64 %polly.indvar243.us, %100
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar243.us, 1200
  br label %polly.loop_header246.us

polly.loop_header246.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header246.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_header246.us ], [ 0, %polly.loop_header240.us ]
  %112 = add nuw nsw i64 %polly.indvar249.us, %103
  %polly.access.mul.call1253.us = mul nuw nsw i64 %112, 1000
  %polly.access.add.call1254.us = add nuw nsw i64 %111, %polly.access.mul.call1253.us
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar249.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar249.us, %smin1042
  br i1 %exitcond1040.not, label %polly.cond.loopexit.us, label %polly.loop_header246.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1258.us = add nuw nsw i64 %110, %polly.indvar243.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %108
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1262.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar_next244.us, 50
  br i1 %exitcond1041.not, label %polly.loop_header263.preheader, label %polly.loop_header240.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header246.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit265, label %polly.loop_header240

polly.loop_exit265:                               ; preds = %polly.loop_exit272.loopexit.us, %polly.loop_header234.split, %polly.loop_header263.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %indvars.iv.next1039 = add nsw i64 %indvars.iv1038, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar_next238, 4
  br i1 %exitcond1045.not, label %polly.loop_exit236, label %polly.loop_header234

polly.loop_header240:                             ; preds = %polly.loop_header234.split, %polly.loop_header240
  %polly.indvar243 = phi i64 [ %polly.indvar_next244, %polly.loop_header240 ], [ 0, %polly.loop_header234.split ]
  %polly.access.add.call1258 = add nuw nsw i64 %110, %polly.indvar243
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !68, !noalias !76
  %polly.access.mul.Packed_MemRef_call1260 = mul nuw nsw i64 %polly.indvar243, 1200
  %polly.access.add.Packed_MemRef_call1261 = add nsw i64 %polly.access.mul.Packed_MemRef_call1260, %108
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.indvar_next244 = add nuw nsw i64 %polly.indvar243, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next244, 50
  br i1 %exitcond.not, label %polly.loop_header263.preheader, label %polly.loop_header240

polly.loop_header263.preheader:                   ; preds = %polly.loop_header240, %polly.merge.us
  %113 = mul nuw nsw i64 %109, 9600
  br i1 %polly.loop_guard1129, label %polly.loop_header263.us, label %polly.loop_exit265

polly.loop_header263.us:                          ; preds = %polly.loop_header263.preheader, %polly.loop_exit272.loopexit.us
  %polly.indvar266.us = phi i64 [ %polly.indvar_next267.us, %polly.loop_exit272.loopexit.us ], [ 0, %polly.loop_header263.preheader ]
  %polly.access.mul.Packed_MemRef_call1277.us = mul nuw nsw i64 %polly.indvar266.us, 1200
  %114 = add nuw nsw i64 %polly.indvar266.us, %100
  %polly.access.mul.Packed_MemRef_call2281.us = mul nuw nsw i64 %114, 1200
  %polly.access.add.Packed_MemRef_call2282.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2281.us, %109
  %polly.access.Packed_MemRef_call2283.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call2283.us, align 8
  %polly.access.add.Packed_MemRef_call1290.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1277.us, %108
  %polly.access.Packed_MemRef_call1291.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call1291.us, align 8
  %min.iters.check1323 = icmp ult i64 %107, 4
  br i1 %min.iters.check1323, label %polly.loop_header270.us.preheader, label %vector.ph1324

vector.ph1324:                                    ; preds = %polly.loop_header263.us
  %n.vec1326 = and i64 %107, -4
  %broadcast.splatinsert1332 = insertelement <4 x double> poison, double %_p_scalar_284.us, i32 0
  %broadcast.splat1333 = shufflevector <4 x double> %broadcast.splatinsert1332, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1335 = insertelement <4 x double> poison, double %_p_scalar_292.us, i32 0
  %broadcast.splat1336 = shufflevector <4 x double> %broadcast.splatinsert1335, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1321

vector.body1321:                                  ; preds = %vector.body1321, %vector.ph1324
  %index1327 = phi i64 [ 0, %vector.ph1324 ], [ %index.next1328, %vector.body1321 ]
  %115 = add nuw nsw i64 %index1327, %103
  %116 = add nuw nsw i64 %index1327, %polly.access.mul.Packed_MemRef_call1277.us
  %117 = getelementptr double, double* %Packed_MemRef_call1, i64 %116
  %118 = bitcast double* %117 to <4 x double>*
  %wide.load1331 = load <4 x double>, <4 x double>* %118, align 8
  %119 = fmul fast <4 x double> %broadcast.splat1333, %wide.load1331
  %120 = add nuw nsw i64 %115, %polly.access.mul.Packed_MemRef_call2281.us
  %121 = getelementptr double, double* %Packed_MemRef_call2, i64 %120
  %122 = bitcast double* %121 to <4 x double>*
  %wide.load1334 = load <4 x double>, <4 x double>* %122, align 8
  %123 = fmul fast <4 x double> %broadcast.splat1336, %wide.load1334
  %124 = shl i64 %115, 3
  %125 = add nuw nsw i64 %124, %113
  %126 = getelementptr i8, i8* %call, i64 %125
  %127 = bitcast i8* %126 to <4 x double>*
  %wide.load1337 = load <4 x double>, <4 x double>* %127, align 8, !alias.scope !65, !noalias !67
  %128 = fadd fast <4 x double> %123, %119
  %129 = fmul fast <4 x double> %128, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %130 = fadd fast <4 x double> %129, %wide.load1337
  %131 = bitcast i8* %126 to <4 x double>*
  store <4 x double> %130, <4 x double>* %131, align 8, !alias.scope !65, !noalias !67
  %index.next1328 = add i64 %index1327, 4
  %132 = icmp eq i64 %index.next1328, %n.vec1326
  br i1 %132, label %middle.block1319, label %vector.body1321, !llvm.loop !77

middle.block1319:                                 ; preds = %vector.body1321
  %cmp.n1330 = icmp eq i64 %107, %n.vec1326
  br i1 %cmp.n1330, label %polly.loop_exit272.loopexit.us, label %polly.loop_header270.us.preheader

polly.loop_header270.us.preheader:                ; preds = %polly.loop_header263.us, %middle.block1319
  %polly.indvar274.us.ph = phi i64 [ 0, %polly.loop_header263.us ], [ %n.vec1326, %middle.block1319 ]
  br label %polly.loop_header270.us

polly.loop_header270.us:                          ; preds = %polly.loop_header270.us.preheader, %polly.loop_header270.us
  %polly.indvar274.us = phi i64 [ %polly.indvar_next275.us, %polly.loop_header270.us ], [ %polly.indvar274.us.ph, %polly.loop_header270.us.preheader ]
  %133 = add nuw nsw i64 %polly.indvar274.us, %103
  %polly.access.add.Packed_MemRef_call1278.us = add nuw nsw i64 %polly.indvar274.us, %polly.access.mul.Packed_MemRef_call1277.us
  %polly.access.Packed_MemRef_call1279.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278.us
  %_p_scalar_280.us = load double, double* %polly.access.Packed_MemRef_call1279.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_284.us, %_p_scalar_280.us
  %polly.access.add.Packed_MemRef_call2286.us = add nuw nsw i64 %133, %polly.access.mul.Packed_MemRef_call2281.us
  %polly.access.Packed_MemRef_call2287.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call2287.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_292.us, %_p_scalar_288.us
  %134 = shl i64 %133, 3
  %135 = add nuw nsw i64 %134, %113
  %scevgep293.us = getelementptr i8, i8* %call, i64 %135
  %scevgep293294.us = bitcast i8* %scevgep293.us to double*
  %_p_scalar_295.us = load double, double* %scevgep293294.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_295.us
  store double %p_add42.i118.us, double* %scevgep293294.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next275.us = add nuw nsw i64 %polly.indvar274.us, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar274.us, %smin1042
  br i1 %exitcond1043.not, label %polly.loop_exit272.loopexit.us, label %polly.loop_header270.us, !llvm.loop !78

polly.loop_exit272.loopexit.us:                   ; preds = %polly.loop_header270.us, %middle.block1319
  %polly.indvar_next267.us = add nuw nsw i64 %polly.indvar266.us, 1
  %exitcond1044.not = icmp eq i64 %polly.indvar_next267.us, 50
  br i1 %exitcond1044.not, label %polly.loop_exit265, label %polly.loop_header263.us

polly.start298:                                   ; preds = %kernel_syr2k.exit
  %malloccall300 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall302 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header386

polly.exiting299:                                 ; preds = %polly.loop_exit426
  tail call void @free(i8* %malloccall300)
  tail call void @free(i8* %malloccall302)
  br label %kernel_syr2k.exit90

polly.loop_header386:                             ; preds = %polly.loop_exit394, %polly.start298
  %indvar1263 = phi i64 [ %indvar.next1264, %polly.loop_exit394 ], [ 0, %polly.start298 ]
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_exit394 ], [ 1, %polly.start298 ]
  %136 = add i64 %indvar1263, 1
  %137 = mul nuw nsw i64 %polly.indvar389, 9600
  %scevgep398 = getelementptr i8, i8* %call, i64 %137
  %min.iters.check1265 = icmp ult i64 %136, 4
  br i1 %min.iters.check1265, label %polly.loop_header392.preheader, label %vector.ph1266

vector.ph1266:                                    ; preds = %polly.loop_header386
  %n.vec1268 = and i64 %136, -4
  br label %vector.body1262

vector.body1262:                                  ; preds = %vector.body1262, %vector.ph1266
  %index1269 = phi i64 [ 0, %vector.ph1266 ], [ %index.next1270, %vector.body1262 ]
  %138 = shl nuw nsw i64 %index1269, 3
  %139 = getelementptr i8, i8* %scevgep398, i64 %138
  %140 = bitcast i8* %139 to <4 x double>*
  %wide.load1273 = load <4 x double>, <4 x double>* %140, align 8, !alias.scope !79, !noalias !81
  %141 = fmul fast <4 x double> %wide.load1273, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %142 = bitcast i8* %139 to <4 x double>*
  store <4 x double> %141, <4 x double>* %142, align 8, !alias.scope !79, !noalias !81
  %index.next1270 = add i64 %index1269, 4
  %143 = icmp eq i64 %index.next1270, %n.vec1268
  br i1 %143, label %middle.block1260, label %vector.body1262, !llvm.loop !86

middle.block1260:                                 ; preds = %vector.body1262
  %cmp.n1272 = icmp eq i64 %136, %n.vec1268
  br i1 %cmp.n1272, label %polly.loop_exit394, label %polly.loop_header392.preheader

polly.loop_header392.preheader:                   ; preds = %polly.loop_header386, %middle.block1260
  %polly.indvar395.ph = phi i64 [ 0, %polly.loop_header386 ], [ %n.vec1268, %middle.block1260 ]
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_header392, %middle.block1260
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond1073.not = icmp eq i64 %polly.indvar_next390, 1200
  %indvar.next1264 = add i64 %indvar1263, 1
  br i1 %exitcond1073.not, label %polly.loop_header402.preheader, label %polly.loop_header386

polly.loop_header402.preheader:                   ; preds = %polly.loop_exit394
  %Packed_MemRef_call1301 = bitcast i8* %malloccall300 to double*
  %Packed_MemRef_call2303 = bitcast i8* %malloccall302 to double*
  br label %polly.loop_header402

polly.loop_header392:                             ; preds = %polly.loop_header392.preheader, %polly.loop_header392
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_header392 ], [ %polly.indvar395.ph, %polly.loop_header392.preheader ]
  %144 = shl nuw nsw i64 %polly.indvar395, 3
  %scevgep399 = getelementptr i8, i8* %scevgep398, i64 %144
  %scevgep399400 = bitcast i8* %scevgep399 to double*
  %_p_scalar_401 = load double, double* %scevgep399400, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_401, 1.200000e+00
  store double %p_mul.i57, double* %scevgep399400, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar_next396, %polly.indvar389
  br i1 %exitcond1072.not, label %polly.loop_exit394, label %polly.loop_header392, !llvm.loop !87

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_exit410
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit410 ], [ 0, %polly.loop_header402.preheader ]
  %polly.access.mul.Packed_MemRef_call2303 = mul nuw nsw i64 %polly.indvar405, 1200
  br label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_header408
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar_next406, 1000
  br i1 %exitcond1071.not, label %polly.loop_header418, label %polly.loop_header402

polly.loop_header408:                             ; preds = %polly.loop_header408, %polly.loop_header402
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header402 ], [ %polly.indvar_next412, %polly.loop_header408 ]
  %polly.access.mul.call2415 = mul nuw nsw i64 %polly.indvar411, 1000
  %polly.access.add.call2416 = add nuw nsw i64 %polly.access.mul.call2415, %polly.indvar405
  %polly.access.call2417 = getelementptr double, double* %polly.access.cast.call2728, i64 %polly.access.add.call2416
  %polly.access.call2417.load = load double, double* %polly.access.call2417, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call2303 = add nuw nsw i64 %polly.indvar411, %polly.access.mul.Packed_MemRef_call2303
  %polly.access.Packed_MemRef_call2303 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303
  store double %polly.access.call2417.load, double* %polly.access.Packed_MemRef_call2303, align 8
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar_next412, 1200
  br i1 %exitcond1070.not, label %polly.loop_exit410, label %polly.loop_header408

polly.loop_header418:                             ; preds = %polly.loop_exit410, %polly.loop_exit426
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055, %polly.loop_exit426 ], [ 0, %polly.loop_exit410 ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit426 ], [ 0, %polly.loop_exit410 ]
  %145 = shl nuw nsw i64 %polly.indvar421, 2
  %146 = lshr i64 %polly.indvar421, 6
  %147 = shl nsw i64 %polly.indvar421, 2
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit433
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1055 = add nuw nsw i64 %indvars.iv1054, 4
  %exitcond1069.not = icmp eq i64 %polly.indvar_next422, 300
  br i1 %exitcond1069.not, label %polly.exiting299, label %polly.loop_header418

polly.loop_header424:                             ; preds = %polly.loop_exit433, %polly.loop_header418
  %polly.indvar427 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next428, %polly.loop_exit433 ]
  %148 = mul nuw nsw i64 %polly.indvar427, 50
  br label %polly.loop_header431

polly.loop_exit433:                               ; preds = %polly.loop_exit439
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond1068.not = icmp eq i64 %polly.indvar_next428, 20
  br i1 %exitcond1068.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header431:                             ; preds = %polly.loop_exit439, %polly.loop_header424
  %indvars.iv1056 = phi i64 [ %indvars.iv.next1057, %polly.loop_exit439 ], [ %indvars.iv1054, %polly.loop_header424 ]
  %polly.indvar434 = phi i64 [ %polly.indvar_next435, %polly.loop_exit439 ], [ 0, %polly.loop_header424 ]
  %149 = mul nsw i64 %polly.indvar434, -256
  %150 = add i64 %145, %149
  %151 = shl nsw i64 %polly.indvar434, 8
  %152 = sub nsw i64 %147, %151
  %153 = add nuw nsw i64 %151, 256
  br label %polly.loop_header437

polly.loop_exit439:                               ; preds = %polly.loop_exit474
  %polly.indvar_next435 = add nuw nsw i64 %polly.indvar434, 1
  %indvars.iv.next1057 = add nsw i64 %indvars.iv1056, -256
  %exitcond1067.not = icmp eq i64 %polly.indvar434, %146
  br i1 %exitcond1067.not, label %polly.loop_exit433, label %polly.loop_header431

polly.loop_header437:                             ; preds = %polly.loop_exit474, %polly.loop_header431
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %polly.loop_exit474 ], [ %indvars.iv1056, %polly.loop_header431 ]
  %polly.indvar440 = phi i64 [ %polly.indvar_next441, %polly.loop_exit474 ], [ 0, %polly.loop_header431 ]
  %154 = add i64 %150, %polly.indvar440
  %smin1277 = call i64 @llvm.smin.i64(i64 %154, i64 255)
  %155 = add nsw i64 %smin1277, 1
  %smin1063 = call i64 @llvm.smin.i64(i64 %indvars.iv1058, i64 255)
  %156 = add nsw i64 %polly.indvar440, %152
  %polly.loop_guard4531130 = icmp sgt i64 %156, -1
  %157 = add nuw nsw i64 %polly.indvar440, %147
  %.not920 = icmp ult i64 %157, %153
  %polly.access.mul.call1466 = mul nuw nsw i64 %157, 1000
  %158 = add nuw nsw i64 %polly.access.mul.call1466, %148
  br i1 %polly.loop_guard4531130, label %polly.loop_header443.us, label %polly.loop_header437.split

polly.loop_header443.us:                          ; preds = %polly.loop_header437, %polly.merge462.us
  %polly.indvar446.us = phi i64 [ %polly.indvar_next447.us, %polly.merge462.us ], [ 0, %polly.loop_header437 ]
  %159 = add nuw nsw i64 %polly.indvar446.us, %148
  %polly.access.mul.Packed_MemRef_call1301.us = mul nuw nsw i64 %polly.indvar446.us, 1200
  br label %polly.loop_header450.us

polly.loop_header450.us:                          ; preds = %polly.loop_header443.us, %polly.loop_header450.us
  %polly.indvar454.us = phi i64 [ %polly.indvar_next455.us, %polly.loop_header450.us ], [ 0, %polly.loop_header443.us ]
  %160 = add nuw nsw i64 %polly.indvar454.us, %151
  %polly.access.mul.call1458.us = mul nuw nsw i64 %160, 1000
  %polly.access.add.call1459.us = add nuw nsw i64 %159, %polly.access.mul.call1458.us
  %polly.access.call1460.us = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1459.us
  %polly.access.call1460.load.us = load double, double* %polly.access.call1460.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1301.us = add nuw nsw i64 %polly.indvar454.us, %polly.access.mul.Packed_MemRef_call1301.us
  %polly.access.Packed_MemRef_call1301.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us
  store double %polly.access.call1460.load.us, double* %polly.access.Packed_MemRef_call1301.us, align 8
  %polly.indvar_next455.us = add nuw nsw i64 %polly.indvar454.us, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar454.us, %smin1063
  br i1 %exitcond1061.not, label %polly.cond461.loopexit.us, label %polly.loop_header450.us

polly.then463.us:                                 ; preds = %polly.cond461.loopexit.us
  %polly.access.add.call1467.us = add nuw nsw i64 %158, %polly.indvar446.us
  %polly.access.call1468.us = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.us
  %polly.access.call1468.load.us = load double, double* %polly.access.call1468.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1301470.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1301.us, %156
  %polly.access.Packed_MemRef_call1301471.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.us
  store double %polly.access.call1468.load.us, double* %polly.access.Packed_MemRef_call1301471.us, align 8
  br label %polly.merge462.us

polly.merge462.us:                                ; preds = %polly.then463.us, %polly.cond461.loopexit.us
  %polly.indvar_next447.us = add nuw nsw i64 %polly.indvar446.us, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar_next447.us, 50
  br i1 %exitcond1062.not, label %polly.loop_header472.preheader, label %polly.loop_header443.us

polly.cond461.loopexit.us:                        ; preds = %polly.loop_header450.us
  br i1 %.not920, label %polly.merge462.us, label %polly.then463.us

polly.loop_header437.split:                       ; preds = %polly.loop_header437
  br i1 %.not920, label %polly.loop_exit474, label %polly.loop_header443

polly.loop_exit474:                               ; preds = %polly.loop_exit481.loopexit.us, %polly.loop_header437.split, %polly.loop_header472.preheader
  %polly.indvar_next441 = add nuw nsw i64 %polly.indvar440, 1
  %indvars.iv.next1059 = add nsw i64 %indvars.iv1058, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar_next441, 4
  br i1 %exitcond1066.not, label %polly.loop_exit439, label %polly.loop_header437

polly.loop_header443:                             ; preds = %polly.loop_header437.split, %polly.loop_header443
  %polly.indvar446 = phi i64 [ %polly.indvar_next447, %polly.loop_header443 ], [ 0, %polly.loop_header437.split ]
  %polly.access.add.call1467 = add nuw nsw i64 %158, %polly.indvar446
  %polly.access.call1468 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467
  %polly.access.call1468.load = load double, double* %polly.access.call1468, align 8, !alias.scope !82, !noalias !89
  %polly.access.mul.Packed_MemRef_call1301469 = mul nuw nsw i64 %polly.indvar446, 1200
  %polly.access.add.Packed_MemRef_call1301470 = add nsw i64 %polly.access.mul.Packed_MemRef_call1301469, %156
  %polly.access.Packed_MemRef_call1301471 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470
  store double %polly.access.call1468.load, double* %polly.access.Packed_MemRef_call1301471, align 8
  %polly.indvar_next447 = add nuw nsw i64 %polly.indvar446, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar_next447, 50
  br i1 %exitcond1053.not, label %polly.loop_header472.preheader, label %polly.loop_header443

polly.loop_header472.preheader:                   ; preds = %polly.loop_header443, %polly.merge462.us
  %161 = mul nuw nsw i64 %157, 9600
  br i1 %polly.loop_guard4531130, label %polly.loop_header472.us, label %polly.loop_exit474

polly.loop_header472.us:                          ; preds = %polly.loop_header472.preheader, %polly.loop_exit481.loopexit.us
  %polly.indvar475.us = phi i64 [ %polly.indvar_next476.us, %polly.loop_exit481.loopexit.us ], [ 0, %polly.loop_header472.preheader ]
  %polly.access.mul.Packed_MemRef_call1301486.us = mul nuw nsw i64 %polly.indvar475.us, 1200
  %162 = add nuw nsw i64 %polly.indvar475.us, %148
  %polly.access.mul.Packed_MemRef_call2303490.us = mul nuw nsw i64 %162, 1200
  %polly.access.add.Packed_MemRef_call2303491.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2303490.us, %157
  %polly.access.Packed_MemRef_call2303492.us = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303491.us
  %_p_scalar_493.us = load double, double* %polly.access.Packed_MemRef_call2303492.us, align 8
  %polly.access.add.Packed_MemRef_call1301499.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1301486.us, %156
  %polly.access.Packed_MemRef_call1301500.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301499.us
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call1301500.us, align 8
  %min.iters.check1278 = icmp ult i64 %155, 4
  br i1 %min.iters.check1278, label %polly.loop_header479.us.preheader, label %vector.ph1279

vector.ph1279:                                    ; preds = %polly.loop_header472.us
  %n.vec1281 = and i64 %155, -4
  %broadcast.splatinsert1287 = insertelement <4 x double> poison, double %_p_scalar_493.us, i32 0
  %broadcast.splat1288 = shufflevector <4 x double> %broadcast.splatinsert1287, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1290 = insertelement <4 x double> poison, double %_p_scalar_501.us, i32 0
  %broadcast.splat1291 = shufflevector <4 x double> %broadcast.splatinsert1290, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1276

vector.body1276:                                  ; preds = %vector.body1276, %vector.ph1279
  %index1282 = phi i64 [ 0, %vector.ph1279 ], [ %index.next1283, %vector.body1276 ]
  %163 = add nuw nsw i64 %index1282, %151
  %164 = add nuw nsw i64 %index1282, %polly.access.mul.Packed_MemRef_call1301486.us
  %165 = getelementptr double, double* %Packed_MemRef_call1301, i64 %164
  %166 = bitcast double* %165 to <4 x double>*
  %wide.load1286 = load <4 x double>, <4 x double>* %166, align 8
  %167 = fmul fast <4 x double> %broadcast.splat1288, %wide.load1286
  %168 = add nuw nsw i64 %163, %polly.access.mul.Packed_MemRef_call2303490.us
  %169 = getelementptr double, double* %Packed_MemRef_call2303, i64 %168
  %170 = bitcast double* %169 to <4 x double>*
  %wide.load1289 = load <4 x double>, <4 x double>* %170, align 8
  %171 = fmul fast <4 x double> %broadcast.splat1291, %wide.load1289
  %172 = shl i64 %163, 3
  %173 = add nuw nsw i64 %172, %161
  %174 = getelementptr i8, i8* %call, i64 %173
  %175 = bitcast i8* %174 to <4 x double>*
  %wide.load1292 = load <4 x double>, <4 x double>* %175, align 8, !alias.scope !79, !noalias !81
  %176 = fadd fast <4 x double> %171, %167
  %177 = fmul fast <4 x double> %176, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %178 = fadd fast <4 x double> %177, %wide.load1292
  %179 = bitcast i8* %174 to <4 x double>*
  store <4 x double> %178, <4 x double>* %179, align 8, !alias.scope !79, !noalias !81
  %index.next1283 = add i64 %index1282, 4
  %180 = icmp eq i64 %index.next1283, %n.vec1281
  br i1 %180, label %middle.block1274, label %vector.body1276, !llvm.loop !90

middle.block1274:                                 ; preds = %vector.body1276
  %cmp.n1285 = icmp eq i64 %155, %n.vec1281
  br i1 %cmp.n1285, label %polly.loop_exit481.loopexit.us, label %polly.loop_header479.us.preheader

polly.loop_header479.us.preheader:                ; preds = %polly.loop_header472.us, %middle.block1274
  %polly.indvar483.us.ph = phi i64 [ 0, %polly.loop_header472.us ], [ %n.vec1281, %middle.block1274 ]
  br label %polly.loop_header479.us

polly.loop_header479.us:                          ; preds = %polly.loop_header479.us.preheader, %polly.loop_header479.us
  %polly.indvar483.us = phi i64 [ %polly.indvar_next484.us, %polly.loop_header479.us ], [ %polly.indvar483.us.ph, %polly.loop_header479.us.preheader ]
  %181 = add nuw nsw i64 %polly.indvar483.us, %151
  %polly.access.add.Packed_MemRef_call1301487.us = add nuw nsw i64 %polly.indvar483.us, %polly.access.mul.Packed_MemRef_call1301486.us
  %polly.access.Packed_MemRef_call1301488.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301487.us
  %_p_scalar_489.us = load double, double* %polly.access.Packed_MemRef_call1301488.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_493.us, %_p_scalar_489.us
  %polly.access.add.Packed_MemRef_call2303495.us = add nuw nsw i64 %181, %polly.access.mul.Packed_MemRef_call2303490.us
  %polly.access.Packed_MemRef_call2303496.us = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303495.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call2303496.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_501.us, %_p_scalar_497.us
  %182 = shl i64 %181, 3
  %183 = add nuw nsw i64 %182, %161
  %scevgep502.us = getelementptr i8, i8* %call, i64 %183
  %scevgep502503.us = bitcast i8* %scevgep502.us to double*
  %_p_scalar_504.us = load double, double* %scevgep502503.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_504.us
  store double %p_add42.i79.us, double* %scevgep502503.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next484.us = add nuw nsw i64 %polly.indvar483.us, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar483.us, %smin1063
  br i1 %exitcond1064.not, label %polly.loop_exit481.loopexit.us, label %polly.loop_header479.us, !llvm.loop !91

polly.loop_exit481.loopexit.us:                   ; preds = %polly.loop_header479.us, %middle.block1274
  %polly.indvar_next476.us = add nuw nsw i64 %polly.indvar475.us, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next476.us, 50
  br i1 %exitcond1065.not, label %polly.loop_exit474, label %polly.loop_header472.us

polly.start507:                                   ; preds = %init_array.exit
  %malloccall509 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall511 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header595

polly.exiting508:                                 ; preds = %polly.loop_exit635
  tail call void @free(i8* %malloccall509)
  tail call void @free(i8* %malloccall511)
  br label %kernel_syr2k.exit

polly.loop_header595:                             ; preds = %polly.loop_exit603, %polly.start507
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit603 ], [ 0, %polly.start507 ]
  %polly.indvar598 = phi i64 [ %polly.indvar_next599, %polly.loop_exit603 ], [ 1, %polly.start507 ]
  %184 = add i64 %indvar, 1
  %185 = mul nuw nsw i64 %polly.indvar598, 9600
  %scevgep607 = getelementptr i8, i8* %call, i64 %185
  %min.iters.check1220 = icmp ult i64 %184, 4
  br i1 %min.iters.check1220, label %polly.loop_header601.preheader, label %vector.ph1221

vector.ph1221:                                    ; preds = %polly.loop_header595
  %n.vec1223 = and i64 %184, -4
  br label %vector.body1219

vector.body1219:                                  ; preds = %vector.body1219, %vector.ph1221
  %index1224 = phi i64 [ 0, %vector.ph1221 ], [ %index.next1225, %vector.body1219 ]
  %186 = shl nuw nsw i64 %index1224, 3
  %187 = getelementptr i8, i8* %scevgep607, i64 %186
  %188 = bitcast i8* %187 to <4 x double>*
  %wide.load1228 = load <4 x double>, <4 x double>* %188, align 8, !alias.scope !92, !noalias !94
  %189 = fmul fast <4 x double> %wide.load1228, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %190 = bitcast i8* %187 to <4 x double>*
  store <4 x double> %189, <4 x double>* %190, align 8, !alias.scope !92, !noalias !94
  %index.next1225 = add i64 %index1224, 4
  %191 = icmp eq i64 %index.next1225, %n.vec1223
  br i1 %191, label %middle.block1217, label %vector.body1219, !llvm.loop !99

middle.block1217:                                 ; preds = %vector.body1219
  %cmp.n1227 = icmp eq i64 %184, %n.vec1223
  br i1 %cmp.n1227, label %polly.loop_exit603, label %polly.loop_header601.preheader

polly.loop_header601.preheader:                   ; preds = %polly.loop_header595, %middle.block1217
  %polly.indvar604.ph = phi i64 [ 0, %polly.loop_header595 ], [ %n.vec1223, %middle.block1217 ]
  br label %polly.loop_header601

polly.loop_exit603:                               ; preds = %polly.loop_header601, %middle.block1217
  %polly.indvar_next599 = add nuw nsw i64 %polly.indvar598, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar_next599, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1094.not, label %polly.loop_header611.preheader, label %polly.loop_header595

polly.loop_header611.preheader:                   ; preds = %polly.loop_exit603
  %Packed_MemRef_call1510 = bitcast i8* %malloccall509 to double*
  %Packed_MemRef_call2512 = bitcast i8* %malloccall511 to double*
  br label %polly.loop_header611

polly.loop_header601:                             ; preds = %polly.loop_header601.preheader, %polly.loop_header601
  %polly.indvar604 = phi i64 [ %polly.indvar_next605, %polly.loop_header601 ], [ %polly.indvar604.ph, %polly.loop_header601.preheader ]
  %192 = shl nuw nsw i64 %polly.indvar604, 3
  %scevgep608 = getelementptr i8, i8* %scevgep607, i64 %192
  %scevgep608609 = bitcast i8* %scevgep608 to double*
  %_p_scalar_610 = load double, double* %scevgep608609, align 8, !alias.scope !92, !noalias !94
  %p_mul.i = fmul fast double %_p_scalar_610, 1.200000e+00
  store double %p_mul.i, double* %scevgep608609, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next605 = add nuw nsw i64 %polly.indvar604, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar_next605, %polly.indvar598
  br i1 %exitcond1093.not, label %polly.loop_exit603, label %polly.loop_header601, !llvm.loop !100

polly.loop_header611:                             ; preds = %polly.loop_header611.preheader, %polly.loop_exit619
  %polly.indvar614 = phi i64 [ %polly.indvar_next615, %polly.loop_exit619 ], [ 0, %polly.loop_header611.preheader ]
  %polly.access.mul.Packed_MemRef_call2512 = mul nuw nsw i64 %polly.indvar614, 1200
  br label %polly.loop_header617

polly.loop_exit619:                               ; preds = %polly.loop_header617
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar_next615, 1000
  br i1 %exitcond1092.not, label %polly.loop_header627, label %polly.loop_header611

polly.loop_header617:                             ; preds = %polly.loop_header617, %polly.loop_header611
  %polly.indvar620 = phi i64 [ 0, %polly.loop_header611 ], [ %polly.indvar_next621, %polly.loop_header617 ]
  %polly.access.mul.call2624 = mul nuw nsw i64 %polly.indvar620, 1000
  %polly.access.add.call2625 = add nuw nsw i64 %polly.access.mul.call2624, %polly.indvar614
  %polly.access.call2626 = getelementptr double, double* %polly.access.cast.call2728, i64 %polly.access.add.call2625
  %polly.access.call2626.load = load double, double* %polly.access.call2626, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2512 = add nuw nsw i64 %polly.indvar620, %polly.access.mul.Packed_MemRef_call2512
  %polly.access.Packed_MemRef_call2512 = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512
  store double %polly.access.call2626.load, double* %polly.access.Packed_MemRef_call2512, align 8
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar_next621, 1200
  br i1 %exitcond1091.not, label %polly.loop_exit619, label %polly.loop_header617

polly.loop_header627:                             ; preds = %polly.loop_exit619, %polly.loop_exit635
  %indvars.iv1075 = phi i64 [ %indvars.iv.next1076, %polly.loop_exit635 ], [ 0, %polly.loop_exit619 ]
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_exit635 ], [ 0, %polly.loop_exit619 ]
  %193 = shl nuw nsw i64 %polly.indvar630, 2
  %194 = lshr i64 %polly.indvar630, 6
  %195 = shl nsw i64 %polly.indvar630, 2
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit642
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %indvars.iv.next1076 = add nuw nsw i64 %indvars.iv1075, 4
  %exitcond1090.not = icmp eq i64 %polly.indvar_next631, 300
  br i1 %exitcond1090.not, label %polly.exiting508, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit642, %polly.loop_header627
  %polly.indvar636 = phi i64 [ 0, %polly.loop_header627 ], [ %polly.indvar_next637, %polly.loop_exit642 ]
  %196 = mul nuw nsw i64 %polly.indvar636, 50
  br label %polly.loop_header640

polly.loop_exit642:                               ; preds = %polly.loop_exit648
  %polly.indvar_next637 = add nuw nsw i64 %polly.indvar636, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next637, 20
  br i1 %exitcond1089.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header640:                             ; preds = %polly.loop_exit648, %polly.loop_header633
  %indvars.iv1077 = phi i64 [ %indvars.iv.next1078, %polly.loop_exit648 ], [ %indvars.iv1075, %polly.loop_header633 ]
  %polly.indvar643 = phi i64 [ %polly.indvar_next644, %polly.loop_exit648 ], [ 0, %polly.loop_header633 ]
  %197 = mul nsw i64 %polly.indvar643, -256
  %198 = add i64 %193, %197
  %199 = shl nsw i64 %polly.indvar643, 8
  %200 = sub nsw i64 %195, %199
  %201 = add nuw nsw i64 %199, 256
  br label %polly.loop_header646

polly.loop_exit648:                               ; preds = %polly.loop_exit683
  %polly.indvar_next644 = add nuw nsw i64 %polly.indvar643, 1
  %indvars.iv.next1078 = add nsw i64 %indvars.iv1077, -256
  %exitcond1088.not = icmp eq i64 %polly.indvar643, %194
  br i1 %exitcond1088.not, label %polly.loop_exit642, label %polly.loop_header640

polly.loop_header646:                             ; preds = %polly.loop_exit683, %polly.loop_header640
  %indvars.iv1079 = phi i64 [ %indvars.iv.next1080, %polly.loop_exit683 ], [ %indvars.iv1077, %polly.loop_header640 ]
  %polly.indvar649 = phi i64 [ %polly.indvar_next650, %polly.loop_exit683 ], [ 0, %polly.loop_header640 ]
  %202 = add i64 %198, %polly.indvar649
  %smin1232 = call i64 @llvm.smin.i64(i64 %202, i64 255)
  %203 = add nsw i64 %smin1232, 1
  %smin1084 = call i64 @llvm.smin.i64(i64 %indvars.iv1079, i64 255)
  %204 = add nsw i64 %polly.indvar649, %200
  %polly.loop_guard6621131 = icmp sgt i64 %204, -1
  %205 = add nuw nsw i64 %polly.indvar649, %195
  %.not921 = icmp ult i64 %205, %201
  %polly.access.mul.call1675 = mul nuw nsw i64 %205, 1000
  %206 = add nuw nsw i64 %polly.access.mul.call1675, %196
  br i1 %polly.loop_guard6621131, label %polly.loop_header652.us, label %polly.loop_header646.split

polly.loop_header652.us:                          ; preds = %polly.loop_header646, %polly.merge671.us
  %polly.indvar655.us = phi i64 [ %polly.indvar_next656.us, %polly.merge671.us ], [ 0, %polly.loop_header646 ]
  %207 = add nuw nsw i64 %polly.indvar655.us, %196
  %polly.access.mul.Packed_MemRef_call1510.us = mul nuw nsw i64 %polly.indvar655.us, 1200
  br label %polly.loop_header659.us

polly.loop_header659.us:                          ; preds = %polly.loop_header652.us, %polly.loop_header659.us
  %polly.indvar663.us = phi i64 [ %polly.indvar_next664.us, %polly.loop_header659.us ], [ 0, %polly.loop_header652.us ]
  %208 = add nuw nsw i64 %polly.indvar663.us, %199
  %polly.access.mul.call1667.us = mul nuw nsw i64 %208, 1000
  %polly.access.add.call1668.us = add nuw nsw i64 %207, %polly.access.mul.call1667.us
  %polly.access.call1669.us = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1668.us
  %polly.access.call1669.load.us = load double, double* %polly.access.call1669.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1510.us = add nuw nsw i64 %polly.indvar663.us, %polly.access.mul.Packed_MemRef_call1510.us
  %polly.access.Packed_MemRef_call1510.us = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510.us
  store double %polly.access.call1669.load.us, double* %polly.access.Packed_MemRef_call1510.us, align 8
  %polly.indvar_next664.us = add nuw nsw i64 %polly.indvar663.us, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar663.us, %smin1084
  br i1 %exitcond1082.not, label %polly.cond670.loopexit.us, label %polly.loop_header659.us

polly.then672.us:                                 ; preds = %polly.cond670.loopexit.us
  %polly.access.add.call1676.us = add nuw nsw i64 %206, %polly.indvar655.us
  %polly.access.call1677.us = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.us
  %polly.access.call1677.load.us = load double, double* %polly.access.call1677.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1510679.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1510.us, %204
  %polly.access.Packed_MemRef_call1510680.us = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.us
  store double %polly.access.call1677.load.us, double* %polly.access.Packed_MemRef_call1510680.us, align 8
  br label %polly.merge671.us

polly.merge671.us:                                ; preds = %polly.then672.us, %polly.cond670.loopexit.us
  %polly.indvar_next656.us = add nuw nsw i64 %polly.indvar655.us, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next656.us, 50
  br i1 %exitcond1083.not, label %polly.loop_header681.preheader, label %polly.loop_header652.us

polly.cond670.loopexit.us:                        ; preds = %polly.loop_header659.us
  br i1 %.not921, label %polly.merge671.us, label %polly.then672.us

polly.loop_header646.split:                       ; preds = %polly.loop_header646
  br i1 %.not921, label %polly.loop_exit683, label %polly.loop_header652

polly.loop_exit683:                               ; preds = %polly.loop_exit690.loopexit.us, %polly.loop_header646.split, %polly.loop_header681.preheader
  %polly.indvar_next650 = add nuw nsw i64 %polly.indvar649, 1
  %indvars.iv.next1080 = add nsw i64 %indvars.iv1079, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar_next650, 4
  br i1 %exitcond1087.not, label %polly.loop_exit648, label %polly.loop_header646

polly.loop_header652:                             ; preds = %polly.loop_header646.split, %polly.loop_header652
  %polly.indvar655 = phi i64 [ %polly.indvar_next656, %polly.loop_header652 ], [ 0, %polly.loop_header646.split ]
  %polly.access.add.call1676 = add nuw nsw i64 %206, %polly.indvar655
  %polly.access.call1677 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676
  %polly.access.call1677.load = load double, double* %polly.access.call1677, align 8, !alias.scope !95, !noalias !102
  %polly.access.mul.Packed_MemRef_call1510678 = mul nuw nsw i64 %polly.indvar655, 1200
  %polly.access.add.Packed_MemRef_call1510679 = add nsw i64 %polly.access.mul.Packed_MemRef_call1510678, %204
  %polly.access.Packed_MemRef_call1510680 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679
  store double %polly.access.call1677.load, double* %polly.access.Packed_MemRef_call1510680, align 8
  %polly.indvar_next656 = add nuw nsw i64 %polly.indvar655, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar_next656, 50
  br i1 %exitcond1074.not, label %polly.loop_header681.preheader, label %polly.loop_header652

polly.loop_header681.preheader:                   ; preds = %polly.loop_header652, %polly.merge671.us
  %209 = mul nuw nsw i64 %205, 9600
  br i1 %polly.loop_guard6621131, label %polly.loop_header681.us, label %polly.loop_exit683

polly.loop_header681.us:                          ; preds = %polly.loop_header681.preheader, %polly.loop_exit690.loopexit.us
  %polly.indvar684.us = phi i64 [ %polly.indvar_next685.us, %polly.loop_exit690.loopexit.us ], [ 0, %polly.loop_header681.preheader ]
  %polly.access.mul.Packed_MemRef_call1510695.us = mul nuw nsw i64 %polly.indvar684.us, 1200
  %210 = add nuw nsw i64 %polly.indvar684.us, %196
  %polly.access.mul.Packed_MemRef_call2512699.us = mul nuw nsw i64 %210, 1200
  %polly.access.add.Packed_MemRef_call2512700.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2512699.us, %205
  %polly.access.Packed_MemRef_call2512701.us = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512700.us
  %_p_scalar_702.us = load double, double* %polly.access.Packed_MemRef_call2512701.us, align 8
  %polly.access.add.Packed_MemRef_call1510708.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1510695.us, %204
  %polly.access.Packed_MemRef_call1510709.us = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510708.us
  %_p_scalar_710.us = load double, double* %polly.access.Packed_MemRef_call1510709.us, align 8
  %min.iters.check1233 = icmp ult i64 %203, 4
  br i1 %min.iters.check1233, label %polly.loop_header688.us.preheader, label %vector.ph1234

vector.ph1234:                                    ; preds = %polly.loop_header681.us
  %n.vec1236 = and i64 %203, -4
  %broadcast.splatinsert1242 = insertelement <4 x double> poison, double %_p_scalar_702.us, i32 0
  %broadcast.splat1243 = shufflevector <4 x double> %broadcast.splatinsert1242, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1245 = insertelement <4 x double> poison, double %_p_scalar_710.us, i32 0
  %broadcast.splat1246 = shufflevector <4 x double> %broadcast.splatinsert1245, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1231

vector.body1231:                                  ; preds = %vector.body1231, %vector.ph1234
  %index1237 = phi i64 [ 0, %vector.ph1234 ], [ %index.next1238, %vector.body1231 ]
  %211 = add nuw nsw i64 %index1237, %199
  %212 = add nuw nsw i64 %index1237, %polly.access.mul.Packed_MemRef_call1510695.us
  %213 = getelementptr double, double* %Packed_MemRef_call1510, i64 %212
  %214 = bitcast double* %213 to <4 x double>*
  %wide.load1241 = load <4 x double>, <4 x double>* %214, align 8
  %215 = fmul fast <4 x double> %broadcast.splat1243, %wide.load1241
  %216 = add nuw nsw i64 %211, %polly.access.mul.Packed_MemRef_call2512699.us
  %217 = getelementptr double, double* %Packed_MemRef_call2512, i64 %216
  %218 = bitcast double* %217 to <4 x double>*
  %wide.load1244 = load <4 x double>, <4 x double>* %218, align 8
  %219 = fmul fast <4 x double> %broadcast.splat1246, %wide.load1244
  %220 = shl i64 %211, 3
  %221 = add nuw nsw i64 %220, %209
  %222 = getelementptr i8, i8* %call, i64 %221
  %223 = bitcast i8* %222 to <4 x double>*
  %wide.load1247 = load <4 x double>, <4 x double>* %223, align 8, !alias.scope !92, !noalias !94
  %224 = fadd fast <4 x double> %219, %215
  %225 = fmul fast <4 x double> %224, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %226 = fadd fast <4 x double> %225, %wide.load1247
  %227 = bitcast i8* %222 to <4 x double>*
  store <4 x double> %226, <4 x double>* %227, align 8, !alias.scope !92, !noalias !94
  %index.next1238 = add i64 %index1237, 4
  %228 = icmp eq i64 %index.next1238, %n.vec1236
  br i1 %228, label %middle.block1229, label %vector.body1231, !llvm.loop !103

middle.block1229:                                 ; preds = %vector.body1231
  %cmp.n1240 = icmp eq i64 %203, %n.vec1236
  br i1 %cmp.n1240, label %polly.loop_exit690.loopexit.us, label %polly.loop_header688.us.preheader

polly.loop_header688.us.preheader:                ; preds = %polly.loop_header681.us, %middle.block1229
  %polly.indvar692.us.ph = phi i64 [ 0, %polly.loop_header681.us ], [ %n.vec1236, %middle.block1229 ]
  br label %polly.loop_header688.us

polly.loop_header688.us:                          ; preds = %polly.loop_header688.us.preheader, %polly.loop_header688.us
  %polly.indvar692.us = phi i64 [ %polly.indvar_next693.us, %polly.loop_header688.us ], [ %polly.indvar692.us.ph, %polly.loop_header688.us.preheader ]
  %229 = add nuw nsw i64 %polly.indvar692.us, %199
  %polly.access.add.Packed_MemRef_call1510696.us = add nuw nsw i64 %polly.indvar692.us, %polly.access.mul.Packed_MemRef_call1510695.us
  %polly.access.Packed_MemRef_call1510697.us = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510696.us
  %_p_scalar_698.us = load double, double* %polly.access.Packed_MemRef_call1510697.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_702.us, %_p_scalar_698.us
  %polly.access.add.Packed_MemRef_call2512704.us = add nuw nsw i64 %229, %polly.access.mul.Packed_MemRef_call2512699.us
  %polly.access.Packed_MemRef_call2512705.us = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512704.us
  %_p_scalar_706.us = load double, double* %polly.access.Packed_MemRef_call2512705.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_710.us, %_p_scalar_706.us
  %230 = shl i64 %229, 3
  %231 = add nuw nsw i64 %230, %209
  %scevgep711.us = getelementptr i8, i8* %call, i64 %231
  %scevgep711712.us = bitcast i8* %scevgep711.us to double*
  %_p_scalar_713.us = load double, double* %scevgep711712.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_713.us
  store double %p_add42.i.us, double* %scevgep711712.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next693.us = add nuw nsw i64 %polly.indvar692.us, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar692.us, %smin1084
  br i1 %exitcond1085.not, label %polly.loop_exit690.loopexit.us, label %polly.loop_header688.us, !llvm.loop !104

polly.loop_exit690.loopexit.us:                   ; preds = %polly.loop_header688.us, %middle.block1229
  %polly.indvar_next685.us = add nuw nsw i64 %polly.indvar684.us, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar_next685.us, 50
  br i1 %exitcond1086.not, label %polly.loop_exit683, label %polly.loop_header681.us

polly.loop_header840:                             ; preds = %entry, %polly.loop_exit848
  %indvars.iv1119 = phi i64 [ %indvars.iv.next1120, %polly.loop_exit848 ], [ 0, %entry ]
  %polly.indvar843 = phi i64 [ %polly.indvar_next844, %polly.loop_exit848 ], [ 0, %entry ]
  %smin1121 = call i64 @llvm.smin.i64(i64 %indvars.iv1119, i64 -1168)
  %232 = shl nsw i64 %polly.indvar843, 5
  %233 = add nsw i64 %smin1121, 1199
  br label %polly.loop_header846

polly.loop_exit848:                               ; preds = %polly.loop_exit854
  %polly.indvar_next844 = add nuw nsw i64 %polly.indvar843, 1
  %indvars.iv.next1120 = add nsw i64 %indvars.iv1119, -32
  %exitcond1124.not = icmp eq i64 %polly.indvar_next844, 38
  br i1 %exitcond1124.not, label %polly.loop_header867, label %polly.loop_header840

polly.loop_header846:                             ; preds = %polly.loop_exit854, %polly.loop_header840
  %indvars.iv1115 = phi i64 [ %indvars.iv.next1116, %polly.loop_exit854 ], [ 0, %polly.loop_header840 ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %polly.loop_header840 ]
  %234 = mul nsw i64 %polly.indvar849, -32
  %smin = call i64 @llvm.smin.i64(i64 %234, i64 -1168)
  %235 = add nsw i64 %smin, 1200
  %smin1117 = call i64 @llvm.smin.i64(i64 %indvars.iv1115, i64 -1168)
  %236 = shl nsw i64 %polly.indvar849, 5
  %237 = add nsw i64 %smin1117, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1116 = add nsw i64 %indvars.iv1115, -32
  %exitcond1123.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1123.not, label %polly.loop_exit848, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %polly.indvar855 = phi i64 [ 0, %polly.loop_header846 ], [ %polly.indvar_next856, %polly.loop_exit860 ]
  %238 = add nuw nsw i64 %polly.indvar855, %232
  %239 = trunc i64 %238 to i32
  %240 = mul nuw nsw i64 %238, 9600
  %min.iters.check = icmp eq i64 %235, 0
  br i1 %min.iters.check, label %polly.loop_header858, label %vector.ph1159

vector.ph1159:                                    ; preds = %polly.loop_header852
  %broadcast.splatinsert1166 = insertelement <4 x i64> poison, i64 %236, i32 0
  %broadcast.splat1167 = shufflevector <4 x i64> %broadcast.splatinsert1166, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1168 = insertelement <4 x i32> poison, i32 %239, i32 0
  %broadcast.splat1169 = shufflevector <4 x i32> %broadcast.splatinsert1168, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1158

vector.body1158:                                  ; preds = %vector.body1158, %vector.ph1159
  %index1160 = phi i64 [ 0, %vector.ph1159 ], [ %index.next1161, %vector.body1158 ]
  %vec.ind1164 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1159 ], [ %vec.ind.next1165, %vector.body1158 ]
  %241 = add nuw nsw <4 x i64> %vec.ind1164, %broadcast.splat1167
  %242 = trunc <4 x i64> %241 to <4 x i32>
  %243 = mul <4 x i32> %broadcast.splat1169, %242
  %244 = add <4 x i32> %243, <i32 3, i32 3, i32 3, i32 3>
  %245 = urem <4 x i32> %244, <i32 1200, i32 1200, i32 1200, i32 1200>
  %246 = sitofp <4 x i32> %245 to <4 x double>
  %247 = fmul fast <4 x double> %246, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %248 = extractelement <4 x i64> %241, i32 0
  %249 = shl i64 %248, 3
  %250 = add nuw nsw i64 %249, %240
  %251 = getelementptr i8, i8* %call, i64 %250
  %252 = bitcast i8* %251 to <4 x double>*
  store <4 x double> %247, <4 x double>* %252, align 8, !alias.scope !105, !noalias !107
  %index.next1161 = add i64 %index1160, 4
  %vec.ind.next1165 = add <4 x i64> %vec.ind1164, <i64 4, i64 4, i64 4, i64 4>
  %253 = icmp eq i64 %index.next1161, %235
  br i1 %253, label %polly.loop_exit860, label %vector.body1158, !llvm.loop !110

polly.loop_exit860:                               ; preds = %vector.body1158, %polly.loop_header858
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar855, %233
  br i1 %exitcond1122.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_header852, %polly.loop_header858
  %polly.indvar861 = phi i64 [ %polly.indvar_next862, %polly.loop_header858 ], [ 0, %polly.loop_header852 ]
  %254 = add nuw nsw i64 %polly.indvar861, %236
  %255 = trunc i64 %254 to i32
  %256 = mul i32 %255, %239
  %257 = add i32 %256, 3
  %258 = urem i32 %257, 1200
  %p_conv31.i = sitofp i32 %258 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %259 = shl i64 %254, 3
  %260 = add nuw nsw i64 %259, %240
  %scevgep864 = getelementptr i8, i8* %call, i64 %260
  %scevgep864865 = bitcast i8* %scevgep864 to double*
  store double %p_div33.i, double* %scevgep864865, align 8, !alias.scope !105, !noalias !107
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar861, %237
  br i1 %exitcond1118.not, label %polly.loop_exit860, label %polly.loop_header858, !llvm.loop !111

polly.loop_header867:                             ; preds = %polly.loop_exit848, %polly.loop_exit875
  %indvars.iv1109 = phi i64 [ %indvars.iv.next1110, %polly.loop_exit875 ], [ 0, %polly.loop_exit848 ]
  %polly.indvar870 = phi i64 [ %polly.indvar_next871, %polly.loop_exit875 ], [ 0, %polly.loop_exit848 ]
  %smin1111 = call i64 @llvm.smin.i64(i64 %indvars.iv1109, i64 -1168)
  %261 = shl nsw i64 %polly.indvar870, 5
  %262 = add nsw i64 %smin1111, 1199
  br label %polly.loop_header873

polly.loop_exit875:                               ; preds = %polly.loop_exit881
  %polly.indvar_next871 = add nuw nsw i64 %polly.indvar870, 1
  %indvars.iv.next1110 = add nsw i64 %indvars.iv1109, -32
  %exitcond1114.not = icmp eq i64 %polly.indvar_next871, 38
  br i1 %exitcond1114.not, label %polly.loop_header893, label %polly.loop_header867

polly.loop_header873:                             ; preds = %polly.loop_exit881, %polly.loop_header867
  %indvars.iv1105 = phi i64 [ %indvars.iv.next1106, %polly.loop_exit881 ], [ 0, %polly.loop_header867 ]
  %polly.indvar876 = phi i64 [ %polly.indvar_next877, %polly.loop_exit881 ], [ 0, %polly.loop_header867 ]
  %263 = mul nsw i64 %polly.indvar876, -32
  %smin1173 = call i64 @llvm.smin.i64(i64 %263, i64 -968)
  %264 = add nsw i64 %smin1173, 1000
  %smin1107 = call i64 @llvm.smin.i64(i64 %indvars.iv1105, i64 -968)
  %265 = shl nsw i64 %polly.indvar876, 5
  %266 = add nsw i64 %smin1107, 999
  br label %polly.loop_header879

polly.loop_exit881:                               ; preds = %polly.loop_exit887
  %polly.indvar_next877 = add nuw nsw i64 %polly.indvar876, 1
  %indvars.iv.next1106 = add nsw i64 %indvars.iv1105, -32
  %exitcond1113.not = icmp eq i64 %polly.indvar_next877, 32
  br i1 %exitcond1113.not, label %polly.loop_exit875, label %polly.loop_header873

polly.loop_header879:                             ; preds = %polly.loop_exit887, %polly.loop_header873
  %polly.indvar882 = phi i64 [ 0, %polly.loop_header873 ], [ %polly.indvar_next883, %polly.loop_exit887 ]
  %267 = add nuw nsw i64 %polly.indvar882, %261
  %268 = trunc i64 %267 to i32
  %269 = mul nuw nsw i64 %267, 8000
  %min.iters.check1174 = icmp eq i64 %264, 0
  br i1 %min.iters.check1174, label %polly.loop_header885, label %vector.ph1175

vector.ph1175:                                    ; preds = %polly.loop_header879
  %broadcast.splatinsert1184 = insertelement <4 x i64> poison, i64 %265, i32 0
  %broadcast.splat1185 = shufflevector <4 x i64> %broadcast.splatinsert1184, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1186 = insertelement <4 x i32> poison, i32 %268, i32 0
  %broadcast.splat1187 = shufflevector <4 x i32> %broadcast.splatinsert1186, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1172

vector.body1172:                                  ; preds = %vector.body1172, %vector.ph1175
  %index1178 = phi i64 [ 0, %vector.ph1175 ], [ %index.next1179, %vector.body1172 ]
  %vec.ind1182 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1175 ], [ %vec.ind.next1183, %vector.body1172 ]
  %270 = add nuw nsw <4 x i64> %vec.ind1182, %broadcast.splat1185
  %271 = trunc <4 x i64> %270 to <4 x i32>
  %272 = mul <4 x i32> %broadcast.splat1187, %271
  %273 = add <4 x i32> %272, <i32 2, i32 2, i32 2, i32 2>
  %274 = urem <4 x i32> %273, <i32 1000, i32 1000, i32 1000, i32 1000>
  %275 = sitofp <4 x i32> %274 to <4 x double>
  %276 = fmul fast <4 x double> %275, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %277 = extractelement <4 x i64> %270, i32 0
  %278 = shl i64 %277, 3
  %279 = add nuw nsw i64 %278, %269
  %280 = getelementptr i8, i8* %call2, i64 %279
  %281 = bitcast i8* %280 to <4 x double>*
  store <4 x double> %276, <4 x double>* %281, align 8, !alias.scope !109, !noalias !112
  %index.next1179 = add i64 %index1178, 4
  %vec.ind.next1183 = add <4 x i64> %vec.ind1182, <i64 4, i64 4, i64 4, i64 4>
  %282 = icmp eq i64 %index.next1179, %264
  br i1 %282, label %polly.loop_exit887, label %vector.body1172, !llvm.loop !113

polly.loop_exit887:                               ; preds = %vector.body1172, %polly.loop_header885
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar882, %262
  br i1 %exitcond1112.not, label %polly.loop_exit881, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_header879, %polly.loop_header885
  %polly.indvar888 = phi i64 [ %polly.indvar_next889, %polly.loop_header885 ], [ 0, %polly.loop_header879 ]
  %283 = add nuw nsw i64 %polly.indvar888, %265
  %284 = trunc i64 %283 to i32
  %285 = mul i32 %284, %268
  %286 = add i32 %285, 2
  %287 = urem i32 %286, 1000
  %p_conv10.i = sitofp i32 %287 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %288 = shl i64 %283, 3
  %289 = add nuw nsw i64 %288, %269
  %scevgep891 = getelementptr i8, i8* %call2, i64 %289
  %scevgep891892 = bitcast i8* %scevgep891 to double*
  store double %p_div12.i, double* %scevgep891892, align 8, !alias.scope !109, !noalias !112
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar888, %266
  br i1 %exitcond1108.not, label %polly.loop_exit887, label %polly.loop_header885, !llvm.loop !114

polly.loop_header893:                             ; preds = %polly.loop_exit875, %polly.loop_exit901
  %indvars.iv1099 = phi i64 [ %indvars.iv.next1100, %polly.loop_exit901 ], [ 0, %polly.loop_exit875 ]
  %polly.indvar896 = phi i64 [ %polly.indvar_next897, %polly.loop_exit901 ], [ 0, %polly.loop_exit875 ]
  %smin1101 = call i64 @llvm.smin.i64(i64 %indvars.iv1099, i64 -1168)
  %290 = shl nsw i64 %polly.indvar896, 5
  %291 = add nsw i64 %smin1101, 1199
  br label %polly.loop_header899

polly.loop_exit901:                               ; preds = %polly.loop_exit907
  %polly.indvar_next897 = add nuw nsw i64 %polly.indvar896, 1
  %indvars.iv.next1100 = add nsw i64 %indvars.iv1099, -32
  %exitcond1104.not = icmp eq i64 %polly.indvar_next897, 38
  br i1 %exitcond1104.not, label %init_array.exit, label %polly.loop_header893

polly.loop_header899:                             ; preds = %polly.loop_exit907, %polly.loop_header893
  %indvars.iv1095 = phi i64 [ %indvars.iv.next1096, %polly.loop_exit907 ], [ 0, %polly.loop_header893 ]
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_exit907 ], [ 0, %polly.loop_header893 ]
  %292 = mul nsw i64 %polly.indvar902, -32
  %smin1191 = call i64 @llvm.smin.i64(i64 %292, i64 -968)
  %293 = add nsw i64 %smin1191, 1000
  %smin1097 = call i64 @llvm.smin.i64(i64 %indvars.iv1095, i64 -968)
  %294 = shl nsw i64 %polly.indvar902, 5
  %295 = add nsw i64 %smin1097, 999
  br label %polly.loop_header905

polly.loop_exit907:                               ; preds = %polly.loop_exit913
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %indvars.iv.next1096 = add nsw i64 %indvars.iv1095, -32
  %exitcond1103.not = icmp eq i64 %polly.indvar_next903, 32
  br i1 %exitcond1103.not, label %polly.loop_exit901, label %polly.loop_header899

polly.loop_header905:                             ; preds = %polly.loop_exit913, %polly.loop_header899
  %polly.indvar908 = phi i64 [ 0, %polly.loop_header899 ], [ %polly.indvar_next909, %polly.loop_exit913 ]
  %296 = add nuw nsw i64 %polly.indvar908, %290
  %297 = trunc i64 %296 to i32
  %298 = mul nuw nsw i64 %296, 8000
  %min.iters.check1192 = icmp eq i64 %293, 0
  br i1 %min.iters.check1192, label %polly.loop_header911, label %vector.ph1193

vector.ph1193:                                    ; preds = %polly.loop_header905
  %broadcast.splatinsert1202 = insertelement <4 x i64> poison, i64 %294, i32 0
  %broadcast.splat1203 = shufflevector <4 x i64> %broadcast.splatinsert1202, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1204 = insertelement <4 x i32> poison, i32 %297, i32 0
  %broadcast.splat1205 = shufflevector <4 x i32> %broadcast.splatinsert1204, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1190

vector.body1190:                                  ; preds = %vector.body1190, %vector.ph1193
  %index1196 = phi i64 [ 0, %vector.ph1193 ], [ %index.next1197, %vector.body1190 ]
  %vec.ind1200 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1193 ], [ %vec.ind.next1201, %vector.body1190 ]
  %299 = add nuw nsw <4 x i64> %vec.ind1200, %broadcast.splat1203
  %300 = trunc <4 x i64> %299 to <4 x i32>
  %301 = mul <4 x i32> %broadcast.splat1205, %300
  %302 = add <4 x i32> %301, <i32 1, i32 1, i32 1, i32 1>
  %303 = urem <4 x i32> %302, <i32 1200, i32 1200, i32 1200, i32 1200>
  %304 = sitofp <4 x i32> %303 to <4 x double>
  %305 = fmul fast <4 x double> %304, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %306 = extractelement <4 x i64> %299, i32 0
  %307 = shl i64 %306, 3
  %308 = add nuw nsw i64 %307, %298
  %309 = getelementptr i8, i8* %call1, i64 %308
  %310 = bitcast i8* %309 to <4 x double>*
  store <4 x double> %305, <4 x double>* %310, align 8, !alias.scope !108, !noalias !115
  %index.next1197 = add i64 %index1196, 4
  %vec.ind.next1201 = add <4 x i64> %vec.ind1200, <i64 4, i64 4, i64 4, i64 4>
  %311 = icmp eq i64 %index.next1197, %293
  br i1 %311, label %polly.loop_exit913, label %vector.body1190, !llvm.loop !116

polly.loop_exit913:                               ; preds = %vector.body1190, %polly.loop_header911
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar908, %291
  br i1 %exitcond1102.not, label %polly.loop_exit907, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_header905, %polly.loop_header911
  %polly.indvar914 = phi i64 [ %polly.indvar_next915, %polly.loop_header911 ], [ 0, %polly.loop_header905 ]
  %312 = add nuw nsw i64 %polly.indvar914, %294
  %313 = trunc i64 %312 to i32
  %314 = mul i32 %313, %297
  %315 = add i32 %314, 1
  %316 = urem i32 %315, 1200
  %p_conv.i = sitofp i32 %316 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %317 = shl i64 %312, 3
  %318 = add nuw nsw i64 %317, %298
  %scevgep918 = getelementptr i8, i8* %call1, i64 %318
  %scevgep918919 = bitcast i8* %scevgep918 to double*
  store double %p_div.i, double* %scevgep918919, align 8, !alias.scope !108, !noalias !115
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar914, %295
  br i1 %exitcond1098.not, label %polly.loop_exit913, label %polly.loop_header911, !llvm.loop !117
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
!26 = !{!"llvm.loop.tile.size", i32 256}
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
!45 = distinct !{!45, !12, !24, !46, !47, !48, !49, !50, !54}
!46 = !{!"llvm.loop.id", !"i"}
!47 = !{!"llvm.loop.tile.enable", i1 true}
!48 = !{!"llvm.loop.tile.depth", i32 3}
!49 = !{!"llvm.loop.tile.size", i32 4}
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
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !74, !13}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84, !85}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call1"}
!85 = distinct !{!85, !80, !"polly.alias.scope.Packed_MemRef_call2"}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !74, !13}
!88 = !{!79, !82, !84, !85}
!89 = !{!79, !83, !84, !85}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !74, !13}
!92 = distinct !{!92, !93, !"polly.alias.scope.MemRef_call"}
!93 = distinct !{!93, !"polly.alias.scope.domain"}
!94 = !{!95, !96, !97, !98}
!95 = distinct !{!95, !93, !"polly.alias.scope.MemRef_call1"}
!96 = distinct !{!96, !93, !"polly.alias.scope.MemRef_call2"}
!97 = distinct !{!97, !93, !"polly.alias.scope.Packed_MemRef_call1"}
!98 = distinct !{!98, !93, !"polly.alias.scope.Packed_MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !74, !13}
!101 = !{!92, !95, !97, !98}
!102 = !{!92, !96, !97, !98}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !74, !13}
!105 = distinct !{!105, !106, !"polly.alias.scope.MemRef_call"}
!106 = distinct !{!106, !"polly.alias.scope.domain"}
!107 = !{!108, !109}
!108 = distinct !{!108, !106, !"polly.alias.scope.MemRef_call1"}
!109 = distinct !{!109, !106, !"polly.alias.scope.MemRef_call2"}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !74, !13}
!112 = !{!108, !105}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !74, !13}
!115 = !{!109, !105}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !74, !13}
