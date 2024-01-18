; ModuleID = 'syr2k_exhaustive/mmp_all_SM_3332.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_3332.c"
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
  %call886 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1738 = bitcast i8* %call1 to double*
  %polly.access.call1747 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1747, %call2
  %polly.access.call2767 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2767, %call1
  %2 = or i1 %0, %1
  %polly.access.call787 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call787, %call2
  %4 = icmp ule i8* %polly.access.call2767, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call787, %call1
  %8 = icmp ule i8* %polly.access.call1747, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header860, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1107 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1106 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1105 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1104 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1104, %scevgep1107
  %bound1 = icmp ult i8* %scevgep1106, %scevgep1105
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
  br i1 %exitcond18.not.i, label %vector.ph1111, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1111:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1118 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1119 = shufflevector <4 x i64> %broadcast.splatinsert1118, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1110

vector.body1110:                                  ; preds = %vector.body1110, %vector.ph1111
  %index1112 = phi i64 [ 0, %vector.ph1111 ], [ %index.next1113, %vector.body1110 ]
  %vec.ind1116 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1111 ], [ %vec.ind.next1117, %vector.body1110 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1116, %broadcast.splat1119
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call886, i64 %indvars.iv7.i, i64 %index1112
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1113 = add i64 %index1112, 4
  %vec.ind.next1117 = add <4 x i64> %vec.ind1116, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1113, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1110, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1110
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1111, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit921
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start521, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1174 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1174, label %for.body3.i46.preheader1257, label %vector.ph1175

vector.ph1175:                                    ; preds = %for.body3.i46.preheader
  %n.vec1177 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1173

vector.body1173:                                  ; preds = %vector.body1173, %vector.ph1175
  %index1178 = phi i64 [ 0, %vector.ph1175 ], [ %index.next1179, %vector.body1173 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call886, i64 %indvars.iv21.i, i64 %index1178
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1179 = add i64 %index1178, 4
  %46 = icmp eq i64 %index.next1179, %n.vec1177
  br i1 %46, label %middle.block1171, label %vector.body1173, !llvm.loop !18

middle.block1171:                                 ; preds = %vector.body1173
  %cmp.n1181 = icmp eq i64 %indvars.iv21.i, %n.vec1177
  br i1 %cmp.n1181, label %for.inc6.i, label %for.body3.i46.preheader1257

for.body3.i46.preheader1257:                      ; preds = %for.body3.i46.preheader, %middle.block1171
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1177, %middle.block1171 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1257, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1257 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call886, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1171, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call886, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting522
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start306, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1197 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1197, label %for.body3.i60.preheader1253, label %vector.ph1198

vector.ph1198:                                    ; preds = %for.body3.i60.preheader
  %n.vec1200 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1196

vector.body1196:                                  ; preds = %vector.body1196, %vector.ph1198
  %index1201 = phi i64 [ 0, %vector.ph1198 ], [ %index.next1202, %vector.body1196 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call886, i64 %indvars.iv21.i52, i64 %index1201
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1205 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1205, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1202 = add i64 %index1201, 4
  %57 = icmp eq i64 %index.next1202, %n.vec1200
  br i1 %57, label %middle.block1194, label %vector.body1196, !llvm.loop !59

middle.block1194:                                 ; preds = %vector.body1196
  %cmp.n1204 = icmp eq i64 %indvars.iv21.i52, %n.vec1200
  br i1 %cmp.n1204, label %for.inc6.i63, label %for.body3.i60.preheader1253

for.body3.i60.preheader1253:                      ; preds = %for.body3.i60.preheader, %middle.block1194
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1200, %middle.block1194 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1253, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1253 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call886, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1194, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call886, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting307
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1223 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1223, label %for.body3.i99.preheader1249, label %vector.ph1224

vector.ph1224:                                    ; preds = %for.body3.i99.preheader
  %n.vec1226 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1222

vector.body1222:                                  ; preds = %vector.body1222, %vector.ph1224
  %index1227 = phi i64 [ 0, %vector.ph1224 ], [ %index.next1228, %vector.body1222 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call886, i64 %indvars.iv21.i91, i64 %index1227
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1231 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1231, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1228 = add i64 %index1227, 4
  %68 = icmp eq i64 %index.next1228, %n.vec1226
  br i1 %68, label %middle.block1220, label %vector.body1222, !llvm.loop !61

middle.block1220:                                 ; preds = %vector.body1222
  %cmp.n1230 = icmp eq i64 %indvars.iv21.i91, %n.vec1226
  br i1 %cmp.n1230, label %for.inc6.i102, label %for.body3.i99.preheader1249

for.body3.i99.preheader1249:                      ; preds = %for.body3.i99.preheader, %middle.block1220
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1226, %middle.block1220 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1249, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1249 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call886, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1220, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call886, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call886, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1235 = phi i64 [ %indvar.next1236, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1235, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1237 = icmp ult i64 %88, 4
  br i1 %min.iters.check1237, label %polly.loop_header191.preheader, label %vector.ph1238

vector.ph1238:                                    ; preds = %polly.loop_header
  %n.vec1240 = and i64 %88, -4
  br label %vector.body1234

vector.body1234:                                  ; preds = %vector.body1234, %vector.ph1238
  %index1241 = phi i64 [ 0, %vector.ph1238 ], [ %index.next1242, %vector.body1234 ]
  %90 = shl nuw nsw i64 %index1241, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1245 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1245, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1242 = add i64 %index1241, 4
  %95 = icmp eq i64 %index.next1242, %n.vec1240
  br i1 %95, label %middle.block1232, label %vector.body1234, !llvm.loop !73

middle.block1232:                                 ; preds = %vector.body1234
  %cmp.n1244 = icmp eq i64 %88, %n.vec1240
  br i1 %cmp.n1244, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1232
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1240, %middle.block1232 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1232
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond981.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1236 = add i64 %indvar1235, 1
  br i1 %exitcond981.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond980.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond980.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar202, 50
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond979.not = icmp eq i64 %polly.indvar_next203, 20
  br i1 %exitcond979.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv969 = phi i64 [ %indvars.iv.next970, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv965 = phi i64 [ %indvars.iv.next966, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 50, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %98 = mul nuw nsw i64 %polly.indvar208, 5
  %99 = shl nsw i64 %polly.indvar208, 7
  %100 = or i64 %99, 1
  %101 = mul nsw i64 %polly.indvar208, -256
  %102 = shl nsw i64 %polly.indvar208, 8
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit269
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -6
  %indvars.iv.next966 = add nuw nsw i64 %indvars.iv965, 6
  %indvars.iv.next970 = add nsw i64 %indvars.iv969, -6
  %exitcond978.not = icmp eq i64 %polly.indvar_next209, 5
  br i1 %exitcond978.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit269, %polly.loop_header205
  %indvars.iv971 = phi i64 [ %indvars.iv.next972, %polly.loop_exit269 ], [ %indvars.iv969, %polly.loop_header205 ]
  %indvars.iv967 = phi i64 [ %indvars.iv.next968, %polly.loop_exit269 ], [ %indvars.iv965, %polly.loop_header205 ]
  %indvars.iv959 = phi i64 [ %indvars.iv.next960, %polly.loop_exit269 ], [ %indvars.iv, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit269 ], [ %98, %polly.loop_header205 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv967, i64 0)
  %103 = add i64 %smax, %indvars.iv971
  %104 = mul nuw nsw i64 %polly.indvar214, 25
  %.not = icmp ult i64 %104, %100
  br i1 %.not, label %polly.loop_header248, label %polly.loop_header217.preheader

polly.loop_header217.preheader:                   ; preds = %polly.loop_header211
  %105 = mul nuw nsw i64 %polly.indvar214, 50
  %106 = add nsw i64 %105, %101
  %107 = add nsw i64 %106, -1
  %.inv = icmp sgt i64 %106, 255
  %108 = select i1 %.inv, i64 255, i64 %107
  %polly.loop_guard = icmp sgt i64 %108, -1
  %109 = add nsw i64 %106, 49
  br i1 %polly.loop_guard, label %polly.loop_header217.us, label %polly.loop_header217

polly.loop_header217.us:                          ; preds = %polly.loop_header217.preheader, %polly.loop_exit236.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit236.us ], [ 0, %polly.loop_header217.preheader ]
  %110 = add nuw nsw i64 %polly.indvar220.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header223.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_header223.us ], [ 0, %polly.loop_header217.us ]
  %111 = add nuw nsw i64 %polly.indvar226.us, %102
  %polly.access.mul.call1230.us = mul nuw nsw i64 %111, 1000
  %polly.access.add.call1231.us = add nuw nsw i64 %110, %polly.access.mul.call1230.us
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1738, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar226.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next227.us = add nuw i64 %polly.indvar226.us, 1
  %exitcond958.not = icmp eq i64 %polly.indvar226.us, %108
  br i1 %exitcond958.not, label %polly.loop_header234.us, label %polly.loop_header223.us

polly.loop_header234.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header234.us
  %polly.indvar238.us = phi i64 [ %polly.indvar_next239.us, %polly.loop_header234.us ], [ %106, %polly.loop_header223.us ]
  %112 = add nsw i64 %polly.indvar238.us, %102
  %polly.access.mul.call1242.us = mul nuw nsw i64 %112, 1000
  %polly.access.add.call1243.us = add nuw nsw i64 %110, %polly.access.mul.call1242.us
  %polly.access.call1244.us = getelementptr double, double* %polly.access.cast.call1738, i64 %polly.access.add.call1243.us
  %polly.access.call1244.load.us = load double, double* %polly.access.call1244.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1246.us = add nsw i64 %polly.indvar238.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1247.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us
  store double %polly.access.call1244.load.us, double* %polly.access.Packed_MemRef_call1247.us, align 8
  %polly.indvar_next239.us = add nsw i64 %polly.indvar238.us, 1
  %exitcond961.not = icmp eq i64 %polly.indvar_next239.us, %indvars.iv959
  br i1 %exitcond961.not, label %polly.loop_exit236.us, label %polly.loop_header234.us

polly.loop_exit236.us:                            ; preds = %polly.loop_header234.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond962.not = icmp eq i64 %polly.indvar_next221.us, 50
  br i1 %exitcond962.not, label %polly.loop_preheader268, label %polly.loop_header217.us

polly.loop_exit269:                               ; preds = %polly.loop_exit275
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next960 = add nuw nsw i64 %indvars.iv959, 50
  %indvars.iv.next968 = add nsw i64 %indvars.iv967, -50
  %indvars.iv.next972 = add nsw i64 %indvars.iv971, 50
  %exitcond977.not = icmp eq i64 %polly.indvar_next215, 24
  br i1 %exitcond977.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217.preheader, %polly.loop_exit236
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit236 ], [ 0, %polly.loop_header217.preheader ]
  %113 = add nuw nsw i64 %polly.indvar220, %97
  %polly.access.mul.Packed_MemRef_call1245 = mul nuw nsw i64 %polly.indvar220, 1200
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_header234
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, 50
  br i1 %exitcond.not, label %polly.loop_preheader268, label %polly.loop_header217

polly.loop_header234:                             ; preds = %polly.loop_header217, %polly.loop_header234
  %polly.indvar238 = phi i64 [ %polly.indvar_next239, %polly.loop_header234 ], [ %106, %polly.loop_header217 ]
  %114 = add nsw i64 %polly.indvar238, %102
  %polly.access.mul.call1242 = mul nuw nsw i64 %114, 1000
  %polly.access.add.call1243 = add nuw nsw i64 %113, %polly.access.mul.call1242
  %polly.access.call1244 = getelementptr double, double* %polly.access.cast.call1738, i64 %polly.access.add.call1243
  %polly.access.call1244.load = load double, double* %polly.access.call1244, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1246 = add nsw i64 %polly.indvar238, %polly.access.mul.Packed_MemRef_call1245
  %polly.access.Packed_MemRef_call1247 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246
  store double %polly.access.call1244.load, double* %polly.access.Packed_MemRef_call1247, align 8
  %polly.indvar_next239 = add nsw i64 %polly.indvar238, 1
  %polly.loop_cond240.not.not = icmp slt i64 %polly.indvar238, %109
  br i1 %polly.loop_cond240.not.not, label %polly.loop_header234, label %polly.loop_exit236

polly.loop_header248:                             ; preds = %polly.loop_header211, %polly.loop_exit256
  %polly.indvar251 = phi i64 [ %polly.indvar_next252, %polly.loop_exit256 ], [ 0, %polly.loop_header211 ]
  %115 = add nuw nsw i64 %polly.indvar251, %97
  %polly.access.mul.Packed_MemRef_call1264 = mul nuw nsw i64 %polly.indvar251, 1200
  br label %polly.loop_header254

polly.loop_exit256:                               ; preds = %polly.loop_header254
  %polly.indvar_next252 = add nuw nsw i64 %polly.indvar251, 1
  %exitcond964.not = icmp eq i64 %polly.indvar_next252, 50
  br i1 %exitcond964.not, label %polly.loop_preheader268.loopexit, label %polly.loop_header248

polly.loop_header254:                             ; preds = %polly.loop_header254, %polly.loop_header248
  %polly.indvar257 = phi i64 [ 0, %polly.loop_header248 ], [ %polly.indvar_next258, %polly.loop_header254 ]
  %116 = add nuw nsw i64 %polly.indvar257, %102
  %polly.access.mul.call1261 = mul nuw nsw i64 %116, 1000
  %polly.access.add.call1262 = add nuw nsw i64 %115, %polly.access.mul.call1261
  %polly.access.call1263 = getelementptr double, double* %polly.access.cast.call1738, i64 %polly.access.add.call1262
  %polly.access.call1263.load = load double, double* %polly.access.call1263, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1265 = add nuw nsw i64 %polly.indvar257, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265
  store double %polly.access.call1263.load, double* %polly.access.Packed_MemRef_call1266, align 8
  %polly.indvar_next258 = add nuw nsw i64 %polly.indvar257, 1
  %exitcond963.not = icmp eq i64 %polly.indvar_next258, %indvars.iv
  br i1 %exitcond963.not, label %polly.loop_exit256, label %polly.loop_header254

polly.loop_header267:                             ; preds = %polly.loop_exit275, %polly.loop_preheader268
  %polly.indvar270 = phi i64 [ 0, %polly.loop_preheader268 ], [ %polly.indvar_next271, %polly.loop_exit275 ]
  %117 = add nuw nsw i64 %polly.indvar270, %97
  %polly.access.mul.Packed_MemRef_call1287 = mul nuw nsw i64 %polly.indvar270, 1200
  %118 = shl i64 %117, 3
  br label %polly.loop_header273

polly.loop_exit275:                               ; preds = %polly.loop_exit282
  %polly.indvar_next271 = add nuw nsw i64 %polly.indvar270, 1
  %exitcond976.not = icmp eq i64 %polly.indvar_next271, 50
  br i1 %exitcond976.not, label %polly.loop_exit269, label %polly.loop_header267

polly.loop_preheader268.loopexit:                 ; preds = %polly.loop_exit256
  %.pre1082 = mul nuw nsw i64 %polly.indvar214, 50
  br label %polly.loop_preheader268

polly.loop_preheader268:                          ; preds = %polly.loop_exit236, %polly.loop_exit236.us, %polly.loop_preheader268.loopexit
  %.pre-phi1083 = phi i64 [ %.pre1082, %polly.loop_preheader268.loopexit ], [ %105, %polly.loop_exit236.us ], [ %105, %polly.loop_exit236 ]
  %119 = sub nsw i64 %102, %.pre-phi1083
  %120 = icmp sgt i64 %119, 0
  %121 = select i1 %120, i64 %119, i64 0
  br label %polly.loop_header267

polly.loop_header273:                             ; preds = %polly.loop_exit282, %polly.loop_header267
  %indvars.iv973 = phi i64 [ %indvars.iv.next974, %polly.loop_exit282 ], [ %103, %polly.loop_header267 ]
  %polly.indvar276 = phi i64 [ %polly.indvar_next277, %polly.loop_exit282 ], [ %121, %polly.loop_header267 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv973, i64 255)
  %122 = add nuw i64 %polly.indvar276, %.pre-phi1083
  %123 = add i64 %122, %101
  %polly.loop_guard2831084 = icmp sgt i64 %123, -1
  br i1 %polly.loop_guard2831084, label %polly.loop_header280.preheader, label %polly.loop_exit282

polly.loop_header280.preheader:                   ; preds = %polly.loop_header273
  %124 = mul i64 %122, 8000
  %125 = add i64 %124, %118
  %scevgep291 = getelementptr i8, i8* %call2, i64 %125
  %scevgep291292 = bitcast i8* %scevgep291 to double*
  %_p_scalar_293 = load double, double* %scevgep291292, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1298 = add nsw i64 %polly.access.mul.Packed_MemRef_call1287, %123
  %polly.access.Packed_MemRef_call1299 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1298
  %_p_scalar_300 = load double, double* %polly.access.Packed_MemRef_call1299, align 8
  %126 = mul i64 %122, 9600
  br label %polly.loop_header280

polly.loop_exit282:                               ; preds = %polly.loop_header280, %polly.loop_header273
  %polly.indvar_next277 = add nuw nsw i64 %polly.indvar276, 1
  %polly.loop_cond278 = icmp ult i64 %polly.indvar276, 49
  %indvars.iv.next974 = add i64 %indvars.iv973, 1
  br i1 %polly.loop_cond278, label %polly.loop_header273, label %polly.loop_exit275

polly.loop_header280:                             ; preds = %polly.loop_header280.preheader, %polly.loop_header280
  %polly.indvar284 = phi i64 [ %polly.indvar_next285, %polly.loop_header280 ], [ 0, %polly.loop_header280.preheader ]
  %127 = add nuw nsw i64 %polly.indvar284, %102
  %polly.access.add.Packed_MemRef_call1288 = add nuw nsw i64 %polly.indvar284, %polly.access.mul.Packed_MemRef_call1287
  %polly.access.Packed_MemRef_call1289 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288
  %_p_scalar_290 = load double, double* %polly.access.Packed_MemRef_call1289, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_293, %_p_scalar_290
  %128 = mul nuw nsw i64 %127, 8000
  %129 = add nuw nsw i64 %128, %118
  %scevgep294 = getelementptr i8, i8* %call2, i64 %129
  %scevgep294295 = bitcast i8* %scevgep294 to double*
  %_p_scalar_296 = load double, double* %scevgep294295, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114 = fmul fast double %_p_scalar_300, %_p_scalar_296
  %130 = shl i64 %127, 3
  %131 = add i64 %130, %126
  %scevgep301 = getelementptr i8, i8* %call, i64 %131
  %scevgep301302 = bitcast i8* %scevgep301 to double*
  %_p_scalar_303 = load double, double* %scevgep301302, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_303
  store double %p_add42.i118, double* %scevgep301302, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next285 = add nuw nsw i64 %polly.indvar284, 1
  %exitcond975.not = icmp eq i64 %polly.indvar284, %smin
  br i1 %exitcond975.not, label %polly.loop_exit282, label %polly.loop_header280

polly.start306:                                   ; preds = %kernel_syr2k.exit
  %malloccall308 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header392

polly.exiting307:                                 ; preds = %polly.loop_exit416
  tail call void @free(i8* %malloccall308)
  br label %kernel_syr2k.exit90

polly.loop_header392:                             ; preds = %polly.loop_exit400, %polly.start306
  %indvar1209 = phi i64 [ %indvar.next1210, %polly.loop_exit400 ], [ 0, %polly.start306 ]
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_exit400 ], [ 1, %polly.start306 ]
  %132 = add i64 %indvar1209, 1
  %133 = mul nuw nsw i64 %polly.indvar395, 9600
  %scevgep404 = getelementptr i8, i8* %call, i64 %133
  %min.iters.check1211 = icmp ult i64 %132, 4
  br i1 %min.iters.check1211, label %polly.loop_header398.preheader, label %vector.ph1212

vector.ph1212:                                    ; preds = %polly.loop_header392
  %n.vec1214 = and i64 %132, -4
  br label %vector.body1208

vector.body1208:                                  ; preds = %vector.body1208, %vector.ph1212
  %index1215 = phi i64 [ 0, %vector.ph1212 ], [ %index.next1216, %vector.body1208 ]
  %134 = shl nuw nsw i64 %index1215, 3
  %135 = getelementptr i8, i8* %scevgep404, i64 %134
  %136 = bitcast i8* %135 to <4 x double>*
  %wide.load1219 = load <4 x double>, <4 x double>* %136, align 8, !alias.scope !78, !noalias !80
  %137 = fmul fast <4 x double> %wide.load1219, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %138 = bitcast i8* %135 to <4 x double>*
  store <4 x double> %137, <4 x double>* %138, align 8, !alias.scope !78, !noalias !80
  %index.next1216 = add i64 %index1215, 4
  %139 = icmp eq i64 %index.next1216, %n.vec1214
  br i1 %139, label %middle.block1206, label %vector.body1208, !llvm.loop !84

middle.block1206:                                 ; preds = %vector.body1208
  %cmp.n1218 = icmp eq i64 %132, %n.vec1214
  br i1 %cmp.n1218, label %polly.loop_exit400, label %polly.loop_header398.preheader

polly.loop_header398.preheader:                   ; preds = %polly.loop_header392, %middle.block1206
  %polly.indvar401.ph = phi i64 [ 0, %polly.loop_header392 ], [ %n.vec1214, %middle.block1206 ]
  br label %polly.loop_header398

polly.loop_exit400:                               ; preds = %polly.loop_header398, %middle.block1206
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond1010.not = icmp eq i64 %polly.indvar_next396, 1200
  %indvar.next1210 = add i64 %indvar1209, 1
  br i1 %exitcond1010.not, label %polly.loop_header408.preheader, label %polly.loop_header392

polly.loop_header408.preheader:                   ; preds = %polly.loop_exit400
  %Packed_MemRef_call1309 = bitcast i8* %malloccall308 to double*
  br label %polly.loop_header408

polly.loop_header398:                             ; preds = %polly.loop_header398.preheader, %polly.loop_header398
  %polly.indvar401 = phi i64 [ %polly.indvar_next402, %polly.loop_header398 ], [ %polly.indvar401.ph, %polly.loop_header398.preheader ]
  %140 = shl nuw nsw i64 %polly.indvar401, 3
  %scevgep405 = getelementptr i8, i8* %scevgep404, i64 %140
  %scevgep405406 = bitcast i8* %scevgep405 to double*
  %_p_scalar_407 = load double, double* %scevgep405406, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_407, 1.200000e+00
  store double %p_mul.i57, double* %scevgep405406, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond1009.not = icmp eq i64 %polly.indvar_next402, %polly.indvar395
  br i1 %exitcond1009.not, label %polly.loop_exit400, label %polly.loop_header398, !llvm.loop !85

polly.loop_header408:                             ; preds = %polly.loop_header408.preheader, %polly.loop_exit416
  %polly.indvar411 = phi i64 [ %polly.indvar_next412, %polly.loop_exit416 ], [ 0, %polly.loop_header408.preheader ]
  %141 = mul nuw nsw i64 %polly.indvar411, 50
  br label %polly.loop_header414

polly.loop_exit416:                               ; preds = %polly.loop_exit422
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond1008.not = icmp eq i64 %polly.indvar_next412, 20
  br i1 %exitcond1008.not, label %polly.exiting307, label %polly.loop_header408

polly.loop_header414:                             ; preds = %polly.loop_exit422, %polly.loop_header408
  %indvars.iv997 = phi i64 [ %indvars.iv.next998, %polly.loop_exit422 ], [ 0, %polly.loop_header408 ]
  %indvars.iv992 = phi i64 [ %indvars.iv.next993, %polly.loop_exit422 ], [ 0, %polly.loop_header408 ]
  %indvars.iv984 = phi i64 [ %indvars.iv.next985, %polly.loop_exit422 ], [ 50, %polly.loop_header408 ]
  %polly.indvar417 = phi i64 [ %polly.indvar_next418, %polly.loop_exit422 ], [ 0, %polly.loop_header408 ]
  %142 = mul nuw nsw i64 %polly.indvar417, 5
  %143 = shl nsw i64 %polly.indvar417, 7
  %144 = or i64 %143, 1
  %145 = mul nsw i64 %polly.indvar417, -256
  %146 = shl nsw i64 %polly.indvar417, 8
  br label %polly.loop_header420

polly.loop_exit422:                               ; preds = %polly.loop_exit484
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %indvars.iv.next985 = add nsw i64 %indvars.iv984, -6
  %indvars.iv.next993 = add nuw nsw i64 %indvars.iv992, 6
  %indvars.iv.next998 = add nsw i64 %indvars.iv997, -6
  %exitcond1007.not = icmp eq i64 %polly.indvar_next418, 5
  br i1 %exitcond1007.not, label %polly.loop_exit416, label %polly.loop_header414

polly.loop_header420:                             ; preds = %polly.loop_exit484, %polly.loop_header414
  %indvars.iv999 = phi i64 [ %indvars.iv.next1000, %polly.loop_exit484 ], [ %indvars.iv997, %polly.loop_header414 ]
  %indvars.iv994 = phi i64 [ %indvars.iv.next995, %polly.loop_exit484 ], [ %indvars.iv992, %polly.loop_header414 ]
  %indvars.iv986 = phi i64 [ %indvars.iv.next987, %polly.loop_exit484 ], [ %indvars.iv984, %polly.loop_header414 ]
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit484 ], [ %142, %polly.loop_header414 ]
  %smax996 = call i64 @llvm.smax.i64(i64 %indvars.iv994, i64 0)
  %147 = add i64 %smax996, %indvars.iv999
  %148 = mul nuw nsw i64 %polly.indvar423, 25
  %.not940 = icmp ult i64 %148, %144
  br i1 %.not940, label %polly.loop_header463, label %polly.loop_header430.preheader

polly.loop_header430.preheader:                   ; preds = %polly.loop_header420
  %149 = mul nuw nsw i64 %polly.indvar423, 50
  %150 = add nsw i64 %149, %145
  %151 = add nsw i64 %150, -1
  %.inv941 = icmp sgt i64 %150, 255
  %152 = select i1 %.inv941, i64 255, i64 %151
  %polly.loop_guard440 = icmp sgt i64 %152, -1
  %153 = add nsw i64 %150, 49
  br i1 %polly.loop_guard440, label %polly.loop_header430.us, label %polly.loop_header430

polly.loop_header430.us:                          ; preds = %polly.loop_header430.preheader, %polly.loop_exit451.us
  %polly.indvar433.us = phi i64 [ %polly.indvar_next434.us, %polly.loop_exit451.us ], [ 0, %polly.loop_header430.preheader ]
  %154 = add nuw nsw i64 %polly.indvar433.us, %141
  %polly.access.mul.Packed_MemRef_call1309.us = mul nuw nsw i64 %polly.indvar433.us, 1200
  br label %polly.loop_header437.us

polly.loop_header437.us:                          ; preds = %polly.loop_header430.us, %polly.loop_header437.us
  %polly.indvar441.us = phi i64 [ %polly.indvar_next442.us, %polly.loop_header437.us ], [ 0, %polly.loop_header430.us ]
  %155 = add nuw nsw i64 %polly.indvar441.us, %146
  %polly.access.mul.call1445.us = mul nuw nsw i64 %155, 1000
  %polly.access.add.call1446.us = add nuw nsw i64 %154, %polly.access.mul.call1445.us
  %polly.access.call1447.us = getelementptr double, double* %polly.access.cast.call1738, i64 %polly.access.add.call1446.us
  %polly.access.call1447.load.us = load double, double* %polly.access.call1447.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1309.us = add nuw nsw i64 %polly.indvar441.us, %polly.access.mul.Packed_MemRef_call1309.us
  %polly.access.Packed_MemRef_call1309.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us
  store double %polly.access.call1447.load.us, double* %polly.access.Packed_MemRef_call1309.us, align 8
  %polly.indvar_next442.us = add nuw i64 %polly.indvar441.us, 1
  %exitcond983.not = icmp eq i64 %polly.indvar441.us, %152
  br i1 %exitcond983.not, label %polly.loop_header449.us, label %polly.loop_header437.us

polly.loop_header449.us:                          ; preds = %polly.loop_header437.us, %polly.loop_header449.us
  %polly.indvar453.us = phi i64 [ %polly.indvar_next454.us, %polly.loop_header449.us ], [ %150, %polly.loop_header437.us ]
  %156 = add nsw i64 %polly.indvar453.us, %146
  %polly.access.mul.call1457.us = mul nuw nsw i64 %156, 1000
  %polly.access.add.call1458.us = add nuw nsw i64 %154, %polly.access.mul.call1457.us
  %polly.access.call1459.us = getelementptr double, double* %polly.access.cast.call1738, i64 %polly.access.add.call1458.us
  %polly.access.call1459.load.us = load double, double* %polly.access.call1459.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1309461.us = add nsw i64 %polly.indvar453.us, %polly.access.mul.Packed_MemRef_call1309.us
  %polly.access.Packed_MemRef_call1309462.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309461.us
  store double %polly.access.call1459.load.us, double* %polly.access.Packed_MemRef_call1309462.us, align 8
  %polly.indvar_next454.us = add nsw i64 %polly.indvar453.us, 1
  %exitcond988.not = icmp eq i64 %polly.indvar_next454.us, %indvars.iv986
  br i1 %exitcond988.not, label %polly.loop_exit451.us, label %polly.loop_header449.us

polly.loop_exit451.us:                            ; preds = %polly.loop_header449.us
  %polly.indvar_next434.us = add nuw nsw i64 %polly.indvar433.us, 1
  %exitcond989.not = icmp eq i64 %polly.indvar_next434.us, 50
  br i1 %exitcond989.not, label %polly.loop_preheader483, label %polly.loop_header430.us

polly.loop_exit484:                               ; preds = %polly.loop_exit490
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next987 = add nuw nsw i64 %indvars.iv986, 50
  %indvars.iv.next995 = add nsw i64 %indvars.iv994, -50
  %indvars.iv.next1000 = add nsw i64 %indvars.iv999, 50
  %exitcond1006.not = icmp eq i64 %polly.indvar_next424, 24
  br i1 %exitcond1006.not, label %polly.loop_exit422, label %polly.loop_header420

polly.loop_header430:                             ; preds = %polly.loop_header430.preheader, %polly.loop_exit451
  %polly.indvar433 = phi i64 [ %polly.indvar_next434, %polly.loop_exit451 ], [ 0, %polly.loop_header430.preheader ]
  %157 = add nuw nsw i64 %polly.indvar433, %141
  %polly.access.mul.Packed_MemRef_call1309460 = mul nuw nsw i64 %polly.indvar433, 1200
  br label %polly.loop_header449

polly.loop_exit451:                               ; preds = %polly.loop_header449
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %exitcond982.not = icmp eq i64 %polly.indvar_next434, 50
  br i1 %exitcond982.not, label %polly.loop_preheader483, label %polly.loop_header430

polly.loop_header449:                             ; preds = %polly.loop_header430, %polly.loop_header449
  %polly.indvar453 = phi i64 [ %polly.indvar_next454, %polly.loop_header449 ], [ %150, %polly.loop_header430 ]
  %158 = add nsw i64 %polly.indvar453, %146
  %polly.access.mul.call1457 = mul nuw nsw i64 %158, 1000
  %polly.access.add.call1458 = add nuw nsw i64 %157, %polly.access.mul.call1457
  %polly.access.call1459 = getelementptr double, double* %polly.access.cast.call1738, i64 %polly.access.add.call1458
  %polly.access.call1459.load = load double, double* %polly.access.call1459, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1309461 = add nsw i64 %polly.indvar453, %polly.access.mul.Packed_MemRef_call1309460
  %polly.access.Packed_MemRef_call1309462 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309461
  store double %polly.access.call1459.load, double* %polly.access.Packed_MemRef_call1309462, align 8
  %polly.indvar_next454 = add nsw i64 %polly.indvar453, 1
  %polly.loop_cond455.not.not = icmp slt i64 %polly.indvar453, %153
  br i1 %polly.loop_cond455.not.not, label %polly.loop_header449, label %polly.loop_exit451

polly.loop_header463:                             ; preds = %polly.loop_header420, %polly.loop_exit471
  %polly.indvar466 = phi i64 [ %polly.indvar_next467, %polly.loop_exit471 ], [ 0, %polly.loop_header420 ]
  %159 = add nuw nsw i64 %polly.indvar466, %141
  %polly.access.mul.Packed_MemRef_call1309479 = mul nuw nsw i64 %polly.indvar466, 1200
  br label %polly.loop_header469

polly.loop_exit471:                               ; preds = %polly.loop_header469
  %polly.indvar_next467 = add nuw nsw i64 %polly.indvar466, 1
  %exitcond991.not = icmp eq i64 %polly.indvar_next467, 50
  br i1 %exitcond991.not, label %polly.loop_preheader483.loopexit, label %polly.loop_header463

polly.loop_header469:                             ; preds = %polly.loop_header469, %polly.loop_header463
  %polly.indvar472 = phi i64 [ 0, %polly.loop_header463 ], [ %polly.indvar_next473, %polly.loop_header469 ]
  %160 = add nuw nsw i64 %polly.indvar472, %146
  %polly.access.mul.call1476 = mul nuw nsw i64 %160, 1000
  %polly.access.add.call1477 = add nuw nsw i64 %159, %polly.access.mul.call1476
  %polly.access.call1478 = getelementptr double, double* %polly.access.cast.call1738, i64 %polly.access.add.call1477
  %polly.access.call1478.load = load double, double* %polly.access.call1478, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1309480 = add nuw nsw i64 %polly.indvar472, %polly.access.mul.Packed_MemRef_call1309479
  %polly.access.Packed_MemRef_call1309481 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309480
  store double %polly.access.call1478.load, double* %polly.access.Packed_MemRef_call1309481, align 8
  %polly.indvar_next473 = add nuw nsw i64 %polly.indvar472, 1
  %exitcond990.not = icmp eq i64 %polly.indvar_next473, %indvars.iv984
  br i1 %exitcond990.not, label %polly.loop_exit471, label %polly.loop_header469

polly.loop_header482:                             ; preds = %polly.loop_exit490, %polly.loop_preheader483
  %polly.indvar485 = phi i64 [ 0, %polly.loop_preheader483 ], [ %polly.indvar_next486, %polly.loop_exit490 ]
  %161 = add nuw nsw i64 %polly.indvar485, %141
  %polly.access.mul.Packed_MemRef_call1309502 = mul nuw nsw i64 %polly.indvar485, 1200
  %162 = shl i64 %161, 3
  br label %polly.loop_header488

polly.loop_exit490:                               ; preds = %polly.loop_exit497
  %polly.indvar_next486 = add nuw nsw i64 %polly.indvar485, 1
  %exitcond1005.not = icmp eq i64 %polly.indvar_next486, 50
  br i1 %exitcond1005.not, label %polly.loop_exit484, label %polly.loop_header482

polly.loop_preheader483.loopexit:                 ; preds = %polly.loop_exit471
  %.pre1080 = mul nuw nsw i64 %polly.indvar423, 50
  br label %polly.loop_preheader483

polly.loop_preheader483:                          ; preds = %polly.loop_exit451, %polly.loop_exit451.us, %polly.loop_preheader483.loopexit
  %.pre-phi1081 = phi i64 [ %.pre1080, %polly.loop_preheader483.loopexit ], [ %149, %polly.loop_exit451.us ], [ %149, %polly.loop_exit451 ]
  %163 = sub nsw i64 %146, %.pre-phi1081
  %164 = icmp sgt i64 %163, 0
  %165 = select i1 %164, i64 %163, i64 0
  br label %polly.loop_header482

polly.loop_header488:                             ; preds = %polly.loop_exit497, %polly.loop_header482
  %indvars.iv1001 = phi i64 [ %indvars.iv.next1002, %polly.loop_exit497 ], [ %147, %polly.loop_header482 ]
  %polly.indvar491 = phi i64 [ %polly.indvar_next492, %polly.loop_exit497 ], [ %165, %polly.loop_header482 ]
  %smin1003 = call i64 @llvm.smin.i64(i64 %indvars.iv1001, i64 255)
  %166 = add nuw i64 %polly.indvar491, %.pre-phi1081
  %167 = add i64 %166, %145
  %polly.loop_guard4981085 = icmp sgt i64 %167, -1
  br i1 %polly.loop_guard4981085, label %polly.loop_header495.preheader, label %polly.loop_exit497

polly.loop_header495.preheader:                   ; preds = %polly.loop_header488
  %168 = mul i64 %166, 8000
  %169 = add i64 %168, %162
  %scevgep506 = getelementptr i8, i8* %call2, i64 %169
  %scevgep506507 = bitcast i8* %scevgep506 to double*
  %_p_scalar_508 = load double, double* %scevgep506507, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1309513 = add nsw i64 %polly.access.mul.Packed_MemRef_call1309502, %167
  %polly.access.Packed_MemRef_call1309514 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309513
  %_p_scalar_515 = load double, double* %polly.access.Packed_MemRef_call1309514, align 8
  %170 = mul i64 %166, 9600
  br label %polly.loop_header495

polly.loop_exit497:                               ; preds = %polly.loop_header495, %polly.loop_header488
  %polly.indvar_next492 = add nuw nsw i64 %polly.indvar491, 1
  %polly.loop_cond493 = icmp ult i64 %polly.indvar491, 49
  %indvars.iv.next1002 = add i64 %indvars.iv1001, 1
  br i1 %polly.loop_cond493, label %polly.loop_header488, label %polly.loop_exit490

polly.loop_header495:                             ; preds = %polly.loop_header495.preheader, %polly.loop_header495
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_header495 ], [ 0, %polly.loop_header495.preheader ]
  %171 = add nuw nsw i64 %polly.indvar499, %146
  %polly.access.add.Packed_MemRef_call1309503 = add nuw nsw i64 %polly.indvar499, %polly.access.mul.Packed_MemRef_call1309502
  %polly.access.Packed_MemRef_call1309504 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309503
  %_p_scalar_505 = load double, double* %polly.access.Packed_MemRef_call1309504, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_508, %_p_scalar_505
  %172 = mul nuw nsw i64 %171, 8000
  %173 = add nuw nsw i64 %172, %162
  %scevgep509 = getelementptr i8, i8* %call2, i64 %173
  %scevgep509510 = bitcast i8* %scevgep509 to double*
  %_p_scalar_511 = load double, double* %scevgep509510, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75 = fmul fast double %_p_scalar_515, %_p_scalar_511
  %174 = shl i64 %171, 3
  %175 = add i64 %174, %170
  %scevgep516 = getelementptr i8, i8* %call, i64 %175
  %scevgep516517 = bitcast i8* %scevgep516 to double*
  %_p_scalar_518 = load double, double* %scevgep516517, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_518
  store double %p_add42.i79, double* %scevgep516517, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond1004.not = icmp eq i64 %polly.indvar499, %smin1003
  br i1 %exitcond1004.not, label %polly.loop_exit497, label %polly.loop_header495

polly.start521:                                   ; preds = %init_array.exit
  %malloccall523 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header607

polly.exiting522:                                 ; preds = %polly.loop_exit631
  tail call void @free(i8* %malloccall523)
  br label %kernel_syr2k.exit

polly.loop_header607:                             ; preds = %polly.loop_exit615, %polly.start521
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit615 ], [ 0, %polly.start521 ]
  %polly.indvar610 = phi i64 [ %polly.indvar_next611, %polly.loop_exit615 ], [ 1, %polly.start521 ]
  %176 = add i64 %indvar, 1
  %177 = mul nuw nsw i64 %polly.indvar610, 9600
  %scevgep619 = getelementptr i8, i8* %call, i64 %177
  %min.iters.check1185 = icmp ult i64 %176, 4
  br i1 %min.iters.check1185, label %polly.loop_header613.preheader, label %vector.ph1186

