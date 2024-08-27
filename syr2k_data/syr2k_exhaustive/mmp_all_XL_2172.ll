; ModuleID = 'syr2k_exhaustive/mmp_all_XL_2172.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_2172.c"
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
  %call854 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1706 = bitcast i8* %call1 to double*
  %polly.access.call1715 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2716 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1715, %call2
  %polly.access.call2735 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2735, %call1
  %2 = or i1 %0, %1
  %polly.access.call755 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call755, %call2
  %4 = icmp ule i8* %polly.access.call2735, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call755, %call1
  %8 = icmp ule i8* %polly.access.call1715, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header828, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1140 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1139 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1138 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1137 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1137, %scevgep1140
  %bound1 = icmp ult i8* %scevgep1139, %scevgep1138
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
  br i1 %exitcond18.not.i, label %vector.ph1144, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1144:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1151 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1152 = shufflevector <4 x i64> %broadcast.splatinsert1151, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1143

vector.body1143:                                  ; preds = %vector.body1143, %vector.ph1144
  %index1145 = phi i64 [ 0, %vector.ph1144 ], [ %index.next1146, %vector.body1143 ]
  %vec.ind1149 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1144 ], [ %vec.ind.next1150, %vector.body1143 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1149, %broadcast.splat1152
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call854, i64 %indvars.iv7.i, i64 %index1145
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1146 = add i64 %index1145, 4
  %vec.ind.next1150 = add <4 x i64> %vec.ind1149, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1146, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1143, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1143
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1144, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit889
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start499, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1206 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1206, label %for.body3.i46.preheader1349, label %vector.ph1207

vector.ph1207:                                    ; preds = %for.body3.i46.preheader
  %n.vec1209 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1205

vector.body1205:                                  ; preds = %vector.body1205, %vector.ph1207
  %index1210 = phi i64 [ 0, %vector.ph1207 ], [ %index.next1211, %vector.body1205 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call854, i64 %indvars.iv21.i, i64 %index1210
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1211 = add i64 %index1210, 4
  %46 = icmp eq i64 %index.next1211, %n.vec1209
  br i1 %46, label %middle.block1203, label %vector.body1205, !llvm.loop !18

middle.block1203:                                 ; preds = %vector.body1205
  %cmp.n1213 = icmp eq i64 %indvars.iv21.i, %n.vec1209
  br i1 %cmp.n1213, label %for.inc6.i, label %for.body3.i46.preheader1349

for.body3.i46.preheader1349:                      ; preds = %for.body3.i46.preheader, %middle.block1203
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1209, %middle.block1203 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1349, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1349 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call854, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1203, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call854, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting500
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start294, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1251 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1251, label %for.body3.i60.preheader1347, label %vector.ph1252

vector.ph1252:                                    ; preds = %for.body3.i60.preheader
  %n.vec1254 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1250

vector.body1250:                                  ; preds = %vector.body1250, %vector.ph1252
  %index1255 = phi i64 [ 0, %vector.ph1252 ], [ %index.next1256, %vector.body1250 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call854, i64 %indvars.iv21.i52, i64 %index1255
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
  br i1 %cmp.n1258, label %for.inc6.i63, label %for.body3.i60.preheader1347

for.body3.i60.preheader1347:                      ; preds = %for.body3.i60.preheader, %middle.block1248
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1254, %middle.block1248 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1347, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1347 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call854, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call854, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting295
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1299 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1299, label %for.body3.i99.preheader1345, label %vector.ph1300

vector.ph1300:                                    ; preds = %for.body3.i99.preheader
  %n.vec1302 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1298

vector.body1298:                                  ; preds = %vector.body1298, %vector.ph1300
  %index1303 = phi i64 [ 0, %vector.ph1300 ], [ %index.next1304, %vector.body1298 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call854, i64 %indvars.iv21.i91, i64 %index1303
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1307 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1307, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1304 = add i64 %index1303, 4
  %68 = icmp eq i64 %index.next1304, %n.vec1302
  br i1 %68, label %middle.block1296, label %vector.body1298, !llvm.loop !59

middle.block1296:                                 ; preds = %vector.body1298
  %cmp.n1306 = icmp eq i64 %indvars.iv21.i91, %n.vec1302
  br i1 %cmp.n1306, label %for.inc6.i102, label %for.body3.i99.preheader1345

for.body3.i99.preheader1345:                      ; preds = %for.body3.i99.preheader, %middle.block1296
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1302, %middle.block1296 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1345, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1345 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call854, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1296, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call854, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call854, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1311 = phi i64 [ %indvar.next1312, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1311, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1313 = icmp ult i64 %88, 4
  br i1 %min.iters.check1313, label %polly.loop_header192.preheader, label %vector.ph1314

vector.ph1314:                                    ; preds = %polly.loop_header
  %n.vec1316 = and i64 %88, -4
  br label %vector.body1310

vector.body1310:                                  ; preds = %vector.body1310, %vector.ph1314
  %index1317 = phi i64 [ 0, %vector.ph1314 ], [ %index.next1318, %vector.body1310 ]
  %90 = shl nuw nsw i64 %index1317, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1321 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1321, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1318 = add i64 %index1317, 4
  %95 = icmp eq i64 %index.next1318, %n.vec1316
  br i1 %95, label %middle.block1308, label %vector.body1310, !llvm.loop !72

middle.block1308:                                 ; preds = %vector.body1310
  %cmp.n1320 = icmp eq i64 %88, %n.vec1316
  br i1 %cmp.n1320, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1308
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1316, %middle.block1308 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1308
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1312 = add i64 %indvar1311, 1
  br i1 %exitcond1041.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1040.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1040.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1039.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1039.not, label %polly.loop_header216, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 1000
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2716, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !69, !noalias !75
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1038.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv1025 = phi i64 [ %indvars.iv.next1026, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = mul nsw i64 %polly.indvar219, -64
  %98 = shl nuw nsw i64 %polly.indvar219, 6
  %99 = trunc i64 %polly.indvar219 to i8
  %100 = mul i8 %99, 7
  %pexp.p_div_q.lhs.trunc = add i8 %100, 6
  %pexp.p_div_q914 = udiv i8 %pexp.p_div_q.lhs.trunc, 25
  %pexp.p_div_q.zext = zext i8 %pexp.p_div_q914 to i64
  %101 = add nuw nsw i64 %polly.indvar219, %pexp.p_div_q.zext
  %.inv = icmp ult i64 %101, 23
  %102 = mul nsw i64 %polly.indvar219, -64
  %103 = icmp slt i64 %102, -1136
  %104 = select i1 %103, i64 %102, i64 -1136
  %105 = add nsw i64 %104, 1199
  %106 = shl nsw i64 %polly.indvar219, 6
  %.op = add nuw i64 %101, 2
  %107 = select i1 %.inv, i64 %.op, i64 24
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -64
  %indvars.iv.next1026 = add nuw nsw i64 %indvars.iv1025, 64
  %exitcond1037.not = icmp eq i64 %polly.indvar_next220, 19
  br i1 %exitcond1037.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %indvars.iv1027 = phi i64 [ %indvars.iv.next1028, %polly.loop_exit230 ], [ %indvars.iv1025, %polly.loop_header216 ]
  %indvars.iv1023 = phi i64 [ %indvars.iv.next1024, %polly.loop_exit230 ], [ %indvars.iv, %polly.loop_header216 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit230 ], [ 0, %polly.loop_header216 ]
  %108 = mul i64 %polly.indvar225, 50
  %109 = add i64 %97, %108
  %smax1325 = call i64 @llvm.smax.i64(i64 %109, i64 0)
  %110 = mul i64 %polly.indvar225, -50
  %111 = add i64 %98, %110
  %112 = add i64 %smax1325, %111
  %113 = mul nsw i64 %polly.indvar225, 50
  %114 = add nsw i64 %113, %102
  %115 = icmp sgt i64 %114, 0
  %116 = select i1 %115, i64 %114, i64 0
  %polly.loop_guard.not = icmp sgt i64 %116, %105
  br i1 %polly.loop_guard.not, label %polly.loop_exit230, label %polly.loop_header228.preheader

polly.loop_header228.preheader:                   ; preds = %polly.loop_header222
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1023, i64 0)
  %117 = add i64 %smax, %indvars.iv1027
  %118 = sub nsw i64 %106, %113
  %119 = add nuw nsw i64 %113, 50
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit261, %polly.loop_header222
  %polly.indvar_next226 = add nuw i64 %polly.indvar225, 1
  %indvars.iv.next1024 = add i64 %indvars.iv1023, 50
  %indvars.iv.next1028 = add i64 %indvars.iv1027, -50
  %exitcond1036.not = icmp eq i64 %polly.indvar_next226, %107
  br i1 %exitcond1036.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header228.preheader, %polly.loop_exit261
  %indvar1326 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %indvar.next1327, %polly.loop_exit261 ]
  %indvars.iv1029 = phi i64 [ %117, %polly.loop_header228.preheader ], [ %indvars.iv.next1030, %polly.loop_exit261 ]
  %polly.indvar231 = phi i64 [ %116, %polly.loop_header228.preheader ], [ %polly.indvar_next232, %polly.loop_exit261 ]
  %120 = add i64 %112, %indvar1326
  %smin1328 = call i64 @llvm.smin.i64(i64 %120, i64 49)
  %121 = add nsw i64 %smin1328, 1
  %smin1033 = call i64 @llvm.smin.i64(i64 %indvars.iv1029, i64 49)
  %122 = add nsw i64 %polly.indvar231, %118
  %polly.loop_guard2441124 = icmp sgt i64 %122, -1
  %123 = add nuw nsw i64 %polly.indvar231, %106
  %.not = icmp ult i64 %123, %119
  %polly.access.mul.call1253 = mul nsw i64 %123, 1000
  br i1 %polly.loop_guard2441124, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.us ], [ 0, %polly.loop_header228 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header241.us

polly.loop_header241.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header241.us
  %polly.indvar245.us = phi i64 [ %polly.indvar_next246.us, %polly.loop_header241.us ], [ 0, %polly.loop_header234.us ]
  %124 = add nuw nsw i64 %polly.indvar245.us, %113
  %polly.access.mul.call1249.us = mul nsw i64 %124, 1000
  %polly.access.add.call1250.us = add nuw nsw i64 %polly.access.mul.call1249.us, %polly.indvar237.us
  %polly.access.call1251.us = getelementptr double, double* %polly.access.cast.call1706, i64 %polly.access.add.call1250.us
  %polly.access.call1251.load.us = load double, double* %polly.access.call1251.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar245.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1251.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next246.us = add nuw nsw i64 %polly.indvar245.us, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar245.us, %smin1033
  br i1 %exitcond1031.not, label %polly.cond.loopexit.us, label %polly.loop_header241.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1254.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.call1253
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1706, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1257.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %122
  %polly.access.Packed_MemRef_call1258.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1258.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1032.not = icmp eq i64 %polly.indvar_next238.us, 1000
  br i1 %exitcond1032.not, label %polly.loop_header259.preheader, label %polly.loop_header234.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header241.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %.not, label %polly.loop_exit261, label %polly.loop_header234

polly.loop_exit261:                               ; preds = %polly.loop_exit268.loopexit.us, %polly.loop_header228.split, %polly.loop_header259.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %polly.loop_cond233.not.not = icmp ult i64 %polly.indvar231, %105
  %indvars.iv.next1030 = add i64 %indvars.iv1029, 1
  %indvar.next1327 = add i64 %indvar1326, 1
  br i1 %polly.loop_cond233.not.not, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_header234
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_header234 ], [ 0, %polly.loop_header228.split ]
  %polly.access.add.call1254 = add nuw nsw i64 %polly.indvar237, %polly.access.mul.call1253
  %polly.access.call1255 = getelementptr double, double* %polly.access.cast.call1706, i64 %polly.access.add.call1254
  %polly.access.call1255.load = load double, double* %polly.access.call1255, align 8, !alias.scope !68, !noalias !76
  %polly.access.mul.Packed_MemRef_call1256 = mul nuw nsw i64 %polly.indvar237, 1200
  %polly.access.add.Packed_MemRef_call1257 = add nsw i64 %polly.access.mul.Packed_MemRef_call1256, %122
  %polly.access.Packed_MemRef_call1258 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257
  store double %polly.access.call1255.load, double* %polly.access.Packed_MemRef_call1258, align 8
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next238, 1000
  br i1 %exitcond.not, label %polly.loop_header259.preheader, label %polly.loop_header234

polly.loop_header259.preheader:                   ; preds = %polly.loop_header234, %polly.merge.us
  %125 = mul i64 %123, 9600
  br i1 %polly.loop_guard2441124, label %polly.loop_header259.us, label %polly.loop_exit261

polly.loop_header259.us:                          ; preds = %polly.loop_header259.preheader, %polly.loop_exit268.loopexit.us
  %polly.indvar262.us = phi i64 [ %polly.indvar_next263.us, %polly.loop_exit268.loopexit.us ], [ 0, %polly.loop_header259.preheader ]
  %polly.access.mul.Packed_MemRef_call1273.us = mul nuw nsw i64 %polly.indvar262.us, 1200
  %polly.access.add.Packed_MemRef_call2278.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1273.us, %123
  %polly.access.Packed_MemRef_call2279.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2278.us
  %_p_scalar_280.us = load double, double* %polly.access.Packed_MemRef_call2279.us, align 8
  %polly.access.add.Packed_MemRef_call1286.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1273.us, %122
  %polly.access.Packed_MemRef_call1287.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call1287.us, align 8
  %min.iters.check1329 = icmp ult i64 %121, 4
  br i1 %min.iters.check1329, label %polly.loop_header266.us.preheader, label %vector.ph1330

vector.ph1330:                                    ; preds = %polly.loop_header259.us
  %n.vec1332 = and i64 %121, -4
  %broadcast.splatinsert1338 = insertelement <4 x double> poison, double %_p_scalar_280.us, i32 0
  %broadcast.splat1339 = shufflevector <4 x double> %broadcast.splatinsert1338, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1341 = insertelement <4 x double> poison, double %_p_scalar_288.us, i32 0
  %broadcast.splat1342 = shufflevector <4 x double> %broadcast.splatinsert1341, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1324

vector.body1324:                                  ; preds = %vector.body1324, %vector.ph1330
  %index1333 = phi i64 [ 0, %vector.ph1330 ], [ %index.next1334, %vector.body1324 ]
  %126 = add nuw nsw i64 %index1333, %113
  %127 = add nuw nsw i64 %index1333, %polly.access.mul.Packed_MemRef_call1273.us
  %128 = getelementptr double, double* %Packed_MemRef_call1, i64 %127
  %129 = bitcast double* %128 to <4 x double>*
  %wide.load1337 = load <4 x double>, <4 x double>* %129, align 8
  %130 = fmul fast <4 x double> %broadcast.splat1339, %wide.load1337
  %131 = add nuw nsw i64 %126, %polly.access.mul.Packed_MemRef_call1273.us
  %132 = getelementptr double, double* %Packed_MemRef_call2, i64 %131
  %133 = bitcast double* %132 to <4 x double>*
  %wide.load1340 = load <4 x double>, <4 x double>* %133, align 8
  %134 = fmul fast <4 x double> %broadcast.splat1342, %wide.load1340
  %135 = shl i64 %126, 3
  %136 = add i64 %135, %125
  %137 = getelementptr i8, i8* %call, i64 %136
  %138 = bitcast i8* %137 to <4 x double>*
  %wide.load1343 = load <4 x double>, <4 x double>* %138, align 8, !alias.scope !65, !noalias !67
  %139 = fadd fast <4 x double> %134, %130
  %140 = fmul fast <4 x double> %139, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %141 = fadd fast <4 x double> %140, %wide.load1343
  %142 = bitcast i8* %137 to <4 x double>*
  store <4 x double> %141, <4 x double>* %142, align 8, !alias.scope !65, !noalias !67
  %index.next1334 = add i64 %index1333, 4
  %143 = icmp eq i64 %index.next1334, %n.vec1332
  br i1 %143, label %middle.block1322, label %vector.body1324, !llvm.loop !77

middle.block1322:                                 ; preds = %vector.body1324
  %cmp.n1336 = icmp eq i64 %121, %n.vec1332
  br i1 %cmp.n1336, label %polly.loop_exit268.loopexit.us, label %polly.loop_header266.us.preheader

polly.loop_header266.us.preheader:                ; preds = %polly.loop_header259.us, %middle.block1322
  %polly.indvar270.us.ph = phi i64 [ 0, %polly.loop_header259.us ], [ %n.vec1332, %middle.block1322 ]
  br label %polly.loop_header266.us

polly.loop_header266.us:                          ; preds = %polly.loop_header266.us.preheader, %polly.loop_header266.us
  %polly.indvar270.us = phi i64 [ %polly.indvar_next271.us, %polly.loop_header266.us ], [ %polly.indvar270.us.ph, %polly.loop_header266.us.preheader ]
  %144 = add nuw nsw i64 %polly.indvar270.us, %113
  %polly.access.add.Packed_MemRef_call1274.us = add nuw nsw i64 %polly.indvar270.us, %polly.access.mul.Packed_MemRef_call1273.us
  %polly.access.Packed_MemRef_call1275.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1274.us
  %_p_scalar_276.us = load double, double* %polly.access.Packed_MemRef_call1275.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_280.us, %_p_scalar_276.us
  %polly.access.add.Packed_MemRef_call2282.us = add nuw nsw i64 %144, %polly.access.mul.Packed_MemRef_call1273.us
  %polly.access.Packed_MemRef_call2283.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call2283.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_288.us, %_p_scalar_284.us
  %145 = shl i64 %144, 3
  %146 = add i64 %145, %125
  %scevgep289.us = getelementptr i8, i8* %call, i64 %146
  %scevgep289290.us = bitcast i8* %scevgep289.us to double*
  %_p_scalar_291.us = load double, double* %scevgep289290.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_291.us
  store double %p_add42.i118.us, double* %scevgep289290.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next271.us = add nuw nsw i64 %polly.indvar270.us, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar270.us, %smin1033
  br i1 %exitcond1034.not, label %polly.loop_exit268.loopexit.us, label %polly.loop_header266.us, !llvm.loop !78

polly.loop_exit268.loopexit.us:                   ; preds = %polly.loop_header266.us, %middle.block1322
  %polly.indvar_next263.us = add nuw nsw i64 %polly.indvar262.us, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar_next263.us, 1000
  br i1 %exitcond1035.not, label %polly.loop_exit261, label %polly.loop_header259.us

polly.start294:                                   ; preds = %kernel_syr2k.exit
  %malloccall296 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall298 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header382

polly.exiting295:                                 ; preds = %polly.loop_exit423
  tail call void @free(i8* %malloccall296)
  tail call void @free(i8* %malloccall298)
  br label %kernel_syr2k.exit90

polly.loop_header382:                             ; preds = %polly.loop_exit390, %polly.start294
  %indvar1263 = phi i64 [ %indvar.next1264, %polly.loop_exit390 ], [ 0, %polly.start294 ]
  %polly.indvar385 = phi i64 [ %polly.indvar_next386, %polly.loop_exit390 ], [ 1, %polly.start294 ]
  %147 = add i64 %indvar1263, 1
  %148 = mul nuw nsw i64 %polly.indvar385, 9600
  %scevgep394 = getelementptr i8, i8* %call, i64 %148
  %min.iters.check1265 = icmp ult i64 %147, 4
  br i1 %min.iters.check1265, label %polly.loop_header388.preheader, label %vector.ph1266

vector.ph1266:                                    ; preds = %polly.loop_header382
  %n.vec1268 = and i64 %147, -4
  br label %vector.body1262

vector.body1262:                                  ; preds = %vector.body1262, %vector.ph1266
  %index1269 = phi i64 [ 0, %vector.ph1266 ], [ %index.next1270, %vector.body1262 ]
  %149 = shl nuw nsw i64 %index1269, 3
  %150 = getelementptr i8, i8* %scevgep394, i64 %149
  %151 = bitcast i8* %150 to <4 x double>*
  %wide.load1273 = load <4 x double>, <4 x double>* %151, align 8, !alias.scope !79, !noalias !81
  %152 = fmul fast <4 x double> %wide.load1273, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %153 = bitcast i8* %150 to <4 x double>*
  store <4 x double> %152, <4 x double>* %153, align 8, !alias.scope !79, !noalias !81
  %index.next1270 = add i64 %index1269, 4
  %154 = icmp eq i64 %index.next1270, %n.vec1268
  br i1 %154, label %middle.block1260, label %vector.body1262, !llvm.loop !86

middle.block1260:                                 ; preds = %vector.body1262
  %cmp.n1272 = icmp eq i64 %147, %n.vec1268
  br i1 %cmp.n1272, label %polly.loop_exit390, label %polly.loop_header388.preheader

polly.loop_header388.preheader:                   ; preds = %polly.loop_header382, %middle.block1260
  %polly.indvar391.ph = phi i64 [ 0, %polly.loop_header382 ], [ %n.vec1268, %middle.block1260 ]
  br label %polly.loop_header388

polly.loop_exit390:                               ; preds = %polly.loop_header388, %middle.block1260
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next386, 1200
  %indvar.next1264 = add i64 %indvar1263, 1
  br i1 %exitcond1065.not, label %polly.loop_header398.preheader, label %polly.loop_header382

polly.loop_header398.preheader:                   ; preds = %polly.loop_exit390
  %Packed_MemRef_call1297 = bitcast i8* %malloccall296 to double*
  %Packed_MemRef_call2299 = bitcast i8* %malloccall298 to double*
  br label %polly.loop_header398

polly.loop_header388:                             ; preds = %polly.loop_header388.preheader, %polly.loop_header388
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_header388 ], [ %polly.indvar391.ph, %polly.loop_header388.preheader ]
  %155 = shl nuw nsw i64 %polly.indvar391, 3
  %scevgep395 = getelementptr i8, i8* %scevgep394, i64 %155
  %scevgep395396 = bitcast i8* %scevgep395 to double*
  %_p_scalar_397 = load double, double* %scevgep395396, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_397, 1.200000e+00
  store double %p_mul.i57, double* %scevgep395396, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar_next392, %polly.indvar385
  br i1 %exitcond1064.not, label %polly.loop_exit390, label %polly.loop_header388, !llvm.loop !87

polly.loop_header398:                             ; preds = %polly.loop_header398.preheader, %polly.loop_exit406
  %polly.indvar401 = phi i64 [ %polly.indvar_next402, %polly.loop_exit406 ], [ 0, %polly.loop_header398.preheader ]
  %polly.access.mul.Packed_MemRef_call2299 = mul nuw nsw i64 %polly.indvar401, 1200
  br label %polly.loop_header404

polly.loop_exit406:                               ; preds = %polly.loop_header404
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar_next402, 1000
  br i1 %exitcond1063.not, label %polly.loop_header414, label %polly.loop_header398

polly.loop_header404:                             ; preds = %polly.loop_header404, %polly.loop_header398
  %polly.indvar407 = phi i64 [ 0, %polly.loop_header398 ], [ %polly.indvar_next408, %polly.loop_header404 ]
  %polly.access.mul.call2411 = mul nuw nsw i64 %polly.indvar407, 1000
  %polly.access.add.call2412 = add nuw nsw i64 %polly.access.mul.call2411, %polly.indvar401
  %polly.access.call2413 = getelementptr double, double* %polly.access.cast.call2716, i64 %polly.access.add.call2412
  %polly.access.call2413.load = load double, double* %polly.access.call2413, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call2299 = add nuw nsw i64 %polly.indvar407, %polly.access.mul.Packed_MemRef_call2299
  %polly.access.Packed_MemRef_call2299 = getelementptr double, double* %Packed_MemRef_call2299, i64 %polly.access.add.Packed_MemRef_call2299
  store double %polly.access.call2413.load, double* %polly.access.Packed_MemRef_call2299, align 8
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar_next408, 1200
  br i1 %exitcond1062.not, label %polly.loop_exit406, label %polly.loop_header404

polly.loop_header414:                             ; preds = %polly.loop_exit406, %polly.loop_exit423
  %indvars.iv1048 = phi i64 [ %indvars.iv.next1049, %polly.loop_exit423 ], [ 0, %polly.loop_exit406 ]
  %indvars.iv1043 = phi i64 [ %indvars.iv.next1044, %polly.loop_exit423 ], [ 0, %polly.loop_exit406 ]
  %polly.indvar417 = phi i64 [ %polly.indvar_next418, %polly.loop_exit423 ], [ 0, %polly.loop_exit406 ]
  %156 = mul nsw i64 %polly.indvar417, -64
  %157 = shl nuw nsw i64 %polly.indvar417, 6
  %158 = trunc i64 %polly.indvar417 to i8
  %159 = mul i8 %158, 7
  %pexp.p_div_q420.lhs.trunc = add i8 %159, 6
  %pexp.p_div_q420913 = udiv i8 %pexp.p_div_q420.lhs.trunc, 25
  %pexp.p_div_q420.zext = zext i8 %pexp.p_div_q420913 to i64
  %160 = add nuw nsw i64 %polly.indvar417, %pexp.p_div_q420.zext
  %.inv908 = icmp ult i64 %160, 23
  %161 = mul nsw i64 %polly.indvar417, -64
  %162 = icmp slt i64 %161, -1136
  %163 = select i1 %162, i64 %161, i64 -1136
  %164 = add nsw i64 %163, 1199
  %165 = shl nsw i64 %polly.indvar417, 6
  %.op1125 = add nuw i64 %160, 2
  %166 = select i1 %.inv908, i64 %.op1125, i64 24
  br label %polly.loop_header421

polly.loop_exit423:                               ; preds = %polly.loop_exit430
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %indvars.iv.next1044 = add nsw i64 %indvars.iv1043, -64
  %indvars.iv.next1049 = add nuw nsw i64 %indvars.iv1048, 64
  %exitcond1061.not = icmp eq i64 %polly.indvar_next418, 19
  br i1 %exitcond1061.not, label %polly.exiting295, label %polly.loop_header414

polly.loop_header421:                             ; preds = %polly.loop_exit430, %polly.loop_header414
  %indvars.iv1050 = phi i64 [ %indvars.iv.next1051, %polly.loop_exit430 ], [ %indvars.iv1048, %polly.loop_header414 ]
  %indvars.iv1045 = phi i64 [ %indvars.iv.next1046, %polly.loop_exit430 ], [ %indvars.iv1043, %polly.loop_header414 ]
  %polly.indvar424 = phi i64 [ %polly.indvar_next425, %polly.loop_exit430 ], [ 0, %polly.loop_header414 ]
  %167 = mul i64 %polly.indvar424, 50
  %168 = add i64 %156, %167
  %smax1277 = call i64 @llvm.smax.i64(i64 %168, i64 0)
  %169 = mul i64 %polly.indvar424, -50
  %170 = add i64 %157, %169
  %171 = add i64 %smax1277, %170
  %172 = mul nsw i64 %polly.indvar424, 50
  %173 = add nsw i64 %172, %161
  %174 = icmp sgt i64 %173, 0
  %175 = select i1 %174, i64 %173, i64 0
  %polly.loop_guard431.not = icmp sgt i64 %175, %164
  br i1 %polly.loop_guard431.not, label %polly.loop_exit430, label %polly.loop_header428.preheader

polly.loop_header428.preheader:                   ; preds = %polly.loop_header421
  %smax1047 = call i64 @llvm.smax.i64(i64 %indvars.iv1045, i64 0)
  %176 = add i64 %smax1047, %indvars.iv1050
  %177 = sub nsw i64 %165, %172
  %178 = add nuw nsw i64 %172, 50
  br label %polly.loop_header428

polly.loop_exit430:                               ; preds = %polly.loop_exit466, %polly.loop_header421
  %polly.indvar_next425 = add nuw i64 %polly.indvar424, 1
  %indvars.iv.next1046 = add i64 %indvars.iv1045, 50
  %indvars.iv.next1051 = add i64 %indvars.iv1050, -50
  %exitcond1060.not = icmp eq i64 %polly.indvar_next425, %166
  br i1 %exitcond1060.not, label %polly.loop_exit423, label %polly.loop_header421

polly.loop_header428:                             ; preds = %polly.loop_header428.preheader, %polly.loop_exit466
  %indvar1278 = phi i64 [ 0, %polly.loop_header428.preheader ], [ %indvar.next1279, %polly.loop_exit466 ]
  %indvars.iv1052 = phi i64 [ %176, %polly.loop_header428.preheader ], [ %indvars.iv.next1053, %polly.loop_exit466 ]
  %polly.indvar432 = phi i64 [ %175, %polly.loop_header428.preheader ], [ %polly.indvar_next433, %polly.loop_exit466 ]
  %179 = add i64 %171, %indvar1278
  %smin1280 = call i64 @llvm.smin.i64(i64 %179, i64 49)
  %180 = add nsw i64 %smin1280, 1
  %smin1057 = call i64 @llvm.smin.i64(i64 %indvars.iv1052, i64 49)
  %181 = add nsw i64 %polly.indvar432, %177
  %polly.loop_guard4451126 = icmp sgt i64 %181, -1
  %182 = add nuw nsw i64 %polly.indvar432, %165
  %.not909 = icmp ult i64 %182, %178
  %polly.access.mul.call1458 = mul nsw i64 %182, 1000
  br i1 %polly.loop_guard4451126, label %polly.loop_header435.us, label %polly.loop_header428.split

polly.loop_header435.us:                          ; preds = %polly.loop_header428, %polly.merge454.us
  %polly.indvar438.us = phi i64 [ %polly.indvar_next439.us, %polly.merge454.us ], [ 0, %polly.loop_header428 ]
  %polly.access.mul.Packed_MemRef_call1297.us = mul nuw nsw i64 %polly.indvar438.us, 1200
  br label %polly.loop_header442.us

polly.loop_header442.us:                          ; preds = %polly.loop_header435.us, %polly.loop_header442.us
  %polly.indvar446.us = phi i64 [ %polly.indvar_next447.us, %polly.loop_header442.us ], [ 0, %polly.loop_header435.us ]
  %183 = add nuw nsw i64 %polly.indvar446.us, %172
  %polly.access.mul.call1450.us = mul nsw i64 %183, 1000
  %polly.access.add.call1451.us = add nuw nsw i64 %polly.access.mul.call1450.us, %polly.indvar438.us
  %polly.access.call1452.us = getelementptr double, double* %polly.access.cast.call1706, i64 %polly.access.add.call1451.us
  %polly.access.call1452.load.us = load double, double* %polly.access.call1452.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1297.us = add nuw nsw i64 %polly.indvar446.us, %polly.access.mul.Packed_MemRef_call1297.us
  %polly.access.Packed_MemRef_call1297.us = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297.us
  store double %polly.access.call1452.load.us, double* %polly.access.Packed_MemRef_call1297.us, align 8
  %polly.indvar_next447.us = add nuw nsw i64 %polly.indvar446.us, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar446.us, %smin1057
  br i1 %exitcond1055.not, label %polly.cond453.loopexit.us, label %polly.loop_header442.us

polly.then455.us:                                 ; preds = %polly.cond453.loopexit.us
  %polly.access.add.call1459.us = add nuw nsw i64 %polly.indvar438.us, %polly.access.mul.call1458
  %polly.access.call1460.us = getelementptr double, double* %polly.access.cast.call1706, i64 %polly.access.add.call1459.us
  %polly.access.call1460.load.us = load double, double* %polly.access.call1460.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1297462.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1297.us, %181
  %polly.access.Packed_MemRef_call1297463.us = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297462.us
  store double %polly.access.call1460.load.us, double* %polly.access.Packed_MemRef_call1297463.us, align 8
  br label %polly.merge454.us

polly.merge454.us:                                ; preds = %polly.then455.us, %polly.cond453.loopexit.us
  %polly.indvar_next439.us = add nuw nsw i64 %polly.indvar438.us, 1
  %exitcond1056.not = icmp eq i64 %polly.indvar_next439.us, 1000
  br i1 %exitcond1056.not, label %polly.loop_header464.preheader, label %polly.loop_header435.us

polly.cond453.loopexit.us:                        ; preds = %polly.loop_header442.us
  br i1 %.not909, label %polly.merge454.us, label %polly.then455.us

polly.loop_header428.split:                       ; preds = %polly.loop_header428
  br i1 %.not909, label %polly.loop_exit466, label %polly.loop_header435

polly.loop_exit466:                               ; preds = %polly.loop_exit473.loopexit.us, %polly.loop_header428.split, %polly.loop_header464.preheader
  %polly.indvar_next433 = add nuw nsw i64 %polly.indvar432, 1
  %polly.loop_cond434.not.not = icmp ult i64 %polly.indvar432, %164
  %indvars.iv.next1053 = add i64 %indvars.iv1052, 1
  %indvar.next1279 = add i64 %indvar1278, 1
  br i1 %polly.loop_cond434.not.not, label %polly.loop_header428, label %polly.loop_exit430

polly.loop_header435:                             ; preds = %polly.loop_header428.split, %polly.loop_header435
  %polly.indvar438 = phi i64 [ %polly.indvar_next439, %polly.loop_header435 ], [ 0, %polly.loop_header428.split ]
  %polly.access.add.call1459 = add nuw nsw i64 %polly.indvar438, %polly.access.mul.call1458
  %polly.access.call1460 = getelementptr double, double* %polly.access.cast.call1706, i64 %polly.access.add.call1459
  %polly.access.call1460.load = load double, double* %polly.access.call1460, align 8, !alias.scope !82, !noalias !89
  %polly.access.mul.Packed_MemRef_call1297461 = mul nuw nsw i64 %polly.indvar438, 1200
  %polly.access.add.Packed_MemRef_call1297462 = add nsw i64 %polly.access.mul.Packed_MemRef_call1297461, %181
  %polly.access.Packed_MemRef_call1297463 = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297462
  store double %polly.access.call1460.load, double* %polly.access.Packed_MemRef_call1297463, align 8
  %polly.indvar_next439 = add nuw nsw i64 %polly.indvar438, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar_next439, 1000
  br i1 %exitcond1042.not, label %polly.loop_header464.preheader, label %polly.loop_header435

polly.loop_header464.preheader:                   ; preds = %polly.loop_header435, %polly.merge454.us
  %184 = mul i64 %182, 9600
  br i1 %polly.loop_guard4451126, label %polly.loop_header464.us, label %polly.loop_exit466

polly.loop_header464.us:                          ; preds = %polly.loop_header464.preheader, %polly.loop_exit473.loopexit.us
  %polly.indvar467.us = phi i64 [ %polly.indvar_next468.us, %polly.loop_exit473.loopexit.us ], [ 0, %polly.loop_header464.preheader ]
  %polly.access.mul.Packed_MemRef_call1297478.us = mul nuw nsw i64 %polly.indvar467.us, 1200
  %polly.access.add.Packed_MemRef_call2299483.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1297478.us, %182
  %polly.access.Packed_MemRef_call2299484.us = getelementptr double, double* %Packed_MemRef_call2299, i64 %polly.access.add.Packed_MemRef_call2299483.us
  %_p_scalar_485.us = load double, double* %polly.access.Packed_MemRef_call2299484.us, align 8
  %polly.access.add.Packed_MemRef_call1297491.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1297478.us, %181
  %polly.access.Packed_MemRef_call1297492.us = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297491.us
  %_p_scalar_493.us = load double, double* %polly.access.Packed_MemRef_call1297492.us, align 8
  %min.iters.check1281 = icmp ult i64 %180, 4
  br i1 %min.iters.check1281, label %polly.loop_header471.us.preheader, label %vector.ph1282

vector.ph1282:                                    ; preds = %polly.loop_header464.us
  %n.vec1284 = and i64 %180, -4
  %broadcast.splatinsert1290 = insertelement <4 x double> poison, double %_p_scalar_485.us, i32 0
  %broadcast.splat1291 = shufflevector <4 x double> %broadcast.splatinsert1290, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1293 = insertelement <4 x double> poison, double %_p_scalar_493.us, i32 0
  %broadcast.splat1294 = shufflevector <4 x double> %broadcast.splatinsert1293, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1276

vector.body1276:                                  ; preds = %vector.body1276, %vector.ph1282
  %index1285 = phi i64 [ 0, %vector.ph1282 ], [ %index.next1286, %vector.body1276 ]
  %185 = add nuw nsw i64 %index1285, %172
  %186 = add nuw nsw i64 %index1285, %polly.access.mul.Packed_MemRef_call1297478.us
  %187 = getelementptr double, double* %Packed_MemRef_call1297, i64 %186
  %188 = bitcast double* %187 to <4 x double>*
  %wide.load1289 = load <4 x double>, <4 x double>* %188, align 8
  %189 = fmul fast <4 x double> %broadcast.splat1291, %wide.load1289
  %190 = add nuw nsw i64 %185, %polly.access.mul.Packed_MemRef_call1297478.us
  %191 = getelementptr double, double* %Packed_MemRef_call2299, i64 %190
  %192 = bitcast double* %191 to <4 x double>*
  %wide.load1292 = load <4 x double>, <4 x double>* %192, align 8
  %193 = fmul fast <4 x double> %broadcast.splat1294, %wide.load1292
  %194 = shl i64 %185, 3
  %195 = add i64 %194, %184
  %196 = getelementptr i8, i8* %call, i64 %195
  %197 = bitcast i8* %196 to <4 x double>*
  %wide.load1295 = load <4 x double>, <4 x double>* %197, align 8, !alias.scope !79, !noalias !81
  %198 = fadd fast <4 x double> %193, %189
  %199 = fmul fast <4 x double> %198, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %200 = fadd fast <4 x double> %199, %wide.load1295
  %201 = bitcast i8* %196 to <4 x double>*
  store <4 x double> %200, <4 x double>* %201, align 8, !alias.scope !79, !noalias !81
  %index.next1286 = add i64 %index1285, 4
  %202 = icmp eq i64 %index.next1286, %n.vec1284
  br i1 %202, label %middle.block1274, label %vector.body1276, !llvm.loop !90

middle.block1274:                                 ; preds = %vector.body1276
  %cmp.n1288 = icmp eq i64 %180, %n.vec1284
  br i1 %cmp.n1288, label %polly.loop_exit473.loopexit.us, label %polly.loop_header471.us.preheader

polly.loop_header471.us.preheader:                ; preds = %polly.loop_header464.us, %middle.block1274
  %polly.indvar475.us.ph = phi i64 [ 0, %polly.loop_header464.us ], [ %n.vec1284, %middle.block1274 ]
  br label %polly.loop_header471.us

polly.loop_header471.us:                          ; preds = %polly.loop_header471.us.preheader, %polly.loop_header471.us
  %polly.indvar475.us = phi i64 [ %polly.indvar_next476.us, %polly.loop_header471.us ], [ %polly.indvar475.us.ph, %polly.loop_header471.us.preheader ]
  %203 = add nuw nsw i64 %polly.indvar475.us, %172
  %polly.access.add.Packed_MemRef_call1297479.us = add nuw nsw i64 %polly.indvar475.us, %polly.access.mul.Packed_MemRef_call1297478.us
  %polly.access.Packed_MemRef_call1297480.us = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297479.us
  %_p_scalar_481.us = load double, double* %polly.access.Packed_MemRef_call1297480.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_485.us, %_p_scalar_481.us
  %polly.access.add.Packed_MemRef_call2299487.us = add nuw nsw i64 %203, %polly.access.mul.Packed_MemRef_call1297478.us
  %polly.access.Packed_MemRef_call2299488.us = getelementptr double, double* %Packed_MemRef_call2299, i64 %polly.access.add.Packed_MemRef_call2299487.us
  %_p_scalar_489.us = load double, double* %polly.access.Packed_MemRef_call2299488.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_493.us, %_p_scalar_489.us
  %204 = shl i64 %203, 3
  %205 = add i64 %204, %184
  %scevgep494.us = getelementptr i8, i8* %call, i64 %205
  %scevgep494495.us = bitcast i8* %scevgep494.us to double*
  %_p_scalar_496.us = load double, double* %scevgep494495.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_496.us
  store double %p_add42.i79.us, double* %scevgep494495.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next476.us = add nuw nsw i64 %polly.indvar475.us, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar475.us, %smin1057
  br i1 %exitcond1058.not, label %polly.loop_exit473.loopexit.us, label %polly.loop_header471.us, !llvm.loop !91

polly.loop_exit473.loopexit.us:                   ; preds = %polly.loop_header471.us, %middle.block1274
  %polly.indvar_next468.us = add nuw nsw i64 %polly.indvar467.us, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar_next468.us, 1000
  br i1 %exitcond1059.not, label %polly.loop_exit466, label %polly.loop_header464.us

polly.start499:                                   ; preds = %init_array.exit
  %malloccall501 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall503 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header587

polly.exiting500:                                 ; preds = %polly.loop_exit628
  tail call void @free(i8* %malloccall501)
  tail call void @free(i8* %malloccall503)
  br label %kernel_syr2k.exit

polly.loop_header587:                             ; preds = %polly.loop_exit595, %polly.start499
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit595 ], [ 0, %polly.start499 ]
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_exit595 ], [ 1, %polly.start499 ]
  %206 = add i64 %indvar, 1
  %207 = mul nuw nsw i64 %polly.indvar590, 9600
  %scevgep599 = getelementptr i8, i8* %call, i64 %207
  %min.iters.check1217 = icmp ult i64 %206, 4
  br i1 %min.iters.check1217, label %polly.loop_header593.preheader, label %vector.ph1218

