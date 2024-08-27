; ModuleID = 'syr2k_exhaustive/mmp_all_XL_2777.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_2777.c"
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
  %call817 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1669 = bitcast i8* %call1 to double*
  %polly.access.call1678 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1678, %call2
  %polly.access.call2698 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2698, %call1
  %2 = or i1 %0, %1
  %polly.access.call718 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call718, %call2
  %4 = icmp ule i8* %polly.access.call2698, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call718, %call1
  %8 = icmp ule i8* %polly.access.call1678, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header791, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1102 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1101 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1100 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1099 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1099, %scevgep1102
  %bound1 = icmp ult i8* %scevgep1101, %scevgep1100
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
  br i1 %exitcond18.not.i, label %vector.ph1106, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1106:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1113 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1114 = shufflevector <4 x i64> %broadcast.splatinsert1113, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1105

vector.body1105:                                  ; preds = %vector.body1105, %vector.ph1106
  %index1107 = phi i64 [ 0, %vector.ph1106 ], [ %index.next1108, %vector.body1105 ]
  %vec.ind1111 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1106 ], [ %vec.ind.next1112, %vector.body1105 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1111, %broadcast.splat1114
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call817, i64 %indvars.iv7.i, i64 %index1107
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1108 = add i64 %index1107, 4
  %vec.ind.next1112 = add <4 x i64> %vec.ind1111, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1108, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1105, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1105
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1106, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit852
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start476, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1169 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1169, label %for.body3.i46.preheader1246, label %vector.ph1170

vector.ph1170:                                    ; preds = %for.body3.i46.preheader
  %n.vec1172 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1168

vector.body1168:                                  ; preds = %vector.body1168, %vector.ph1170
  %index1173 = phi i64 [ 0, %vector.ph1170 ], [ %index.next1174, %vector.body1168 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call817, i64 %indvars.iv21.i, i64 %index1173
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1174 = add i64 %index1173, 4
  %46 = icmp eq i64 %index.next1174, %n.vec1172
  br i1 %46, label %middle.block1166, label %vector.body1168, !llvm.loop !18

middle.block1166:                                 ; preds = %vector.body1168
  %cmp.n1176 = icmp eq i64 %indvars.iv21.i, %n.vec1172
  br i1 %cmp.n1176, label %for.inc6.i, label %for.body3.i46.preheader1246

for.body3.i46.preheader1246:                      ; preds = %for.body3.i46.preheader, %middle.block1166
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1172, %middle.block1166 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1246, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1246 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call817, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1166, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call817, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting477
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start285, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1192 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1192, label %for.body3.i60.preheader1244, label %vector.ph1193

vector.ph1193:                                    ; preds = %for.body3.i60.preheader
  %n.vec1195 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1191

vector.body1191:                                  ; preds = %vector.body1191, %vector.ph1193
  %index1196 = phi i64 [ 0, %vector.ph1193 ], [ %index.next1197, %vector.body1191 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call817, i64 %indvars.iv21.i52, i64 %index1196
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1200 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1200, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1197 = add i64 %index1196, 4
  %57 = icmp eq i64 %index.next1197, %n.vec1195
  br i1 %57, label %middle.block1189, label %vector.body1191, !llvm.loop !60

middle.block1189:                                 ; preds = %vector.body1191
  %cmp.n1199 = icmp eq i64 %indvars.iv21.i52, %n.vec1195
  br i1 %cmp.n1199, label %for.inc6.i63, label %for.body3.i60.preheader1244

for.body3.i60.preheader1244:                      ; preds = %for.body3.i60.preheader, %middle.block1189
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1195, %middle.block1189 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1244, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1244 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call817, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1189, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call817, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting286
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1218 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1218, label %for.body3.i99.preheader1242, label %vector.ph1219

vector.ph1219:                                    ; preds = %for.body3.i99.preheader
  %n.vec1221 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1217

vector.body1217:                                  ; preds = %vector.body1217, %vector.ph1219
  %index1222 = phi i64 [ 0, %vector.ph1219 ], [ %index.next1223, %vector.body1217 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call817, i64 %indvars.iv21.i91, i64 %index1222
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1226 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1226, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1223 = add i64 %index1222, 4
  %68 = icmp eq i64 %index.next1223, %n.vec1221
  br i1 %68, label %middle.block1215, label %vector.body1217, !llvm.loop !62

middle.block1215:                                 ; preds = %vector.body1217
  %cmp.n1225 = icmp eq i64 %indvars.iv21.i91, %n.vec1221
  br i1 %cmp.n1225, label %for.inc6.i102, label %for.body3.i99.preheader1242

for.body3.i99.preheader1242:                      ; preds = %for.body3.i99.preheader, %middle.block1215
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1221, %middle.block1215 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1242, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1242 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call817, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1215, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call817, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !64
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call817, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !66

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !67

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1230 = phi i64 [ %indvar.next1231, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1230, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1232 = icmp ult i64 %88, 4
  br i1 %min.iters.check1232, label %polly.loop_header191.preheader, label %vector.ph1233

vector.ph1233:                                    ; preds = %polly.loop_header
  %n.vec1235 = and i64 %88, -4
  br label %vector.body1229

vector.body1229:                                  ; preds = %vector.body1229, %vector.ph1233
  %index1236 = phi i64 [ 0, %vector.ph1233 ], [ %index.next1237, %vector.body1229 ]
  %90 = shl nuw nsw i64 %index1236, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1240 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1240, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1237 = add i64 %index1236, 4
  %95 = icmp eq i64 %index.next1237, %n.vec1235
  br i1 %95, label %middle.block1227, label %vector.body1229, !llvm.loop !74

middle.block1227:                                 ; preds = %vector.body1229
  %cmp.n1239 = icmp eq i64 %88, %n.vec1235
  br i1 %cmp.n1239, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1227
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1235, %middle.block1227 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1227
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1009.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1231 = add i64 %indvar1230, 1
  br i1 %exitcond1009.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond1008.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1008.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv999 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next1000, %polly.loop_exit207 ]
  %indvars.iv995 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next996, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = lshr i64 %polly.indvar202, 1
  %98 = add nuw i64 %indvars.iv995, %97
  %99 = shl nuw nsw i64 %98, 2
  %100 = sub i64 %indvars.iv, %99
  %101 = add i64 %indvars.iv999, %99
  %102 = mul nuw nsw i64 %polly.indvar202, 12
  %103 = add nuw nsw i64 %102, %97
  %104 = mul nsw i64 %polly.indvar202, -50
  %105 = mul nuw nsw i64 %polly.indvar202, 50
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit244
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 50
  %indvars.iv.next996 = add nuw nsw i64 %indvars.iv995, 12
  %indvars.iv.next1000 = add nsw i64 %indvars.iv999, -50
  %exitcond1007.not = icmp eq i64 %polly.indvar_next203, 24
  br i1 %exitcond1007.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit244, %polly.loop_header199
  %indvars.iv1001 = phi i64 [ %indvars.iv.next1002, %polly.loop_exit244 ], [ %101, %polly.loop_header199 ]
  %indvars.iv997 = phi i64 [ %indvars.iv.next998, %polly.loop_exit244 ], [ %100, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit244 ], [ %103, %polly.loop_header199 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv997, i64 0)
  %106 = add i64 %smax, %indvars.iv1001
  %107 = shl nsw i64 %polly.indvar208, 2
  %108 = add nsw i64 %107, %104
  %109 = add nsw i64 %108, -1
  %.inv = icmp sgt i64 %108, 49
  %110 = select i1 %.inv, i64 49, i64 %109
  %polly.loop_guard = icmp sgt i64 %110, -1
  %111 = icmp sgt i64 %108, 0
  %112 = select i1 %111, i64 %108, i64 0
  %113 = add nsw i64 %108, 3
  %polly.loop_guard231.not = icmp sgt i64 %112, %113
  br i1 %polly.loop_guard, label %polly.loop_header211.us, label %polly.loop_header205.split

polly.loop_header211.us:                          ; preds = %polly.loop_header205, %polly.loop_exit230.us
  %polly.indvar214.us = phi i64 [ %polly.indvar_next215.us, %polly.loop_exit230.us ], [ 0, %polly.loop_header205 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar214.us, 1200
  br label %polly.loop_header217.us

polly.loop_header217.us:                          ; preds = %polly.loop_header211.us, %polly.loop_header217.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_header217.us ], [ 0, %polly.loop_header211.us ]
  %114 = add nuw nsw i64 %polly.indvar220.us, %105
  %polly.access.mul.call1224.us = mul nuw nsw i64 %114, 1000
  %polly.access.add.call1225.us = add nuw nsw i64 %polly.access.mul.call1224.us, %polly.indvar214.us
  %polly.access.call1226.us = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1225.us
  %polly.access.call1226.load.us = load double, double* %polly.access.call1226.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar220.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1226.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next221.us = add nuw i64 %polly.indvar220.us, 1
  %exitcond993.not = icmp eq i64 %polly.indvar220.us, %110
  br i1 %exitcond993.not, label %polly.loop_exit219.loopexit.us, label %polly.loop_header217.us

polly.loop_header228.us:                          ; preds = %polly.loop_exit219.loopexit.us, %polly.loop_header228.us
  %polly.indvar232.us = phi i64 [ %polly.indvar_next233.us, %polly.loop_header228.us ], [ %112, %polly.loop_exit219.loopexit.us ]
  %115 = add nuw nsw i64 %polly.indvar232.us, %105
  %polly.access.mul.call1236.us = mul nsw i64 %115, 1000
  %polly.access.add.call1237.us = add nuw nsw i64 %polly.access.mul.call1236.us, %polly.indvar214.us
  %polly.access.call1238.us = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1237.us
  %polly.access.call1238.load.us = load double, double* %polly.access.call1238.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1240.us = add nuw nsw i64 %polly.indvar232.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1241.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.us
  store double %polly.access.call1238.load.us, double* %polly.access.Packed_MemRef_call1241.us, align 8
  %polly.indvar_next233.us = add nuw nsw i64 %polly.indvar232.us, 1
  %polly.loop_cond234.not.not.us = icmp slt i64 %polly.indvar232.us, %113
  br i1 %polly.loop_cond234.not.not.us, label %polly.loop_header228.us, label %polly.loop_exit230.us

polly.loop_exit230.us:                            ; preds = %polly.loop_header228.us, %polly.loop_exit219.loopexit.us
  %polly.indvar_next215.us = add nuw nsw i64 %polly.indvar214.us, 1
  %exitcond994.not = icmp eq i64 %polly.indvar_next215.us, 1000
  br i1 %exitcond994.not, label %polly.loop_header242.preheader, label %polly.loop_header211.us

polly.loop_exit219.loopexit.us:                   ; preds = %polly.loop_header217.us
  br i1 %polly.loop_guard231.not, label %polly.loop_exit230.us, label %polly.loop_header228.us

polly.loop_header205.split:                       ; preds = %polly.loop_header205
  br i1 %polly.loop_guard231.not, label %polly.loop_header242.preheader, label %polly.loop_header211

polly.loop_exit244:                               ; preds = %polly.loop_exit251.loopexit.us, %polly.loop_header242.preheader
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %polly.loop_cond210 = icmp ult i64 %polly.indvar208, 299
  %indvars.iv.next998 = add i64 %indvars.iv997, -4
  %indvars.iv.next1002 = add i64 %indvars.iv1001, 4
  br i1 %polly.loop_cond210, label %polly.loop_header205, label %polly.loop_exit207

polly.loop_header211:                             ; preds = %polly.loop_header205.split, %polly.loop_exit230
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit230 ], [ 0, %polly.loop_header205.split ]
  %polly.access.mul.Packed_MemRef_call1239 = mul nuw nsw i64 %polly.indvar214, 1200
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_header228
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next215, 1000
  br i1 %exitcond.not, label %polly.loop_header242.preheader, label %polly.loop_header211

polly.loop_header242.preheader:                   ; preds = %polly.loop_exit230, %polly.loop_exit230.us, %polly.loop_header205.split
  %116 = sub nsw i64 %105, %107
  %117 = icmp sgt i64 %116, 0
  %118 = select i1 %117, i64 %116, i64 0
  %polly.loop_guard252 = icmp slt i64 %118, 4
  br i1 %polly.loop_guard252, label %polly.loop_header242.us, label %polly.loop_exit244

polly.loop_header242.us:                          ; preds = %polly.loop_header242.preheader, %polly.loop_exit251.loopexit.us
  %polly.indvar245.us = phi i64 [ %polly.indvar_next246.us, %polly.loop_exit251.loopexit.us ], [ 0, %polly.loop_header242.preheader ]
  %119 = shl nuw nsw i64 %polly.indvar245.us, 3
  %scevgep268.us = getelementptr i8, i8* %call2, i64 %119
  %polly.access.mul.Packed_MemRef_call1264.us = mul nuw nsw i64 %polly.indvar245.us, 1200
  br label %polly.loop_header249.us

polly.loop_header249.us:                          ; preds = %polly.loop_exit259.us, %polly.loop_header242.us
  %indvars.iv1003 = phi i64 [ %indvars.iv.next1004, %polly.loop_exit259.us ], [ %106, %polly.loop_header242.us ]
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_exit259.us ], [ %118, %polly.loop_header242.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1003, i64 49)
  %120 = add nsw i64 %polly.indvar253.us, %108
  %polly.loop_guard260.us1088 = icmp sgt i64 %120, -1
  br i1 %polly.loop_guard260.us1088, label %polly.loop_header257.preheader.us, label %polly.loop_exit259.us

polly.loop_header257.us:                          ; preds = %polly.loop_header257.preheader.us, %polly.loop_header257.us
  %polly.indvar261.us = phi i64 [ %polly.indvar_next262.us, %polly.loop_header257.us ], [ 0, %polly.loop_header257.preheader.us ]
  %121 = add nuw nsw i64 %polly.indvar261.us, %105
  %polly.access.add.Packed_MemRef_call1265.us = add nuw nsw i64 %polly.indvar261.us, %polly.access.mul.Packed_MemRef_call1264.us
  %polly.access.Packed_MemRef_call1266.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us
  %_p_scalar_267.us = load double, double* %polly.access.Packed_MemRef_call1266.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_271.us, %_p_scalar_267.us
  %122 = mul nuw nsw i64 %121, 8000
  %scevgep273.us = getelementptr i8, i8* %scevgep268.us, i64 %122
  %scevgep273274.us = bitcast i8* %scevgep273.us to double*
  %_p_scalar_275.us = load double, double* %scevgep273274.us, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114.us = fmul fast double %_p_scalar_279.us, %_p_scalar_275.us
  %123 = shl i64 %121, 3
  %124 = add i64 %123, %127
  %scevgep280.us = getelementptr i8, i8* %call, i64 %124
  %scevgep280281.us = bitcast i8* %scevgep280.us to double*
  %_p_scalar_282.us = load double, double* %scevgep280281.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_282.us
  store double %p_add42.i118.us, double* %scevgep280281.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next262.us = add nuw nsw i64 %polly.indvar261.us, 1
  %exitcond1005.not = icmp eq i64 %polly.indvar261.us, %smin
  br i1 %exitcond1005.not, label %polly.loop_exit259.us, label %polly.loop_header257.us

polly.loop_exit259.us:                            ; preds = %polly.loop_header257.us, %polly.loop_header249.us
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %polly.loop_cond255.us = icmp ult i64 %polly.indvar253.us, 3
  %indvars.iv.next1004 = add i64 %indvars.iv1003, 1
  br i1 %polly.loop_cond255.us, label %polly.loop_header249.us, label %polly.loop_exit251.loopexit.us

polly.loop_header257.preheader.us:                ; preds = %polly.loop_header249.us
  %125 = add nuw nsw i64 %polly.indvar253.us, %107
  %126 = mul i64 %125, 8000
  %scevgep269.us = getelementptr i8, i8* %scevgep268.us, i64 %126
  %scevgep269270.us = bitcast i8* %scevgep269.us to double*
  %_p_scalar_271.us = load double, double* %scevgep269270.us, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1277.us = add nsw i64 %120, %polly.access.mul.Packed_MemRef_call1264.us
  %polly.access.Packed_MemRef_call1278.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1277.us
  %_p_scalar_279.us = load double, double* %polly.access.Packed_MemRef_call1278.us, align 8
  %127 = mul i64 %125, 9600
  br label %polly.loop_header257.us

polly.loop_exit251.loopexit.us:                   ; preds = %polly.loop_exit259.us
  %polly.indvar_next246.us = add nuw nsw i64 %polly.indvar245.us, 1
  %exitcond1006.not = icmp eq i64 %polly.indvar_next246.us, 1000
  br i1 %exitcond1006.not, label %polly.loop_exit244, label %polly.loop_header242.us

polly.loop_header228:                             ; preds = %polly.loop_header211, %polly.loop_header228
  %polly.indvar232 = phi i64 [ %polly.indvar_next233, %polly.loop_header228 ], [ %112, %polly.loop_header211 ]
  %128 = add nuw nsw i64 %polly.indvar232, %105
  %polly.access.mul.call1236 = mul nsw i64 %128, 1000
  %polly.access.add.call1237 = add nuw nsw i64 %polly.access.mul.call1236, %polly.indvar214
  %polly.access.call1238 = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1237
  %polly.access.call1238.load = load double, double* %polly.access.call1238, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1240 = add nuw nsw i64 %polly.indvar232, %polly.access.mul.Packed_MemRef_call1239
  %polly.access.Packed_MemRef_call1241 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240
  store double %polly.access.call1238.load, double* %polly.access.Packed_MemRef_call1241, align 8
  %polly.indvar_next233 = add nuw nsw i64 %polly.indvar232, 1
  %polly.loop_cond234.not.not = icmp slt i64 %polly.indvar232, %113
  br i1 %polly.loop_cond234.not.not, label %polly.loop_header228, label %polly.loop_exit230

polly.start285:                                   ; preds = %kernel_syr2k.exit
  %malloccall287 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header371

polly.exiting286:                                 ; preds = %polly.loop_exit396
  tail call void @free(i8* %malloccall287)
  br label %kernel_syr2k.exit90

polly.loop_header371:                             ; preds = %polly.loop_exit379, %polly.start285
  %indvar1204 = phi i64 [ %indvar.next1205, %polly.loop_exit379 ], [ 0, %polly.start285 ]
  %polly.indvar374 = phi i64 [ %polly.indvar_next375, %polly.loop_exit379 ], [ 1, %polly.start285 ]
  %129 = add i64 %indvar1204, 1
  %130 = mul nuw nsw i64 %polly.indvar374, 9600
  %scevgep383 = getelementptr i8, i8* %call, i64 %130
  %min.iters.check1206 = icmp ult i64 %129, 4
  br i1 %min.iters.check1206, label %polly.loop_header377.preheader, label %vector.ph1207

vector.ph1207:                                    ; preds = %polly.loop_header371
  %n.vec1209 = and i64 %129, -4
  br label %vector.body1203

vector.body1203:                                  ; preds = %vector.body1203, %vector.ph1207
  %index1210 = phi i64 [ 0, %vector.ph1207 ], [ %index.next1211, %vector.body1203 ]
  %131 = shl nuw nsw i64 %index1210, 3
  %132 = getelementptr i8, i8* %scevgep383, i64 %131
  %133 = bitcast i8* %132 to <4 x double>*
  %wide.load1214 = load <4 x double>, <4 x double>* %133, align 8, !alias.scope !79, !noalias !81
  %134 = fmul fast <4 x double> %wide.load1214, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %135 = bitcast i8* %132 to <4 x double>*
  store <4 x double> %134, <4 x double>* %135, align 8, !alias.scope !79, !noalias !81
  %index.next1211 = add i64 %index1210, 4
  %136 = icmp eq i64 %index.next1211, %n.vec1209
  br i1 %136, label %middle.block1201, label %vector.body1203, !llvm.loop !85

middle.block1201:                                 ; preds = %vector.body1203
  %cmp.n1213 = icmp eq i64 %129, %n.vec1209
  br i1 %cmp.n1213, label %polly.loop_exit379, label %polly.loop_header377.preheader

polly.loop_header377.preheader:                   ; preds = %polly.loop_header371, %middle.block1201
  %polly.indvar380.ph = phi i64 [ 0, %polly.loop_header371 ], [ %n.vec1209, %middle.block1201 ]
  br label %polly.loop_header377

polly.loop_exit379:                               ; preds = %polly.loop_header377, %middle.block1201
  %polly.indvar_next375 = add nuw nsw i64 %polly.indvar374, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar_next375, 1200
  %indvar.next1205 = add i64 %indvar1204, 1
  br i1 %exitcond1031.not, label %polly.loop_header387.preheader, label %polly.loop_header371

polly.loop_header387.preheader:                   ; preds = %polly.loop_exit379
  %Packed_MemRef_call1288 = bitcast i8* %malloccall287 to double*
  br label %polly.loop_header387

polly.loop_header377:                             ; preds = %polly.loop_header377.preheader, %polly.loop_header377
  %polly.indvar380 = phi i64 [ %polly.indvar_next381, %polly.loop_header377 ], [ %polly.indvar380.ph, %polly.loop_header377.preheader ]
  %137 = shl nuw nsw i64 %polly.indvar380, 3
  %scevgep384 = getelementptr i8, i8* %scevgep383, i64 %137
  %scevgep384385 = bitcast i8* %scevgep384 to double*
  %_p_scalar_386 = load double, double* %scevgep384385, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_386, 1.200000e+00
  store double %p_mul.i57, double* %scevgep384385, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next381 = add nuw nsw i64 %polly.indvar380, 1
  %exitcond1030.not = icmp eq i64 %polly.indvar_next381, %polly.indvar374
  br i1 %exitcond1030.not, label %polly.loop_exit379, label %polly.loop_header377, !llvm.loop !86

polly.loop_header387:                             ; preds = %polly.loop_header387.preheader, %polly.loop_exit396
  %indvars.iv1020 = phi i64 [ 0, %polly.loop_header387.preheader ], [ %indvars.iv.next1021, %polly.loop_exit396 ]
  %indvars.iv1015 = phi i64 [ 0, %polly.loop_header387.preheader ], [ %indvars.iv.next1016, %polly.loop_exit396 ]
  %indvars.iv1013 = phi i64 [ 0, %polly.loop_header387.preheader ], [ %indvars.iv.next1014, %polly.loop_exit396 ]
  %polly.indvar390 = phi i64 [ 0, %polly.loop_header387.preheader ], [ %polly.indvar_next391, %polly.loop_exit396 ]
  %138 = lshr i64 %polly.indvar390, 1
  %139 = add nuw i64 %indvars.iv1015, %138
  %140 = shl nuw nsw i64 %139, 2
  %141 = sub i64 %indvars.iv1013, %140
  %142 = add i64 %indvars.iv1020, %140
  %143 = mul nuw nsw i64 %polly.indvar390, 12
  %144 = add nuw nsw i64 %143, %138
  %145 = mul nsw i64 %polly.indvar390, -50
  %146 = mul nuw nsw i64 %polly.indvar390, 50
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_exit435
  %polly.indvar_next391 = add nuw nsw i64 %polly.indvar390, 1
  %indvars.iv.next1014 = add nuw nsw i64 %indvars.iv1013, 50
  %indvars.iv.next1016 = add nuw nsw i64 %indvars.iv1015, 12
  %indvars.iv.next1021 = add nsw i64 %indvars.iv1020, -50
  %exitcond1029.not = icmp eq i64 %polly.indvar_next391, 24
  br i1 %exitcond1029.not, label %polly.exiting286, label %polly.loop_header387

polly.loop_header394:                             ; preds = %polly.loop_exit435, %polly.loop_header387
  %indvars.iv1022 = phi i64 [ %indvars.iv.next1023, %polly.loop_exit435 ], [ %142, %polly.loop_header387 ]
  %indvars.iv1017 = phi i64 [ %indvars.iv.next1018, %polly.loop_exit435 ], [ %141, %polly.loop_header387 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit435 ], [ %144, %polly.loop_header387 ]
  %smax1019 = call i64 @llvm.smax.i64(i64 %indvars.iv1017, i64 0)
  %147 = add i64 %smax1019, %indvars.iv1022
  %148 = shl nsw i64 %polly.indvar397, 2
  %149 = add nsw i64 %148, %145
  %150 = add nsw i64 %149, -1
  %.inv871 = icmp sgt i64 %149, 49
  %151 = select i1 %.inv871, i64 49, i64 %150
  %polly.loop_guard410 = icmp sgt i64 %151, -1
  %152 = icmp sgt i64 %149, 0
  %153 = select i1 %152, i64 %149, i64 0
  %154 = add nsw i64 %149, 3
  %polly.loop_guard422.not = icmp sgt i64 %153, %154
  br i1 %polly.loop_guard410, label %polly.loop_header400.us, label %polly.loop_header394.split

polly.loop_header400.us:                          ; preds = %polly.loop_header394, %polly.loop_exit421.us
  %polly.indvar403.us = phi i64 [ %polly.indvar_next404.us, %polly.loop_exit421.us ], [ 0, %polly.loop_header394 ]
  %polly.access.mul.Packed_MemRef_call1288.us = mul nuw nsw i64 %polly.indvar403.us, 1200
  br label %polly.loop_header407.us

polly.loop_header407.us:                          ; preds = %polly.loop_header400.us, %polly.loop_header407.us
  %polly.indvar411.us = phi i64 [ %polly.indvar_next412.us, %polly.loop_header407.us ], [ 0, %polly.loop_header400.us ]
  %155 = add nuw nsw i64 %polly.indvar411.us, %146
  %polly.access.mul.call1415.us = mul nuw nsw i64 %155, 1000
  %polly.access.add.call1416.us = add nuw nsw i64 %polly.access.mul.call1415.us, %polly.indvar403.us
  %polly.access.call1417.us = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1416.us
  %polly.access.call1417.load.us = load double, double* %polly.access.call1417.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1288.us = add nuw nsw i64 %polly.indvar411.us, %polly.access.mul.Packed_MemRef_call1288.us
  %polly.access.Packed_MemRef_call1288.us = getelementptr double, double* %Packed_MemRef_call1288, i64 %polly.access.add.Packed_MemRef_call1288.us
  store double %polly.access.call1417.load.us, double* %polly.access.Packed_MemRef_call1288.us, align 8
  %polly.indvar_next412.us = add nuw i64 %polly.indvar411.us, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar411.us, %151
  br i1 %exitcond1011.not, label %polly.loop_exit409.loopexit.us, label %polly.loop_header407.us

polly.loop_header419.us:                          ; preds = %polly.loop_exit409.loopexit.us, %polly.loop_header419.us
  %polly.indvar423.us = phi i64 [ %polly.indvar_next424.us, %polly.loop_header419.us ], [ %153, %polly.loop_exit409.loopexit.us ]
  %156 = add nuw nsw i64 %polly.indvar423.us, %146
  %polly.access.mul.call1427.us = mul nsw i64 %156, 1000
  %polly.access.add.call1428.us = add nuw nsw i64 %polly.access.mul.call1427.us, %polly.indvar403.us
  %polly.access.call1429.us = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1428.us
  %polly.access.call1429.load.us = load double, double* %polly.access.call1429.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1288431.us = add nuw nsw i64 %polly.indvar423.us, %polly.access.mul.Packed_MemRef_call1288.us
  %polly.access.Packed_MemRef_call1288432.us = getelementptr double, double* %Packed_MemRef_call1288, i64 %polly.access.add.Packed_MemRef_call1288431.us
  store double %polly.access.call1429.load.us, double* %polly.access.Packed_MemRef_call1288432.us, align 8
  %polly.indvar_next424.us = add nuw nsw i64 %polly.indvar423.us, 1
  %polly.loop_cond425.not.not.us = icmp slt i64 %polly.indvar423.us, %154
  br i1 %polly.loop_cond425.not.not.us, label %polly.loop_header419.us, label %polly.loop_exit421.us

polly.loop_exit421.us:                            ; preds = %polly.loop_header419.us, %polly.loop_exit409.loopexit.us
  %polly.indvar_next404.us = add nuw nsw i64 %polly.indvar403.us, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar_next404.us, 1000
  br i1 %exitcond1012.not, label %polly.loop_header433.preheader, label %polly.loop_header400.us

polly.loop_exit409.loopexit.us:                   ; preds = %polly.loop_header407.us
  br i1 %polly.loop_guard422.not, label %polly.loop_exit421.us, label %polly.loop_header419.us

polly.loop_header394.split:                       ; preds = %polly.loop_header394
  br i1 %polly.loop_guard422.not, label %polly.loop_header433.preheader, label %polly.loop_header400

polly.loop_exit435:                               ; preds = %polly.loop_exit442.loopexit.us, %polly.loop_header433.preheader
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %polly.loop_cond399 = icmp ult i64 %polly.indvar397, 299
  %indvars.iv.next1018 = add i64 %indvars.iv1017, -4
  %indvars.iv.next1023 = add i64 %indvars.iv1022, 4
  br i1 %polly.loop_cond399, label %polly.loop_header394, label %polly.loop_exit396

polly.loop_header400:                             ; preds = %polly.loop_header394.split, %polly.loop_exit421
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_exit421 ], [ 0, %polly.loop_header394.split ]
  %polly.access.mul.Packed_MemRef_call1288430 = mul nuw nsw i64 %polly.indvar403, 1200
  br label %polly.loop_header419

polly.loop_exit421:                               ; preds = %polly.loop_header419
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond1010.not = icmp eq i64 %polly.indvar_next404, 1000
  br i1 %exitcond1010.not, label %polly.loop_header433.preheader, label %polly.loop_header400

polly.loop_header433.preheader:                   ; preds = %polly.loop_exit421, %polly.loop_exit421.us, %polly.loop_header394.split
  %157 = sub nsw i64 %146, %148
  %158 = icmp sgt i64 %157, 0
  %159 = select i1 %158, i64 %157, i64 0
  %polly.loop_guard443 = icmp slt i64 %159, 4
  br i1 %polly.loop_guard443, label %polly.loop_header433.us, label %polly.loop_exit435

polly.loop_header433.us:                          ; preds = %polly.loop_header433.preheader, %polly.loop_exit442.loopexit.us
  %polly.indvar436.us = phi i64 [ %polly.indvar_next437.us, %polly.loop_exit442.loopexit.us ], [ 0, %polly.loop_header433.preheader ]
  %160 = shl nuw nsw i64 %polly.indvar436.us, 3
  %scevgep459.us = getelementptr i8, i8* %call2, i64 %160
  %polly.access.mul.Packed_MemRef_call1288455.us = mul nuw nsw i64 %polly.indvar436.us, 1200
  br label %polly.loop_header440.us

polly.loop_header440.us:                          ; preds = %polly.loop_exit450.us, %polly.loop_header433.us
  %indvars.iv1024 = phi i64 [ %indvars.iv.next1025, %polly.loop_exit450.us ], [ %147, %polly.loop_header433.us ]
  %polly.indvar444.us = phi i64 [ %polly.indvar_next445.us, %polly.loop_exit450.us ], [ %159, %polly.loop_header433.us ]
  %smin1026 = call i64 @llvm.smin.i64(i64 %indvars.iv1024, i64 49)
  %161 = add nsw i64 %polly.indvar444.us, %149
  %polly.loop_guard451.us1089 = icmp sgt i64 %161, -1
  br i1 %polly.loop_guard451.us1089, label %polly.loop_header448.preheader.us, label %polly.loop_exit450.us

polly.loop_header448.us:                          ; preds = %polly.loop_header448.preheader.us, %polly.loop_header448.us
  %polly.indvar452.us = phi i64 [ %polly.indvar_next453.us, %polly.loop_header448.us ], [ 0, %polly.loop_header448.preheader.us ]
  %162 = add nuw nsw i64 %polly.indvar452.us, %146
  %polly.access.add.Packed_MemRef_call1288456.us = add nuw nsw i64 %polly.indvar452.us, %polly.access.mul.Packed_MemRef_call1288455.us
  %polly.access.Packed_MemRef_call1288457.us = getelementptr double, double* %Packed_MemRef_call1288, i64 %polly.access.add.Packed_MemRef_call1288456.us
  %_p_scalar_458.us = load double, double* %polly.access.Packed_MemRef_call1288457.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_462.us, %_p_scalar_458.us
  %163 = mul nuw nsw i64 %162, 8000
  %scevgep464.us = getelementptr i8, i8* %scevgep459.us, i64 %163
  %scevgep464465.us = bitcast i8* %scevgep464.us to double*
  %_p_scalar_466.us = load double, double* %scevgep464465.us, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75.us = fmul fast double %_p_scalar_470.us, %_p_scalar_466.us
  %164 = shl i64 %162, 3
  %165 = add i64 %164, %168
  %scevgep471.us = getelementptr i8, i8* %call, i64 %165
  %scevgep471472.us = bitcast i8* %scevgep471.us to double*
  %_p_scalar_473.us = load double, double* %scevgep471472.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_473.us
  store double %p_add42.i79.us, double* %scevgep471472.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next453.us = add nuw nsw i64 %polly.indvar452.us, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar452.us, %smin1026
  br i1 %exitcond1027.not, label %polly.loop_exit450.us, label %polly.loop_header448.us

polly.loop_exit450.us:                            ; preds = %polly.loop_header448.us, %polly.loop_header440.us
  %polly.indvar_next445.us = add nuw nsw i64 %polly.indvar444.us, 1
  %polly.loop_cond446.us = icmp ult i64 %polly.indvar444.us, 3
  %indvars.iv.next1025 = add i64 %indvars.iv1024, 1
  br i1 %polly.loop_cond446.us, label %polly.loop_header440.us, label %polly.loop_exit442.loopexit.us

polly.loop_header448.preheader.us:                ; preds = %polly.loop_header440.us
  %166 = add nuw nsw i64 %polly.indvar444.us, %148
  %167 = mul i64 %166, 8000
  %scevgep460.us = getelementptr i8, i8* %scevgep459.us, i64 %167
  %scevgep460461.us = bitcast i8* %scevgep460.us to double*
  %_p_scalar_462.us = load double, double* %scevgep460461.us, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1288468.us = add nsw i64 %161, %polly.access.mul.Packed_MemRef_call1288455.us
  %polly.access.Packed_MemRef_call1288469.us = getelementptr double, double* %Packed_MemRef_call1288, i64 %polly.access.add.Packed_MemRef_call1288468.us
  %_p_scalar_470.us = load double, double* %polly.access.Packed_MemRef_call1288469.us, align 8
  %168 = mul i64 %166, 9600
  br label %polly.loop_header448.us

polly.loop_exit442.loopexit.us:                   ; preds = %polly.loop_exit450.us
  %polly.indvar_next437.us = add nuw nsw i64 %polly.indvar436.us, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar_next437.us, 1000
  br i1 %exitcond1028.not, label %polly.loop_exit435, label %polly.loop_header433.us

polly.loop_header419:                             ; preds = %polly.loop_header400, %polly.loop_header419
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_header419 ], [ %153, %polly.loop_header400 ]
  %169 = add nuw nsw i64 %polly.indvar423, %146
  %polly.access.mul.call1427 = mul nsw i64 %169, 1000
  %polly.access.add.call1428 = add nuw nsw i64 %polly.access.mul.call1427, %polly.indvar403
  %polly.access.call1429 = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1428
  %polly.access.call1429.load = load double, double* %polly.access.call1429, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1288431 = add nuw nsw i64 %polly.indvar423, %polly.access.mul.Packed_MemRef_call1288430
  %polly.access.Packed_MemRef_call1288432 = getelementptr double, double* %Packed_MemRef_call1288, i64 %polly.access.add.Packed_MemRef_call1288431
  store double %polly.access.call1429.load, double* %polly.access.Packed_MemRef_call1288432, align 8
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %polly.loop_cond425.not.not = icmp slt i64 %polly.indvar423, %154
  br i1 %polly.loop_cond425.not.not, label %polly.loop_header419, label %polly.loop_exit421