vector.ph1186:                                    ; preds = %polly.loop_header607
  %n.vec1188 = and i64 %176, -4
  br label %vector.body1184

vector.body1184:                                  ; preds = %vector.body1184, %vector.ph1186
  %index1189 = phi i64 [ 0, %vector.ph1186 ], [ %index.next1190, %vector.body1184 ]
  %178 = shl nuw nsw i64 %index1189, 3
  %179 = getelementptr i8, i8* %scevgep619, i64 %178
  %180 = bitcast i8* %179 to <4 x double>*
  %wide.load1193 = load <4 x double>, <4 x double>* %180, align 8, !alias.scope !88, !noalias !90
  %181 = fmul fast <4 x double> %wide.load1193, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %182 = bitcast i8* %179 to <4 x double>*
  store <4 x double> %181, <4 x double>* %182, align 8, !alias.scope !88, !noalias !90
  %index.next1190 = add i64 %index1189, 4
  %183 = icmp eq i64 %index.next1190, %n.vec1188
  br i1 %183, label %middle.block1182, label %vector.body1184, !llvm.loop !94

middle.block1182:                                 ; preds = %vector.body1184
  %cmp.n1192 = icmp eq i64 %176, %n.vec1188
  br i1 %cmp.n1192, label %polly.loop_exit615, label %polly.loop_header613.preheader