vector.ph1218:                                    ; preds = %polly.loop_header587
  %n.vec1220 = and i64 %206, -4
  br label %vector.body1216

vector.body1216:                                  ; preds = %vector.body1216, %vector.ph1218
  %index1221 = phi i64 [ 0, %vector.ph1218 ], [ %index.next1222, %vector.body1216 ]
  %208 = shl nuw nsw i64 %index1221, 3
  %209 = getelementptr i8, i8* %scevgep599, i64 %208
  %210 = bitcast i8* %209 to <4 x double>*
  %wide.load1225 = load <4 x double>, <4 x double>* %210, align 8, !alias.scope !92, !noalias !94
  %211 = fmul fast <4 x double> %wide.load1225, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %212 = bitcast i8* %209 to <4 x double>*
  store <4 x double> %211, <4 x double>* %212, align 8, !alias.scope !92, !noalias !94
  %index.next1222 = add i64 %index1221, 4
  %213 = icmp eq i64 %index.next1222, %n.vec1220
  br i1 %213, label %middle.block1214, label %vector.body1216, !llvm.loop !99

middle.block1214:                                 ; preds = %vector.body1216
  %cmp.n1224 = icmp eq i64 %206, %n.vec1220
  br i1 %cmp.n1224, label %polly.loop_exit595, label %polly.loop_header593.preheader

