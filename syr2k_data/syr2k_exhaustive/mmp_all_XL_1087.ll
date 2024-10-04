; ModuleID = 'syr2k_exhaustive/mmp_all_XL_1087.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_1087.c"
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
  %call870 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1722 = bitcast i8* %call1 to double*
  %polly.access.call1731 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2732 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1731, %call2
  %polly.access.call2751 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2751, %call1
  %2 = or i1 %0, %1
  %polly.access.call771 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call771, %call2
  %4 = icmp ule i8* %polly.access.call2751, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call771, %call1
  %8 = icmp ule i8* %polly.access.call1731, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header844, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1185 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1184 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1183 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1182 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1182, %scevgep1185
  %bound1 = icmp ult i8* %scevgep1184, %scevgep1183
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
  br i1 %exitcond18.not.i, label %vector.ph1189, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1189:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1196 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1197 = shufflevector <4 x i64> %broadcast.splatinsert1196, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1188

vector.body1188:                                  ; preds = %vector.body1188, %vector.ph1189
  %index1190 = phi i64 [ 0, %vector.ph1189 ], [ %index.next1191, %vector.body1188 ]
  %vec.ind1194 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1189 ], [ %vec.ind.next1195, %vector.body1188 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1194, %broadcast.splat1197
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv7.i, i64 %index1190
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1191 = add i64 %index1190, 4
  %vec.ind.next1195 = add <4 x i64> %vec.ind1194, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1191, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1188, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1188
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1189, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit905
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start511, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1252 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1252, label %for.body3.i46.preheader1407, label %vector.ph1253

vector.ph1253:                                    ; preds = %for.body3.i46.preheader
  %n.vec1255 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1251

vector.body1251:                                  ; preds = %vector.body1251, %vector.ph1253
  %index1256 = phi i64 [ 0, %vector.ph1253 ], [ %index.next1257, %vector.body1251 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i, i64 %index1256
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1257 = add i64 %index1256, 4
  %46 = icmp eq i64 %index.next1257, %n.vec1255
  br i1 %46, label %middle.block1249, label %vector.body1251, !llvm.loop !18

middle.block1249:                                 ; preds = %vector.body1251
  %cmp.n1259 = icmp eq i64 %indvars.iv21.i, %n.vec1255
  br i1 %cmp.n1259, label %for.inc6.i, label %for.body3.i46.preheader1407

for.body3.i46.preheader1407:                      ; preds = %for.body3.i46.preheader, %middle.block1249
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1255, %middle.block1249 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1407, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1407 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1249, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !47

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting512
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start302, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1299 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1299, label %for.body3.i60.preheader1403, label %vector.ph1300

vector.ph1300:                                    ; preds = %for.body3.i60.preheader
  %n.vec1302 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1298

vector.body1298:                                  ; preds = %vector.body1298, %vector.ph1300
  %index1303 = phi i64 [ 0, %vector.ph1300 ], [ %index.next1304, %vector.body1298 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i52, i64 %index1303
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1307 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1307, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1304 = add i64 %index1303, 4
  %57 = icmp eq i64 %index.next1304, %n.vec1302
  br i1 %57, label %middle.block1296, label %vector.body1298, !llvm.loop !64

middle.block1296:                                 ; preds = %vector.body1298
  %cmp.n1306 = icmp eq i64 %indvars.iv21.i52, %n.vec1302
  br i1 %cmp.n1306, label %for.inc6.i63, label %for.body3.i60.preheader1403

for.body3.i60.preheader1403:                      ; preds = %for.body3.i60.preheader, %middle.block1296
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1302, %middle.block1296 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1403, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1403 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1296, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !47

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting303
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1349 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1349, label %for.body3.i99.preheader1399, label %vector.ph1350

vector.ph1350:                                    ; preds = %for.body3.i99.preheader
  %n.vec1352 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1348

vector.body1348:                                  ; preds = %vector.body1348, %vector.ph1350
  %index1353 = phi i64 [ 0, %vector.ph1350 ], [ %index.next1354, %vector.body1348 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i91, i64 %index1353
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1357 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1357, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1354 = add i64 %index1353, 4
  %68 = icmp eq i64 %index.next1354, %n.vec1352
  br i1 %68, label %middle.block1346, label %vector.body1348, !llvm.loop !66

middle.block1346:                                 ; preds = %vector.body1348
  %cmp.n1356 = icmp eq i64 %indvars.iv21.i91, %n.vec1352
  br i1 %cmp.n1356, label %for.inc6.i102, label %for.body3.i99.preheader1399

for.body3.i99.preheader1399:                      ; preds = %for.body3.i99.preheader, %middle.block1346
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1352, %middle.block1346 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1399, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1399 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1346, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !47

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !68
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !70

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !71

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
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
  %indvar1361 = phi i64 [ %indvar.next1362, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1361, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1363 = icmp ult i64 %88, 4
  br i1 %min.iters.check1363, label %polly.loop_header192.preheader, label %vector.ph1364

vector.ph1364:                                    ; preds = %polly.loop_header
  %n.vec1366 = and i64 %88, -4
  br label %vector.body1360

vector.body1360:                                  ; preds = %vector.body1360, %vector.ph1364
  %index1367 = phi i64 [ 0, %vector.ph1364 ], [ %index.next1368, %vector.body1360 ]
  %90 = shl nuw nsw i64 %index1367, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1371 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1371, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1368 = add i64 %index1367, 4
  %95 = icmp eq i64 %index.next1368, %n.vec1366
  br i1 %95, label %middle.block1358, label %vector.body1360, !llvm.loop !79

middle.block1358:                                 ; preds = %vector.body1360
  %cmp.n1370 = icmp eq i64 %88, %n.vec1366
  br i1 %cmp.n1370, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1358
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1366, %middle.block1358 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1358
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1362 = add i64 %indvar1361, 1
  br i1 %exitcond1082.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1081.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit224
  %indvars.iv1072 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1073, %polly.loop_exit224 ]
  %indvars.iv1068 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1069, %polly.loop_exit224 ]
  %indvars.iv = phi i64 [ 1200, %polly.loop_header200.preheader ], [ %indvars.iv.next, %polly.loop_exit224 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit224 ]
  %97 = shl nuw nsw i64 %polly.indvar203, 7
  %98 = udiv i64 %polly.indvar203, 3
  %99 = add nuw i64 %polly.indvar203, %98
  %100 = mul nuw nsw i64 %99, 96
  %101 = sub i64 %97, %100
  %102 = mul nsw i64 %polly.indvar203, -128
  %103 = add i64 %102, %100
  %104 = udiv i64 %polly.indvar203, 3
  %105 = add nuw i64 %polly.indvar203, %104
  %106 = mul nuw nsw i64 %105, 96
  %107 = sub i64 %indvars.iv1068, %106
  %108 = add i64 %indvars.iv1072, %106
  %109 = mul nsw i64 %polly.indvar203, -128
  %110 = shl nsw i64 %polly.indvar203, 7
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit214
  %111 = add nsw i64 %109, 1199
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit261
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -128
  %indvars.iv.next1069 = add nuw nsw i64 %indvars.iv1068, 128
  %indvars.iv.next1073 = add nsw i64 %indvars.iv1072, -128
  %exitcond1080.not = icmp eq i64 %polly.indvar_next204, 10
  br i1 %exitcond1080.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit214, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_exit214 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar209, 1200
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_header212
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar_next210, 1000
  br i1 %exitcond1064.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_header212, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_header212 ]
  %112 = add nuw nsw i64 %polly.indvar215, %110
  %polly.access.mul.call2219 = mul nuw nsw i64 %112, 1000
  %polly.access.add.call2220 = add nuw nsw i64 %polly.access.mul.call2219, %polly.indvar209
  %polly.access.call2221 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2220
  %polly.access.call2221.load = load double, double* %polly.access.call2221, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar215, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2221.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next216, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header222:                             ; preds = %polly.loop_exit261, %polly.loop_exit208
  %indvar1375 = phi i64 [ %indvar.next1376, %polly.loop_exit261 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv1074 = phi i64 [ %indvars.iv.next1075, %polly.loop_exit261 ], [ %108, %polly.loop_exit208 ]
  %indvars.iv1070 = phi i64 [ %indvars.iv.next1071, %polly.loop_exit261 ], [ %107, %polly.loop_exit208 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit261 ], [ %105, %polly.loop_exit208 ]
  %113 = mul nsw i64 %indvar1375, -96
  %114 = add i64 %101, %113
  %smax1377 = call i64 @llvm.smax.i64(i64 %114, i64 0)
  %115 = mul nuw nsw i64 %indvar1375, 96
  %116 = add i64 %103, %115
  %117 = add i64 %smax1377, %116
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1070, i64 0)
  %118 = add i64 %smax, %indvars.iv1074
  %119 = mul nuw nsw i64 %polly.indvar225, 96
  %120 = add nsw i64 %119, %109
  %121 = add nsw i64 %120, -1
  %.inv = icmp sgt i64 %120, 127
  %122 = select i1 %.inv, i64 127, i64 %121
  %polly.loop_guard = icmp sgt i64 %122, -1
  %123 = icmp sgt i64 %120, 0
  %124 = select i1 %123, i64 %120, i64 0
  %125 = add nsw i64 %120, 95
  %126 = icmp slt i64 %111, %125
  %127 = select i1 %126, i64 %111, i64 %125
  %polly.loop_guard248.not = icmp sgt i64 %124, %127
  br i1 %polly.loop_guard, label %polly.loop_header228.us, label %polly.loop_header222.split

polly.loop_header228.us:                          ; preds = %polly.loop_header222, %polly.loop_exit247.us
  %polly.indvar231.us = phi i64 [ %polly.indvar_next232.us, %polly.loop_exit247.us ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar231.us, 1200
  br label %polly.loop_header234.us

polly.loop_header234.us:                          ; preds = %polly.loop_header228.us, %polly.loop_header234.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_header234.us ], [ 0, %polly.loop_header228.us ]
  %128 = add nuw nsw i64 %polly.indvar237.us, %110
  %polly.access.mul.call1241.us = mul nuw nsw i64 %128, 1000
  %polly.access.add.call1242.us = add nuw nsw i64 %polly.access.mul.call1241.us, %polly.indvar231.us
  %polly.access.call1243.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1242.us
  %polly.access.call1243.load.us = load double, double* %polly.access.call1243.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1243.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next238.us = add nuw i64 %polly.indvar237.us, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar237.us, %122
  br i1 %exitcond1066.not, label %polly.loop_exit236.loopexit.us, label %polly.loop_header234.us

polly.loop_header245.us:                          ; preds = %polly.loop_exit236.loopexit.us, %polly.loop_header245.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_header245.us ], [ %124, %polly.loop_exit236.loopexit.us ]
  %129 = add nuw nsw i64 %polly.indvar249.us, %110
  %polly.access.mul.call1253.us = mul nsw i64 %129, 1000
  %polly.access.add.call1254.us = add nuw nsw i64 %polly.access.mul.call1253.us, %polly.indvar231.us
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257.us = add nuw nsw i64 %polly.indvar249.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1258.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1258.us, align 8
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %polly.loop_cond251.not.not.us = icmp slt i64 %polly.indvar249.us, %127
  br i1 %polly.loop_cond251.not.not.us, label %polly.loop_header245.us, label %polly.loop_exit247.us

polly.loop_exit247.us:                            ; preds = %polly.loop_header245.us, %polly.loop_exit236.loopexit.us
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar_next232.us, 1000
  br i1 %exitcond1067.not, label %polly.loop_header259.preheader, label %polly.loop_header228.us

polly.loop_exit236.loopexit.us:                   ; preds = %polly.loop_header234.us
  br i1 %polly.loop_guard248.not, label %polly.loop_exit247.us, label %polly.loop_header245.us

polly.loop_header222.split:                       ; preds = %polly.loop_header222
  br i1 %polly.loop_guard248.not, label %polly.loop_header259.preheader, label %polly.loop_header228

polly.loop_exit261:                               ; preds = %polly.loop_exit268, %polly.loop_header259.preheader
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %polly.loop_cond227 = icmp ult i64 %polly.indvar225, 12
  %indvars.iv.next1071 = add i64 %indvars.iv1070, -96
  %indvars.iv.next1075 = add i64 %indvars.iv1074, 96
  %indvar.next1376 = add i64 %indvar1375, 1
  br i1 %polly.loop_cond227, label %polly.loop_header222, label %polly.loop_exit224

polly.loop_header228:                             ; preds = %polly.loop_header222.split, %polly.loop_exit247
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit247 ], [ 0, %polly.loop_header222.split ]
  %polly.access.mul.Packed_MemRef_call1256 = mul nuw nsw i64 %polly.indvar231, 1200
  br label %polly.loop_header245