polly.start476:                                   ; preds = %init_array.exit
  %malloccall478 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header562

polly.exiting477:                                 ; preds = %polly.loop_exit587
  tail call void @free(i8* %malloccall478)
  br label %kernel_syr2k.exit

polly.loop_header562:                             ; preds = %polly.loop_exit570, %polly.start476
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit570 ], [ 0, %polly.start476 ]
  %polly.indvar565 = phi i64 [ %polly.indvar_next566, %polly.loop_exit570 ], [ 1, %polly.start476 ]
  %170 = add i64 %indvar, 1
  %171 = mul nuw nsw i64 %polly.indvar565, 9600
  %scevgep574 = getelementptr i8, i8* %call, i64 %171
  %min.iters.check1180 = icmp ult i64 %170, 4
  br i1 %min.iters.check1180, label %polly.loop_header568.preheader, label %vector.ph1181

vector.ph1181:                                    ; preds = %polly.loop_header562
  %n.vec1183 = and i64 %170, -4
  br label %vector.body1179

vector.body1179:                                  ; preds = %vector.body1179, %vector.ph1181
  %index1184 = phi i64 [ 0, %vector.ph1181 ], [ %index.next1185, %vector.body1179 ]
  %172 = shl nuw nsw i64 %index1184, 3
  %173 = getelementptr i8, i8* %scevgep574, i64 %172
  %174 = bitcast i8* %173 to <4 x double>*
  %wide.load1188 = load <4 x double>, <4 x double>* %174, align 8, !alias.scope !89, !noalias !91
  %175 = fmul fast <4 x double> %wide.load1188, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %176 = bitcast i8* %173 to <4 x double>*
  store <4 x double> %175, <4 x double>* %176, align 8, !alias.scope !89, !noalias !91
  %index.next1185 = add i64 %index1184, 4
  %177 = icmp eq i64 %index.next1185, %n.vec1183
  br i1 %177, label %middle.block1177, label %vector.body1179, !llvm.loop !95