polly.loop_header613.preheader:                   ; preds = %polly.loop_header607, %middle.block1182
  %polly.indvar616.ph = phi i64 [ 0, %polly.loop_header607 ], [ %n.vec1188, %middle.block1182 ]
  br label %polly.loop_header613

polly.loop_exit615:                               ; preds = %polly.loop_header613, %middle.block1182
  %polly.indvar_next611 = add nuw nsw i64 %polly.indvar610, 1
  %exitcond1039.not = icmp eq i64 %polly.indvar_next611, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1039.not, label %polly.loop_header623.preheader, label %polly.loop_header607

polly.loop_header623.preheader:                   ; preds = %polly.loop_exit615
  %Packed_MemRef_call1524 = bitcast i8* %malloccall523 to double*
  br label %polly.loop_header623

polly.loop_header613:                             ; preds = %polly.loop_header613.preheader, %polly.loop_header613
  %polly.indvar616 = phi i64 [ %polly.indvar_next617, %polly.loop_header613 ], [ %polly.indvar616.ph, %polly.loop_header613.preheader ]
  %184 = shl nuw nsw i64 %polly.indvar616, 3
  %scevgep620 = getelementptr i8, i8* %scevgep619, i64 %184
  %scevgep620621 = bitcast i8* %scevgep620 to double*
  %_p_scalar_622 = load double, double* %scevgep620621, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_622, 1.200000e+00
  store double %p_mul.i, double* %scevgep620621, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next617 = add nuw nsw i64 %polly.indvar616, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar_next617, %polly.indvar610
  br i1 %exitcond1038.not, label %polly.loop_exit615, label %polly.loop_header613, !llvm.loop !95