polly.loop_header593.preheader:                   ; preds = %polly.loop_header587, %middle.block1214
  %polly.indvar596.ph = phi i64 [ 0, %polly.loop_header587 ], [ %n.vec1220, %middle.block1214 ]
  br label %polly.loop_header593

polly.loop_exit595:                               ; preds = %polly.loop_header593, %middle.block1214
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next591, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1089.not, label %polly.loop_header603.preheader, label %polly.loop_header587

polly.loop_header603.preheader:                   ; preds = %polly.loop_exit595
  %Packed_MemRef_call1502 = bitcast i8* %malloccall501 to double*
  %Packed_MemRef_call2504 = bitcast i8* %malloccall503 to double*
  br label %polly.loop_header603

polly.loop_header593:                             ; preds = %polly.loop_header593.preheader, %polly.loop_header593
  %polly.indvar596 = phi i64 [ %polly.indvar_next597, %polly.loop_header593 ], [ %polly.indvar596.ph, %polly.loop_header593.preheader ]
  %214 = shl nuw nsw i64 %polly.indvar596, 3
  %scevgep600 = getelementptr i8, i8* %scevgep599, i64 %214
  %scevgep600601 = bitcast i8* %scevgep600 to double*
  %_p_scalar_602 = load double, double* %scevgep600601, align 8, !alias.scope !92, !noalias !94
  %p_mul.i = fmul fast double %_p_scalar_602, 1.200000e+00
  store double %p_mul.i, double* %scevgep600601, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next597 = add nuw nsw i64 %polly.indvar596, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next597, %polly.indvar590
  br i1 %exitcond1088.not, label %polly.loop_exit595, label %polly.loop_header593, !llvm.loop !100