middle.block1177:                                 ; preds = %vector.body1179
  %cmp.n1187 = icmp eq i64 %170, %n.vec1183
  br i1 %cmp.n1187, label %polly.loop_exit570, label %polly.loop_header568.preheader

polly.loop_header568.preheader:                   ; preds = %polly.loop_header562, %middle.block1177
  %polly.indvar571.ph = phi i64 [ 0, %polly.loop_header562 ], [ %n.vec1183, %middle.block1177 ]
  br label %polly.loop_header568

polly.loop_exit570:                               ; preds = %polly.loop_header568, %middle.block1177
  %polly.indvar_next566 = add nuw nsw i64 %polly.indvar565, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar_next566, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1053.not, label %polly.loop_header578.preheader, label %polly.loop_header562

polly.loop_header578.preheader:                   ; preds = %polly.loop_exit570
  %Packed_MemRef_call1479 = bitcast i8* %malloccall478 to double*
  br label %polly.loop_header578

polly.loop_header568:                             ; preds = %polly.loop_header568.preheader, %polly.loop_header568
  %polly.indvar571 = phi i64 [ %polly.indvar_next572, %polly.loop_header568 ], [ %polly.indvar571.ph, %polly.loop_header568.preheader ]
  %178 = shl nuw nsw i64 %polly.indvar571, 3
  %scevgep575 = getelementptr i8, i8* %scevgep574, i64 %178
  %scevgep575576 = bitcast i8* %scevgep575 to double*
  %_p_scalar_577 = load double, double* %scevgep575576, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_577, 1.200000e+00
  store double %p_mul.i, double* %scevgep575576, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next572 = add nuw nsw i64 %polly.indvar571, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next572, %polly.indvar565
  br i1 %exitcond1052.not, label %polly.loop_exit570, label %polly.loop_header568, !llvm.loop !96