polly.loop_header623:                             ; preds = %polly.loop_header623.preheader, %polly.loop_exit631
  %polly.indvar626 = phi i64 [ %polly.indvar_next627, %polly.loop_exit631 ], [ 0, %polly.loop_header623.preheader ]
  %185 = mul nuw nsw i64 %polly.indvar626, 50
  br label %polly.loop_header629

polly.loop_exit631:                               ; preds = %polly.loop_exit637
  %polly.indvar_next627 = add nuw nsw i64 %polly.indvar626, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar_next627, 20
  br i1 %exitcond1037.not, label %polly.exiting522, label %polly.loop_header623

polly.loop_header629:                             ; preds = %polly.loop_exit637, %polly.loop_header623
  %indvars.iv1026 = phi i64 [ %indvars.iv.next1027, %polly.loop_exit637 ], [ 0, %polly.loop_header623 ]
  %indvars.iv1021 = phi i64 [ %indvars.iv.next1022, %polly.loop_exit637 ], [ 0, %polly.loop_header623 ]
  %indvars.iv1013 = phi i64 [ %indvars.iv.next1014, %polly.loop_exit637 ], [ 50, %polly.loop_header623 ]
  %polly.indvar632 = phi i64 [ %polly.indvar_next633, %polly.loop_exit637 ], [ 0, %polly.loop_header623 ]
  %186 = mul nuw nsw i64 %polly.indvar632, 5
  %187 = shl nsw i64 %polly.indvar632, 7
  %188 = or i64 %187, 1
  %189 = mul nsw i64 %polly.indvar632, -256
  %190 = shl nsw i64 %polly.indvar632, 8
  br label %polly.loop_header635