polly.loop_header603:                             ; preds = %polly.loop_header603.preheader, %polly.loop_exit611
  %polly.indvar606 = phi i64 [ %polly.indvar_next607, %polly.loop_exit611 ], [ 0, %polly.loop_header603.preheader ]
  %polly.access.mul.Packed_MemRef_call2504 = mul nuw nsw i64 %polly.indvar606, 1200
  br label %polly.loop_header609

polly.loop_exit611:                               ; preds = %polly.loop_header609
  %polly.indvar_next607 = add nuw nsw i64 %polly.indvar606, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar_next607, 1000
  br i1 %exitcond1087.not, label %polly.loop_header619, label %polly.loop_header603

polly.loop_header609:                             ; preds = %polly.loop_header609, %polly.loop_header603
  %polly.indvar612 = phi i64 [ 0, %polly.loop_header603 ], [ %polly.indvar_next613, %polly.loop_header609 ]
  %polly.access.mul.call2616 = mul nuw nsw i64 %polly.indvar612, 1000
  %polly.access.add.call2617 = add nuw nsw i64 %polly.access.mul.call2616, %polly.indvar606
  %polly.access.call2618 = getelementptr double, double* %polly.access.cast.call2716, i64 %polly.access.add.call2617
  %polly.access.call2618.load = load double, double* %polly.access.call2618, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2504 = add nuw nsw i64 %polly.indvar612, %polly.access.mul.Packed_MemRef_call2504
  %polly.access.Packed_MemRef_call2504 = getelementptr double, double* %Packed_MemRef_call2504, i64 %polly.access.add.Packed_MemRef_call2504
  store double %polly.access.call2618.load, double* %polly.access.Packed_MemRef_call2504, align 8
  %polly.indvar_next613 = add nuw nsw i64 %polly.indvar612, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar_next613, 1200
  br i1 %exitcond1086.not, label %polly.loop_exit611, label %polly.loop_header609