polly.loop_header578:                             ; preds = %polly.loop_header578.preheader, %polly.loop_exit587
  %indvars.iv1042 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %indvars.iv.next1043, %polly.loop_exit587 ]
  %indvars.iv1037 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %indvars.iv.next1038, %polly.loop_exit587 ]
  %indvars.iv1035 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %indvars.iv.next1036, %polly.loop_exit587 ]
  %polly.indvar581 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %polly.indvar_next582, %polly.loop_exit587 ]
  %179 = lshr i64 %polly.indvar581, 1
  %180 = add nuw i64 %indvars.iv1037, %179
  %181 = shl nuw nsw i64 %180, 2
  %182 = sub i64 %indvars.iv1035, %181
  %183 = add i64 %indvars.iv1042, %181
  %184 = mul nuw nsw i64 %polly.indvar581, 12
  %185 = add nuw nsw i64 %184, %179
  %186 = mul nsw i64 %polly.indvar581, -50
  %187 = mul nuw nsw i64 %polly.indvar581, 50
  br label %polly.loop_header585

polly.loop_exit587:                               ; preds = %polly.loop_exit626
  %polly.indvar_next582 = add nuw nsw i64 %polly.indvar581, 1
  %indvars.iv.next1036 = add nuw nsw i64 %indvars.iv1035, 50
  %indvars.iv.next1038 = add nuw nsw i64 %indvars.iv1037, 12
  %indvars.iv.next1043 = add nsw i64 %indvars.iv1042, -50
  %exitcond1051.not = icmp eq i64 %polly.indvar_next582, 24
  br i1 %exitcond1051.not, label %polly.exiting477, label %polly.loop_header578