polly.loop_exit247:                               ; preds = %polly.loop_header245
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next232, 1000
  br i1 %exitcond1065.not, label %polly.loop_header259.preheader, label %polly.loop_header228

polly.loop_header259.preheader:                   ; preds = %polly.loop_exit247, %polly.loop_exit247.us, %polly.loop_header222.split
  %130 = sub nsw i64 %110, %119
  %131 = icmp sgt i64 %130, 0
  %132 = select i1 %131, i64 %130, i64 0
  %133 = mul nsw i64 %polly.indvar225, -96
  %134 = icmp slt i64 %133, -1104
  %135 = select i1 %134, i64 %133, i64 -1104
  %136 = add nsw i64 %135, 1199
  %polly.loop_guard269.not = icmp sgt i64 %132, %136
  br i1 %polly.loop_guard269.not, label %polly.loop_exit261, label %polly.loop_header259

polly.loop_header245:                             ; preds = %polly.loop_header228, %polly.loop_header245
  %polly.indvar249 = phi i64 [ %polly.indvar_next250, %polly.loop_header245 ], [ %124, %polly.loop_header228 ]
  %137 = add nuw nsw i64 %polly.indvar249, %110
  %polly.access.mul.call1253 = mul nsw i64 %137, 1000
  %polly.access.add.call1254 = add nuw nsw i64 %polly.access.mul.call1253, %polly.indvar231
  %polly.access.call1255 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1254
  %polly.access.call1255.load = load double, double* %polly.access.call1255, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257 = add nuw nsw i64 %polly.indvar249, %polly.access.mul.Packed_MemRef_call1256
  %polly.access.Packed_MemRef_call1258 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257
  store double %polly.access.call1255.load, double* %polly.access.Packed_MemRef_call1258, align 8
  %polly.indvar_next250 = add nuw nsw i64 %polly.indvar249, 1
  %polly.loop_cond251.not.not = icmp slt i64 %polly.indvar249, %127
  br i1 %polly.loop_cond251.not.not, label %polly.loop_header245, label %polly.loop_exit247

polly.loop_header259:                             ; preds = %polly.loop_header259.preheader, %polly.loop_exit268
  %polly.indvar262 = phi i64 [ %polly.indvar_next263, %polly.loop_exit268 ], [ 0, %polly.loop_header259.preheader ]
  %polly.access.mul.Packed_MemRef_call1281 = mul nuw nsw i64 %polly.indvar262, 1200
  br label %polly.loop_header266

polly.loop_exit268:                               ; preds = %polly.loop_exit276
  %polly.indvar_next263 = add nuw nsw i64 %polly.indvar262, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar_next263, 1000
  br i1 %exitcond1079.not, label %polly.loop_exit261, label %polly.loop_header259

polly.loop_header266:                             ; preds = %polly.loop_header259, %polly.loop_exit276
  %indvar1378 = phi i64 [ 0, %polly.loop_header259 ], [ %indvar.next1379, %polly.loop_exit276 ]
  %indvars.iv1076 = phi i64 [ %118, %polly.loop_header259 ], [ %indvars.iv.next1077, %polly.loop_exit276 ]
  %polly.indvar270 = phi i64 [ %132, %polly.loop_header259 ], [ %polly.indvar_next271, %polly.loop_exit276 ]
  %138 = add i64 %117, %indvar1378
  %smin1380 = call i64 @llvm.smin.i64(i64 %138, i64 127)
  %139 = add nsw i64 %smin1380, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1076, i64 127)
  %140 = add nsw i64 %polly.indvar270, %120
  %polly.loop_guard2771168 = icmp sgt i64 %140, -1
  br i1 %polly.loop_guard2771168, label %polly.loop_header274.preheader, label %polly.loop_exit276

polly.loop_header274.preheader:                   ; preds = %polly.loop_header266
  %141 = add nuw nsw i64 %polly.indvar270, %119
  %polly.access.add.Packed_MemRef_call2286 = add nsw i64 %140, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call2287 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286
  %_p_scalar_288 = load double, double* %polly.access.Packed_MemRef_call2287, align 8
  %polly.access.Packed_MemRef_call1295 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2286
  %_p_scalar_296 = load double, double* %polly.access.Packed_MemRef_call1295, align 8
  %142 = mul i64 %141, 9600
  %min.iters.check1381 = icmp ult i64 %139, 4
  br i1 %min.iters.check1381, label %polly.loop_header274.preheader1396, label %vector.ph1382

vector.ph1382:                                    ; preds = %polly.loop_header274.preheader
  %n.vec1384 = and i64 %139, -4
  %broadcast.splatinsert1390 = insertelement <4 x double> poison, double %_p_scalar_288, i32 0
  %broadcast.splat1391 = shufflevector <4 x double> %broadcast.splatinsert1390, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1393 = insertelement <4 x double> poison, double %_p_scalar_296, i32 0
  %broadcast.splat1394 = shufflevector <4 x double> %broadcast.splatinsert1393, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1374

vector.body1374:                                  ; preds = %vector.body1374, %vector.ph1382
  %index1385 = phi i64 [ 0, %vector.ph1382 ], [ %index.next1386, %vector.body1374 ]
  %143 = add nuw nsw i64 %index1385, %110
  %144 = add nuw nsw i64 %index1385, %polly.access.mul.Packed_MemRef_call1281
  %145 = getelementptr double, double* %Packed_MemRef_call1, i64 %144
  %146 = bitcast double* %145 to <4 x double>*
  %wide.load1389 = load <4 x double>, <4 x double>* %146, align 8
  %147 = fmul fast <4 x double> %broadcast.splat1391, %wide.load1389
  %148 = getelementptr double, double* %Packed_MemRef_call2, i64 %144
  %149 = bitcast double* %148 to <4 x double>*
  %wide.load1392 = load <4 x double>, <4 x double>* %149, align 8
  %150 = fmul fast <4 x double> %broadcast.splat1394, %wide.load1392
  %151 = shl i64 %143, 3
  %152 = add i64 %151, %142
  %153 = getelementptr i8, i8* %call, i64 %152
  %154 = bitcast i8* %153 to <4 x double>*
  %wide.load1395 = load <4 x double>, <4 x double>* %154, align 8, !alias.scope !72, !noalias !74
  %155 = fadd fast <4 x double> %150, %147
  %156 = fmul fast <4 x double> %155, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %157 = fadd fast <4 x double> %156, %wide.load1395
  %158 = bitcast i8* %153 to <4 x double>*
  store <4 x double> %157, <4 x double>* %158, align 8, !alias.scope !72, !noalias !74
  %index.next1386 = add i64 %index1385, 4
  %159 = icmp eq i64 %index.next1386, %n.vec1384
  br i1 %159, label %middle.block1372, label %vector.body1374, !llvm.loop !84

middle.block1372:                                 ; preds = %vector.body1374
  %cmp.n1388 = icmp eq i64 %139, %n.vec1384
  br i1 %cmp.n1388, label %polly.loop_exit276, label %polly.loop_header274.preheader1396

polly.loop_header274.preheader1396:               ; preds = %polly.loop_header274.preheader, %middle.block1372
  %polly.indvar278.ph = phi i64 [ 0, %polly.loop_header274.preheader ], [ %n.vec1384, %middle.block1372 ]
  br label %polly.loop_header274

polly.loop_exit276:                               ; preds = %polly.loop_header274, %middle.block1372, %polly.loop_header266
  %polly.indvar_next271 = add nuw nsw i64 %polly.indvar270, 1
  %polly.loop_cond272.not.not = icmp slt i64 %polly.indvar270, %136
  %indvars.iv.next1077 = add i64 %indvars.iv1076, 1
  %indvar.next1379 = add i64 %indvar1378, 1
  br i1 %polly.loop_cond272.not.not, label %polly.loop_header266, label %polly.loop_exit268

polly.loop_header274:                             ; preds = %polly.loop_header274.preheader1396, %polly.loop_header274
  %polly.indvar278 = phi i64 [ %polly.indvar_next279, %polly.loop_header274 ], [ %polly.indvar278.ph, %polly.loop_header274.preheader1396 ]
  %160 = add nuw nsw i64 %polly.indvar278, %110
  %polly.access.add.Packed_MemRef_call1282 = add nuw nsw i64 %polly.indvar278, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1283 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282
  %_p_scalar_284 = load double, double* %polly.access.Packed_MemRef_call1283, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_288, %_p_scalar_284
  %polly.access.Packed_MemRef_call2291 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1282
  %_p_scalar_292 = load double, double* %polly.access.Packed_MemRef_call2291, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_296, %_p_scalar_292
  %161 = shl i64 %160, 3
  %162 = add i64 %161, %142
  %scevgep297 = getelementptr i8, i8* %call, i64 %162
  %scevgep297298 = bitcast i8* %scevgep297 to double*
  %_p_scalar_299 = load double, double* %scevgep297298, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_299
  store double %p_add42.i118, double* %scevgep297298, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next279 = add nuw nsw i64 %polly.indvar278, 1
  %exitcond1078.not = icmp eq i64 %polly.indvar278, %smin
  br i1 %exitcond1078.not, label %polly.loop_exit276, label %polly.loop_header274, !llvm.loop !85

polly.start302:                                   ; preds = %kernel_syr2k.exit
  %malloccall304 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall306 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header390