polly.loop_exit637:                               ; preds = %polly.loop_exit699
  %polly.indvar_next633 = add nuw nsw i64 %polly.indvar632, 1
  %indvars.iv.next1014 = add nsw i64 %indvars.iv1013, -6
  %indvars.iv.next1022 = add nuw nsw i64 %indvars.iv1021, 6
  %indvars.iv.next1027 = add nsw i64 %indvars.iv1026, -6
  %exitcond1036.not = icmp eq i64 %polly.indvar_next633, 5
  br i1 %exitcond1036.not, label %polly.loop_exit631, label %polly.loop_header629

polly.loop_header635:                             ; preds = %polly.loop_exit699, %polly.loop_header629
  %indvars.iv1028 = phi i64 [ %indvars.iv.next1029, %polly.loop_exit699 ], [ %indvars.iv1026, %polly.loop_header629 ]
  %indvars.iv1023 = phi i64 [ %indvars.iv.next1024, %polly.loop_exit699 ], [ %indvars.iv1021, %polly.loop_header629 ]
  %indvars.iv1015 = phi i64 [ %indvars.iv.next1016, %polly.loop_exit699 ], [ %indvars.iv1013, %polly.loop_header629 ]
  %polly.indvar638 = phi i64 [ %polly.indvar_next639, %polly.loop_exit699 ], [ %186, %polly.loop_header629 ]
  %smax1025 = call i64 @llvm.smax.i64(i64 %indvars.iv1023, i64 0)
  %191 = add i64 %smax1025, %indvars.iv1028
  %192 = mul nuw nsw i64 %polly.indvar638, 25
  %.not942 = icmp ult i64 %192, %188
  br i1 %.not942, label %polly.loop_header678, label %polly.loop_header645.preheader

polly.loop_header645.preheader:                   ; preds = %polly.loop_header635
  %193 = mul nuw nsw i64 %polly.indvar638, 50
  %194 = add nsw i64 %193, %189
  %195 = add nsw i64 %194, -1
  %.inv943 = icmp sgt i64 %194, 255
  %196 = select i1 %.inv943, i64 255, i64 %195
  %polly.loop_guard655 = icmp sgt i64 %196, -1
  %197 = add nsw i64 %194, 49
  br i1 %polly.loop_guard655, label %polly.loop_header645.us, label %polly.loop_header645

polly.loop_header645.us:                          ; preds = %polly.loop_header645.preheader, %polly.loop_exit666.us
  %polly.indvar648.us = phi i64 [ %polly.indvar_next649.us, %polly.loop_exit666.us ], [ 0, %polly.loop_header645.preheader ]
  %198 = add nuw nsw i64 %polly.indvar648.us, %185
  %polly.access.mul.Packed_MemRef_call1524.us = mul nuw nsw i64 %polly.indvar648.us, 1200
  br label %polly.loop_header652.us

polly.loop_header652.us:                          ; preds = %polly.loop_header645.us, %polly.loop_header652.us
  %polly.indvar656.us = phi i64 [ %polly.indvar_next657.us, %polly.loop_header652.us ], [ 0, %polly.loop_header645.us ]
  %199 = add nuw nsw i64 %polly.indvar656.us, %190
  %polly.access.mul.call1660.us = mul nuw nsw i64 %199, 1000
  %polly.access.add.call1661.us = add nuw nsw i64 %198, %polly.access.mul.call1660.us
  %polly.access.call1662.us = getelementptr double, double* %polly.access.cast.call1738, i64 %polly.access.add.call1661.us
  %polly.access.call1662.load.us = load double, double* %polly.access.call1662.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1524.us = add nuw nsw i64 %polly.indvar656.us, %polly.access.mul.Packed_MemRef_call1524.us
  %polly.access.Packed_MemRef_call1524.us = getelementptr double, double* %Packed_MemRef_call1524, i64 %polly.access.add.Packed_MemRef_call1524.us
  store double %polly.access.call1662.load.us, double* %polly.access.Packed_MemRef_call1524.us, align 8
  %polly.indvar_next657.us = add nuw i64 %polly.indvar656.us, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar656.us, %196
  br i1 %exitcond1012.not, label %polly.loop_header664.us, label %polly.loop_header652.us