polly.loop_header619:                             ; preds = %polly.loop_exit611, %polly.loop_exit628
  %indvars.iv1072 = phi i64 [ %indvars.iv.next1073, %polly.loop_exit628 ], [ 0, %polly.loop_exit611 ]
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit628 ], [ 0, %polly.loop_exit611 ]
  %polly.indvar622 = phi i64 [ %polly.indvar_next623, %polly.loop_exit628 ], [ 0, %polly.loop_exit611 ]
  %215 = mul nsw i64 %polly.indvar622, -64
  %216 = shl nuw nsw i64 %polly.indvar622, 6
  %217 = trunc i64 %polly.indvar622 to i8
  %218 = mul i8 %217, 7
  %pexp.p_div_q625.lhs.trunc = add i8 %218, 6
  %pexp.p_div_q625912 = udiv i8 %pexp.p_div_q625.lhs.trunc, 25
  %pexp.p_div_q625.zext = zext i8 %pexp.p_div_q625912 to i64
  %219 = add nuw nsw i64 %polly.indvar622, %pexp.p_div_q625.zext
  %.inv910 = icmp ult i64 %219, 23
  %220 = mul nsw i64 %polly.indvar622, -64
  %221 = icmp slt i64 %220, -1136
  %222 = select i1 %221, i64 %220, i64 -1136
  %223 = add nsw i64 %222, 1199
  %224 = shl nsw i64 %polly.indvar622, 6
  %.op1127 = add nuw i64 %219, 2
  %225 = select i1 %.inv910, i64 %.op1127, i64 24
  br label %polly.loop_header626

polly.loop_exit628:                               ; preds = %polly.loop_exit635
  %polly.indvar_next623 = add nuw nsw i64 %polly.indvar622, 1
  %indvars.iv.next1068 = add nsw i64 %indvars.iv1067, -64
  %indvars.iv.next1073 = add nuw nsw i64 %indvars.iv1072, 64
  %exitcond1085.not = icmp eq i64 %polly.indvar_next623, 19
  br i1 %exitcond1085.not, label %polly.exiting500, label %polly.loop_header619

polly.loop_header626:                             ; preds = %polly.loop_exit635, %polly.loop_header619
  %indvars.iv1074 = phi i64 [ %indvars.iv.next1075, %polly.loop_exit635 ], [ %indvars.iv1072, %polly.loop_header619 ]
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit635 ], [ %indvars.iv1067, %polly.loop_header619 ]
  %polly.indvar629 = phi i64 [ %polly.indvar_next630, %polly.loop_exit635 ], [ 0, %polly.loop_header619 ]
  %226 = mul i64 %polly.indvar629, 50
  %227 = add i64 %215, %226
  %smax1229 = call i64 @llvm.smax.i64(i64 %227, i64 0)
  %228 = mul i64 %polly.indvar629, -50
  %229 = add i64 %216, %228
  %230 = add i64 %smax1229, %229
  %231 = mul nsw i64 %polly.indvar629, 50
  %232 = add nsw i64 %231, %220
  %233 = icmp sgt i64 %232, 0
  %234 = select i1 %233, i64 %232, i64 0
  %polly.loop_guard636.not = icmp sgt i64 %234, %223
  br i1 %polly.loop_guard636.not, label %polly.loop_exit635, label %polly.loop_header633.preheader

polly.loop_header633.preheader:                   ; preds = %polly.loop_header626
  %smax1071 = call i64 @llvm.smax.i64(i64 %indvars.iv1069, i64 0)
  %235 = add i64 %smax1071, %indvars.iv1074
  %236 = sub nsw i64 %224, %231
  %237 = add nuw nsw i64 %231, 50
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit671, %polly.loop_header626
  %polly.indvar_next630 = add nuw i64 %polly.indvar629, 1
  %indvars.iv.next1070 = add i64 %indvars.iv1069, 50
  %indvars.iv.next1075 = add i64 %indvars.iv1074, -50
  %exitcond1084.not = icmp eq i64 %polly.indvar_next630, %225
  br i1 %exitcond1084.not, label %polly.loop_exit628, label %polly.loop_header626

polly.loop_header633:                             ; preds = %polly.loop_header633.preheader, %polly.loop_exit671
  %indvar1230 = phi i64 [ 0, %polly.loop_header633.preheader ], [ %indvar.next1231, %polly.loop_exit671 ]
  %indvars.iv1076 = phi i64 [ %235, %polly.loop_header633.preheader ], [ %indvars.iv.next1077, %polly.loop_exit671 ]
  %polly.indvar637 = phi i64 [ %234, %polly.loop_header633.preheader ], [ %polly.indvar_next638, %polly.loop_exit671 ]
  %238 = add i64 %230, %indvar1230
  %smin1232 = call i64 @llvm.smin.i64(i64 %238, i64 49)
  %239 = add nsw i64 %smin1232, 1
  %smin1081 = call i64 @llvm.smin.i64(i64 %indvars.iv1076, i64 49)
  %240 = add nsw i64 %polly.indvar637, %236
  %polly.loop_guard6501128 = icmp sgt i64 %240, -1
  %241 = add nuw nsw i64 %polly.indvar637, %224
  %.not911 = icmp ult i64 %241, %237
  %polly.access.mul.call1663 = mul nsw i64 %241, 1000
  br i1 %polly.loop_guard6501128, label %polly.loop_header640.us, label %polly.loop_header633.split