polly.exiting303:                                 ; preds = %polly.loop_exit431
  tail call void @free(i8* %malloccall304)
  tail call void @free(i8* %malloccall306)
  br label %kernel_syr2k.exit90

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.start302
  %indvar1311 = phi i64 [ %indvar.next1312, %polly.loop_exit398 ], [ 0, %polly.start302 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 1, %polly.start302 ]
  %163 = add i64 %indvar1311, 1
  %164 = mul nuw nsw i64 %polly.indvar393, 9600
  %scevgep402 = getelementptr i8, i8* %call, i64 %164
  %min.iters.check1313 = icmp ult i64 %163, 4
  br i1 %min.iters.check1313, label %polly.loop_header396.preheader, label %vector.ph1314

vector.ph1314:                                    ; preds = %polly.loop_header390
  %n.vec1316 = and i64 %163, -4
  br label %vector.body1310

vector.body1310:                                  ; preds = %vector.body1310, %vector.ph1314
  %index1317 = phi i64 [ 0, %vector.ph1314 ], [ %index.next1318, %vector.body1310 ]
  %165 = shl nuw nsw i64 %index1317, 3
  %166 = getelementptr i8, i8* %scevgep402, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  %wide.load1321 = load <4 x double>, <4 x double>* %167, align 8, !alias.scope !86, !noalias !88
  %168 = fmul fast <4 x double> %wide.load1321, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %169 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %168, <4 x double>* %169, align 8, !alias.scope !86, !noalias !88
  %index.next1318 = add i64 %index1317, 4
  %170 = icmp eq i64 %index.next1318, %n.vec1316
  br i1 %170, label %middle.block1308, label %vector.body1310, !llvm.loop !93

middle.block1308:                                 ; preds = %vector.body1310
  %cmp.n1320 = icmp eq i64 %163, %n.vec1316
  br i1 %cmp.n1320, label %polly.loop_exit398, label %polly.loop_header396.preheader

polly.loop_header396.preheader:                   ; preds = %polly.loop_header390, %middle.block1308
  %polly.indvar399.ph = phi i64 [ 0, %polly.loop_header390 ], [ %n.vec1316, %middle.block1308 ]
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396, %middle.block1308
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next394, 1200
  %indvar.next1312 = add i64 %indvar1311, 1
  br i1 %exitcond1106.not, label %polly.loop_header406.preheader, label %polly.loop_header390

polly.loop_header406.preheader:                   ; preds = %polly.loop_exit398
  %Packed_MemRef_call1305 = bitcast i8* %malloccall304 to double*
  %Packed_MemRef_call2307 = bitcast i8* %malloccall306 to double*
  br label %polly.loop_header406

polly.loop_header396:                             ; preds = %polly.loop_header396.preheader, %polly.loop_header396
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_header396 ], [ %polly.indvar399.ph, %polly.loop_header396.preheader ]
  %171 = shl nuw nsw i64 %polly.indvar399, 3
  %scevgep403 = getelementptr i8, i8* %scevgep402, i64 %171
  %scevgep403404 = bitcast i8* %scevgep403 to double*
  %_p_scalar_405 = load double, double* %scevgep403404, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_405, 1.200000e+00
  store double %p_mul.i57, double* %scevgep403404, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next400, %polly.indvar393
  br i1 %exitcond1105.not, label %polly.loop_exit398, label %polly.loop_header396, !llvm.loop !94

polly.loop_header406:                             ; preds = %polly.loop_header406.preheader, %polly.loop_exit431
  %indvars.iv1095 = phi i64 [ 0, %polly.loop_header406.preheader ], [ %indvars.iv.next1096, %polly.loop_exit431 ]
  %indvars.iv1090 = phi i64 [ 0, %polly.loop_header406.preheader ], [ %indvars.iv.next1091, %polly.loop_exit431 ]
  %indvars.iv1083 = phi i64 [ 1200, %polly.loop_header406.preheader ], [ %indvars.iv.next1084, %polly.loop_exit431 ]
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header406.preheader ], [ %polly.indvar_next410, %polly.loop_exit431 ]
  %172 = shl nuw nsw i64 %polly.indvar409, 7
  %173 = udiv i64 %polly.indvar409, 3
  %174 = add nuw i64 %polly.indvar409, %173
  %175 = mul nuw nsw i64 %174, 96
  %176 = sub i64 %172, %175
  %177 = mul nsw i64 %polly.indvar409, -128
  %178 = add i64 %177, %175
  %179 = udiv i64 %polly.indvar409, 3
  %180 = add nuw i64 %polly.indvar409, %179
  %181 = mul nuw nsw i64 %180, 96
  %182 = sub i64 %indvars.iv1090, %181
  %183 = add i64 %indvars.iv1095, %181
  %184 = mul nsw i64 %polly.indvar409, -128
  %185 = shl nsw i64 %polly.indvar409, 7
  br label %polly.loop_header412

polly.loop_exit414:                               ; preds = %polly.loop_exit420
  %186 = add nsw i64 %184, 1199
  br label %polly.loop_header429

polly.loop_exit431:                               ; preds = %polly.loop_exit470
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %indvars.iv.next1084 = add nsw i64 %indvars.iv1083, -128
  %indvars.iv.next1091 = add nuw nsw i64 %indvars.iv1090, 128
  %indvars.iv.next1096 = add nsw i64 %indvars.iv1095, -128
  %exitcond1104.not = icmp eq i64 %polly.indvar_next410, 10
  br i1 %exitcond1104.not, label %polly.exiting303, label %polly.loop_header406

polly.loop_header412:                             ; preds = %polly.loop_exit420, %polly.loop_header406
  %polly.indvar415 = phi i64 [ 0, %polly.loop_header406 ], [ %polly.indvar_next416, %polly.loop_exit420 ]
  %polly.access.mul.Packed_MemRef_call2307 = mul nuw nsw i64 %polly.indvar415, 1200
  br label %polly.loop_header418

polly.loop_exit420:                               ; preds = %polly.loop_header418
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar_next416, 1000
  br i1 %exitcond1086.not, label %polly.loop_exit414, label %polly.loop_header412

polly.loop_header418:                             ; preds = %polly.loop_header418, %polly.loop_header412
  %polly.indvar421 = phi i64 [ 0, %polly.loop_header412 ], [ %polly.indvar_next422, %polly.loop_header418 ]
  %187 = add nuw nsw i64 %polly.indvar421, %185
  %polly.access.mul.call2425 = mul nuw nsw i64 %187, 1000
  %polly.access.add.call2426 = add nuw nsw i64 %polly.access.mul.call2425, %polly.indvar415
  %polly.access.call2427 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2426
  %polly.access.call2427.load = load double, double* %polly.access.call2427, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2307 = add nuw nsw i64 %polly.indvar421, %polly.access.mul.Packed_MemRef_call2307
  %polly.access.Packed_MemRef_call2307 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307
  store double %polly.access.call2427.load, double* %polly.access.Packed_MemRef_call2307, align 8
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar_next422, %indvars.iv1083
  br i1 %exitcond1085.not, label %polly.loop_exit420, label %polly.loop_header418

polly.loop_header429:                             ; preds = %polly.loop_exit470, %polly.loop_exit414
  %indvar1325 = phi i64 [ %indvar.next1326, %polly.loop_exit470 ], [ 0, %polly.loop_exit414 ]
  %indvars.iv1097 = phi i64 [ %indvars.iv.next1098, %polly.loop_exit470 ], [ %183, %polly.loop_exit414 ]
  %indvars.iv1092 = phi i64 [ %indvars.iv.next1093, %polly.loop_exit470 ], [ %182, %polly.loop_exit414 ]
  %polly.indvar432 = phi i64 [ %polly.indvar_next433, %polly.loop_exit470 ], [ %180, %polly.loop_exit414 ]
  %188 = mul nsw i64 %indvar1325, -96
  %189 = add i64 %176, %188
  %smax1327 = call i64 @llvm.smax.i64(i64 %189, i64 0)
  %190 = mul nuw nsw i64 %indvar1325, 96
  %191 = add i64 %178, %190
  %192 = add i64 %smax1327, %191
  %smax1094 = call i64 @llvm.smax.i64(i64 %indvars.iv1092, i64 0)
  %193 = add i64 %smax1094, %indvars.iv1097
  %194 = mul nuw nsw i64 %polly.indvar432, 96
  %195 = add nsw i64 %194, %184
  %196 = add nsw i64 %195, -1
  %.inv924 = icmp sgt i64 %195, 127
  %197 = select i1 %.inv924, i64 127, i64 %196
  %polly.loop_guard445 = icmp sgt i64 %197, -1
  %198 = icmp sgt i64 %195, 0
  %199 = select i1 %198, i64 %195, i64 0
  %200 = add nsw i64 %195, 95
  %201 = icmp slt i64 %186, %200
  %202 = select i1 %201, i64 %186, i64 %200
  %polly.loop_guard457.not = icmp sgt i64 %199, %202
  br i1 %polly.loop_guard445, label %polly.loop_header435.us, label %polly.loop_header429.split

polly.loop_header435.us:                          ; preds = %polly.loop_header429, %polly.loop_exit456.us
  %polly.indvar438.us = phi i64 [ %polly.indvar_next439.us, %polly.loop_exit456.us ], [ 0, %polly.loop_header429 ]
  %polly.access.mul.Packed_MemRef_call1305.us = mul nuw nsw i64 %polly.indvar438.us, 1200
  br label %polly.loop_header442.us

polly.loop_header442.us:                          ; preds = %polly.loop_header435.us, %polly.loop_header442.us
  %polly.indvar446.us = phi i64 [ %polly.indvar_next447.us, %polly.loop_header442.us ], [ 0, %polly.loop_header435.us ]
  %203 = add nuw nsw i64 %polly.indvar446.us, %185
  %polly.access.mul.call1450.us = mul nuw nsw i64 %203, 1000
  %polly.access.add.call1451.us = add nuw nsw i64 %polly.access.mul.call1450.us, %polly.indvar438.us
  %polly.access.call1452.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1451.us
  %polly.access.call1452.load.us = load double, double* %polly.access.call1452.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1305.us = add nuw nsw i64 %polly.indvar446.us, %polly.access.mul.Packed_MemRef_call1305.us
  %polly.access.Packed_MemRef_call1305.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us
  store double %polly.access.call1452.load.us, double* %polly.access.Packed_MemRef_call1305.us, align 8
  %polly.indvar_next447.us = add nuw i64 %polly.indvar446.us, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar446.us, %197
  br i1 %exitcond1088.not, label %polly.loop_exit444.loopexit.us, label %polly.loop_header442.us

polly.loop_header454.us:                          ; preds = %polly.loop_exit444.loopexit.us, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ %199, %polly.loop_exit444.loopexit.us ]
  %204 = add nuw nsw i64 %polly.indvar458.us, %185
  %polly.access.mul.call1462.us = mul nsw i64 %204, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %polly.access.mul.call1462.us, %polly.indvar438.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1305466.us = add nuw nsw i64 %polly.indvar458.us, %polly.access.mul.Packed_MemRef_call1305.us
  %polly.access.Packed_MemRef_call1305467.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305466.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1305467.us, align 8
  %polly.indvar_next459.us = add nuw nsw i64 %polly.indvar458.us, 1
  %polly.loop_cond460.not.not.us = icmp slt i64 %polly.indvar458.us, %202
  br i1 %polly.loop_cond460.not.not.us, label %polly.loop_header454.us, label %polly.loop_exit456.us