polly.loop_header664.us:                          ; preds = %polly.loop_header652.us, %polly.loop_header664.us
  %polly.indvar668.us = phi i64 [ %polly.indvar_next669.us, %polly.loop_header664.us ], [ %194, %polly.loop_header652.us ]
  %200 = add nsw i64 %polly.indvar668.us, %190
  %polly.access.mul.call1672.us = mul nuw nsw i64 %200, 1000
  %polly.access.add.call1673.us = add nuw nsw i64 %198, %polly.access.mul.call1672.us
  %polly.access.call1674.us = getelementptr double, double* %polly.access.cast.call1738, i64 %polly.access.add.call1673.us
  %polly.access.call1674.load.us = load double, double* %polly.access.call1674.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1524676.us = add nsw i64 %polly.indvar668.us, %polly.access.mul.Packed_MemRef_call1524.us
  %polly.access.Packed_MemRef_call1524677.us = getelementptr double, double* %Packed_MemRef_call1524, i64 %polly.access.add.Packed_MemRef_call1524676.us
  store double %polly.access.call1674.load.us, double* %polly.access.Packed_MemRef_call1524677.us, align 8
  %polly.indvar_next669.us = add nsw i64 %polly.indvar668.us, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar_next669.us, %indvars.iv1015
  br i1 %exitcond1017.not, label %polly.loop_exit666.us, label %polly.loop_header664.us

polly.loop_exit666.us:                            ; preds = %polly.loop_header664.us
  %polly.indvar_next649.us = add nuw nsw i64 %polly.indvar648.us, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next649.us, 50
  br i1 %exitcond1018.not, label %polly.loop_preheader698, label %polly.loop_header645.us

polly.loop_exit699:                               ; preds = %polly.loop_exit705
  %polly.indvar_next639 = add nuw nsw i64 %polly.indvar638, 1
  %indvars.iv.next1016 = add nuw nsw i64 %indvars.iv1015, 50
  %indvars.iv.next1024 = add nsw i64 %indvars.iv1023, -50
  %indvars.iv.next1029 = add nsw i64 %indvars.iv1028, 50
  %exitcond1035.not = icmp eq i64 %polly.indvar_next639, 24
  br i1 %exitcond1035.not, label %polly.loop_exit637, label %polly.loop_header635

polly.loop_header645:                             ; preds = %polly.loop_header645.preheader, %polly.loop_exit666
  %polly.indvar648 = phi i64 [ %polly.indvar_next649, %polly.loop_exit666 ], [ 0, %polly.loop_header645.preheader ]
  %201 = add nuw nsw i64 %polly.indvar648, %185
  %polly.access.mul.Packed_MemRef_call1524675 = mul nuw nsw i64 %polly.indvar648, 1200
  br label %polly.loop_header664

polly.loop_exit666:                               ; preds = %polly.loop_header664
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar_next649, 50
  br i1 %exitcond1011.not, label %polly.loop_preheader698, label %polly.loop_header645

polly.loop_header664:                             ; preds = %polly.loop_header645, %polly.loop_header664
  %polly.indvar668 = phi i64 [ %polly.indvar_next669, %polly.loop_header664 ], [ %194, %polly.loop_header645 ]
  %202 = add nsw i64 %polly.indvar668, %190
  %polly.access.mul.call1672 = mul nuw nsw i64 %202, 1000
  %polly.access.add.call1673 = add nuw nsw i64 %201, %polly.access.mul.call1672
  %polly.access.call1674 = getelementptr double, double* %polly.access.cast.call1738, i64 %polly.access.add.call1673
  %polly.access.call1674.load = load double, double* %polly.access.call1674, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1524676 = add nsw i64 %polly.indvar668, %polly.access.mul.Packed_MemRef_call1524675
  %polly.access.Packed_MemRef_call1524677 = getelementptr double, double* %Packed_MemRef_call1524, i64 %polly.access.add.Packed_MemRef_call1524676
  store double %polly.access.call1674.load, double* %polly.access.Packed_MemRef_call1524677, align 8
  %polly.indvar_next669 = add nsw i64 %polly.indvar668, 1
  %polly.loop_cond670.not.not = icmp slt i64 %polly.indvar668, %197
  br i1 %polly.loop_cond670.not.not, label %polly.loop_header664, label %polly.loop_exit666

polly.loop_header678:                             ; preds = %polly.loop_header635, %polly.loop_exit686
  %polly.indvar681 = phi i64 [ %polly.indvar_next682, %polly.loop_exit686 ], [ 0, %polly.loop_header635 ]
  %203 = add nuw nsw i64 %polly.indvar681, %185
  %polly.access.mul.Packed_MemRef_call1524694 = mul nuw nsw i64 %polly.indvar681, 1200
  br label %polly.loop_header684

polly.loop_exit686:                               ; preds = %polly.loop_header684
  %polly.indvar_next682 = add nuw nsw i64 %polly.indvar681, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar_next682, 50
  br i1 %exitcond1020.not, label %polly.loop_preheader698.loopexit, label %polly.loop_header678

polly.loop_header684:                             ; preds = %polly.loop_header684, %polly.loop_header678
  %polly.indvar687 = phi i64 [ 0, %polly.loop_header678 ], [ %polly.indvar_next688, %polly.loop_header684 ]
  %204 = add nuw nsw i64 %polly.indvar687, %190
  %polly.access.mul.call1691 = mul nuw nsw i64 %204, 1000
  %polly.access.add.call1692 = add nuw nsw i64 %203, %polly.access.mul.call1691
  %polly.access.call1693 = getelementptr double, double* %polly.access.cast.call1738, i64 %polly.access.add.call1692
  %polly.access.call1693.load = load double, double* %polly.access.call1693, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1524695 = add nuw nsw i64 %polly.indvar687, %polly.access.mul.Packed_MemRef_call1524694
  %polly.access.Packed_MemRef_call1524696 = getelementptr double, double* %Packed_MemRef_call1524, i64 %polly.access.add.Packed_MemRef_call1524695
  store double %polly.access.call1693.load, double* %polly.access.Packed_MemRef_call1524696, align 8
  %polly.indvar_next688 = add nuw nsw i64 %polly.indvar687, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar_next688, %indvars.iv1013
  br i1 %exitcond1019.not, label %polly.loop_exit686, label %polly.loop_header684

polly.loop_header697:                             ; preds = %polly.loop_exit705, %polly.loop_preheader698
  %polly.indvar700 = phi i64 [ 0, %polly.loop_preheader698 ], [ %polly.indvar_next701, %polly.loop_exit705 ]
  %205 = add nuw nsw i64 %polly.indvar700, %185
  %polly.access.mul.Packed_MemRef_call1524717 = mul nuw nsw i64 %polly.indvar700, 1200
  %206 = shl i64 %205, 3
  br label %polly.loop_header703

polly.loop_exit705:                               ; preds = %polly.loop_exit712
  %polly.indvar_next701 = add nuw nsw i64 %polly.indvar700, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next701, 50
  br i1 %exitcond1034.not, label %polly.loop_exit699, label %polly.loop_header697

polly.loop_preheader698.loopexit:                 ; preds = %polly.loop_exit686
  %.pre = mul nuw nsw i64 %polly.indvar638, 50
  br label %polly.loop_preheader698

polly.loop_preheader698:                          ; preds = %polly.loop_exit666, %polly.loop_exit666.us, %polly.loop_preheader698.loopexit
  %.pre-phi = phi i64 [ %.pre, %polly.loop_preheader698.loopexit ], [ %193, %polly.loop_exit666.us ], [ %193, %polly.loop_exit666 ]
  %207 = sub nsw i64 %190, %.pre-phi
  %208 = icmp sgt i64 %207, 0
  %209 = select i1 %208, i64 %207, i64 0
  br label %polly.loop_header697

polly.loop_header703:                             ; preds = %polly.loop_exit712, %polly.loop_header697
  %indvars.iv1030 = phi i64 [ %indvars.iv.next1031, %polly.loop_exit712 ], [ %191, %polly.loop_header697 ]
  %polly.indvar706 = phi i64 [ %polly.indvar_next707, %polly.loop_exit712 ], [ %209, %polly.loop_header697 ]
  %smin1032 = call i64 @llvm.smin.i64(i64 %indvars.iv1030, i64 255)
  %210 = add nuw i64 %polly.indvar706, %.pre-phi
  %211 = add i64 %210, %189
  %polly.loop_guard7131086 = icmp sgt i64 %211, -1
  br i1 %polly.loop_guard7131086, label %polly.loop_header710.preheader, label %polly.loop_exit712

polly.loop_header710.preheader:                   ; preds = %polly.loop_header703
  %212 = mul i64 %210, 8000
  %213 = add i64 %212, %206
  %scevgep721 = getelementptr i8, i8* %call2, i64 %213
  %scevgep721722 = bitcast i8* %scevgep721 to double*
  %_p_scalar_723 = load double, double* %scevgep721722, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1524728 = add nsw i64 %polly.access.mul.Packed_MemRef_call1524717, %211
  %polly.access.Packed_MemRef_call1524729 = getelementptr double, double* %Packed_MemRef_call1524, i64 %polly.access.add.Packed_MemRef_call1524728
  %_p_scalar_730 = load double, double* %polly.access.Packed_MemRef_call1524729, align 8
  %214 = mul i64 %210, 9600
  br label %polly.loop_header710

polly.loop_exit712:                               ; preds = %polly.loop_header710, %polly.loop_header703
  %polly.indvar_next707 = add nuw nsw i64 %polly.indvar706, 1
  %polly.loop_cond708 = icmp ult i64 %polly.indvar706, 49
  %indvars.iv.next1031 = add i64 %indvars.iv1030, 1
  br i1 %polly.loop_cond708, label %polly.loop_header703, label %polly.loop_exit705