polly.loop_header640.us:                          ; preds = %polly.loop_header633, %polly.merge659.us
  %polly.indvar643.us = phi i64 [ %polly.indvar_next644.us, %polly.merge659.us ], [ 0, %polly.loop_header633 ]
  %polly.access.mul.Packed_MemRef_call1502.us = mul nuw nsw i64 %polly.indvar643.us, 1200
  br label %polly.loop_header647.us

polly.loop_header647.us:                          ; preds = %polly.loop_header640.us, %polly.loop_header647.us
  %polly.indvar651.us = phi i64 [ %polly.indvar_next652.us, %polly.loop_header647.us ], [ 0, %polly.loop_header640.us ]
  %242 = add nuw nsw i64 %polly.indvar651.us, %231
  %polly.access.mul.call1655.us = mul nsw i64 %242, 1000
  %polly.access.add.call1656.us = add nuw nsw i64 %polly.access.mul.call1655.us, %polly.indvar643.us
  %polly.access.call1657.us = getelementptr double, double* %polly.access.cast.call1706, i64 %polly.access.add.call1656.us
  %polly.access.call1657.load.us = load double, double* %polly.access.call1657.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1502.us = add nuw nsw i64 %polly.indvar651.us, %polly.access.mul.Packed_MemRef_call1502.us
  %polly.access.Packed_MemRef_call1502.us = getelementptr double, double* %Packed_MemRef_call1502, i64 %polly.access.add.Packed_MemRef_call1502.us
  store double %polly.access.call1657.load.us, double* %polly.access.Packed_MemRef_call1502.us, align 8
  %polly.indvar_next652.us = add nuw nsw i64 %polly.indvar651.us, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar651.us, %smin1081
  br i1 %exitcond1079.not, label %polly.cond658.loopexit.us, label %polly.loop_header647.us

polly.then660.us:                                 ; preds = %polly.cond658.loopexit.us
  %polly.access.add.call1664.us = add nuw nsw i64 %polly.indvar643.us, %polly.access.mul.call1663
  %polly.access.call1665.us = getelementptr double, double* %polly.access.cast.call1706, i64 %polly.access.add.call1664.us
  %polly.access.call1665.load.us = load double, double* %polly.access.call1665.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1502667.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1502.us, %240
  %polly.access.Packed_MemRef_call1502668.us = getelementptr double, double* %Packed_MemRef_call1502, i64 %polly.access.add.Packed_MemRef_call1502667.us
  store double %polly.access.call1665.load.us, double* %polly.access.Packed_MemRef_call1502668.us, align 8
  br label %polly.merge659.us

polly.merge659.us:                                ; preds = %polly.then660.us, %polly.cond658.loopexit.us
  %polly.indvar_next644.us = add nuw nsw i64 %polly.indvar643.us, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar_next644.us, 1000
  br i1 %exitcond1080.not, label %polly.loop_header669.preheader, label %polly.loop_header640.us

polly.cond658.loopexit.us:                        ; preds = %polly.loop_header647.us
  br i1 %.not911, label %polly.merge659.us, label %polly.then660.us

polly.loop_header633.split:                       ; preds = %polly.loop_header633
  br i1 %.not911, label %polly.loop_exit671, label %polly.loop_header640

polly.loop_exit671:                               ; preds = %polly.loop_exit678.loopexit.us, %polly.loop_header633.split, %polly.loop_header669.preheader
  %polly.indvar_next638 = add nuw nsw i64 %polly.indvar637, 1
  %polly.loop_cond639.not.not = icmp ult i64 %polly.indvar637, %223
  %indvars.iv.next1077 = add i64 %indvars.iv1076, 1
  %indvar.next1231 = add i64 %indvar1230, 1
  br i1 %polly.loop_cond639.not.not, label %polly.loop_header633, label %polly.loop_exit635

polly.loop_header640:                             ; preds = %polly.loop_header633.split, %polly.loop_header640
  %polly.indvar643 = phi i64 [ %polly.indvar_next644, %polly.loop_header640 ], [ 0, %polly.loop_header633.split ]
  %polly.access.add.call1664 = add nuw nsw i64 %polly.indvar643, %polly.access.mul.call1663
  %polly.access.call1665 = getelementptr double, double* %polly.access.cast.call1706, i64 %polly.access.add.call1664
  %polly.access.call1665.load = load double, double* %polly.access.call1665, align 8, !alias.scope !95, !noalias !102
  %polly.access.mul.Packed_MemRef_call1502666 = mul nuw nsw i64 %polly.indvar643, 1200
  %polly.access.add.Packed_MemRef_call1502667 = add nsw i64 %polly.access.mul.Packed_MemRef_call1502666, %240
  %polly.access.Packed_MemRef_call1502668 = getelementptr double, double* %Packed_MemRef_call1502, i64 %polly.access.add.Packed_MemRef_call1502667
  store double %polly.access.call1665.load, double* %polly.access.Packed_MemRef_call1502668, align 8
  %polly.indvar_next644 = add nuw nsw i64 %polly.indvar643, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar_next644, 1000
  br i1 %exitcond1066.not, label %polly.loop_header669.preheader, label %polly.loop_header640

polly.loop_header669.preheader:                   ; preds = %polly.loop_header640, %polly.merge659.us
  %243 = mul i64 %241, 9600
  br i1 %polly.loop_guard6501128, label %polly.loop_header669.us, label %polly.loop_exit671

polly.loop_header669.us:                          ; preds = %polly.loop_header669.preheader, %polly.loop_exit678.loopexit.us
  %polly.indvar672.us = phi i64 [ %polly.indvar_next673.us, %polly.loop_exit678.loopexit.us ], [ 0, %polly.loop_header669.preheader ]
  %polly.access.mul.Packed_MemRef_call1502683.us = mul nuw nsw i64 %polly.indvar672.us, 1200
  %polly.access.add.Packed_MemRef_call2504688.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1502683.us, %241
  %polly.access.Packed_MemRef_call2504689.us = getelementptr double, double* %Packed_MemRef_call2504, i64 %polly.access.add.Packed_MemRef_call2504688.us
  %_p_scalar_690.us = load double, double* %polly.access.Packed_MemRef_call2504689.us, align 8
  %polly.access.add.Packed_MemRef_call1502696.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1502683.us, %240
  %polly.access.Packed_MemRef_call1502697.us = getelementptr double, double* %Packed_MemRef_call1502, i64 %polly.access.add.Packed_MemRef_call1502696.us
  %_p_scalar_698.us = load double, double* %polly.access.Packed_MemRef_call1502697.us, align 8
  %min.iters.check1233 = icmp ult i64 %239, 4
  br i1 %min.iters.check1233, label %polly.loop_header676.us.preheader, label %vector.ph1234

vector.ph1234:                                    ; preds = %polly.loop_header669.us
  %n.vec1236 = and i64 %239, -4
  %broadcast.splatinsert1242 = insertelement <4 x double> poison, double %_p_scalar_690.us, i32 0
  %broadcast.splat1243 = shufflevector <4 x double> %broadcast.splatinsert1242, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1245 = insertelement <4 x double> poison, double %_p_scalar_698.us, i32 0
  %broadcast.splat1246 = shufflevector <4 x double> %broadcast.splatinsert1245, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1228

vector.body1228:                                  ; preds = %vector.body1228, %vector.ph1234
  %index1237 = phi i64 [ 0, %vector.ph1234 ], [ %index.next1238, %vector.body1228 ]
  %244 = add nuw nsw i64 %index1237, %231
  %245 = add nuw nsw i64 %index1237, %polly.access.mul.Packed_MemRef_call1502683.us
  %246 = getelementptr double, double* %Packed_MemRef_call1502, i64 %245
  %247 = bitcast double* %246 to <4 x double>*
  %wide.load1241 = load <4 x double>, <4 x double>* %247, align 8
  %248 = fmul fast <4 x double> %broadcast.splat1243, %wide.load1241
  %249 = add nuw nsw i64 %244, %polly.access.mul.Packed_MemRef_call1502683.us
  %250 = getelementptr double, double* %Packed_MemRef_call2504, i64 %249
  %251 = bitcast double* %250 to <4 x double>*
  %wide.load1244 = load <4 x double>, <4 x double>* %251, align 8
  %252 = fmul fast <4 x double> %broadcast.splat1246, %wide.load1244
  %253 = shl i64 %244, 3
  %254 = add i64 %253, %243
  %255 = getelementptr i8, i8* %call, i64 %254
  %256 = bitcast i8* %255 to <4 x double>*
  %wide.load1247 = load <4 x double>, <4 x double>* %256, align 8, !alias.scope !92, !noalias !94
  %257 = fadd fast <4 x double> %252, %248
  %258 = fmul fast <4 x double> %257, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %259 = fadd fast <4 x double> %258, %wide.load1247
  %260 = bitcast i8* %255 to <4 x double>*
  store <4 x double> %259, <4 x double>* %260, align 8, !alias.scope !92, !noalias !94
  %index.next1238 = add i64 %index1237, 4
  %261 = icmp eq i64 %index.next1238, %n.vec1236
  br i1 %261, label %middle.block1226, label %vector.body1228, !llvm.loop !103

middle.block1226:                                 ; preds = %vector.body1228
  %cmp.n1240 = icmp eq i64 %239, %n.vec1236
  br i1 %cmp.n1240, label %polly.loop_exit678.loopexit.us, label %polly.loop_header676.us.preheader

polly.loop_header676.us.preheader:                ; preds = %polly.loop_header669.us, %middle.block1226
  %polly.indvar680.us.ph = phi i64 [ 0, %polly.loop_header669.us ], [ %n.vec1236, %middle.block1226 ]
  br label %polly.loop_header676.us