polly.loop_header585:                             ; preds = %polly.loop_exit626, %polly.loop_header578
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit626 ], [ %183, %polly.loop_header578 ]
  %indvars.iv1039 = phi i64 [ %indvars.iv.next1040, %polly.loop_exit626 ], [ %182, %polly.loop_header578 ]
  %polly.indvar588 = phi i64 [ %polly.indvar_next589, %polly.loop_exit626 ], [ %185, %polly.loop_header578 ]
  %smax1041 = call i64 @llvm.smax.i64(i64 %indvars.iv1039, i64 0)
  %188 = add i64 %smax1041, %indvars.iv1044
  %189 = shl nsw i64 %polly.indvar588, 2
  %190 = add nsw i64 %189, %186
  %191 = add nsw i64 %190, -1
  %.inv872 = icmp sgt i64 %190, 49
  %192 = select i1 %.inv872, i64 49, i64 %191
  %polly.loop_guard601 = icmp sgt i64 %192, -1
  %193 = icmp sgt i64 %190, 0
  %194 = select i1 %193, i64 %190, i64 0
  %195 = add nsw i64 %190, 3
  %polly.loop_guard613.not = icmp sgt i64 %194, %195
  br i1 %polly.loop_guard601, label %polly.loop_header591.us, label %polly.loop_header585.split

polly.loop_header591.us:                          ; preds = %polly.loop_header585, %polly.loop_exit612.us
  %polly.indvar594.us = phi i64 [ %polly.indvar_next595.us, %polly.loop_exit612.us ], [ 0, %polly.loop_header585 ]
  %polly.access.mul.Packed_MemRef_call1479.us = mul nuw nsw i64 %polly.indvar594.us, 1200
  br label %polly.loop_header598.us

polly.loop_header598.us:                          ; preds = %polly.loop_header591.us, %polly.loop_header598.us
  %polly.indvar602.us = phi i64 [ %polly.indvar_next603.us, %polly.loop_header598.us ], [ 0, %polly.loop_header591.us ]
  %196 = add nuw nsw i64 %polly.indvar602.us, %187
  %polly.access.mul.call1606.us = mul nuw nsw i64 %196, 1000
  %polly.access.add.call1607.us = add nuw nsw i64 %polly.access.mul.call1606.us, %polly.indvar594.us
  %polly.access.call1608.us = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1607.us
  %polly.access.call1608.load.us = load double, double* %polly.access.call1608.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479.us = add nuw nsw i64 %polly.indvar602.us, %polly.access.mul.Packed_MemRef_call1479.us
  %polly.access.Packed_MemRef_call1479.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us
  store double %polly.access.call1608.load.us, double* %polly.access.Packed_MemRef_call1479.us, align 8
  %polly.indvar_next603.us = add nuw i64 %polly.indvar602.us, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar602.us, %192
  br i1 %exitcond1033.not, label %polly.loop_exit600.loopexit.us, label %polly.loop_header598.us

polly.loop_header610.us:                          ; preds = %polly.loop_exit600.loopexit.us, %polly.loop_header610.us
  %polly.indvar614.us = phi i64 [ %polly.indvar_next615.us, %polly.loop_header610.us ], [ %194, %polly.loop_exit600.loopexit.us ]
  %197 = add nuw nsw i64 %polly.indvar614.us, %187
  %polly.access.mul.call1618.us = mul nsw i64 %197, 1000
  %polly.access.add.call1619.us = add nuw nsw i64 %polly.access.mul.call1618.us, %polly.indvar594.us
  %polly.access.call1620.us = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1619.us
  %polly.access.call1620.load.us = load double, double* %polly.access.call1620.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479622.us = add nuw nsw i64 %polly.indvar614.us, %polly.access.mul.Packed_MemRef_call1479.us
  %polly.access.Packed_MemRef_call1479623.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479622.us
  store double %polly.access.call1620.load.us, double* %polly.access.Packed_MemRef_call1479623.us, align 8
  %polly.indvar_next615.us = add nuw nsw i64 %polly.indvar614.us, 1
  %polly.loop_cond616.not.not.us = icmp slt i64 %polly.indvar614.us, %195
  br i1 %polly.loop_cond616.not.not.us, label %polly.loop_header610.us, label %polly.loop_exit612.us