polly.loop_exit456.us:                            ; preds = %polly.loop_header454.us, %polly.loop_exit444.loopexit.us
  %polly.indvar_next439.us = add nuw nsw i64 %polly.indvar438.us, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next439.us, 1000
  br i1 %exitcond1089.not, label %polly.loop_header468.preheader, label %polly.loop_header435.us

polly.loop_exit444.loopexit.us:                   ; preds = %polly.loop_header442.us
  br i1 %polly.loop_guard457.not, label %polly.loop_exit456.us, label %polly.loop_header454.us

polly.loop_header429.split:                       ; preds = %polly.loop_header429
  br i1 %polly.loop_guard457.not, label %polly.loop_header468.preheader, label %polly.loop_header435

polly.loop_exit470:                               ; preds = %polly.loop_exit477, %polly.loop_header468.preheader
  %polly.indvar_next433 = add nuw nsw i64 %polly.indvar432, 1
  %polly.loop_cond434 = icmp ult i64 %polly.indvar432, 12
  %indvars.iv.next1093 = add i64 %indvars.iv1092, -96
  %indvars.iv.next1098 = add i64 %indvars.iv1097, 96
  %indvar.next1326 = add i64 %indvar1325, 1
  br i1 %polly.loop_cond434, label %polly.loop_header429, label %polly.loop_exit431

polly.loop_header435:                             ; preds = %polly.loop_header429.split, %polly.loop_exit456
  %polly.indvar438 = phi i64 [ %polly.indvar_next439, %polly.loop_exit456 ], [ 0, %polly.loop_header429.split ]
  %polly.access.mul.Packed_MemRef_call1305465 = mul nuw nsw i64 %polly.indvar438, 1200
  br label %polly.loop_header454

polly.loop_exit456:                               ; preds = %polly.loop_header454
  %polly.indvar_next439 = add nuw nsw i64 %polly.indvar438, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar_next439, 1000
  br i1 %exitcond1087.not, label %polly.loop_header468.preheader, label %polly.loop_header435

polly.loop_header468.preheader:                   ; preds = %polly.loop_exit456, %polly.loop_exit456.us, %polly.loop_header429.split
  %205 = sub nsw i64 %185, %194
  %206 = icmp sgt i64 %205, 0
  %207 = select i1 %206, i64 %205, i64 0
  %208 = mul nsw i64 %polly.indvar432, -96
  %209 = icmp slt i64 %208, -1104
  %210 = select i1 %209, i64 %208, i64 -1104
  %211 = add nsw i64 %210, 1199
  %polly.loop_guard478.not = icmp sgt i64 %207, %211
  br i1 %polly.loop_guard478.not, label %polly.loop_exit470, label %polly.loop_header468

polly.loop_header454:                             ; preds = %polly.loop_header435, %polly.loop_header454
  %polly.indvar458 = phi i64 [ %polly.indvar_next459, %polly.loop_header454 ], [ %199, %polly.loop_header435 ]
  %212 = add nuw nsw i64 %polly.indvar458, %185
  %polly.access.mul.call1462 = mul nsw i64 %212, 1000
  %polly.access.add.call1463 = add nuw nsw i64 %polly.access.mul.call1462, %polly.indvar438
  %polly.access.call1464 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1463
  %polly.access.call1464.load = load double, double* %polly.access.call1464, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1305466 = add nuw nsw i64 %polly.indvar458, %polly.access.mul.Packed_MemRef_call1305465
  %polly.access.Packed_MemRef_call1305467 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305466
  store double %polly.access.call1464.load, double* %polly.access.Packed_MemRef_call1305467, align 8
  %polly.indvar_next459 = add nuw nsw i64 %polly.indvar458, 1
  %polly.loop_cond460.not.not = icmp slt i64 %polly.indvar458, %202
  br i1 %polly.loop_cond460.not.not, label %polly.loop_header454, label %polly.loop_exit456

polly.loop_header468:                             ; preds = %polly.loop_header468.preheader, %polly.loop_exit477
  %polly.indvar471 = phi i64 [ %polly.indvar_next472, %polly.loop_exit477 ], [ 0, %polly.loop_header468.preheader ]
  %polly.access.mul.Packed_MemRef_call1305490 = mul nuw nsw i64 %polly.indvar471, 1200
  br label %polly.loop_header475

polly.loop_exit477:                               ; preds = %polly.loop_exit485
  %polly.indvar_next472 = add nuw nsw i64 %polly.indvar471, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next472, 1000
  br i1 %exitcond1103.not, label %polly.loop_exit470, label %polly.loop_header468

polly.loop_header475:                             ; preds = %polly.loop_header468, %polly.loop_exit485
  %indvar1328 = phi i64 [ 0, %polly.loop_header468 ], [ %indvar.next1329, %polly.loop_exit485 ]
  %indvars.iv1099 = phi i64 [ %193, %polly.loop_header468 ], [ %indvars.iv.next1100, %polly.loop_exit485 ]
  %polly.indvar479 = phi i64 [ %207, %polly.loop_header468 ], [ %polly.indvar_next480, %polly.loop_exit485 ]
  %213 = add i64 %192, %indvar1328
  %smin1330 = call i64 @llvm.smin.i64(i64 %213, i64 127)
  %214 = add nsw i64 %smin1330, 1
  %smin1101 = call i64 @llvm.smin.i64(i64 %indvars.iv1099, i64 127)
  %215 = add nsw i64 %polly.indvar479, %195
  %polly.loop_guard4861169 = icmp sgt i64 %215, -1
  br i1 %polly.loop_guard4861169, label %polly.loop_header483.preheader, label %polly.loop_exit485

polly.loop_header483.preheader:                   ; preds = %polly.loop_header475
  %216 = add nuw nsw i64 %polly.indvar479, %194
  %polly.access.add.Packed_MemRef_call2307495 = add nsw i64 %215, %polly.access.mul.Packed_MemRef_call1305490
  %polly.access.Packed_MemRef_call2307496 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307495
  %_p_scalar_497 = load double, double* %polly.access.Packed_MemRef_call2307496, align 8
  %polly.access.Packed_MemRef_call1305504 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call2307495
  %_p_scalar_505 = load double, double* %polly.access.Packed_MemRef_call1305504, align 8
  %217 = mul i64 %216, 9600
  %min.iters.check1331 = icmp ult i64 %214, 4
  br i1 %min.iters.check1331, label %polly.loop_header483.preheader1400, label %vector.ph1332

vector.ph1332:                                    ; preds = %polly.loop_header483.preheader
  %n.vec1334 = and i64 %214, -4
  %broadcast.splatinsert1340 = insertelement <4 x double> poison, double %_p_scalar_497, i32 0
  %broadcast.splat1341 = shufflevector <4 x double> %broadcast.splatinsert1340, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1343 = insertelement <4 x double> poison, double %_p_scalar_505, i32 0
  %broadcast.splat1344 = shufflevector <4 x double> %broadcast.splatinsert1343, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1324

vector.body1324:                                  ; preds = %vector.body1324, %vector.ph1332
  %index1335 = phi i64 [ 0, %vector.ph1332 ], [ %index.next1336, %vector.body1324 ]
  %218 = add nuw nsw i64 %index1335, %185
  %219 = add nuw nsw i64 %index1335, %polly.access.mul.Packed_MemRef_call1305490
  %220 = getelementptr double, double* %Packed_MemRef_call1305, i64 %219
  %221 = bitcast double* %220 to <4 x double>*
  %wide.load1339 = load <4 x double>, <4 x double>* %221, align 8
  %222 = fmul fast <4 x double> %broadcast.splat1341, %wide.load1339
  %223 = getelementptr double, double* %Packed_MemRef_call2307, i64 %219
  %224 = bitcast double* %223 to <4 x double>*
  %wide.load1342 = load <4 x double>, <4 x double>* %224, align 8
  %225 = fmul fast <4 x double> %broadcast.splat1344, %wide.load1342
  %226 = shl i64 %218, 3
  %227 = add i64 %226, %217
  %228 = getelementptr i8, i8* %call, i64 %227
  %229 = bitcast i8* %228 to <4 x double>*
  %wide.load1345 = load <4 x double>, <4 x double>* %229, align 8, !alias.scope !86, !noalias !88
  %230 = fadd fast <4 x double> %225, %222
  %231 = fmul fast <4 x double> %230, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %232 = fadd fast <4 x double> %231, %wide.load1345
  %233 = bitcast i8* %228 to <4 x double>*
  store <4 x double> %232, <4 x double>* %233, align 8, !alias.scope !86, !noalias !88
  %index.next1336 = add i64 %index1335, 4
  %234 = icmp eq i64 %index.next1336, %n.vec1334
  br i1 %234, label %middle.block1322, label %vector.body1324, !llvm.loop !97

middle.block1322:                                 ; preds = %vector.body1324
  %cmp.n1338 = icmp eq i64 %214, %n.vec1334
  br i1 %cmp.n1338, label %polly.loop_exit485, label %polly.loop_header483.preheader1400

polly.loop_header483.preheader1400:               ; preds = %polly.loop_header483.preheader, %middle.block1322
  %polly.indvar487.ph = phi i64 [ 0, %polly.loop_header483.preheader ], [ %n.vec1334, %middle.block1322 ]
  br label %polly.loop_header483

polly.loop_exit485:                               ; preds = %polly.loop_header483, %middle.block1322, %polly.loop_header475
  %polly.indvar_next480 = add nuw nsw i64 %polly.indvar479, 1
  %polly.loop_cond481.not.not = icmp slt i64 %polly.indvar479, %211
  %indvars.iv.next1100 = add i64 %indvars.iv1099, 1
  %indvar.next1329 = add i64 %indvar1328, 1
  br i1 %polly.loop_cond481.not.not, label %polly.loop_header475, label %polly.loop_exit477

polly.loop_header483:                             ; preds = %polly.loop_header483.preheader1400, %polly.loop_header483
  %polly.indvar487 = phi i64 [ %polly.indvar_next488, %polly.loop_header483 ], [ %polly.indvar487.ph, %polly.loop_header483.preheader1400 ]
  %235 = add nuw nsw i64 %polly.indvar487, %185
  %polly.access.add.Packed_MemRef_call1305491 = add nuw nsw i64 %polly.indvar487, %polly.access.mul.Packed_MemRef_call1305490
  %polly.access.Packed_MemRef_call1305492 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305491
  %_p_scalar_493 = load double, double* %polly.access.Packed_MemRef_call1305492, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_497, %_p_scalar_493
  %polly.access.Packed_MemRef_call2307500 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call1305491
  %_p_scalar_501 = load double, double* %polly.access.Packed_MemRef_call2307500, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_505, %_p_scalar_501
  %236 = shl i64 %235, 3
  %237 = add i64 %236, %217
  %scevgep506 = getelementptr i8, i8* %call, i64 %237
  %scevgep506507 = bitcast i8* %scevgep506 to double*
  %_p_scalar_508 = load double, double* %scevgep506507, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_508
  store double %p_add42.i79, double* %scevgep506507, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next488 = add nuw nsw i64 %polly.indvar487, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar487, %smin1101
  br i1 %exitcond1102.not, label %polly.loop_exit485, label %polly.loop_header483, !llvm.loop !98