polly.loop_header676.us:                          ; preds = %polly.loop_header676.us.preheader, %polly.loop_header676.us
  %polly.indvar680.us = phi i64 [ %polly.indvar_next681.us, %polly.loop_header676.us ], [ %polly.indvar680.us.ph, %polly.loop_header676.us.preheader ]
  %262 = add nuw nsw i64 %polly.indvar680.us, %231
  %polly.access.add.Packed_MemRef_call1502684.us = add nuw nsw i64 %polly.indvar680.us, %polly.access.mul.Packed_MemRef_call1502683.us
  %polly.access.Packed_MemRef_call1502685.us = getelementptr double, double* %Packed_MemRef_call1502, i64 %polly.access.add.Packed_MemRef_call1502684.us
  %_p_scalar_686.us = load double, double* %polly.access.Packed_MemRef_call1502685.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_690.us, %_p_scalar_686.us
  %polly.access.add.Packed_MemRef_call2504692.us = add nuw nsw i64 %262, %polly.access.mul.Packed_MemRef_call1502683.us
  %polly.access.Packed_MemRef_call2504693.us = getelementptr double, double* %Packed_MemRef_call2504, i64 %polly.access.add.Packed_MemRef_call2504692.us
  %_p_scalar_694.us = load double, double* %polly.access.Packed_MemRef_call2504693.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_698.us, %_p_scalar_694.us
  %263 = shl i64 %262, 3
  %264 = add i64 %263, %243
  %scevgep699.us = getelementptr i8, i8* %call, i64 %264
  %scevgep699700.us = bitcast i8* %scevgep699.us to double*
  %_p_scalar_701.us = load double, double* %scevgep699700.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_701.us
  store double %p_add42.i.us, double* %scevgep699700.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next681.us = add nuw nsw i64 %polly.indvar680.us, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar680.us, %smin1081
  br i1 %exitcond1082.not, label %polly.loop_exit678.loopexit.us, label %polly.loop_header676.us, !llvm.loop !104

polly.loop_exit678.loopexit.us:                   ; preds = %polly.loop_header676.us, %middle.block1226
  %polly.indvar_next673.us = add nuw nsw i64 %polly.indvar672.us, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next673.us, 1000
  br i1 %exitcond1083.not, label %polly.loop_exit671, label %polly.loop_header669.us

polly.loop_header828:                             ; preds = %entry, %polly.loop_exit836
  %indvars.iv1114 = phi i64 [ %indvars.iv.next1115, %polly.loop_exit836 ], [ 0, %entry ]
  %polly.indvar831 = phi i64 [ %polly.indvar_next832, %polly.loop_exit836 ], [ 0, %entry ]
  %smin1116 = call i64 @llvm.smin.i64(i64 %indvars.iv1114, i64 -1168)
  %265 = shl nsw i64 %polly.indvar831, 5
  %266 = add nsw i64 %smin1116, 1199
  br label %polly.loop_header834

polly.loop_exit836:                               ; preds = %polly.loop_exit842
  %polly.indvar_next832 = add nuw nsw i64 %polly.indvar831, 1
  %indvars.iv.next1115 = add nsw i64 %indvars.iv1114, -32
  %exitcond1119.not = icmp eq i64 %polly.indvar_next832, 38
  br i1 %exitcond1119.not, label %polly.loop_header855, label %polly.loop_header828

polly.loop_header834:                             ; preds = %polly.loop_exit842, %polly.loop_header828
  %indvars.iv1110 = phi i64 [ %indvars.iv.next1111, %polly.loop_exit842 ], [ 0, %polly.loop_header828 ]
  %polly.indvar837 = phi i64 [ %polly.indvar_next838, %polly.loop_exit842 ], [ 0, %polly.loop_header828 ]
  %267 = mul nsw i64 %polly.indvar837, -32
  %smin = call i64 @llvm.smin.i64(i64 %267, i64 -1168)
  %268 = add nsw i64 %smin, 1200
  %smin1112 = call i64 @llvm.smin.i64(i64 %indvars.iv1110, i64 -1168)
  %269 = shl nsw i64 %polly.indvar837, 5
  %270 = add nsw i64 %smin1112, 1199
  br label %polly.loop_header840

polly.loop_exit842:                               ; preds = %polly.loop_exit848
  %polly.indvar_next838 = add nuw nsw i64 %polly.indvar837, 1
  %indvars.iv.next1111 = add nsw i64 %indvars.iv1110, -32
  %exitcond1118.not = icmp eq i64 %polly.indvar_next838, 38
  br i1 %exitcond1118.not, label %polly.loop_exit836, label %polly.loop_header834

polly.loop_header840:                             ; preds = %polly.loop_exit848, %polly.loop_header834
  %polly.indvar843 = phi i64 [ 0, %polly.loop_header834 ], [ %polly.indvar_next844, %polly.loop_exit848 ]
  %271 = add nuw nsw i64 %polly.indvar843, %265
  %272 = trunc i64 %271 to i32
  %273 = mul nuw nsw i64 %271, 9600
  %min.iters.check = icmp eq i64 %268, 0
  br i1 %min.iters.check, label %polly.loop_header846, label %vector.ph1156

vector.ph1156:                                    ; preds = %polly.loop_header840
  %broadcast.splatinsert1163 = insertelement <4 x i64> poison, i64 %269, i32 0
  %broadcast.splat1164 = shufflevector <4 x i64> %broadcast.splatinsert1163, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1165 = insertelement <4 x i32> poison, i32 %272, i32 0
  %broadcast.splat1166 = shufflevector <4 x i32> %broadcast.splatinsert1165, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1155

vector.body1155:                                  ; preds = %vector.body1155, %vector.ph1156
  %index1157 = phi i64 [ 0, %vector.ph1156 ], [ %index.next1158, %vector.body1155 ]
  %vec.ind1161 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1156 ], [ %vec.ind.next1162, %vector.body1155 ]
  %274 = add nuw nsw <4 x i64> %vec.ind1161, %broadcast.splat1164
  %275 = trunc <4 x i64> %274 to <4 x i32>
  %276 = mul <4 x i32> %broadcast.splat1166, %275
  %277 = add <4 x i32> %276, <i32 3, i32 3, i32 3, i32 3>
  %278 = urem <4 x i32> %277, <i32 1200, i32 1200, i32 1200, i32 1200>
  %279 = sitofp <4 x i32> %278 to <4 x double>
  %280 = fmul fast <4 x double> %279, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %281 = extractelement <4 x i64> %274, i32 0
  %282 = shl i64 %281, 3
  %283 = add nuw nsw i64 %282, %273
  %284 = getelementptr i8, i8* %call, i64 %283
  %285 = bitcast i8* %284 to <4 x double>*
  store <4 x double> %280, <4 x double>* %285, align 8, !alias.scope !105, !noalias !107
  %index.next1158 = add i64 %index1157, 4
  %vec.ind.next1162 = add <4 x i64> %vec.ind1161, <i64 4, i64 4, i64 4, i64 4>
  %286 = icmp eq i64 %index.next1158, %268
  br i1 %286, label %polly.loop_exit848, label %vector.body1155, !llvm.loop !110

polly.loop_exit848:                               ; preds = %vector.body1155, %polly.loop_header846
  %polly.indvar_next844 = add nuw nsw i64 %polly.indvar843, 1
  %exitcond1117.not = icmp eq i64 %polly.indvar843, %266
  br i1 %exitcond1117.not, label %polly.loop_exit842, label %polly.loop_header840

polly.loop_header846:                             ; preds = %polly.loop_header840, %polly.loop_header846
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_header846 ], [ 0, %polly.loop_header840 ]
  %287 = add nuw nsw i64 %polly.indvar849, %269
  %288 = trunc i64 %287 to i32
  %289 = mul i32 %288, %272
  %290 = add i32 %289, 3
  %291 = urem i32 %290, 1200
  %p_conv31.i = sitofp i32 %291 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %292 = shl i64 %287, 3
  %293 = add nuw nsw i64 %292, %273
  %scevgep852 = getelementptr i8, i8* %call, i64 %293
  %scevgep852853 = bitcast i8* %scevgep852 to double*
  store double %p_div33.i, double* %scevgep852853, align 8, !alias.scope !105, !noalias !107
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar849, %270
  br i1 %exitcond1113.not, label %polly.loop_exit848, label %polly.loop_header846, !llvm.loop !111

polly.loop_header855:                             ; preds = %polly.loop_exit836, %polly.loop_exit863
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit863 ], [ 0, %polly.loop_exit836 ]
  %polly.indvar858 = phi i64 [ %polly.indvar_next859, %polly.loop_exit863 ], [ 0, %polly.loop_exit836 ]
  %smin1106 = call i64 @llvm.smin.i64(i64 %indvars.iv1104, i64 -1168)
  %294 = shl nsw i64 %polly.indvar858, 5
  %295 = add nsw i64 %smin1106, 1199
  br label %polly.loop_header861

polly.loop_exit863:                               ; preds = %polly.loop_exit869
  %polly.indvar_next859 = add nuw nsw i64 %polly.indvar858, 1
  %indvars.iv.next1105 = add nsw i64 %indvars.iv1104, -32
  %exitcond1109.not = icmp eq i64 %polly.indvar_next859, 38
  br i1 %exitcond1109.not, label %polly.loop_header881, label %polly.loop_header855

polly.loop_header861:                             ; preds = %polly.loop_exit869, %polly.loop_header855
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit869 ], [ 0, %polly.loop_header855 ]
  %polly.indvar864 = phi i64 [ %polly.indvar_next865, %polly.loop_exit869 ], [ 0, %polly.loop_header855 ]
  %296 = mul nsw i64 %polly.indvar864, -32
  %smin1170 = call i64 @llvm.smin.i64(i64 %296, i64 -968)
  %297 = add nsw i64 %smin1170, 1000
  %smin1102 = call i64 @llvm.smin.i64(i64 %indvars.iv1100, i64 -968)
  %298 = shl nsw i64 %polly.indvar864, 5
  %299 = add nsw i64 %smin1102, 999
  br label %polly.loop_header867

polly.loop_exit869:                               ; preds = %polly.loop_exit875
  %polly.indvar_next865 = add nuw nsw i64 %polly.indvar864, 1
  %indvars.iv.next1101 = add nsw i64 %indvars.iv1100, -32
  %exitcond1108.not = icmp eq i64 %polly.indvar_next865, 32
  br i1 %exitcond1108.not, label %polly.loop_exit863, label %polly.loop_header861