polly.loop_exit612.us:                            ; preds = %polly.loop_header610.us, %polly.loop_exit600.loopexit.us
  %polly.indvar_next595.us = add nuw nsw i64 %polly.indvar594.us, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next595.us, 1000
  br i1 %exitcond1034.not, label %polly.loop_header624.preheader, label %polly.loop_header591.us

polly.loop_exit600.loopexit.us:                   ; preds = %polly.loop_header598.us
  br i1 %polly.loop_guard613.not, label %polly.loop_exit612.us, label %polly.loop_header610.us

polly.loop_header585.split:                       ; preds = %polly.loop_header585
  br i1 %polly.loop_guard613.not, label %polly.loop_header624.preheader, label %polly.loop_header591

polly.loop_exit626:                               ; preds = %polly.loop_exit633.loopexit.us, %polly.loop_header624.preheader
  %polly.indvar_next589 = add nuw nsw i64 %polly.indvar588, 1
  %polly.loop_cond590 = icmp ult i64 %polly.indvar588, 299
  %indvars.iv.next1040 = add i64 %indvars.iv1039, -4
  %indvars.iv.next1045 = add i64 %indvars.iv1044, 4
  br i1 %polly.loop_cond590, label %polly.loop_header585, label %polly.loop_exit587

polly.loop_header591:                             ; preds = %polly.loop_header585.split, %polly.loop_exit612
  %polly.indvar594 = phi i64 [ %polly.indvar_next595, %polly.loop_exit612 ], [ 0, %polly.loop_header585.split ]
  %polly.access.mul.Packed_MemRef_call1479621 = mul nuw nsw i64 %polly.indvar594, 1200
  br label %polly.loop_header610

polly.loop_exit612:                               ; preds = %polly.loop_header610
  %polly.indvar_next595 = add nuw nsw i64 %polly.indvar594, 1
  %exitcond1032.not = icmp eq i64 %polly.indvar_next595, 1000
  br i1 %exitcond1032.not, label %polly.loop_header624.preheader, label %polly.loop_header591

polly.loop_header624.preheader:                   ; preds = %polly.loop_exit612, %polly.loop_exit612.us, %polly.loop_header585.split
  %198 = sub nsw i64 %187, %189
  %199 = icmp sgt i64 %198, 0
  %200 = select i1 %199, i64 %198, i64 0
  %polly.loop_guard634 = icmp slt i64 %200, 4
  br i1 %polly.loop_guard634, label %polly.loop_header624.us, label %polly.loop_exit626

polly.loop_header624.us:                          ; preds = %polly.loop_header624.preheader, %polly.loop_exit633.loopexit.us
  %polly.indvar627.us = phi i64 [ %polly.indvar_next628.us, %polly.loop_exit633.loopexit.us ], [ 0, %polly.loop_header624.preheader ]
  %201 = shl nuw nsw i64 %polly.indvar627.us, 3
  %scevgep650.us = getelementptr i8, i8* %call2, i64 %201
  %polly.access.mul.Packed_MemRef_call1479646.us = mul nuw nsw i64 %polly.indvar627.us, 1200
  br label %polly.loop_header631.us

polly.loop_header631.us:                          ; preds = %polly.loop_exit641.us, %polly.loop_header624.us
  %indvars.iv1046 = phi i64 [ %indvars.iv.next1047, %polly.loop_exit641.us ], [ %188, %polly.loop_header624.us ]
  %polly.indvar635.us = phi i64 [ %polly.indvar_next636.us, %polly.loop_exit641.us ], [ %200, %polly.loop_header624.us ]
  %smin1048 = call i64 @llvm.smin.i64(i64 %indvars.iv1046, i64 49)
  %202 = add nsw i64 %polly.indvar635.us, %190
  %polly.loop_guard642.us1090 = icmp sgt i64 %202, -1
  br i1 %polly.loop_guard642.us1090, label %polly.loop_header639.preheader.us, label %polly.loop_exit641.us

polly.loop_header639.us:                          ; preds = %polly.loop_header639.preheader.us, %polly.loop_header639.us
  %polly.indvar643.us = phi i64 [ %polly.indvar_next644.us, %polly.loop_header639.us ], [ 0, %polly.loop_header639.preheader.us ]
  %203 = add nuw nsw i64 %polly.indvar643.us, %187
  %polly.access.add.Packed_MemRef_call1479647.us = add nuw nsw i64 %polly.indvar643.us, %polly.access.mul.Packed_MemRef_call1479646.us
  %polly.access.Packed_MemRef_call1479648.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479647.us
  %_p_scalar_649.us = load double, double* %polly.access.Packed_MemRef_call1479648.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_653.us, %_p_scalar_649.us
  %204 = mul nuw nsw i64 %203, 8000
  %scevgep655.us = getelementptr i8, i8* %scevgep650.us, i64 %204
  %scevgep655656.us = bitcast i8* %scevgep655.us to double*
  %_p_scalar_657.us = load double, double* %scevgep655656.us, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i.us = fmul fast double %_p_scalar_661.us, %_p_scalar_657.us
  %205 = shl i64 %203, 3
  %206 = add i64 %205, %209
  %scevgep662.us = getelementptr i8, i8* %call, i64 %206
  %scevgep662663.us = bitcast i8* %scevgep662.us to double*
  %_p_scalar_664.us = load double, double* %scevgep662663.us, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_664.us
  store double %p_add42.i.us, double* %scevgep662663.us, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next644.us = add nuw nsw i64 %polly.indvar643.us, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar643.us, %smin1048
  br i1 %exitcond1049.not, label %polly.loop_exit641.us, label %polly.loop_header639.us

polly.loop_exit641.us:                            ; preds = %polly.loop_header639.us, %polly.loop_header631.us
  %polly.indvar_next636.us = add nuw nsw i64 %polly.indvar635.us, 1
  %polly.loop_cond637.us = icmp ult i64 %polly.indvar635.us, 3
  %indvars.iv.next1047 = add i64 %indvars.iv1046, 1
  br i1 %polly.loop_cond637.us, label %polly.loop_header631.us, label %polly.loop_exit633.loopexit.us

polly.loop_header639.preheader.us:                ; preds = %polly.loop_header631.us
  %207 = add nuw nsw i64 %polly.indvar635.us, %189
  %208 = mul i64 %207, 8000
  %scevgep651.us = getelementptr i8, i8* %scevgep650.us, i64 %208
  %scevgep651652.us = bitcast i8* %scevgep651.us to double*
  %_p_scalar_653.us = load double, double* %scevgep651652.us, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1479659.us = add nsw i64 %202, %polly.access.mul.Packed_MemRef_call1479646.us
  %polly.access.Packed_MemRef_call1479660.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479659.us
  %_p_scalar_661.us = load double, double* %polly.access.Packed_MemRef_call1479660.us, align 8
  %209 = mul i64 %207, 9600
  br label %polly.loop_header639.us

polly.loop_exit633.loopexit.us:                   ; preds = %polly.loop_exit641.us
  %polly.indvar_next628.us = add nuw nsw i64 %polly.indvar627.us, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar_next628.us, 1000
  br i1 %exitcond1050.not, label %polly.loop_exit626, label %polly.loop_header624.us

polly.loop_header610:                             ; preds = %polly.loop_header591, %polly.loop_header610
  %polly.indvar614 = phi i64 [ %polly.indvar_next615, %polly.loop_header610 ], [ %194, %polly.loop_header591 ]
  %210 = add nuw nsw i64 %polly.indvar614, %187
  %polly.access.mul.call1618 = mul nsw i64 %210, 1000
  %polly.access.add.call1619 = add nuw nsw i64 %polly.access.mul.call1618, %polly.indvar594
  %polly.access.call1620 = getelementptr double, double* %polly.access.cast.call1669, i64 %polly.access.add.call1619
  %polly.access.call1620.load = load double, double* %polly.access.call1620, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479622 = add nuw nsw i64 %polly.indvar614, %polly.access.mul.Packed_MemRef_call1479621
  %polly.access.Packed_MemRef_call1479623 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479622
  store double %polly.access.call1620.load, double* %polly.access.Packed_MemRef_call1479623, align 8
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %polly.loop_cond616.not.not = icmp slt i64 %polly.indvar614, %195
  br i1 %polly.loop_cond616.not.not, label %polly.loop_header610, label %polly.loop_exit612

polly.loop_header791:                             ; preds = %entry, %polly.loop_exit799
  %indvars.iv1078 = phi i64 [ %indvars.iv.next1079, %polly.loop_exit799 ], [ 0, %entry ]
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_exit799 ], [ 0, %entry ]
  %smin1080 = call i64 @llvm.smin.i64(i64 %indvars.iv1078, i64 -1168)
  %211 = shl nsw i64 %polly.indvar794, 5
  %212 = add nsw i64 %smin1080, 1199
  br label %polly.loop_header797

polly.loop_exit799:                               ; preds = %polly.loop_exit805
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %indvars.iv.next1079 = add nsw i64 %indvars.iv1078, -32
  %exitcond1083.not = icmp eq i64 %polly.indvar_next795, 38
  br i1 %exitcond1083.not, label %polly.loop_header818, label %polly.loop_header791