polly.start511:                                   ; preds = %init_array.exit
  %malloccall513 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall515 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header599

polly.exiting512:                                 ; preds = %polly.loop_exit640
  tail call void @free(i8* %malloccall513)
  tail call void @free(i8* %malloccall515)
  br label %kernel_syr2k.exit

polly.loop_header599:                             ; preds = %polly.loop_exit607, %polly.start511
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit607 ], [ 0, %polly.start511 ]
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit607 ], [ 1, %polly.start511 ]
  %238 = add i64 %indvar, 1
  %239 = mul nuw nsw i64 %polly.indvar602, 9600
  %scevgep611 = getelementptr i8, i8* %call, i64 %239
  %min.iters.check1263 = icmp ult i64 %238, 4
  br i1 %min.iters.check1263, label %polly.loop_header605.preheader, label %vector.ph1264

vector.ph1264:                                    ; preds = %polly.loop_header599
  %n.vec1266 = and i64 %238, -4
  br label %vector.body1262

vector.body1262:                                  ; preds = %vector.body1262, %vector.ph1264
  %index1267 = phi i64 [ 0, %vector.ph1264 ], [ %index.next1268, %vector.body1262 ]
  %240 = shl nuw nsw i64 %index1267, 3
  %241 = getelementptr i8, i8* %scevgep611, i64 %240
  %242 = bitcast i8* %241 to <4 x double>*
  %wide.load1271 = load <4 x double>, <4 x double>* %242, align 8, !alias.scope !99, !noalias !101
  %243 = fmul fast <4 x double> %wide.load1271, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %244 = bitcast i8* %241 to <4 x double>*
  store <4 x double> %243, <4 x double>* %244, align 8, !alias.scope !99, !noalias !101
  %index.next1268 = add i64 %index1267, 4
  %245 = icmp eq i64 %index.next1268, %n.vec1266
  br i1 %245, label %middle.block1260, label %vector.body1262, !llvm.loop !106

middle.block1260:                                 ; preds = %vector.body1262
  %cmp.n1270 = icmp eq i64 %238, %n.vec1266
  br i1 %cmp.n1270, label %polly.loop_exit607, label %polly.loop_header605.preheader

polly.loop_header605.preheader:                   ; preds = %polly.loop_header599, %middle.block1260
  %polly.indvar608.ph = phi i64 [ 0, %polly.loop_header599 ], [ %n.vec1266, %middle.block1260 ]
  br label %polly.loop_header605

polly.loop_exit607:                               ; preds = %polly.loop_header605, %middle.block1260
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1130.not = icmp eq i64 %polly.indvar_next603, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1130.not, label %polly.loop_header615.preheader, label %polly.loop_header599

polly.loop_header615.preheader:                   ; preds = %polly.loop_exit607
  %Packed_MemRef_call1514 = bitcast i8* %malloccall513 to double*
  %Packed_MemRef_call2516 = bitcast i8* %malloccall515 to double*
  br label %polly.loop_header615

polly.loop_header605:                             ; preds = %polly.loop_header605.preheader, %polly.loop_header605
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_header605 ], [ %polly.indvar608.ph, %polly.loop_header605.preheader ]
  %246 = shl nuw nsw i64 %polly.indvar608, 3
  %scevgep612 = getelementptr i8, i8* %scevgep611, i64 %246
  %scevgep612613 = bitcast i8* %scevgep612 to double*
  %_p_scalar_614 = load double, double* %scevgep612613, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_614, 1.200000e+00
  store double %p_mul.i, double* %scevgep612613, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1129.not = icmp eq i64 %polly.indvar_next609, %polly.indvar602
  br i1 %exitcond1129.not, label %polly.loop_exit607, label %polly.loop_header605, !llvm.loop !107

polly.loop_header615:                             ; preds = %polly.loop_header615.preheader, %polly.loop_exit640
  %indvars.iv1119 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %indvars.iv.next1120, %polly.loop_exit640 ]
  %indvars.iv1114 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %indvars.iv.next1115, %polly.loop_exit640 ]
  %indvars.iv1107 = phi i64 [ 1200, %polly.loop_header615.preheader ], [ %indvars.iv.next1108, %polly.loop_exit640 ]
  %polly.indvar618 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %polly.indvar_next619, %polly.loop_exit640 ]
  %247 = shl nuw nsw i64 %polly.indvar618, 7
  %248 = udiv i64 %polly.indvar618, 3
  %249 = add nuw i64 %polly.indvar618, %248
  %250 = mul nuw nsw i64 %249, 96
  %251 = sub i64 %247, %250
  %252 = mul nsw i64 %polly.indvar618, -128
  %253 = add i64 %252, %250
  %254 = udiv i64 %polly.indvar618, 3
  %255 = add nuw i64 %polly.indvar618, %254
  %256 = mul nuw nsw i64 %255, 96
  %257 = sub i64 %indvars.iv1114, %256
  %258 = add i64 %indvars.iv1119, %256
  %259 = mul nsw i64 %polly.indvar618, -128
  %260 = shl nsw i64 %polly.indvar618, 7
  br label %polly.loop_header621

polly.loop_exit623:                               ; preds = %polly.loop_exit629
  %261 = add nsw i64 %259, 1199
  br label %polly.loop_header638

polly.loop_exit640:                               ; preds = %polly.loop_exit679
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %indvars.iv.next1108 = add nsw i64 %indvars.iv1107, -128
  %indvars.iv.next1115 = add nuw nsw i64 %indvars.iv1114, 128
  %indvars.iv.next1120 = add nsw i64 %indvars.iv1119, -128
  %exitcond1128.not = icmp eq i64 %polly.indvar_next619, 10
  br i1 %exitcond1128.not, label %polly.exiting512, label %polly.loop_header615

polly.loop_header621:                             ; preds = %polly.loop_exit629, %polly.loop_header615
  %polly.indvar624 = phi i64 [ 0, %polly.loop_header615 ], [ %polly.indvar_next625, %polly.loop_exit629 ]
  %polly.access.mul.Packed_MemRef_call2516 = mul nuw nsw i64 %polly.indvar624, 1200
  br label %polly.loop_header627

polly.loop_exit629:                               ; preds = %polly.loop_header627
  %polly.indvar_next625 = add nuw nsw i64 %polly.indvar624, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar_next625, 1000
  br i1 %exitcond1110.not, label %polly.loop_exit623, label %polly.loop_header621

polly.loop_header627:                             ; preds = %polly.loop_header627, %polly.loop_header621
  %polly.indvar630 = phi i64 [ 0, %polly.loop_header621 ], [ %polly.indvar_next631, %polly.loop_header627 ]
  %262 = add nuw nsw i64 %polly.indvar630, %260
  %polly.access.mul.call2634 = mul nuw nsw i64 %262, 1000
  %polly.access.add.call2635 = add nuw nsw i64 %polly.access.mul.call2634, %polly.indvar624
  %polly.access.call2636 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2635
  %polly.access.call2636.load = load double, double* %polly.access.call2636, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2516 = add nuw nsw i64 %polly.indvar630, %polly.access.mul.Packed_MemRef_call2516
  %polly.access.Packed_MemRef_call2516 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516
  store double %polly.access.call2636.load, double* %polly.access.Packed_MemRef_call2516, align 8
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar_next631, %indvars.iv1107
  br i1 %exitcond1109.not, label %polly.loop_exit629, label %polly.loop_header627

polly.loop_header638:                             ; preds = %polly.loop_exit679, %polly.loop_exit623
  %indvar1275 = phi i64 [ %indvar.next1276, %polly.loop_exit679 ], [ 0, %polly.loop_exit623 ]
  %indvars.iv1121 = phi i64 [ %indvars.iv.next1122, %polly.loop_exit679 ], [ %258, %polly.loop_exit623 ]
  %indvars.iv1116 = phi i64 [ %indvars.iv.next1117, %polly.loop_exit679 ], [ %257, %polly.loop_exit623 ]
  %polly.indvar641 = phi i64 [ %polly.indvar_next642, %polly.loop_exit679 ], [ %255, %polly.loop_exit623 ]
  %263 = mul nsw i64 %indvar1275, -96
  %264 = add i64 %251, %263
  %smax1277 = call i64 @llvm.smax.i64(i64 %264, i64 0)
  %265 = mul nuw nsw i64 %indvar1275, 96
  %266 = add i64 %253, %265
  %267 = add i64 %smax1277, %266
  %smax1118 = call i64 @llvm.smax.i64(i64 %indvars.iv1116, i64 0)
  %268 = add i64 %smax1118, %indvars.iv1121
  %269 = mul nuw nsw i64 %polly.indvar641, 96
  %270 = add nsw i64 %269, %259
  %271 = add nsw i64 %270, -1
  %.inv925 = icmp sgt i64 %270, 127
  %272 = select i1 %.inv925, i64 127, i64 %271
  %polly.loop_guard654 = icmp sgt i64 %272, -1
  %273 = icmp sgt i64 %270, 0
  %274 = select i1 %273, i64 %270, i64 0
  %275 = add nsw i64 %270, 95
  %276 = icmp slt i64 %261, %275
  %277 = select i1 %276, i64 %261, i64 %275
  %polly.loop_guard666.not = icmp sgt i64 %274, %277
  br i1 %polly.loop_guard654, label %polly.loop_header644.us, label %polly.loop_header638.split

polly.loop_header644.us:                          ; preds = %polly.loop_header638, %polly.loop_exit665.us
  %polly.indvar647.us = phi i64 [ %polly.indvar_next648.us, %polly.loop_exit665.us ], [ 0, %polly.loop_header638 ]
  %polly.access.mul.Packed_MemRef_call1514.us = mul nuw nsw i64 %polly.indvar647.us, 1200
  br label %polly.loop_header651.us

polly.loop_header651.us:                          ; preds = %polly.loop_header644.us, %polly.loop_header651.us
  %polly.indvar655.us = phi i64 [ %polly.indvar_next656.us, %polly.loop_header651.us ], [ 0, %polly.loop_header644.us ]
  %278 = add nuw nsw i64 %polly.indvar655.us, %260
  %polly.access.mul.call1659.us = mul nuw nsw i64 %278, 1000
  %polly.access.add.call1660.us = add nuw nsw i64 %polly.access.mul.call1659.us, %polly.indvar647.us
  %polly.access.call1661.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1660.us
  %polly.access.call1661.load.us = load double, double* %polly.access.call1661.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514.us = add nuw nsw i64 %polly.indvar655.us, %polly.access.mul.Packed_MemRef_call1514.us
  %polly.access.Packed_MemRef_call1514.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us
  store double %polly.access.call1661.load.us, double* %polly.access.Packed_MemRef_call1514.us, align 8
  %polly.indvar_next656.us = add nuw i64 %polly.indvar655.us, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar655.us, %272
  br i1 %exitcond1112.not, label %polly.loop_exit653.loopexit.us, label %polly.loop_header651.us