polly.loop_header710:                             ; preds = %polly.loop_header710.preheader, %polly.loop_header710
  %polly.indvar714 = phi i64 [ %polly.indvar_next715, %polly.loop_header710 ], [ 0, %polly.loop_header710.preheader ]
  %215 = add nuw nsw i64 %polly.indvar714, %190
  %polly.access.add.Packed_MemRef_call1524718 = add nuw nsw i64 %polly.indvar714, %polly.access.mul.Packed_MemRef_call1524717
  %polly.access.Packed_MemRef_call1524719 = getelementptr double, double* %Packed_MemRef_call1524, i64 %polly.access.add.Packed_MemRef_call1524718
  %_p_scalar_720 = load double, double* %polly.access.Packed_MemRef_call1524719, align 8
  %p_mul27.i = fmul fast double %_p_scalar_723, %_p_scalar_720
  %216 = mul nuw nsw i64 %215, 8000
  %217 = add nuw nsw i64 %216, %206
  %scevgep724 = getelementptr i8, i8* %call2, i64 %217
  %scevgep724725 = bitcast i8* %scevgep724 to double*
  %_p_scalar_726 = load double, double* %scevgep724725, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i = fmul fast double %_p_scalar_730, %_p_scalar_726
  %218 = shl i64 %215, 3
  %219 = add i64 %218, %214
  %scevgep731 = getelementptr i8, i8* %call, i64 %219
  %scevgep731732 = bitcast i8* %scevgep731 to double*
  %_p_scalar_733 = load double, double* %scevgep731732, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_733
  store double %p_add42.i, double* %scevgep731732, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next715 = add nuw nsw i64 %polly.indvar714, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar714, %smin1032
  br i1 %exitcond1033.not, label %polly.loop_exit712, label %polly.loop_header710

polly.loop_header860:                             ; preds = %entry, %polly.loop_exit868
  %indvars.iv1064 = phi i64 [ %indvars.iv.next1065, %polly.loop_exit868 ], [ 0, %entry ]
  %polly.indvar863 = phi i64 [ %polly.indvar_next864, %polly.loop_exit868 ], [ 0, %entry ]
  %smin1066 = call i64 @llvm.smin.i64(i64 %indvars.iv1064, i64 -1168)
  %220 = shl nsw i64 %polly.indvar863, 5
  %221 = add nsw i64 %smin1066, 1199
  br label %polly.loop_header866

polly.loop_exit868:                               ; preds = %polly.loop_exit874
  %polly.indvar_next864 = add nuw nsw i64 %polly.indvar863, 1
  %indvars.iv.next1065 = add nsw i64 %indvars.iv1064, -32
  %exitcond1069.not = icmp eq i64 %polly.indvar_next864, 38
  br i1 %exitcond1069.not, label %polly.loop_header887, label %polly.loop_header860

polly.loop_header866:                             ; preds = %polly.loop_exit874, %polly.loop_header860
  %indvars.iv1060 = phi i64 [ %indvars.iv.next1061, %polly.loop_exit874 ], [ 0, %polly.loop_header860 ]
  %polly.indvar869 = phi i64 [ %polly.indvar_next870, %polly.loop_exit874 ], [ 0, %polly.loop_header860 ]
  %222 = mul nsw i64 %polly.indvar869, -32
  %smin1123 = call i64 @llvm.smin.i64(i64 %222, i64 -1168)
  %223 = add nsw i64 %smin1123, 1200
  %smin1062 = call i64 @llvm.smin.i64(i64 %indvars.iv1060, i64 -1168)
  %224 = shl nsw i64 %polly.indvar869, 5
  %225 = add nsw i64 %smin1062, 1199
  br label %polly.loop_header872

polly.loop_exit874:                               ; preds = %polly.loop_exit880
  %polly.indvar_next870 = add nuw nsw i64 %polly.indvar869, 1
  %indvars.iv.next1061 = add nsw i64 %indvars.iv1060, -32
  %exitcond1068.not = icmp eq i64 %polly.indvar_next870, 38
  br i1 %exitcond1068.not, label %polly.loop_exit868, label %polly.loop_header866

polly.loop_header872:                             ; preds = %polly.loop_exit880, %polly.loop_header866
  %polly.indvar875 = phi i64 [ 0, %polly.loop_header866 ], [ %polly.indvar_next876, %polly.loop_exit880 ]
  %226 = add nuw nsw i64 %polly.indvar875, %220
  %227 = trunc i64 %226 to i32
  %228 = mul nuw nsw i64 %226, 9600
  %min.iters.check = icmp eq i64 %223, 0
  br i1 %min.iters.check, label %polly.loop_header878, label %vector.ph1124

vector.ph1124:                                    ; preds = %polly.loop_header872
  %broadcast.splatinsert1131 = insertelement <4 x i64> poison, i64 %224, i32 0
  %broadcast.splat1132 = shufflevector <4 x i64> %broadcast.splatinsert1131, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1133 = insertelement <4 x i32> poison, i32 %227, i32 0
  %broadcast.splat1134 = shufflevector <4 x i32> %broadcast.splatinsert1133, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1122

vector.body1122:                                  ; preds = %vector.body1122, %vector.ph1124
  %index1125 = phi i64 [ 0, %vector.ph1124 ], [ %index.next1126, %vector.body1122 ]
  %vec.ind1129 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1124 ], [ %vec.ind.next1130, %vector.body1122 ]
  %229 = add nuw nsw <4 x i64> %vec.ind1129, %broadcast.splat1132
  %230 = trunc <4 x i64> %229 to <4 x i32>
  %231 = mul <4 x i32> %broadcast.splat1134, %230
  %232 = add <4 x i32> %231, <i32 3, i32 3, i32 3, i32 3>
  %233 = urem <4 x i32> %232, <i32 1200, i32 1200, i32 1200, i32 1200>
  %234 = sitofp <4 x i32> %233 to <4 x double>
  %235 = fmul fast <4 x double> %234, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %236 = extractelement <4 x i64> %229, i32 0
  %237 = shl i64 %236, 3
  %238 = add nuw nsw i64 %237, %228
  %239 = getelementptr i8, i8* %call, i64 %238
  %240 = bitcast i8* %239 to <4 x double>*
  store <4 x double> %235, <4 x double>* %240, align 8, !alias.scope !98, !noalias !100
  %index.next1126 = add i64 %index1125, 4
  %vec.ind.next1130 = add <4 x i64> %vec.ind1129, <i64 4, i64 4, i64 4, i64 4>
  %241 = icmp eq i64 %index.next1126, %223
  br i1 %241, label %polly.loop_exit880, label %vector.body1122, !llvm.loop !103

polly.loop_exit880:                               ; preds = %vector.body1122, %polly.loop_header878
  %polly.indvar_next876 = add nuw nsw i64 %polly.indvar875, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar875, %221
  br i1 %exitcond1067.not, label %polly.loop_exit874, label %polly.loop_header872

polly.loop_header878:                             ; preds = %polly.loop_header872, %polly.loop_header878
  %polly.indvar881 = phi i64 [ %polly.indvar_next882, %polly.loop_header878 ], [ 0, %polly.loop_header872 ]
  %242 = add nuw nsw i64 %polly.indvar881, %224
  %243 = trunc i64 %242 to i32
  %244 = mul i32 %243, %227
  %245 = add i32 %244, 3
  %246 = urem i32 %245, 1200
  %p_conv31.i = sitofp i32 %246 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %247 = shl i64 %242, 3
  %248 = add nuw nsw i64 %247, %228
  %scevgep884 = getelementptr i8, i8* %call, i64 %248
  %scevgep884885 = bitcast i8* %scevgep884 to double*
  store double %p_div33.i, double* %scevgep884885, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next882 = add nuw nsw i64 %polly.indvar881, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar881, %225
  br i1 %exitcond1063.not, label %polly.loop_exit880, label %polly.loop_header878, !llvm.loop !104

polly.loop_header887:                             ; preds = %polly.loop_exit868, %polly.loop_exit895
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055, %polly.loop_exit895 ], [ 0, %polly.loop_exit868 ]
  %polly.indvar890 = phi i64 [ %polly.indvar_next891, %polly.loop_exit895 ], [ 0, %polly.loop_exit868 ]
  %smin1056 = call i64 @llvm.smin.i64(i64 %indvars.iv1054, i64 -1168)
  %249 = shl nsw i64 %polly.indvar890, 5
  %250 = add nsw i64 %smin1056, 1199
  br label %polly.loop_header893

polly.loop_exit895:                               ; preds = %polly.loop_exit901
  %polly.indvar_next891 = add nuw nsw i64 %polly.indvar890, 1
  %indvars.iv.next1055 = add nsw i64 %indvars.iv1054, -32
  %exitcond1059.not = icmp eq i64 %polly.indvar_next891, 38
  br i1 %exitcond1059.not, label %polly.loop_header913, label %polly.loop_header887

polly.loop_header893:                             ; preds = %polly.loop_exit901, %polly.loop_header887
  %indvars.iv1050 = phi i64 [ %indvars.iv.next1051, %polly.loop_exit901 ], [ 0, %polly.loop_header887 ]
  %polly.indvar896 = phi i64 [ %polly.indvar_next897, %polly.loop_exit901 ], [ 0, %polly.loop_header887 ]
  %251 = mul nsw i64 %polly.indvar896, -32
  %smin1138 = call i64 @llvm.smin.i64(i64 %251, i64 -968)
  %252 = add nsw i64 %smin1138, 1000
  %smin1052 = call i64 @llvm.smin.i64(i64 %indvars.iv1050, i64 -968)
  %253 = shl nsw i64 %polly.indvar896, 5
  %254 = add nsw i64 %smin1052, 999
  br label %polly.loop_header899

polly.loop_exit901:                               ; preds = %polly.loop_exit907
  %polly.indvar_next897 = add nuw nsw i64 %polly.indvar896, 1
  %indvars.iv.next1051 = add nsw i64 %indvars.iv1050, -32
  %exitcond1058.not = icmp eq i64 %polly.indvar_next897, 32
  br i1 %exitcond1058.not, label %polly.loop_exit895, label %polly.loop_header893