polly.loop_header797:                             ; preds = %polly.loop_exit805, %polly.loop_header791
  %indvars.iv1074 = phi i64 [ %indvars.iv.next1075, %polly.loop_exit805 ], [ 0, %polly.loop_header791 ]
  %polly.indvar800 = phi i64 [ %polly.indvar_next801, %polly.loop_exit805 ], [ 0, %polly.loop_header791 ]
  %213 = mul nsw i64 %polly.indvar800, -32
  %smin1118 = call i64 @llvm.smin.i64(i64 %213, i64 -1168)
  %214 = add nsw i64 %smin1118, 1200
  %smin1076 = call i64 @llvm.smin.i64(i64 %indvars.iv1074, i64 -1168)
  %215 = shl nsw i64 %polly.indvar800, 5
  %216 = add nsw i64 %smin1076, 1199
  br label %polly.loop_header803

polly.loop_exit805:                               ; preds = %polly.loop_exit811
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %indvars.iv.next1075 = add nsw i64 %indvars.iv1074, -32
  %exitcond1082.not = icmp eq i64 %polly.indvar_next801, 38
  br i1 %exitcond1082.not, label %polly.loop_exit799, label %polly.loop_header797

polly.loop_header803:                             ; preds = %polly.loop_exit811, %polly.loop_header797
  %polly.indvar806 = phi i64 [ 0, %polly.loop_header797 ], [ %polly.indvar_next807, %polly.loop_exit811 ]
  %217 = add nuw nsw i64 %polly.indvar806, %211
  %218 = trunc i64 %217 to i32
  %219 = mul nuw nsw i64 %217, 9600
  %min.iters.check = icmp eq i64 %214, 0
  br i1 %min.iters.check, label %polly.loop_header809, label %vector.ph1119

vector.ph1119:                                    ; preds = %polly.loop_header803
  %broadcast.splatinsert1126 = insertelement <4 x i64> poison, i64 %215, i32 0
  %broadcast.splat1127 = shufflevector <4 x i64> %broadcast.splatinsert1126, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1128 = insertelement <4 x i32> poison, i32 %218, i32 0
  %broadcast.splat1129 = shufflevector <4 x i32> %broadcast.splatinsert1128, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1117

vector.body1117:                                  ; preds = %vector.body1117, %vector.ph1119
  %index1120 = phi i64 [ 0, %vector.ph1119 ], [ %index.next1121, %vector.body1117 ]
  %vec.ind1124 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1119 ], [ %vec.ind.next1125, %vector.body1117 ]
  %220 = add nuw nsw <4 x i64> %vec.ind1124, %broadcast.splat1127
  %221 = trunc <4 x i64> %220 to <4 x i32>
  %222 = mul <4 x i32> %broadcast.splat1129, %221
  %223 = add <4 x i32> %222, <i32 3, i32 3, i32 3, i32 3>
  %224 = urem <4 x i32> %223, <i32 1200, i32 1200, i32 1200, i32 1200>
  %225 = sitofp <4 x i32> %224 to <4 x double>
  %226 = fmul fast <4 x double> %225, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %227 = extractelement <4 x i64> %220, i32 0
  %228 = shl i64 %227, 3
  %229 = add nuw nsw i64 %228, %219
  %230 = getelementptr i8, i8* %call, i64 %229
  %231 = bitcast i8* %230 to <4 x double>*
  store <4 x double> %226, <4 x double>* %231, align 8, !alias.scope !99, !noalias !101
  %index.next1121 = add i64 %index1120, 4
  %vec.ind.next1125 = add <4 x i64> %vec.ind1124, <i64 4, i64 4, i64 4, i64 4>
  %232 = icmp eq i64 %index.next1121, %214
  br i1 %232, label %polly.loop_exit811, label %vector.body1117, !llvm.loop !104

polly.loop_exit811:                               ; preds = %vector.body1117, %polly.loop_header809
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar806, %212
  br i1 %exitcond1081.not, label %polly.loop_exit805, label %polly.loop_header803

polly.loop_header809:                             ; preds = %polly.loop_header803, %polly.loop_header809
  %polly.indvar812 = phi i64 [ %polly.indvar_next813, %polly.loop_header809 ], [ 0, %polly.loop_header803 ]
  %233 = add nuw nsw i64 %polly.indvar812, %215
  %234 = trunc i64 %233 to i32
  %235 = mul i32 %234, %218
  %236 = add i32 %235, 3
  %237 = urem i32 %236, 1200
  %p_conv31.i = sitofp i32 %237 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %238 = shl i64 %233, 3
  %239 = add nuw nsw i64 %238, %219
  %scevgep815 = getelementptr i8, i8* %call, i64 %239
  %scevgep815816 = bitcast i8* %scevgep815 to double*
  store double %p_div33.i, double* %scevgep815816, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next813 = add nuw nsw i64 %polly.indvar812, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar812, %216
  br i1 %exitcond1077.not, label %polly.loop_exit811, label %polly.loop_header809, !llvm.loop !105

polly.loop_header818:                             ; preds = %polly.loop_exit799, %polly.loop_exit826
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069, %polly.loop_exit826 ], [ 0, %polly.loop_exit799 ]
  %polly.indvar821 = phi i64 [ %polly.indvar_next822, %polly.loop_exit826 ], [ 0, %polly.loop_exit799 ]
  %smin1070 = call i64 @llvm.smin.i64(i64 %indvars.iv1068, i64 -1168)
  %240 = shl nsw i64 %polly.indvar821, 5
  %241 = add nsw i64 %smin1070, 1199
  br label %polly.loop_header824

polly.loop_exit826:                               ; preds = %polly.loop_exit832
  %polly.indvar_next822 = add nuw nsw i64 %polly.indvar821, 1
  %indvars.iv.next1069 = add nsw i64 %indvars.iv1068, -32
  %exitcond1073.not = icmp eq i64 %polly.indvar_next822, 38
  br i1 %exitcond1073.not, label %polly.loop_header844, label %polly.loop_header818

polly.loop_header824:                             ; preds = %polly.loop_exit832, %polly.loop_header818
  %indvars.iv1064 = phi i64 [ %indvars.iv.next1065, %polly.loop_exit832 ], [ 0, %polly.loop_header818 ]
  %polly.indvar827 = phi i64 [ %polly.indvar_next828, %polly.loop_exit832 ], [ 0, %polly.loop_header818 ]
  %242 = mul nsw i64 %polly.indvar827, -32
  %smin1133 = call i64 @llvm.smin.i64(i64 %242, i64 -968)
  %243 = add nsw i64 %smin1133, 1000
  %smin1066 = call i64 @llvm.smin.i64(i64 %indvars.iv1064, i64 -968)
  %244 = shl nsw i64 %polly.indvar827, 5
  %245 = add nsw i64 %smin1066, 999
  br label %polly.loop_header830

polly.loop_exit832:                               ; preds = %polly.loop_exit838
  %polly.indvar_next828 = add nuw nsw i64 %polly.indvar827, 1
  %indvars.iv.next1065 = add nsw i64 %indvars.iv1064, -32
  %exitcond1072.not = icmp eq i64 %polly.indvar_next828, 32
  br i1 %exitcond1072.not, label %polly.loop_exit826, label %polly.loop_header824

polly.loop_header830:                             ; preds = %polly.loop_exit838, %polly.loop_header824
  %polly.indvar833 = phi i64 [ 0, %polly.loop_header824 ], [ %polly.indvar_next834, %polly.loop_exit838 ]
  %246 = add nuw nsw i64 %polly.indvar833, %240
  %247 = trunc i64 %246 to i32
  %248 = mul nuw nsw i64 %246, 8000
  %min.iters.check1134 = icmp eq i64 %243, 0
  br i1 %min.iters.check1134, label %polly.loop_header836, label %vector.ph1135

vector.ph1135:                                    ; preds = %polly.loop_header830
  %broadcast.splatinsert1144 = insertelement <4 x i64> poison, i64 %244, i32 0
  %broadcast.splat1145 = shufflevector <4 x i64> %broadcast.splatinsert1144, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1146 = insertelement <4 x i32> poison, i32 %247, i32 0
  %broadcast.splat1147 = shufflevector <4 x i32> %broadcast.splatinsert1146, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1132

vector.body1132:                                  ; preds = %vector.body1132, %vector.ph1135
  %index1138 = phi i64 [ 0, %vector.ph1135 ], [ %index.next1139, %vector.body1132 ]
  %vec.ind1142 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1135 ], [ %vec.ind.next1143, %vector.body1132 ]
  %249 = add nuw nsw <4 x i64> %vec.ind1142, %broadcast.splat1145
  %250 = trunc <4 x i64> %249 to <4 x i32>
  %251 = mul <4 x i32> %broadcast.splat1147, %250
  %252 = add <4 x i32> %251, <i32 2, i32 2, i32 2, i32 2>
  %253 = urem <4 x i32> %252, <i32 1000, i32 1000, i32 1000, i32 1000>
  %254 = sitofp <4 x i32> %253 to <4 x double>
  %255 = fmul fast <4 x double> %254, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %256 = extractelement <4 x i64> %249, i32 0
  %257 = shl i64 %256, 3
  %258 = add nuw nsw i64 %257, %248
  %259 = getelementptr i8, i8* %call2, i64 %258
  %260 = bitcast i8* %259 to <4 x double>*
  store <4 x double> %255, <4 x double>* %260, align 8, !alias.scope !103, !noalias !106
  %index.next1139 = add i64 %index1138, 4
  %vec.ind.next1143 = add <4 x i64> %vec.ind1142, <i64 4, i64 4, i64 4, i64 4>
  %261 = icmp eq i64 %index.next1139, %243
  br i1 %261, label %polly.loop_exit838, label %vector.body1132, !llvm.loop !107