polly.loop_header663.us:                          ; preds = %polly.loop_exit653.loopexit.us, %polly.loop_header663.us
  %polly.indvar667.us = phi i64 [ %polly.indvar_next668.us, %polly.loop_header663.us ], [ %274, %polly.loop_exit653.loopexit.us ]
  %279 = add nuw nsw i64 %polly.indvar667.us, %260
  %polly.access.mul.call1671.us = mul nsw i64 %279, 1000
  %polly.access.add.call1672.us = add nuw nsw i64 %polly.access.mul.call1671.us, %polly.indvar647.us
  %polly.access.call1673.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1672.us
  %polly.access.call1673.load.us = load double, double* %polly.access.call1673.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514675.us = add nuw nsw i64 %polly.indvar667.us, %polly.access.mul.Packed_MemRef_call1514.us
  %polly.access.Packed_MemRef_call1514676.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514675.us
  store double %polly.access.call1673.load.us, double* %polly.access.Packed_MemRef_call1514676.us, align 8
  %polly.indvar_next668.us = add nuw nsw i64 %polly.indvar667.us, 1
  %polly.loop_cond669.not.not.us = icmp slt i64 %polly.indvar667.us, %277
  br i1 %polly.loop_cond669.not.not.us, label %polly.loop_header663.us, label %polly.loop_exit665.us

polly.loop_exit665.us:                            ; preds = %polly.loop_header663.us, %polly.loop_exit653.loopexit.us
  %polly.indvar_next648.us = add nuw nsw i64 %polly.indvar647.us, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar_next648.us, 1000
  br i1 %exitcond1113.not, label %polly.loop_header677.preheader, label %polly.loop_header644.us

polly.loop_exit653.loopexit.us:                   ; preds = %polly.loop_header651.us
  br i1 %polly.loop_guard666.not, label %polly.loop_exit665.us, label %polly.loop_header663.us

polly.loop_header638.split:                       ; preds = %polly.loop_header638
  br i1 %polly.loop_guard666.not, label %polly.loop_header677.preheader, label %polly.loop_header644

polly.loop_exit679:                               ; preds = %polly.loop_exit686, %polly.loop_header677.preheader
  %polly.indvar_next642 = add nuw nsw i64 %polly.indvar641, 1
  %polly.loop_cond643 = icmp ult i64 %polly.indvar641, 12
  %indvars.iv.next1117 = add i64 %indvars.iv1116, -96
  %indvars.iv.next1122 = add i64 %indvars.iv1121, 96
  %indvar.next1276 = add i64 %indvar1275, 1
  br i1 %polly.loop_cond643, label %polly.loop_header638, label %polly.loop_exit640

polly.loop_header644:                             ; preds = %polly.loop_header638.split, %polly.loop_exit665
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit665 ], [ 0, %polly.loop_header638.split ]
  %polly.access.mul.Packed_MemRef_call1514674 = mul nuw nsw i64 %polly.indvar647, 1200
  br label %polly.loop_header663

polly.loop_exit665:                               ; preds = %polly.loop_header663
  %polly.indvar_next648 = add nuw nsw i64 %polly.indvar647, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar_next648, 1000
  br i1 %exitcond1111.not, label %polly.loop_header677.preheader, label %polly.loop_header644

polly.loop_header677.preheader:                   ; preds = %polly.loop_exit665, %polly.loop_exit665.us, %polly.loop_header638.split
  %280 = sub nsw i64 %260, %269
  %281 = icmp sgt i64 %280, 0
  %282 = select i1 %281, i64 %280, i64 0
  %283 = mul nsw i64 %polly.indvar641, -96
  %284 = icmp slt i64 %283, -1104
  %285 = select i1 %284, i64 %283, i64 -1104
  %286 = add nsw i64 %285, 1199
  %polly.loop_guard687.not = icmp sgt i64 %282, %286
  br i1 %polly.loop_guard687.not, label %polly.loop_exit679, label %polly.loop_header677

polly.loop_header663:                             ; preds = %polly.loop_header644, %polly.loop_header663
  %polly.indvar667 = phi i64 [ %polly.indvar_next668, %polly.loop_header663 ], [ %274, %polly.loop_header644 ]
  %287 = add nuw nsw i64 %polly.indvar667, %260
  %polly.access.mul.call1671 = mul nsw i64 %287, 1000
  %polly.access.add.call1672 = add nuw nsw i64 %polly.access.mul.call1671, %polly.indvar647
  %polly.access.call1673 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1672
  %polly.access.call1673.load = load double, double* %polly.access.call1673, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514675 = add nuw nsw i64 %polly.indvar667, %polly.access.mul.Packed_MemRef_call1514674
  %polly.access.Packed_MemRef_call1514676 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514675
  store double %polly.access.call1673.load, double* %polly.access.Packed_MemRef_call1514676, align 8
  %polly.indvar_next668 = add nuw nsw i64 %polly.indvar667, 1
  %polly.loop_cond669.not.not = icmp slt i64 %polly.indvar667, %277
  br i1 %polly.loop_cond669.not.not, label %polly.loop_header663, label %polly.loop_exit665

polly.loop_header677:                             ; preds = %polly.loop_header677.preheader, %polly.loop_exit686
  %polly.indvar680 = phi i64 [ %polly.indvar_next681, %polly.loop_exit686 ], [ 0, %polly.loop_header677.preheader ]
  %polly.access.mul.Packed_MemRef_call1514699 = mul nuw nsw i64 %polly.indvar680, 1200
  br label %polly.loop_header684

polly.loop_exit686:                               ; preds = %polly.loop_exit694
  %polly.indvar_next681 = add nuw nsw i64 %polly.indvar680, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar_next681, 1000
  br i1 %exitcond1127.not, label %polly.loop_exit679, label %polly.loop_header677

polly.loop_header684:                             ; preds = %polly.loop_header677, %polly.loop_exit694
  %indvar1278 = phi i64 [ 0, %polly.loop_header677 ], [ %indvar.next1279, %polly.loop_exit694 ]
  %indvars.iv1123 = phi i64 [ %268, %polly.loop_header677 ], [ %indvars.iv.next1124, %polly.loop_exit694 ]
  %polly.indvar688 = phi i64 [ %282, %polly.loop_header677 ], [ %polly.indvar_next689, %polly.loop_exit694 ]
  %288 = add i64 %267, %indvar1278
  %smin1280 = call i64 @llvm.smin.i64(i64 %288, i64 127)
  %289 = add nsw i64 %smin1280, 1
  %smin1125 = call i64 @llvm.smin.i64(i64 %indvars.iv1123, i64 127)
  %290 = add nsw i64 %polly.indvar688, %270
  %polly.loop_guard6951170 = icmp sgt i64 %290, -1
  br i1 %polly.loop_guard6951170, label %polly.loop_header692.preheader, label %polly.loop_exit694

polly.loop_header692.preheader:                   ; preds = %polly.loop_header684
  %291 = add nuw nsw i64 %polly.indvar688, %269
  %polly.access.add.Packed_MemRef_call2516704 = add nsw i64 %290, %polly.access.mul.Packed_MemRef_call1514699
  %polly.access.Packed_MemRef_call2516705 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516704
  %_p_scalar_706 = load double, double* %polly.access.Packed_MemRef_call2516705, align 8
  %polly.access.Packed_MemRef_call1514713 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call2516704
  %_p_scalar_714 = load double, double* %polly.access.Packed_MemRef_call1514713, align 8
  %292 = mul i64 %291, 9600
  %min.iters.check1281 = icmp ult i64 %289, 4
  br i1 %min.iters.check1281, label %polly.loop_header692.preheader1404, label %vector.ph1282

vector.ph1282:                                    ; preds = %polly.loop_header692.preheader
  %n.vec1284 = and i64 %289, -4
  %broadcast.splatinsert1290 = insertelement <4 x double> poison, double %_p_scalar_706, i32 0
  %broadcast.splat1291 = shufflevector <4 x double> %broadcast.splatinsert1290, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1293 = insertelement <4 x double> poison, double %_p_scalar_714, i32 0
  %broadcast.splat1294 = shufflevector <4 x double> %broadcast.splatinsert1293, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1274

vector.body1274:                                  ; preds = %vector.body1274, %vector.ph1282
  %index1285 = phi i64 [ 0, %vector.ph1282 ], [ %index.next1286, %vector.body1274 ]
  %293 = add nuw nsw i64 %index1285, %260
  %294 = add nuw nsw i64 %index1285, %polly.access.mul.Packed_MemRef_call1514699
  %295 = getelementptr double, double* %Packed_MemRef_call1514, i64 %294
  %296 = bitcast double* %295 to <4 x double>*
  %wide.load1289 = load <4 x double>, <4 x double>* %296, align 8
  %297 = fmul fast <4 x double> %broadcast.splat1291, %wide.load1289
  %298 = getelementptr double, double* %Packed_MemRef_call2516, i64 %294
  %299 = bitcast double* %298 to <4 x double>*
  %wide.load1292 = load <4 x double>, <4 x double>* %299, align 8
  %300 = fmul fast <4 x double> %broadcast.splat1294, %wide.load1292
  %301 = shl i64 %293, 3
  %302 = add i64 %301, %292
  %303 = getelementptr i8, i8* %call, i64 %302
  %304 = bitcast i8* %303 to <4 x double>*
  %wide.load1295 = load <4 x double>, <4 x double>* %304, align 8, !alias.scope !99, !noalias !101
  %305 = fadd fast <4 x double> %300, %297
  %306 = fmul fast <4 x double> %305, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %307 = fadd fast <4 x double> %306, %wide.load1295
  %308 = bitcast i8* %303 to <4 x double>*
  store <4 x double> %307, <4 x double>* %308, align 8, !alias.scope !99, !noalias !101
  %index.next1286 = add i64 %index1285, 4
  %309 = icmp eq i64 %index.next1286, %n.vec1284
  br i1 %309, label %middle.block1272, label %vector.body1274, !llvm.loop !110

middle.block1272:                                 ; preds = %vector.body1274
  %cmp.n1288 = icmp eq i64 %289, %n.vec1284
  br i1 %cmp.n1288, label %polly.loop_exit694, label %polly.loop_header692.preheader1404

polly.loop_header692.preheader1404:               ; preds = %polly.loop_header692.preheader, %middle.block1272
  %polly.indvar696.ph = phi i64 [ 0, %polly.loop_header692.preheader ], [ %n.vec1284, %middle.block1272 ]
  br label %polly.loop_header692

polly.loop_exit694:                               ; preds = %polly.loop_header692, %middle.block1272, %polly.loop_header684
  %polly.indvar_next689 = add nuw nsw i64 %polly.indvar688, 1
  %polly.loop_cond690.not.not = icmp slt i64 %polly.indvar688, %286
  %indvars.iv.next1124 = add i64 %indvars.iv1123, 1
  %indvar.next1279 = add i64 %indvar1278, 1
  br i1 %polly.loop_cond690.not.not, label %polly.loop_header684, label %polly.loop_exit686