polly.loop_header899:                             ; preds = %polly.loop_exit907, %polly.loop_header893
  %polly.indvar902 = phi i64 [ 0, %polly.loop_header893 ], [ %polly.indvar_next903, %polly.loop_exit907 ]
  %255 = add nuw nsw i64 %polly.indvar902, %249
  %256 = trunc i64 %255 to i32
  %257 = mul nuw nsw i64 %255, 8000
  %min.iters.check1139 = icmp eq i64 %252, 0
  br i1 %min.iters.check1139, label %polly.loop_header905, label %vector.ph1140

vector.ph1140:                                    ; preds = %polly.loop_header899
  %broadcast.splatinsert1149 = insertelement <4 x i64> poison, i64 %253, i32 0
  %broadcast.splat1150 = shufflevector <4 x i64> %broadcast.splatinsert1149, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1151 = insertelement <4 x i32> poison, i32 %256, i32 0
  %broadcast.splat1152 = shufflevector <4 x i32> %broadcast.splatinsert1151, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1137

vector.body1137:                                  ; preds = %vector.body1137, %vector.ph1140
  %index1143 = phi i64 [ 0, %vector.ph1140 ], [ %index.next1144, %vector.body1137 ]
  %vec.ind1147 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1140 ], [ %vec.ind.next1148, %vector.body1137 ]
  %258 = add nuw nsw <4 x i64> %vec.ind1147, %broadcast.splat1150
  %259 = trunc <4 x i64> %258 to <4 x i32>
  %260 = mul <4 x i32> %broadcast.splat1152, %259
  %261 = add <4 x i32> %260, <i32 2, i32 2, i32 2, i32 2>
  %262 = urem <4 x i32> %261, <i32 1000, i32 1000, i32 1000, i32 1000>
  %263 = sitofp <4 x i32> %262 to <4 x double>
  %264 = fmul fast <4 x double> %263, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %265 = extractelement <4 x i64> %258, i32 0
  %266 = shl i64 %265, 3
  %267 = add nuw nsw i64 %266, %257
  %268 = getelementptr i8, i8* %call2, i64 %267
  %269 = bitcast i8* %268 to <4 x double>*
  store <4 x double> %264, <4 x double>* %269, align 8, !alias.scope !102, !noalias !105
  %index.next1144 = add i64 %index1143, 4
  %vec.ind.next1148 = add <4 x i64> %vec.ind1147, <i64 4, i64 4, i64 4, i64 4>
  %270 = icmp eq i64 %index.next1144, %252
  br i1 %270, label %polly.loop_exit907, label %vector.body1137, !llvm.loop !106

polly.loop_exit907:                               ; preds = %vector.body1137, %polly.loop_header905
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar902, %250
  br i1 %exitcond1057.not, label %polly.loop_exit901, label %polly.loop_header899

polly.loop_header905:                             ; preds = %polly.loop_header899, %polly.loop_header905
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_header905 ], [ 0, %polly.loop_header899 ]
  %271 = add nuw nsw i64 %polly.indvar908, %253
  %272 = trunc i64 %271 to i32
  %273 = mul i32 %272, %256
  %274 = add i32 %273, 2
  %275 = urem i32 %274, 1000
  %p_conv10.i = sitofp i32 %275 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %276 = shl i64 %271, 3
  %277 = add nuw nsw i64 %276, %257
  %scevgep911 = getelementptr i8, i8* %call2, i64 %277
  %scevgep911912 = bitcast i8* %scevgep911 to double*
  store double %p_div12.i, double* %scevgep911912, align 8, !alias.scope !102, !noalias !105
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar908, %254
  br i1 %exitcond1053.not, label %polly.loop_exit907, label %polly.loop_header905, !llvm.loop !107

polly.loop_header913:                             ; preds = %polly.loop_exit895, %polly.loop_exit921
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit921 ], [ 0, %polly.loop_exit895 ]
  %polly.indvar916 = phi i64 [ %polly.indvar_next917, %polly.loop_exit921 ], [ 0, %polly.loop_exit895 ]
  %smin1046 = call i64 @llvm.smin.i64(i64 %indvars.iv1044, i64 -1168)
  %278 = shl nsw i64 %polly.indvar916, 5
  %279 = add nsw i64 %smin1046, 1199
  br label %polly.loop_header919

polly.loop_exit921:                               ; preds = %polly.loop_exit927
  %polly.indvar_next917 = add nuw nsw i64 %polly.indvar916, 1
  %indvars.iv.next1045 = add nsw i64 %indvars.iv1044, -32
  %exitcond1049.not = icmp eq i64 %polly.indvar_next917, 38
  br i1 %exitcond1049.not, label %init_array.exit, label %polly.loop_header913

polly.loop_header919:                             ; preds = %polly.loop_exit927, %polly.loop_header913
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit927 ], [ 0, %polly.loop_header913 ]
  %polly.indvar922 = phi i64 [ %polly.indvar_next923, %polly.loop_exit927 ], [ 0, %polly.loop_header913 ]
  %280 = mul nsw i64 %polly.indvar922, -32
  %smin1156 = call i64 @llvm.smin.i64(i64 %280, i64 -968)
  %281 = add nsw i64 %smin1156, 1000
  %smin1042 = call i64 @llvm.smin.i64(i64 %indvars.iv1040, i64 -968)
  %282 = shl nsw i64 %polly.indvar922, 5
  %283 = add nsw i64 %smin1042, 999
  br label %polly.loop_header925

polly.loop_exit927:                               ; preds = %polly.loop_exit933
  %polly.indvar_next923 = add nuw nsw i64 %polly.indvar922, 1
  %indvars.iv.next1041 = add nsw i64 %indvars.iv1040, -32
  %exitcond1048.not = icmp eq i64 %polly.indvar_next923, 32
  br i1 %exitcond1048.not, label %polly.loop_exit921, label %polly.loop_header919

polly.loop_header925:                             ; preds = %polly.loop_exit933, %polly.loop_header919
  %polly.indvar928 = phi i64 [ 0, %polly.loop_header919 ], [ %polly.indvar_next929, %polly.loop_exit933 ]
  %284 = add nuw nsw i64 %polly.indvar928, %278
  %285 = trunc i64 %284 to i32
  %286 = mul nuw nsw i64 %284, 8000
  %min.iters.check1157 = icmp eq i64 %281, 0
  br i1 %min.iters.check1157, label %polly.loop_header931, label %vector.ph1158

vector.ph1158:                                    ; preds = %polly.loop_header925
  %broadcast.splatinsert1167 = insertelement <4 x i64> poison, i64 %282, i32 0
  %broadcast.splat1168 = shufflevector <4 x i64> %broadcast.splatinsert1167, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1169 = insertelement <4 x i32> poison, i32 %285, i32 0
  %broadcast.splat1170 = shufflevector <4 x i32> %broadcast.splatinsert1169, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1155

vector.body1155:                                  ; preds = %vector.body1155, %vector.ph1158
  %index1161 = phi i64 [ 0, %vector.ph1158 ], [ %index.next1162, %vector.body1155 ]
  %vec.ind1165 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1158 ], [ %vec.ind.next1166, %vector.body1155 ]
  %287 = add nuw nsw <4 x i64> %vec.ind1165, %broadcast.splat1168
  %288 = trunc <4 x i64> %287 to <4 x i32>
  %289 = mul <4 x i32> %broadcast.splat1170, %288
  %290 = add <4 x i32> %289, <i32 1, i32 1, i32 1, i32 1>
  %291 = urem <4 x i32> %290, <i32 1200, i32 1200, i32 1200, i32 1200>
  %292 = sitofp <4 x i32> %291 to <4 x double>
  %293 = fmul fast <4 x double> %292, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %294 = extractelement <4 x i64> %287, i32 0
  %295 = shl i64 %294, 3
  %296 = add nuw nsw i64 %295, %286
  %297 = getelementptr i8, i8* %call1, i64 %296
  %298 = bitcast i8* %297 to <4 x double>*
  store <4 x double> %293, <4 x double>* %298, align 8, !alias.scope !101, !noalias !108
  %index.next1162 = add i64 %index1161, 4
  %vec.ind.next1166 = add <4 x i64> %vec.ind1165, <i64 4, i64 4, i64 4, i64 4>
  %299 = icmp eq i64 %index.next1162, %281
  br i1 %299, label %polly.loop_exit933, label %vector.body1155, !llvm.loop !109

polly.loop_exit933:                               ; preds = %vector.body1155, %polly.loop_header931
  %polly.indvar_next929 = add nuw nsw i64 %polly.indvar928, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar928, %279
  br i1 %exitcond1047.not, label %polly.loop_exit927, label %polly.loop_header925

polly.loop_header931:                             ; preds = %polly.loop_header925, %polly.loop_header931
  %polly.indvar934 = phi i64 [ %polly.indvar_next935, %polly.loop_header931 ], [ 0, %polly.loop_header925 ]
  %300 = add nuw nsw i64 %polly.indvar934, %282
  %301 = trunc i64 %300 to i32
  %302 = mul i32 %301, %285
  %303 = add i32 %302, 1
  %304 = urem i32 %303, 1200
  %p_conv.i = sitofp i32 %304 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %305 = shl i64 %300, 3
  %306 = add nuw nsw i64 %305, %286
  %scevgep938 = getelementptr i8, i8* %call1, i64 %306
  %scevgep938939 = bitcast i8* %scevgep938 to double*
  store double %p_div.i, double* %scevgep938939, align 8, !alias.scope !101, !noalias !108
  %polly.indvar_next935 = add nuw nsw i64 %polly.indvar934, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar934, %283
  br i1 %exitcond1043.not, label %polly.loop_exit933, label %polly.loop_header931, !llvm.loop !110
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
!25 = !{!"llvm.loop.tile.size", i32 256}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 50}
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