polly.loop_header867:                             ; preds = %polly.loop_exit875, %polly.loop_header861
  %polly.indvar870 = phi i64 [ 0, %polly.loop_header861 ], [ %polly.indvar_next871, %polly.loop_exit875 ]
  %300 = add nuw nsw i64 %polly.indvar870, %294
  %301 = trunc i64 %300 to i32
  %302 = mul nuw nsw i64 %300, 8000
  %min.iters.check1171 = icmp eq i64 %297, 0
  br i1 %min.iters.check1171, label %polly.loop_header873, label %vector.ph1172

vector.ph1172:                                    ; preds = %polly.loop_header867
  %broadcast.splatinsert1181 = insertelement <4 x i64> poison, i64 %298, i32 0
  %broadcast.splat1182 = shufflevector <4 x i64> %broadcast.splatinsert1181, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1183 = insertelement <4 x i32> poison, i32 %301, i32 0
  %broadcast.splat1184 = shufflevector <4 x i32> %broadcast.splatinsert1183, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1169

vector.body1169:                                  ; preds = %vector.body1169, %vector.ph1172
  %index1175 = phi i64 [ 0, %vector.ph1172 ], [ %index.next1176, %vector.body1169 ]
  %vec.ind1179 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1172 ], [ %vec.ind.next1180, %vector.body1169 ]
  %303 = add nuw nsw <4 x i64> %vec.ind1179, %broadcast.splat1182
  %304 = trunc <4 x i64> %303 to <4 x i32>
  %305 = mul <4 x i32> %broadcast.splat1184, %304
  %306 = add <4 x i32> %305, <i32 2, i32 2, i32 2, i32 2>
  %307 = urem <4 x i32> %306, <i32 1000, i32 1000, i32 1000, i32 1000>
  %308 = sitofp <4 x i32> %307 to <4 x double>
  %309 = fmul fast <4 x double> %308, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %310 = extractelement <4 x i64> %303, i32 0
  %311 = shl i64 %310, 3
  %312 = add nuw nsw i64 %311, %302
  %313 = getelementptr i8, i8* %call2, i64 %312
  %314 = bitcast i8* %313 to <4 x double>*
  store <4 x double> %309, <4 x double>* %314, align 8, !alias.scope !109, !noalias !112
  %index.next1176 = add i64 %index1175, 4
  %vec.ind.next1180 = add <4 x i64> %vec.ind1179, <i64 4, i64 4, i64 4, i64 4>
  %315 = icmp eq i64 %index.next1176, %297
  br i1 %315, label %polly.loop_exit875, label %vector.body1169, !llvm.loop !113

polly.loop_exit875:                               ; preds = %vector.body1169, %polly.loop_header873
  %polly.indvar_next871 = add nuw nsw i64 %polly.indvar870, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar870, %295
  br i1 %exitcond1107.not, label %polly.loop_exit869, label %polly.loop_header867

polly.loop_header873:                             ; preds = %polly.loop_header867, %polly.loop_header873
  %polly.indvar876 = phi i64 [ %polly.indvar_next877, %polly.loop_header873 ], [ 0, %polly.loop_header867 ]
  %316 = add nuw nsw i64 %polly.indvar876, %298
  %317 = trunc i64 %316 to i32
  %318 = mul i32 %317, %301
  %319 = add i32 %318, 2
  %320 = urem i32 %319, 1000
  %p_conv10.i = sitofp i32 %320 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %321 = shl i64 %316, 3
  %322 = add nuw nsw i64 %321, %302
  %scevgep879 = getelementptr i8, i8* %call2, i64 %322
  %scevgep879880 = bitcast i8* %scevgep879 to double*
  store double %p_div12.i, double* %scevgep879880, align 8, !alias.scope !109, !noalias !112
  %polly.indvar_next877 = add nuw nsw i64 %polly.indvar876, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar876, %299
  br i1 %exitcond1103.not, label %polly.loop_exit875, label %polly.loop_header873, !llvm.loop !114

polly.loop_header881:                             ; preds = %polly.loop_exit863, %polly.loop_exit889
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit889 ], [ 0, %polly.loop_exit863 ]
  %polly.indvar884 = phi i64 [ %polly.indvar_next885, %polly.loop_exit889 ], [ 0, %polly.loop_exit863 ]
  %smin1096 = call i64 @llvm.smin.i64(i64 %indvars.iv1094, i64 -1168)
  %323 = shl nsw i64 %polly.indvar884, 5
  %324 = add nsw i64 %smin1096, 1199
  br label %polly.loop_header887

polly.loop_exit889:                               ; preds = %polly.loop_exit895
  %polly.indvar_next885 = add nuw nsw i64 %polly.indvar884, 1
  %indvars.iv.next1095 = add nsw i64 %indvars.iv1094, -32
  %exitcond1099.not = icmp eq i64 %polly.indvar_next885, 38
  br i1 %exitcond1099.not, label %init_array.exit, label %polly.loop_header881

polly.loop_header887:                             ; preds = %polly.loop_exit895, %polly.loop_header881
  %indvars.iv1090 = phi i64 [ %indvars.iv.next1091, %polly.loop_exit895 ], [ 0, %polly.loop_header881 ]
  %polly.indvar890 = phi i64 [ %polly.indvar_next891, %polly.loop_exit895 ], [ 0, %polly.loop_header881 ]
  %325 = mul nsw i64 %polly.indvar890, -32
  %smin1188 = call i64 @llvm.smin.i64(i64 %325, i64 -968)
  %326 = add nsw i64 %smin1188, 1000
  %smin1092 = call i64 @llvm.smin.i64(i64 %indvars.iv1090, i64 -968)
  %327 = shl nsw i64 %polly.indvar890, 5
  %328 = add nsw i64 %smin1092, 999
  br label %polly.loop_header893

polly.loop_exit895:                               ; preds = %polly.loop_exit901
  %polly.indvar_next891 = add nuw nsw i64 %polly.indvar890, 1
  %indvars.iv.next1091 = add nsw i64 %indvars.iv1090, -32
  %exitcond1098.not = icmp eq i64 %polly.indvar_next891, 32
  br i1 %exitcond1098.not, label %polly.loop_exit889, label %polly.loop_header887

polly.loop_header893:                             ; preds = %polly.loop_exit901, %polly.loop_header887
  %polly.indvar896 = phi i64 [ 0, %polly.loop_header887 ], [ %polly.indvar_next897, %polly.loop_exit901 ]
  %329 = add nuw nsw i64 %polly.indvar896, %323
  %330 = trunc i64 %329 to i32
  %331 = mul nuw nsw i64 %329, 8000
  %min.iters.check1189 = icmp eq i64 %326, 0
  br i1 %min.iters.check1189, label %polly.loop_header899, label %vector.ph1190

vector.ph1190:                                    ; preds = %polly.loop_header893
  %broadcast.splatinsert1199 = insertelement <4 x i64> poison, i64 %327, i32 0
  %broadcast.splat1200 = shufflevector <4 x i64> %broadcast.splatinsert1199, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1201 = insertelement <4 x i32> poison, i32 %330, i32 0
  %broadcast.splat1202 = shufflevector <4 x i32> %broadcast.splatinsert1201, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1187

vector.body1187:                                  ; preds = %vector.body1187, %vector.ph1190
  %index1193 = phi i64 [ 0, %vector.ph1190 ], [ %index.next1194, %vector.body1187 ]
  %vec.ind1197 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1190 ], [ %vec.ind.next1198, %vector.body1187 ]
  %332 = add nuw nsw <4 x i64> %vec.ind1197, %broadcast.splat1200
  %333 = trunc <4 x i64> %332 to <4 x i32>
  %334 = mul <4 x i32> %broadcast.splat1202, %333
  %335 = add <4 x i32> %334, <i32 1, i32 1, i32 1, i32 1>
  %336 = urem <4 x i32> %335, <i32 1200, i32 1200, i32 1200, i32 1200>
  %337 = sitofp <4 x i32> %336 to <4 x double>
  %338 = fmul fast <4 x double> %337, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %339 = extractelement <4 x i64> %332, i32 0
  %340 = shl i64 %339, 3
  %341 = add nuw nsw i64 %340, %331
  %342 = getelementptr i8, i8* %call1, i64 %341
  %343 = bitcast i8* %342 to <4 x double>*
  store <4 x double> %338, <4 x double>* %343, align 8, !alias.scope !108, !noalias !115
  %index.next1194 = add i64 %index1193, 4
  %vec.ind.next1198 = add <4 x i64> %vec.ind1197, <i64 4, i64 4, i64 4, i64 4>
  %344 = icmp eq i64 %index.next1194, %326
  br i1 %344, label %polly.loop_exit901, label %vector.body1187, !llvm.loop !116

polly.loop_exit901:                               ; preds = %vector.body1187, %polly.loop_header899
  %polly.indvar_next897 = add nuw nsw i64 %polly.indvar896, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar896, %324
  br i1 %exitcond1097.not, label %polly.loop_exit895, label %polly.loop_header893

polly.loop_header899:                             ; preds = %polly.loop_header893, %polly.loop_header899
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_header899 ], [ 0, %polly.loop_header893 ]
  %345 = add nuw nsw i64 %polly.indvar902, %327
  %346 = trunc i64 %345 to i32
  %347 = mul i32 %346, %330
  %348 = add i32 %347, 1
  %349 = urem i32 %348, 1200
  %p_conv.i = sitofp i32 %349 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %350 = shl i64 %345, 3
  %351 = add nuw nsw i64 %350, %331
  %scevgep906 = getelementptr i8, i8* %call1, i64 %351
  %scevgep906907 = bitcast i8* %scevgep906 to double*
  store double %p_div.i, double* %scevgep906907, align 8, !alias.scope !108, !noalias !115
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar902, %328
  br i1 %exitcond1093.not, label %polly.loop_exit901, label %polly.loop_header899, !llvm.loop !117
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
!22 = distinct !{!"B"}
!23 = distinct !{!23, !12, !24, !25, !26, !27, !30}
!24 = !{!"llvm.loop.disable_nonforced"}
!25 = !{!"llvm.loop.id", !"k"}
!26 = !{!"llvm.loop.tile.size", i32 50}
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
!45 = distinct !{!45, !12, !24, !46, !47, !48, !49, !50, !54}
!46 = !{!"llvm.loop.id", !"i"}
!47 = !{!"llvm.loop.tile.enable", i1 true}
!48 = !{!"llvm.loop.tile.depth", i32 3}
!49 = !{!"llvm.loop.tile.size", i32 64}
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