polly.loop_header692:                             ; preds = %polly.loop_header692.preheader1404, %polly.loop_header692
  %polly.indvar696 = phi i64 [ %polly.indvar_next697, %polly.loop_header692 ], [ %polly.indvar696.ph, %polly.loop_header692.preheader1404 ]
  %310 = add nuw nsw i64 %polly.indvar696, %260
  %polly.access.add.Packed_MemRef_call1514700 = add nuw nsw i64 %polly.indvar696, %polly.access.mul.Packed_MemRef_call1514699
  %polly.access.Packed_MemRef_call1514701 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514700
  %_p_scalar_702 = load double, double* %polly.access.Packed_MemRef_call1514701, align 8
  %p_mul27.i = fmul fast double %_p_scalar_706, %_p_scalar_702
  %polly.access.Packed_MemRef_call2516709 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call1514700
  %_p_scalar_710 = load double, double* %polly.access.Packed_MemRef_call2516709, align 8
  %p_mul37.i = fmul fast double %_p_scalar_714, %_p_scalar_710
  %311 = shl i64 %310, 3
  %312 = add i64 %311, %292
  %scevgep715 = getelementptr i8, i8* %call, i64 %312
  %scevgep715716 = bitcast i8* %scevgep715 to double*
  %_p_scalar_717 = load double, double* %scevgep715716, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_717
  store double %p_add42.i, double* %scevgep715716, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next697 = add nuw nsw i64 %polly.indvar696, 1
  %exitcond1126.not = icmp eq i64 %polly.indvar696, %smin1125
  br i1 %exitcond1126.not, label %polly.loop_exit694, label %polly.loop_header692, !llvm.loop !111

polly.loop_header844:                             ; preds = %entry, %polly.loop_exit852
  %indvars.iv1155 = phi i64 [ %indvars.iv.next1156, %polly.loop_exit852 ], [ 0, %entry ]
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %entry ]
  %smin1157 = call i64 @llvm.smin.i64(i64 %indvars.iv1155, i64 -1168)
  %313 = shl nsw i64 %polly.indvar847, 5
  %314 = add nsw i64 %smin1157, 1199
  br label %polly.loop_header850

polly.loop_exit852:                               ; preds = %polly.loop_exit858
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %indvars.iv.next1156 = add nsw i64 %indvars.iv1155, -32
  %exitcond1160.not = icmp eq i64 %polly.indvar_next848, 38
  br i1 %exitcond1160.not, label %polly.loop_header871, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_exit858, %polly.loop_header844
  %indvars.iv1151 = phi i64 [ %indvars.iv.next1152, %polly.loop_exit858 ], [ 0, %polly.loop_header844 ]
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_exit858 ], [ 0, %polly.loop_header844 ]
  %315 = mul nsw i64 %polly.indvar853, -32
  %smin1201 = call i64 @llvm.smin.i64(i64 %315, i64 -1168)
  %316 = add nsw i64 %smin1201, 1200
  %smin1153 = call i64 @llvm.smin.i64(i64 %indvars.iv1151, i64 -1168)
  %317 = shl nsw i64 %polly.indvar853, 5
  %318 = add nsw i64 %smin1153, 1199
  br label %polly.loop_header856

polly.loop_exit858:                               ; preds = %polly.loop_exit864
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %indvars.iv.next1152 = add nsw i64 %indvars.iv1151, -32
  %exitcond1159.not = icmp eq i64 %polly.indvar_next854, 38
  br i1 %exitcond1159.not, label %polly.loop_exit852, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_exit864, %polly.loop_header850
  %polly.indvar859 = phi i64 [ 0, %polly.loop_header850 ], [ %polly.indvar_next860, %polly.loop_exit864 ]
  %319 = add nuw nsw i64 %polly.indvar859, %313
  %320 = trunc i64 %319 to i32
  %321 = mul nuw nsw i64 %319, 9600
  %min.iters.check = icmp eq i64 %316, 0
  br i1 %min.iters.check, label %polly.loop_header862, label %vector.ph1202

vector.ph1202:                                    ; preds = %polly.loop_header856
  %broadcast.splatinsert1209 = insertelement <4 x i64> poison, i64 %317, i32 0
  %broadcast.splat1210 = shufflevector <4 x i64> %broadcast.splatinsert1209, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1211 = insertelement <4 x i32> poison, i32 %320, i32 0
  %broadcast.splat1212 = shufflevector <4 x i32> %broadcast.splatinsert1211, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %vector.ph1202
  %index1203 = phi i64 [ 0, %vector.ph1202 ], [ %index.next1204, %vector.body1200 ]
  %vec.ind1207 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1202 ], [ %vec.ind.next1208, %vector.body1200 ]
  %322 = add nuw nsw <4 x i64> %vec.ind1207, %broadcast.splat1210
  %323 = trunc <4 x i64> %322 to <4 x i32>
  %324 = mul <4 x i32> %broadcast.splat1212, %323
  %325 = add <4 x i32> %324, <i32 3, i32 3, i32 3, i32 3>
  %326 = urem <4 x i32> %325, <i32 1200, i32 1200, i32 1200, i32 1200>
  %327 = sitofp <4 x i32> %326 to <4 x double>
  %328 = fmul fast <4 x double> %327, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %329 = extractelement <4 x i64> %322, i32 0
  %330 = shl i64 %329, 3
  %331 = add nuw nsw i64 %330, %321
  %332 = getelementptr i8, i8* %call, i64 %331
  %333 = bitcast i8* %332 to <4 x double>*
  store <4 x double> %328, <4 x double>* %333, align 8, !alias.scope !112, !noalias !114
  %index.next1204 = add i64 %index1203, 4
  %vec.ind.next1208 = add <4 x i64> %vec.ind1207, <i64 4, i64 4, i64 4, i64 4>
  %334 = icmp eq i64 %index.next1204, %316
  br i1 %334, label %polly.loop_exit864, label %vector.body1200, !llvm.loop !117

polly.loop_exit864:                               ; preds = %vector.body1200, %polly.loop_header862
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1158.not = icmp eq i64 %polly.indvar859, %314
  br i1 %exitcond1158.not, label %polly.loop_exit858, label %polly.loop_header856

polly.loop_header862:                             ; preds = %polly.loop_header856, %polly.loop_header862
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_header862 ], [ 0, %polly.loop_header856 ]
  %335 = add nuw nsw i64 %polly.indvar865, %317
  %336 = trunc i64 %335 to i32
  %337 = mul i32 %336, %320
  %338 = add i32 %337, 3
  %339 = urem i32 %338, 1200
  %p_conv31.i = sitofp i32 %339 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %340 = shl i64 %335, 3
  %341 = add nuw nsw i64 %340, %321
  %scevgep868 = getelementptr i8, i8* %call, i64 %341
  %scevgep868869 = bitcast i8* %scevgep868 to double*
  store double %p_div33.i, double* %scevgep868869, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %exitcond1154.not = icmp eq i64 %polly.indvar865, %318
  br i1 %exitcond1154.not, label %polly.loop_exit864, label %polly.loop_header862, !llvm.loop !118

polly.loop_header871:                             ; preds = %polly.loop_exit852, %polly.loop_exit879
  %indvars.iv1145 = phi i64 [ %indvars.iv.next1146, %polly.loop_exit879 ], [ 0, %polly.loop_exit852 ]
  %polly.indvar874 = phi i64 [ %polly.indvar_next875, %polly.loop_exit879 ], [ 0, %polly.loop_exit852 ]
  %smin1147 = call i64 @llvm.smin.i64(i64 %indvars.iv1145, i64 -1168)
  %342 = shl nsw i64 %polly.indvar874, 5
  %343 = add nsw i64 %smin1147, 1199
  br label %polly.loop_header877

polly.loop_exit879:                               ; preds = %polly.loop_exit885
  %polly.indvar_next875 = add nuw nsw i64 %polly.indvar874, 1
  %indvars.iv.next1146 = add nsw i64 %indvars.iv1145, -32
  %exitcond1150.not = icmp eq i64 %polly.indvar_next875, 38
  br i1 %exitcond1150.not, label %polly.loop_header897, label %polly.loop_header871

polly.loop_header877:                             ; preds = %polly.loop_exit885, %polly.loop_header871
  %indvars.iv1141 = phi i64 [ %indvars.iv.next1142, %polly.loop_exit885 ], [ 0, %polly.loop_header871 ]
  %polly.indvar880 = phi i64 [ %polly.indvar_next881, %polly.loop_exit885 ], [ 0, %polly.loop_header871 ]
  %344 = mul nsw i64 %polly.indvar880, -32
  %smin1216 = call i64 @llvm.smin.i64(i64 %344, i64 -968)
  %345 = add nsw i64 %smin1216, 1000
  %smin1143 = call i64 @llvm.smin.i64(i64 %indvars.iv1141, i64 -968)
  %346 = shl nsw i64 %polly.indvar880, 5
  %347 = add nsw i64 %smin1143, 999
  br label %polly.loop_header883

polly.loop_exit885:                               ; preds = %polly.loop_exit891
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %indvars.iv.next1142 = add nsw i64 %indvars.iv1141, -32
  %exitcond1149.not = icmp eq i64 %polly.indvar_next881, 32
  br i1 %exitcond1149.not, label %polly.loop_exit879, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_exit891, %polly.loop_header877
  %polly.indvar886 = phi i64 [ 0, %polly.loop_header877 ], [ %polly.indvar_next887, %polly.loop_exit891 ]
  %348 = add nuw nsw i64 %polly.indvar886, %342
  %349 = trunc i64 %348 to i32
  %350 = mul nuw nsw i64 %348, 8000
  %min.iters.check1217 = icmp eq i64 %345, 0
  br i1 %min.iters.check1217, label %polly.loop_header889, label %vector.ph1218

vector.ph1218:                                    ; preds = %polly.loop_header883
  %broadcast.splatinsert1227 = insertelement <4 x i64> poison, i64 %346, i32 0
  %broadcast.splat1228 = shufflevector <4 x i64> %broadcast.splatinsert1227, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1229 = insertelement <4 x i32> poison, i32 %349, i32 0
  %broadcast.splat1230 = shufflevector <4 x i32> %broadcast.splatinsert1229, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %vector.ph1218
  %index1221 = phi i64 [ 0, %vector.ph1218 ], [ %index.next1222, %vector.body1215 ]
  %vec.ind1225 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1218 ], [ %vec.ind.next1226, %vector.body1215 ]
  %351 = add nuw nsw <4 x i64> %vec.ind1225, %broadcast.splat1228
  %352 = trunc <4 x i64> %351 to <4 x i32>
  %353 = mul <4 x i32> %broadcast.splat1230, %352
  %354 = add <4 x i32> %353, <i32 2, i32 2, i32 2, i32 2>
  %355 = urem <4 x i32> %354, <i32 1000, i32 1000, i32 1000, i32 1000>
  %356 = sitofp <4 x i32> %355 to <4 x double>
  %357 = fmul fast <4 x double> %356, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %358 = extractelement <4 x i64> %351, i32 0
  %359 = shl i64 %358, 3
  %360 = add nuw nsw i64 %359, %350
  %361 = getelementptr i8, i8* %call2, i64 %360
  %362 = bitcast i8* %361 to <4 x double>*
  store <4 x double> %357, <4 x double>* %362, align 8, !alias.scope !116, !noalias !119
  %index.next1222 = add i64 %index1221, 4
  %vec.ind.next1226 = add <4 x i64> %vec.ind1225, <i64 4, i64 4, i64 4, i64 4>
  %363 = icmp eq i64 %index.next1222, %345
  br i1 %363, label %polly.loop_exit891, label %vector.body1215, !llvm.loop !120