polly.loop_exit838:                               ; preds = %vector.body1132, %polly.loop_header836
  %polly.indvar_next834 = add nuw nsw i64 %polly.indvar833, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar833, %241
  br i1 %exitcond1071.not, label %polly.loop_exit832, label %polly.loop_header830

polly.loop_header836:                             ; preds = %polly.loop_header830, %polly.loop_header836
  %polly.indvar839 = phi i64 [ %polly.indvar_next840, %polly.loop_header836 ], [ 0, %polly.loop_header830 ]
  %262 = add nuw nsw i64 %polly.indvar839, %244
  %263 = trunc i64 %262 to i32
  %264 = mul i32 %263, %247
  %265 = add i32 %264, 2
  %266 = urem i32 %265, 1000
  %p_conv10.i = sitofp i32 %266 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %267 = shl i64 %262, 3
  %268 = add nuw nsw i64 %267, %248
  %scevgep842 = getelementptr i8, i8* %call2, i64 %268
  %scevgep842843 = bitcast i8* %scevgep842 to double*
  store double %p_div12.i, double* %scevgep842843, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next840 = add nuw nsw i64 %polly.indvar839, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar839, %245
  br i1 %exitcond1067.not, label %polly.loop_exit838, label %polly.loop_header836, !llvm.loop !108

polly.loop_header844:                             ; preds = %polly.loop_exit826, %polly.loop_exit852
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %polly.loop_exit852 ], [ 0, %polly.loop_exit826 ]
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %polly.loop_exit826 ]
  %smin1060 = call i64 @llvm.smin.i64(i64 %indvars.iv1058, i64 -1168)
  %269 = shl nsw i64 %polly.indvar847, 5
  %270 = add nsw i64 %smin1060, 1199
  br label %polly.loop_header850

polly.loop_exit852:                               ; preds = %polly.loop_exit858
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %indvars.iv.next1059 = add nsw i64 %indvars.iv1058, -32
  %exitcond1063.not = icmp eq i64 %polly.indvar_next848, 38
  br i1 %exitcond1063.not, label %init_array.exit, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_exit858, %polly.loop_header844
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055, %polly.loop_exit858 ], [ 0, %polly.loop_header844 ]
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_exit858 ], [ 0, %polly.loop_header844 ]
  %271 = mul nsw i64 %polly.indvar853, -32
  %smin1151 = call i64 @llvm.smin.i64(i64 %271, i64 -968)
  %272 = add nsw i64 %smin1151, 1000
  %smin1056 = call i64 @llvm.smin.i64(i64 %indvars.iv1054, i64 -968)
  %273 = shl nsw i64 %polly.indvar853, 5
  %274 = add nsw i64 %smin1056, 999
  br label %polly.loop_header856

polly.loop_exit858:                               ; preds = %polly.loop_exit864
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %indvars.iv.next1055 = add nsw i64 %indvars.iv1054, -32
  %exitcond1062.not = icmp eq i64 %polly.indvar_next854, 32
  br i1 %exitcond1062.not, label %polly.loop_exit852, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_exit864, %polly.loop_header850
  %polly.indvar859 = phi i64 [ 0, %polly.loop_header850 ], [ %polly.indvar_next860, %polly.loop_exit864 ]
  %275 = add nuw nsw i64 %polly.indvar859, %269
  %276 = trunc i64 %275 to i32
  %277 = mul nuw nsw i64 %275, 8000
  %min.iters.check1152 = icmp eq i64 %272, 0
  br i1 %min.iters.check1152, label %polly.loop_header862, label %vector.ph1153

vector.ph1153:                                    ; preds = %polly.loop_header856
  %broadcast.splatinsert1162 = insertelement <4 x i64> poison, i64 %273, i32 0
  %broadcast.splat1163 = shufflevector <4 x i64> %broadcast.splatinsert1162, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1164 = insertelement <4 x i32> poison, i32 %276, i32 0
  %broadcast.splat1165 = shufflevector <4 x i32> %broadcast.splatinsert1164, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1150

vector.body1150:                                  ; preds = %vector.body1150, %vector.ph1153
  %index1156 = phi i64 [ 0, %vector.ph1153 ], [ %index.next1157, %vector.body1150 ]
  %vec.ind1160 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1153 ], [ %vec.ind.next1161, %vector.body1150 ]
  %278 = add nuw nsw <4 x i64> %vec.ind1160, %broadcast.splat1163
  %279 = trunc <4 x i64> %278 to <4 x i32>
  %280 = mul <4 x i32> %broadcast.splat1165, %279
  %281 = add <4 x i32> %280, <i32 1, i32 1, i32 1, i32 1>
  %282 = urem <4 x i32> %281, <i32 1200, i32 1200, i32 1200, i32 1200>
  %283 = sitofp <4 x i32> %282 to <4 x double>
  %284 = fmul fast <4 x double> %283, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %285 = extractelement <4 x i64> %278, i32 0
  %286 = shl i64 %285, 3
  %287 = add nuw nsw i64 %286, %277
  %288 = getelementptr i8, i8* %call1, i64 %287
  %289 = bitcast i8* %288 to <4 x double>*
  store <4 x double> %284, <4 x double>* %289, align 8, !alias.scope !102, !noalias !109
  %index.next1157 = add i64 %index1156, 4
  %vec.ind.next1161 = add <4 x i64> %vec.ind1160, <i64 4, i64 4, i64 4, i64 4>
  %290 = icmp eq i64 %index.next1157, %272
  br i1 %290, label %polly.loop_exit864, label %vector.body1150, !llvm.loop !110

polly.loop_exit864:                               ; preds = %vector.body1150, %polly.loop_header862
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar859, %270
  br i1 %exitcond1061.not, label %polly.loop_exit858, label %polly.loop_header856

polly.loop_header862:                             ; preds = %polly.loop_header856, %polly.loop_header862
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_header862 ], [ 0, %polly.loop_header856 ]
  %291 = add nuw nsw i64 %polly.indvar865, %273
  %292 = trunc i64 %291 to i32
  %293 = mul i32 %292, %276
  %294 = add i32 %293, 1
  %295 = urem i32 %294, 1200
  %p_conv.i = sitofp i32 %295 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %296 = shl i64 %291, 3
  %297 = add nuw nsw i64 %296, %277
  %scevgep869 = getelementptr i8, i8* %call1, i64 %297
  %scevgep869870 = bitcast i8* %scevgep869 to double*
  store double %p_div.i, double* %scevgep869870, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar865, %274
  br i1 %exitcond1057.not, label %polly.loop_exit864, label %polly.loop_header862, !llvm.loop !111
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
!25 = !{!"llvm.loop.tile.size", i32 50}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 2048}
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
!46 = distinct !{!46, !12, !23, !47, !48, !49, !50, !51, !57}
!47 = !{!"llvm.loop.id", !"i"}
!48 = !{!"llvm.loop.tile.enable", i1 true}
!49 = !{!"llvm.loop.tile.depth", i32 3}
!50 = !{!"llvm.loop.tile.size", i32 4}
!51 = !{!"llvm.loop.tile.followup_floor", !52}
!52 = distinct !{!52, !12, !23, !53, !54, !55, !56}
!53 = !{!"llvm.loop.id", !"i1"}
!54 = !{!"llvm.loop.interchange.enable", i1 true}
!55 = !{!"llvm.loop.interchange.depth", i32 5}
!56 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!57 = !{!"llvm.loop.tile.followup_tile", !58}
!58 = distinct !{!58, !12, !23, !59}
!59 = !{!"llvm.loop.id", !"i2"}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = distinct !{!63, !12, !13}
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !4, i64 0}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !69, !"polly.alias.scope.MemRef_call"}
!69 = distinct !{!69, !"polly.alias.scope.domain"}
!70 = !{!71, !72, !73}
!71 = distinct !{!71, !69, !"polly.alias.scope.MemRef_call1"}
!72 = distinct !{!72, !69, !"polly.alias.scope.MemRef_call2"}
!73 = distinct !{!73, !69, !"polly.alias.scope.Packed_MemRef_call1"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !76, !13}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!68, !72, !73}
!78 = !{!68, !71, !73}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call1"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !76, !13}
!87 = !{!79, !83, !84}
!88 = !{!79, !82, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93, !94}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !90, !"polly.alias.scope.Packed_MemRef_call1"}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !76, !13}
!97 = !{!89, !93, !94}
!98 = !{!89, !92, !94}
!99 = distinct !{!99, !100, !"polly.alias.scope.MemRef_call"}
!100 = distinct !{!100, !"polly.alias.scope.domain"}
!101 = !{!102, !103}
!102 = distinct !{!102, !100, !"polly.alias.scope.MemRef_call1"}
!103 = distinct !{!103, !100, !"polly.alias.scope.MemRef_call2"}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !76, !13}
!106 = !{!102, !99}
!107 = distinct !{!107, !13}
!108 = distinct !{!108, !76, !13}
!109 = !{!103, !99}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !76, !13}