polly.loop_exit891:                               ; preds = %vector.body1215, %polly.loop_header889
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %exitcond1148.not = icmp eq i64 %polly.indvar886, %343
  br i1 %exitcond1148.not, label %polly.loop_exit885, label %polly.loop_header883

polly.loop_header889:                             ; preds = %polly.loop_header883, %polly.loop_header889
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_header889 ], [ 0, %polly.loop_header883 ]
  %364 = add nuw nsw i64 %polly.indvar892, %346
  %365 = trunc i64 %364 to i32
  %366 = mul i32 %365, %349
  %367 = add i32 %366, 2
  %368 = urem i32 %367, 1000
  %p_conv10.i = sitofp i32 %368 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %369 = shl i64 %364, 3
  %370 = add nuw nsw i64 %369, %350
  %scevgep895 = getelementptr i8, i8* %call2, i64 %370
  %scevgep895896 = bitcast i8* %scevgep895 to double*
  store double %p_div12.i, double* %scevgep895896, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %exitcond1144.not = icmp eq i64 %polly.indvar892, %347
  br i1 %exitcond1144.not, label %polly.loop_exit891, label %polly.loop_header889, !llvm.loop !121

polly.loop_header897:                             ; preds = %polly.loop_exit879, %polly.loop_exit905
  %indvars.iv1135 = phi i64 [ %indvars.iv.next1136, %polly.loop_exit905 ], [ 0, %polly.loop_exit879 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_exit879 ]
  %smin1137 = call i64 @llvm.smin.i64(i64 %indvars.iv1135, i64 -1168)
  %371 = shl nsw i64 %polly.indvar900, 5
  %372 = add nsw i64 %smin1137, 1199
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1136 = add nsw i64 %indvars.iv1135, -32
  %exitcond1140.not = icmp eq i64 %polly.indvar_next901, 38
  br i1 %exitcond1140.not, label %init_array.exit, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %indvars.iv1131 = phi i64 [ %indvars.iv.next1132, %polly.loop_exit911 ], [ 0, %polly.loop_header897 ]
  %polly.indvar906 = phi i64 [ %polly.indvar_next907, %polly.loop_exit911 ], [ 0, %polly.loop_header897 ]
  %373 = mul nsw i64 %polly.indvar906, -32
  %smin1234 = call i64 @llvm.smin.i64(i64 %373, i64 -968)
  %374 = add nsw i64 %smin1234, 1000
  %smin1133 = call i64 @llvm.smin.i64(i64 %indvars.iv1131, i64 -968)
  %375 = shl nsw i64 %polly.indvar906, 5
  %376 = add nsw i64 %smin1133, 999
  br label %polly.loop_header909

polly.loop_exit911:                               ; preds = %polly.loop_exit917
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %indvars.iv.next1132 = add nsw i64 %indvars.iv1131, -32
  %exitcond1139.not = icmp eq i64 %polly.indvar_next907, 32
  br i1 %exitcond1139.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_exit917, %polly.loop_header903
  %polly.indvar912 = phi i64 [ 0, %polly.loop_header903 ], [ %polly.indvar_next913, %polly.loop_exit917 ]
  %377 = add nuw nsw i64 %polly.indvar912, %371
  %378 = trunc i64 %377 to i32
  %379 = mul nuw nsw i64 %377, 8000
  %min.iters.check1235 = icmp eq i64 %374, 0
  br i1 %min.iters.check1235, label %polly.loop_header915, label %vector.ph1236

vector.ph1236:                                    ; preds = %polly.loop_header909
  %broadcast.splatinsert1245 = insertelement <4 x i64> poison, i64 %375, i32 0
  %broadcast.splat1246 = shufflevector <4 x i64> %broadcast.splatinsert1245, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1247 = insertelement <4 x i32> poison, i32 %378, i32 0
  %broadcast.splat1248 = shufflevector <4 x i32> %broadcast.splatinsert1247, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.body1233, %vector.ph1236
  %index1239 = phi i64 [ 0, %vector.ph1236 ], [ %index.next1240, %vector.body1233 ]
  %vec.ind1243 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1236 ], [ %vec.ind.next1244, %vector.body1233 ]
  %380 = add nuw nsw <4 x i64> %vec.ind1243, %broadcast.splat1246
  %381 = trunc <4 x i64> %380 to <4 x i32>
  %382 = mul <4 x i32> %broadcast.splat1248, %381
  %383 = add <4 x i32> %382, <i32 1, i32 1, i32 1, i32 1>
  %384 = urem <4 x i32> %383, <i32 1200, i32 1200, i32 1200, i32 1200>
  %385 = sitofp <4 x i32> %384 to <4 x double>
  %386 = fmul fast <4 x double> %385, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %387 = extractelement <4 x i64> %380, i32 0
  %388 = shl i64 %387, 3
  %389 = add nuw nsw i64 %388, %379
  %390 = getelementptr i8, i8* %call1, i64 %389
  %391 = bitcast i8* %390 to <4 x double>*
  store <4 x double> %386, <4 x double>* %391, align 8, !alias.scope !115, !noalias !122
  %index.next1240 = add i64 %index1239, 4
  %vec.ind.next1244 = add <4 x i64> %vec.ind1243, <i64 4, i64 4, i64 4, i64 4>
  %392 = icmp eq i64 %index.next1240, %374
  br i1 %392, label %polly.loop_exit917, label %vector.body1233, !llvm.loop !123

polly.loop_exit917:                               ; preds = %vector.body1233, %polly.loop_header915
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1138.not = icmp eq i64 %polly.indvar912, %372
  br i1 %exitcond1138.not, label %polly.loop_exit911, label %polly.loop_header909

polly.loop_header915:                             ; preds = %polly.loop_header909, %polly.loop_header915
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_header915 ], [ 0, %polly.loop_header909 ]
  %393 = add nuw nsw i64 %polly.indvar918, %375
  %394 = trunc i64 %393 to i32
  %395 = mul i32 %394, %378
  %396 = add i32 %395, 1
  %397 = urem i32 %396, 1200
  %p_conv.i = sitofp i32 %397 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %398 = shl i64 %393, 3
  %399 = add nuw nsw i64 %398, %379
  %scevgep922 = getelementptr i8, i8* %call1, i64 %399
  %scevgep922923 = bitcast i8* %scevgep922 to double*
  store double %p_div.i, double* %scevgep922923, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %exitcond1134.not = icmp eq i64 %polly.indvar918, %376
  br i1 %exitcond1134.not, label %polly.loop_exit917, label %polly.loop_header915, !llvm.loop !124
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
!26 = !{!"llvm.loop.tile.size", i32 128}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 2048}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !24, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.loop.interchange.followup_interchanged", !43}
!43 = distinct !{!43, !12, !24, !41, !44, !45, !46}
!44 = !{!"llvm.data.pack.enable", i1 true}
!45 = !{!"llvm.data.pack.array", !21}
!46 = !{!"llvm.data.pack.allocate", !"malloc"}
!47 = distinct !{!47, !12, !24, !48, !49, !50, !51, !52, !61}
!48 = !{!"llvm.loop.id", !"i"}
!49 = !{!"llvm.loop.tile.enable", i1 true}
!50 = !{!"llvm.loop.tile.depth", i32 3}
!51 = !{!"llvm.loop.tile.size", i32 96}
!52 = !{!"llvm.loop.tile.followup_floor", !53}
!53 = distinct !{!53, !12, !24, !54, !55, !56, !57, !58}
!54 = !{!"llvm.loop.id", !"i1"}
!55 = !{!"llvm.loop.interchange.enable", i1 true}
!56 = !{!"llvm.loop.interchange.depth", i32 5}
!57 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!58 = !{!"llvm.loop.interchange.followup_interchanged", !59}
!59 = distinct !{!59, !12, !24, !54, !44, !60, !46}
!60 = !{!"llvm.data.pack.array", !22}
!61 = !{!"llvm.loop.tile.followup_tile", !62}
!62 = distinct !{!62, !12, !24, !63}
!63 = !{!"llvm.loop.id", !"i2"}
!64 = distinct !{!64, !12, !13}
!65 = distinct !{!65, !12, !13}
!66 = distinct !{!66, !12, !13}
!67 = distinct !{!67, !12, !13}
!68 = !{!69, !69, i64 0}
!69 = !{!"any pointer", !4, i64 0}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76, !77, !78}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !73, !"polly.alias.scope.Packed_MemRef_call1"}
!78 = distinct !{!78, !73, !"polly.alias.scope.Packed_MemRef_call2"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !81, !13}
!81 = !{!"llvm.loop.unroll.runtime.disable"}
!82 = !{!72, !75, !77, !78}
!83 = !{!72, !76, !77, !78}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !81, !13}
!86 = distinct !{!86, !87, !"polly.alias.scope.MemRef_call"}
!87 = distinct !{!87, !"polly.alias.scope.domain"}
!88 = !{!89, !90, !91, !92}
!89 = distinct !{!89, !87, !"polly.alias.scope.MemRef_call1"}
!90 = distinct !{!90, !87, !"polly.alias.scope.MemRef_call2"}
!91 = distinct !{!91, !87, !"polly.alias.scope.Packed_MemRef_call1"}
!92 = distinct !{!92, !87, !"polly.alias.scope.Packed_MemRef_call2"}
!93 = distinct !{!93, !13}
!94 = distinct !{!94, !81, !13}
!95 = !{!86, !89, !91, !92}
!96 = !{!86, !90, !91, !92}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !81, !13}
!99 = distinct !{!99, !100, !"polly.alias.scope.MemRef_call"}
!100 = distinct !{!100, !"polly.alias.scope.domain"}
!101 = !{!102, !103, !104, !105}
!102 = distinct !{!102, !100, !"polly.alias.scope.MemRef_call1"}
!103 = distinct !{!103, !100, !"polly.alias.scope.MemRef_call2"}
!104 = distinct !{!104, !100, !"polly.alias.scope.Packed_MemRef_call1"}
!105 = distinct !{!105, !100, !"polly.alias.scope.Packed_MemRef_call2"}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !81, !13}
!108 = !{!99, !102, !104, !105}
!109 = !{!99, !103, !104, !105}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !81, !13}
!112 = distinct !{!112, !113, !"polly.alias.scope.MemRef_call"}
!113 = distinct !{!113, !"polly.alias.scope.domain"}
!114 = !{!115, !116}
!115 = distinct !{!115, !113, !"polly.alias.scope.MemRef_call1"}
!116 = distinct !{!116, !113, !"polly.alias.scope.MemRef_call2"}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !81, !13}
!119 = !{!115, !112}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !81, !13}
!122 = !{!116, !112}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !81, !13}