; ModuleID = 'syr2k_exhaustive/mmp_all_SM_3866.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_3866.c"
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
  %call819 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1671 = bitcast i8* %call1 to double*
  %polly.access.call1680 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1680, %call2
  %polly.access.call2700 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2700, %call1
  %2 = or i1 %0, %1
  %polly.access.call720 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call720, %call2
  %4 = icmp ule i8* %polly.access.call2700, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call720, %call1
  %8 = icmp ule i8* %polly.access.call1680, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header793, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv7.i, i64 %index1112
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit854
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start476, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1174 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1174, label %for.body3.i46.preheader1251, label %vector.ph1175

vector.ph1175:                                    ; preds = %for.body3.i46.preheader
  %n.vec1177 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1173

vector.body1173:                                  ; preds = %vector.body1173, %vector.ph1175
  %index1178 = phi i64 [ 0, %vector.ph1175 ], [ %index.next1179, %vector.body1173 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i, i64 %index1178
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
  br i1 %cmp.n1181, label %for.inc6.i, label %for.body3.i46.preheader1251

for.body3.i46.preheader1251:                      ; preds = %for.body3.i46.preheader, %middle.block1171
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1177, %middle.block1171 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1251, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1251 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %41, label %polly.start283, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1197 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1197, label %for.body3.i60.preheader1249, label %vector.ph1198

vector.ph1198:                                    ; preds = %for.body3.i60.preheader
  %n.vec1200 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1196

vector.body1196:                                  ; preds = %vector.body1196, %vector.ph1198
  %index1201 = phi i64 [ 0, %vector.ph1198 ], [ %index.next1202, %vector.body1196 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i52, i64 %index1201
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1205 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1205, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1202 = add i64 %index1201, 4
  %57 = icmp eq i64 %index.next1202, %n.vec1200
  br i1 %57, label %middle.block1194, label %vector.body1196, !llvm.loop !60

middle.block1194:                                 ; preds = %vector.body1196
  %cmp.n1204 = icmp eq i64 %indvars.iv21.i52, %n.vec1200
  br i1 %cmp.n1204, label %for.inc6.i63, label %for.body3.i60.preheader1249

for.body3.i60.preheader1249:                      ; preds = %for.body3.i60.preheader, %middle.block1194
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1200, %middle.block1194 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1249, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1249 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting284
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
  br i1 %min.iters.check1223, label %for.body3.i99.preheader1247, label %vector.ph1224

vector.ph1224:                                    ; preds = %for.body3.i99.preheader
  %n.vec1226 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1222

vector.body1222:                                  ; preds = %vector.body1222, %vector.ph1224
  %index1227 = phi i64 [ 0, %vector.ph1224 ], [ %index.next1228, %vector.body1222 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i91, i64 %index1227
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1231 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1231, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1228 = add i64 %index1227, 4
  %68 = icmp eq i64 %index.next1228, %n.vec1226
  br i1 %68, label %middle.block1220, label %vector.body1222, !llvm.loop !62

middle.block1220:                                 ; preds = %vector.body1222
  %cmp.n1230 = icmp eq i64 %indvars.iv21.i91, %n.vec1226
  br i1 %cmp.n1230, label %for.inc6.i102, label %for.body3.i99.preheader1247

for.body3.i99.preheader1247:                      ; preds = %for.body3.i99.preheader, %middle.block1220
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1226, %middle.block1220 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1247, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1247 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %wide.load1245 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1245, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1242 = add i64 %index1241, 4
  %95 = icmp eq i64 %index.next1242, %n.vec1240
  br i1 %95, label %middle.block1232, label %vector.body1234, !llvm.loop !74

middle.block1232:                                 ; preds = %vector.body1234
  %cmp.n1244 = icmp eq i64 %88, %n.vec1240
  br i1 %cmp.n1244, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1232
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1240, %middle.block1232 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1232
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1016.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1236 = add i64 %indvar1235, 1
  br i1 %exitcond1016.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond1015.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1015.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv1005 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next1006, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %103, %polly.loop_exit207 ]
  %97 = lshr i64 %polly.indvar202, 1
  %98 = mul nuw nsw i64 %97, 100
  %99 = sub nsw i64 %indvars.iv, %98
  %100 = add i64 %indvars.iv1005, %98
  %101 = mul nuw nsw i64 %polly.indvar202, 50
  %102 = mul nsw i64 %polly.indvar202, -50
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit242
  %103 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 50
  %indvars.iv.next1006 = add nsw i64 %indvars.iv1005, -50
  %exitcond1014.not = icmp eq i64 %103, 24
  br i1 %exitcond1014.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit242, %polly.loop_header199
  %indvars.iv1007 = phi i64 [ %indvars.iv.next1008, %polly.loop_exit242 ], [ %100, %polly.loop_header199 ]
  %indvars.iv1003 = phi i64 [ %indvars.iv.next1004, %polly.loop_exit242 ], [ %99, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit242 ], [ %97, %polly.loop_header199 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1003, i64 0)
  %104 = add i64 %smax, %indvars.iv1007
  %105 = shl nuw nsw i64 %polly.indvar208, 1
  %.not.not = icmp ugt i64 %105, %polly.indvar202
  %106 = mul nuw nsw i64 %polly.indvar208, 100
  %107 = add nsw i64 %106, %102
  %108 = icmp sgt i64 %107, 0
  %109 = select i1 %108, i64 %107, i64 0
  %110 = add nsw i64 %107, 99
  %polly.loop_guard.not = icmp sgt i64 %109, %110
  br i1 %.not.not, label %polly.loop_header211.us, label %polly.loop_header205.split

polly.loop_header211.us:                          ; preds = %polly.loop_header205, %polly.loop_exit229.us
  %polly.indvar214.us = phi i64 [ %polly.indvar_next215.us, %polly.loop_exit229.us ], [ 0, %polly.loop_header205 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar214.us, 1200
  br label %polly.loop_header217.us

polly.loop_header217.us:                          ; preds = %polly.loop_header211.us, %polly.loop_header217.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_header217.us ], [ 0, %polly.loop_header211.us ]
  %111 = add nuw nsw i64 %polly.indvar220.us, %101
  %polly.access.mul.call1224.us = mul nuw nsw i64 %111, 1000
  %polly.access.add.call1225.us = add nuw nsw i64 %polly.access.mul.call1224.us, %polly.indvar214.us
  %polly.access.call1226.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1225.us
  %polly.access.call1226.load.us = load double, double* %polly.access.call1226.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar220.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1226.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond1001.not = icmp eq i64 %polly.indvar_next221.us, 50
  br i1 %exitcond1001.not, label %polly.merge.loopexit.us, label %polly.loop_header217.us

polly.loop_header227.us:                          ; preds = %polly.merge.loopexit.us, %polly.loop_header227.us
  %polly.indvar230.us = phi i64 [ %polly.indvar_next231.us, %polly.loop_header227.us ], [ %109, %polly.merge.loopexit.us ]
  %112 = add nuw nsw i64 %polly.indvar230.us, %101
  %polly.access.mul.call1234.us = mul nsw i64 %112, 1000
  %polly.access.add.call1235.us = add nuw nsw i64 %polly.access.mul.call1234.us, %polly.indvar214.us
  %polly.access.call1236.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1235.us
  %polly.access.call1236.load.us = load double, double* %polly.access.call1236.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1238.us = add nuw nsw i64 %polly.indvar230.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1239.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1238.us
  store double %polly.access.call1236.load.us, double* %polly.access.Packed_MemRef_call1239.us, align 8
  %polly.indvar_next231.us = add nuw nsw i64 %polly.indvar230.us, 1
  %polly.loop_cond232.not.not.us = icmp slt i64 %polly.indvar230.us, %110
  br i1 %polly.loop_cond232.not.not.us, label %polly.loop_header227.us, label %polly.loop_exit229.us

polly.loop_exit229.us:                            ; preds = %polly.loop_header227.us, %polly.merge.loopexit.us
  %polly.indvar_next215.us = add nuw nsw i64 %polly.indvar214.us, 1
  %exitcond1002.not = icmp eq i64 %polly.indvar_next215.us, 1000
  br i1 %exitcond1002.not, label %polly.loop_header240.preheader, label %polly.loop_header211.us

polly.merge.loopexit.us:                          ; preds = %polly.loop_header217.us
  br i1 %polly.loop_guard.not, label %polly.loop_exit229.us, label %polly.loop_header227.us

polly.loop_header205.split:                       ; preds = %polly.loop_header205
  br i1 %polly.loop_guard.not, label %polly.loop_header240.preheader, label %polly.loop_header211

polly.loop_exit242:                               ; preds = %polly.loop_exit249.loopexit.us, %polly.loop_header240.preheader
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next1004 = add i64 %indvars.iv1003, -100
  %indvars.iv.next1008 = add i64 %indvars.iv1007, 100
  %exitcond1013.not = icmp eq i64 %polly.indvar_next209, 12
  br i1 %exitcond1013.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header205.split, %polly.loop_exit229
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit229 ], [ 0, %polly.loop_header205.split ]
  %polly.access.mul.Packed_MemRef_call1237 = mul nuw nsw i64 %polly.indvar214, 1200
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_header227
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next215, 1000
  br i1 %exitcond.not, label %polly.loop_header240.preheader, label %polly.loop_header211

polly.loop_header240.preheader:                   ; preds = %polly.loop_exit229, %polly.loop_exit229.us, %polly.loop_header205.split
  %113 = sub nsw i64 %101, %106
  %114 = icmp sgt i64 %113, 0
  %115 = select i1 %114, i64 %113, i64 0
  %polly.loop_guard250 = icmp slt i64 %115, 100
  br i1 %polly.loop_guard250, label %polly.loop_header240.us, label %polly.loop_exit242

polly.loop_header240.us:                          ; preds = %polly.loop_header240.preheader, %polly.loop_exit249.loopexit.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_exit249.loopexit.us ], [ 0, %polly.loop_header240.preheader ]
  %116 = shl nuw nsw i64 %polly.indvar243.us, 3
  %scevgep266.us = getelementptr i8, i8* %call2, i64 %116
  %polly.access.mul.Packed_MemRef_call1262.us = mul nuw nsw i64 %polly.indvar243.us, 1200
  br label %polly.loop_header247.us

polly.loop_header247.us:                          ; preds = %polly.loop_exit257.us, %polly.loop_header240.us
  %indvars.iv1009 = phi i64 [ %indvars.iv.next1010, %polly.loop_exit257.us ], [ %104, %polly.loop_header240.us ]
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_exit257.us ], [ %115, %polly.loop_header240.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1009, i64 49)
  %117 = add nsw i64 %polly.indvar251.us, %107
  %polly.loop_guard258.us1093 = icmp sgt i64 %117, -1
  br i1 %polly.loop_guard258.us1093, label %polly.loop_header255.preheader.us, label %polly.loop_exit257.us

polly.loop_header255.us:                          ; preds = %polly.loop_header255.preheader.us, %polly.loop_header255.us
  %polly.indvar259.us = phi i64 [ %polly.indvar_next260.us, %polly.loop_header255.us ], [ 0, %polly.loop_header255.preheader.us ]
  %118 = add nuw nsw i64 %polly.indvar259.us, %101
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar259.us, %polly.access.mul.Packed_MemRef_call1262.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  %_p_scalar_265.us = load double, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_269.us, %_p_scalar_265.us
  %119 = mul nuw nsw i64 %118, 8000
  %scevgep271.us = getelementptr i8, i8* %scevgep266.us, i64 %119
  %scevgep271272.us = bitcast i8* %scevgep271.us to double*
  %_p_scalar_273.us = load double, double* %scevgep271272.us, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114.us = fmul fast double %_p_scalar_277.us, %_p_scalar_273.us
  %120 = shl i64 %118, 3
  %121 = add i64 %120, %124
  %scevgep278.us = getelementptr i8, i8* %call, i64 %121
  %scevgep278279.us = bitcast i8* %scevgep278.us to double*
  %_p_scalar_280.us = load double, double* %scevgep278279.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_280.us
  store double %p_add42.i118.us, double* %scevgep278279.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next260.us = add nuw nsw i64 %polly.indvar259.us, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar259.us, %smin
  br i1 %exitcond1011.not, label %polly.loop_exit257.us, label %polly.loop_header255.us

polly.loop_exit257.us:                            ; preds = %polly.loop_header255.us, %polly.loop_header247.us
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %polly.loop_cond253.us = icmp ult i64 %polly.indvar251.us, 99
  %indvars.iv.next1010 = add i64 %indvars.iv1009, 1
  br i1 %polly.loop_cond253.us, label %polly.loop_header247.us, label %polly.loop_exit249.loopexit.us

polly.loop_header255.preheader.us:                ; preds = %polly.loop_header247.us
  %122 = add nuw nsw i64 %polly.indvar251.us, %106
  %123 = mul i64 %122, 8000
  %scevgep267.us = getelementptr i8, i8* %scevgep266.us, i64 %123
  %scevgep267268.us = bitcast i8* %scevgep267.us to double*
  %_p_scalar_269.us = load double, double* %scevgep267268.us, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1275.us = add nsw i64 %117, %polly.access.mul.Packed_MemRef_call1262.us
  %polly.access.Packed_MemRef_call1276.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.us
  %_p_scalar_277.us = load double, double* %polly.access.Packed_MemRef_call1276.us, align 8
  %124 = mul i64 %122, 9600
  br label %polly.loop_header255.us

polly.loop_exit249.loopexit.us:                   ; preds = %polly.loop_exit257.us
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar_next244.us, 1000
  br i1 %exitcond1012.not, label %polly.loop_exit242, label %polly.loop_header240.us

polly.loop_header227:                             ; preds = %polly.loop_header211, %polly.loop_header227
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_header227 ], [ %109, %polly.loop_header211 ]
  %125 = add nuw nsw i64 %polly.indvar230, %101
  %polly.access.mul.call1234 = mul nsw i64 %125, 1000
  %polly.access.add.call1235 = add nuw nsw i64 %polly.access.mul.call1234, %polly.indvar214
  %polly.access.call1236 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1235
  %polly.access.call1236.load = load double, double* %polly.access.call1236, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1238 = add nuw nsw i64 %polly.indvar230, %polly.access.mul.Packed_MemRef_call1237
  %polly.access.Packed_MemRef_call1239 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1238
  store double %polly.access.call1236.load, double* %polly.access.Packed_MemRef_call1239, align 8
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %polly.loop_cond232.not.not = icmp slt i64 %polly.indvar230, %110
  br i1 %polly.loop_cond232.not.not, label %polly.loop_header227, label %polly.loop_exit229

polly.start283:                                   ; preds = %kernel_syr2k.exit
  %malloccall285 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header369

polly.exiting284:                                 ; preds = %polly.loop_exit394
  tail call void @free(i8* %malloccall285)
  br label %kernel_syr2k.exit90

polly.loop_header369:                             ; preds = %polly.loop_exit377, %polly.start283
  %indvar1209 = phi i64 [ %indvar.next1210, %polly.loop_exit377 ], [ 0, %polly.start283 ]
  %polly.indvar372 = phi i64 [ %polly.indvar_next373, %polly.loop_exit377 ], [ 1, %polly.start283 ]
  %126 = add i64 %indvar1209, 1
  %127 = mul nuw nsw i64 %polly.indvar372, 9600
  %scevgep381 = getelementptr i8, i8* %call, i64 %127
  %min.iters.check1211 = icmp ult i64 %126, 4
  br i1 %min.iters.check1211, label %polly.loop_header375.preheader, label %vector.ph1212

vector.ph1212:                                    ; preds = %polly.loop_header369
  %n.vec1214 = and i64 %126, -4
  br label %vector.body1208

vector.body1208:                                  ; preds = %vector.body1208, %vector.ph1212
  %index1215 = phi i64 [ 0, %vector.ph1212 ], [ %index.next1216, %vector.body1208 ]
  %128 = shl nuw nsw i64 %index1215, 3
  %129 = getelementptr i8, i8* %scevgep381, i64 %128
  %130 = bitcast i8* %129 to <4 x double>*
  %wide.load1219 = load <4 x double>, <4 x double>* %130, align 8, !alias.scope !79, !noalias !81
  %131 = fmul fast <4 x double> %wide.load1219, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %132 = bitcast i8* %129 to <4 x double>*
  store <4 x double> %131, <4 x double>* %132, align 8, !alias.scope !79, !noalias !81
  %index.next1216 = add i64 %index1215, 4
  %133 = icmp eq i64 %index.next1216, %n.vec1214
  br i1 %133, label %middle.block1206, label %vector.body1208, !llvm.loop !85

middle.block1206:                                 ; preds = %vector.body1208
  %cmp.n1218 = icmp eq i64 %126, %n.vec1214
  br i1 %cmp.n1218, label %polly.loop_exit377, label %polly.loop_header375.preheader

polly.loop_header375.preheader:                   ; preds = %polly.loop_header369, %middle.block1206
  %polly.indvar378.ph = phi i64 [ 0, %polly.loop_header369 ], [ %n.vec1214, %middle.block1206 ]
  br label %polly.loop_header375

polly.loop_exit377:                               ; preds = %polly.loop_header375, %middle.block1206
  %polly.indvar_next373 = add nuw nsw i64 %polly.indvar372, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar_next373, 1200
  %indvar.next1210 = add i64 %indvar1209, 1
  br i1 %exitcond1037.not, label %polly.loop_header385.preheader, label %polly.loop_header369

polly.loop_header385.preheader:                   ; preds = %polly.loop_exit377
  %Packed_MemRef_call1286 = bitcast i8* %malloccall285 to double*
  br label %polly.loop_header385

polly.loop_header375:                             ; preds = %polly.loop_header375.preheader, %polly.loop_header375
  %polly.indvar378 = phi i64 [ %polly.indvar_next379, %polly.loop_header375 ], [ %polly.indvar378.ph, %polly.loop_header375.preheader ]
  %134 = shl nuw nsw i64 %polly.indvar378, 3
  %scevgep382 = getelementptr i8, i8* %scevgep381, i64 %134
  %scevgep382383 = bitcast i8* %scevgep382 to double*
  %_p_scalar_384 = load double, double* %scevgep382383, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_384, 1.200000e+00
  store double %p_mul.i57, double* %scevgep382383, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next379 = add nuw nsw i64 %polly.indvar378, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar_next379, %polly.indvar372
  br i1 %exitcond1036.not, label %polly.loop_exit377, label %polly.loop_header375, !llvm.loop !86

polly.loop_header385:                             ; preds = %polly.loop_header385.preheader, %polly.loop_exit394
  %indvars.iv1025 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %indvars.iv.next1026, %polly.loop_exit394 ]
  %indvars.iv1020 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %indvars.iv.next1021, %polly.loop_exit394 ]
  %polly.indvar388 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %141, %polly.loop_exit394 ]
  %135 = lshr i64 %polly.indvar388, 1
  %136 = mul nuw nsw i64 %135, 100
  %137 = sub nsw i64 %indvars.iv1020, %136
  %138 = add i64 %indvars.iv1025, %136
  %139 = mul nuw nsw i64 %polly.indvar388, 50
  %140 = mul nsw i64 %polly.indvar388, -50
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_exit435
  %141 = add nuw nsw i64 %polly.indvar388, 1
  %indvars.iv.next1021 = add nuw nsw i64 %indvars.iv1020, 50
  %indvars.iv.next1026 = add nsw i64 %indvars.iv1025, -50
  %exitcond1035.not = icmp eq i64 %141, 24
  br i1 %exitcond1035.not, label %polly.exiting284, label %polly.loop_header385

polly.loop_header392:                             ; preds = %polly.loop_exit435, %polly.loop_header385
  %indvars.iv1027 = phi i64 [ %indvars.iv.next1028, %polly.loop_exit435 ], [ %138, %polly.loop_header385 ]
  %indvars.iv1022 = phi i64 [ %indvars.iv.next1023, %polly.loop_exit435 ], [ %137, %polly.loop_header385 ]
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_exit435 ], [ %135, %polly.loop_header385 ]
  %smax1024 = call i64 @llvm.smax.i64(i64 %indvars.iv1022, i64 0)
  %142 = add i64 %smax1024, %indvars.iv1027
  %143 = shl nuw nsw i64 %polly.indvar395, 1
  %.not.not873 = icmp ugt i64 %143, %polly.indvar388
  %144 = mul nuw nsw i64 %polly.indvar395, 100
  %145 = add nsw i64 %144, %140
  %146 = icmp sgt i64 %145, 0
  %147 = select i1 %146, i64 %145, i64 0
  %148 = add nsw i64 %145, 99
  %polly.loop_guard422.not = icmp sgt i64 %147, %148
  br i1 %.not.not873, label %polly.loop_header398.us, label %polly.loop_header392.split

polly.loop_header398.us:                          ; preds = %polly.loop_header392, %polly.loop_exit421.us
  %polly.indvar401.us = phi i64 [ %polly.indvar_next402.us, %polly.loop_exit421.us ], [ 0, %polly.loop_header392 ]
  %polly.access.mul.Packed_MemRef_call1286.us = mul nuw nsw i64 %polly.indvar401.us, 1200
  br label %polly.loop_header408.us

polly.loop_header408.us:                          ; preds = %polly.loop_header398.us, %polly.loop_header408.us
  %polly.indvar411.us = phi i64 [ %polly.indvar_next412.us, %polly.loop_header408.us ], [ 0, %polly.loop_header398.us ]
  %149 = add nuw nsw i64 %polly.indvar411.us, %139
  %polly.access.mul.call1415.us = mul nuw nsw i64 %149, 1000
  %polly.access.add.call1416.us = add nuw nsw i64 %polly.access.mul.call1415.us, %polly.indvar401.us
  %polly.access.call1417.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1416.us
  %polly.access.call1417.load.us = load double, double* %polly.access.call1417.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286.us = add nuw nsw i64 %polly.indvar411.us, %polly.access.mul.Packed_MemRef_call1286.us
  %polly.access.Packed_MemRef_call1286.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us
  store double %polly.access.call1417.load.us, double* %polly.access.Packed_MemRef_call1286.us, align 8
  %polly.indvar_next412.us = add nuw nsw i64 %polly.indvar411.us, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next412.us, 50
  br i1 %exitcond1018.not, label %polly.merge405.loopexit.us, label %polly.loop_header408.us

polly.loop_header419.us:                          ; preds = %polly.merge405.loopexit.us, %polly.loop_header419.us
  %polly.indvar423.us = phi i64 [ %polly.indvar_next424.us, %polly.loop_header419.us ], [ %147, %polly.merge405.loopexit.us ]
  %150 = add nuw nsw i64 %polly.indvar423.us, %139
  %polly.access.mul.call1427.us = mul nsw i64 %150, 1000
  %polly.access.add.call1428.us = add nuw nsw i64 %polly.access.mul.call1427.us, %polly.indvar401.us
  %polly.access.call1429.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1428.us
  %polly.access.call1429.load.us = load double, double* %polly.access.call1429.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286431.us = add nuw nsw i64 %polly.indvar423.us, %polly.access.mul.Packed_MemRef_call1286.us
  %polly.access.Packed_MemRef_call1286432.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286431.us
  store double %polly.access.call1429.load.us, double* %polly.access.Packed_MemRef_call1286432.us, align 8
  %polly.indvar_next424.us = add nuw nsw i64 %polly.indvar423.us, 1
  %polly.loop_cond425.not.not.us = icmp slt i64 %polly.indvar423.us, %148
  br i1 %polly.loop_cond425.not.not.us, label %polly.loop_header419.us, label %polly.loop_exit421.us

polly.loop_exit421.us:                            ; preds = %polly.loop_header419.us, %polly.merge405.loopexit.us
  %polly.indvar_next402.us = add nuw nsw i64 %polly.indvar401.us, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar_next402.us, 1000
  br i1 %exitcond1019.not, label %polly.loop_header433.preheader, label %polly.loop_header398.us

polly.merge405.loopexit.us:                       ; preds = %polly.loop_header408.us
  br i1 %polly.loop_guard422.not, label %polly.loop_exit421.us, label %polly.loop_header419.us

polly.loop_header392.split:                       ; preds = %polly.loop_header392
  br i1 %polly.loop_guard422.not, label %polly.loop_header433.preheader, label %polly.loop_header398

polly.loop_exit435:                               ; preds = %polly.loop_exit442.loopexit.us, %polly.loop_header433.preheader
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %indvars.iv.next1023 = add i64 %indvars.iv1022, -100
  %indvars.iv.next1028 = add i64 %indvars.iv1027, 100
  %exitcond1034.not = icmp eq i64 %polly.indvar_next396, 12
  br i1 %exitcond1034.not, label %polly.loop_exit394, label %polly.loop_header392

polly.loop_header398:                             ; preds = %polly.loop_header392.split, %polly.loop_exit421
  %polly.indvar401 = phi i64 [ %polly.indvar_next402, %polly.loop_exit421 ], [ 0, %polly.loop_header392.split ]
  %polly.access.mul.Packed_MemRef_call1286430 = mul nuw nsw i64 %polly.indvar401, 1200
  br label %polly.loop_header419

polly.loop_exit421:                               ; preds = %polly.loop_header419
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar_next402, 1000
  br i1 %exitcond1017.not, label %polly.loop_header433.preheader, label %polly.loop_header398

polly.loop_header433.preheader:                   ; preds = %polly.loop_exit421, %polly.loop_exit421.us, %polly.loop_header392.split
  %151 = sub nsw i64 %139, %144
  %152 = icmp sgt i64 %151, 0
  %153 = select i1 %152, i64 %151, i64 0
  %polly.loop_guard443 = icmp slt i64 %153, 100
  br i1 %polly.loop_guard443, label %polly.loop_header433.us, label %polly.loop_exit435

polly.loop_header433.us:                          ; preds = %polly.loop_header433.preheader, %polly.loop_exit442.loopexit.us
  %polly.indvar436.us = phi i64 [ %polly.indvar_next437.us, %polly.loop_exit442.loopexit.us ], [ 0, %polly.loop_header433.preheader ]
  %154 = shl nuw nsw i64 %polly.indvar436.us, 3
  %scevgep459.us = getelementptr i8, i8* %call2, i64 %154
  %polly.access.mul.Packed_MemRef_call1286455.us = mul nuw nsw i64 %polly.indvar436.us, 1200
  br label %polly.loop_header440.us

polly.loop_header440.us:                          ; preds = %polly.loop_exit450.us, %polly.loop_header433.us
  %indvars.iv1029 = phi i64 [ %indvars.iv.next1030, %polly.loop_exit450.us ], [ %142, %polly.loop_header433.us ]
  %polly.indvar444.us = phi i64 [ %polly.indvar_next445.us, %polly.loop_exit450.us ], [ %153, %polly.loop_header433.us ]
  %smin1031 = call i64 @llvm.smin.i64(i64 %indvars.iv1029, i64 49)
  %155 = add nsw i64 %polly.indvar444.us, %145
  %polly.loop_guard451.us1094 = icmp sgt i64 %155, -1
  br i1 %polly.loop_guard451.us1094, label %polly.loop_header448.preheader.us, label %polly.loop_exit450.us

polly.loop_header448.us:                          ; preds = %polly.loop_header448.preheader.us, %polly.loop_header448.us
  %polly.indvar452.us = phi i64 [ %polly.indvar_next453.us, %polly.loop_header448.us ], [ 0, %polly.loop_header448.preheader.us ]
  %156 = add nuw nsw i64 %polly.indvar452.us, %139
  %polly.access.add.Packed_MemRef_call1286456.us = add nuw nsw i64 %polly.indvar452.us, %polly.access.mul.Packed_MemRef_call1286455.us
  %polly.access.Packed_MemRef_call1286457.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286456.us
  %_p_scalar_458.us = load double, double* %polly.access.Packed_MemRef_call1286457.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_462.us, %_p_scalar_458.us
  %157 = mul nuw nsw i64 %156, 8000
  %scevgep464.us = getelementptr i8, i8* %scevgep459.us, i64 %157
  %scevgep464465.us = bitcast i8* %scevgep464.us to double*
  %_p_scalar_466.us = load double, double* %scevgep464465.us, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75.us = fmul fast double %_p_scalar_470.us, %_p_scalar_466.us
  %158 = shl i64 %156, 3
  %159 = add i64 %158, %162
  %scevgep471.us = getelementptr i8, i8* %call, i64 %159
  %scevgep471472.us = bitcast i8* %scevgep471.us to double*
  %_p_scalar_473.us = load double, double* %scevgep471472.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_473.us
  store double %p_add42.i79.us, double* %scevgep471472.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next453.us = add nuw nsw i64 %polly.indvar452.us, 1
  %exitcond1032.not = icmp eq i64 %polly.indvar452.us, %smin1031
  br i1 %exitcond1032.not, label %polly.loop_exit450.us, label %polly.loop_header448.us

polly.loop_exit450.us:                            ; preds = %polly.loop_header448.us, %polly.loop_header440.us
  %polly.indvar_next445.us = add nuw nsw i64 %polly.indvar444.us, 1
  %polly.loop_cond446.us = icmp ult i64 %polly.indvar444.us, 99
  %indvars.iv.next1030 = add i64 %indvars.iv1029, 1
  br i1 %polly.loop_cond446.us, label %polly.loop_header440.us, label %polly.loop_exit442.loopexit.us

polly.loop_header448.preheader.us:                ; preds = %polly.loop_header440.us
  %160 = add nuw nsw i64 %polly.indvar444.us, %144
  %161 = mul i64 %160, 8000
  %scevgep460.us = getelementptr i8, i8* %scevgep459.us, i64 %161
  %scevgep460461.us = bitcast i8* %scevgep460.us to double*
  %_p_scalar_462.us = load double, double* %scevgep460461.us, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1286468.us = add nsw i64 %155, %polly.access.mul.Packed_MemRef_call1286455.us
  %polly.access.Packed_MemRef_call1286469.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286468.us
  %_p_scalar_470.us = load double, double* %polly.access.Packed_MemRef_call1286469.us, align 8
  %162 = mul i64 %160, 9600
  br label %polly.loop_header448.us

polly.loop_exit442.loopexit.us:                   ; preds = %polly.loop_exit450.us
  %polly.indvar_next437.us = add nuw nsw i64 %polly.indvar436.us, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next437.us, 1000
  br i1 %exitcond1033.not, label %polly.loop_exit435, label %polly.loop_header433.us

polly.loop_header419:                             ; preds = %polly.loop_header398, %polly.loop_header419
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_header419 ], [ %147, %polly.loop_header398 ]
  %163 = add nuw nsw i64 %polly.indvar423, %139
  %polly.access.mul.call1427 = mul nsw i64 %163, 1000
  %polly.access.add.call1428 = add nuw nsw i64 %polly.access.mul.call1427, %polly.indvar401
  %polly.access.call1429 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1428
  %polly.access.call1429.load = load double, double* %polly.access.call1429, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286431 = add nuw nsw i64 %polly.indvar423, %polly.access.mul.Packed_MemRef_call1286430
  %polly.access.Packed_MemRef_call1286432 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286431
  store double %polly.access.call1429.load, double* %polly.access.Packed_MemRef_call1286432, align 8
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %polly.loop_cond425.not.not = icmp slt i64 %polly.indvar423, %148
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
  %164 = add i64 %indvar, 1
  %165 = mul nuw nsw i64 %polly.indvar565, 9600
  %scevgep574 = getelementptr i8, i8* %call, i64 %165
  %min.iters.check1185 = icmp ult i64 %164, 4
  br i1 %min.iters.check1185, label %polly.loop_header568.preheader, label %vector.ph1186

vector.ph1186:                                    ; preds = %polly.loop_header562
  %n.vec1188 = and i64 %164, -4
  br label %vector.body1184

vector.body1184:                                  ; preds = %vector.body1184, %vector.ph1186
  %index1189 = phi i64 [ 0, %vector.ph1186 ], [ %index.next1190, %vector.body1184 ]
  %166 = shl nuw nsw i64 %index1189, 3
  %167 = getelementptr i8, i8* %scevgep574, i64 %166
  %168 = bitcast i8* %167 to <4 x double>*
  %wide.load1193 = load <4 x double>, <4 x double>* %168, align 8, !alias.scope !89, !noalias !91
  %169 = fmul fast <4 x double> %wide.load1193, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %170 = bitcast i8* %167 to <4 x double>*
  store <4 x double> %169, <4 x double>* %170, align 8, !alias.scope !89, !noalias !91
  %index.next1190 = add i64 %index1189, 4
  %171 = icmp eq i64 %index.next1190, %n.vec1188
  br i1 %171, label %middle.block1182, label %vector.body1184, !llvm.loop !95

middle.block1182:                                 ; preds = %vector.body1184
  %cmp.n1192 = icmp eq i64 %164, %n.vec1188
  br i1 %cmp.n1192, label %polly.loop_exit570, label %polly.loop_header568.preheader

polly.loop_header568.preheader:                   ; preds = %polly.loop_header562, %middle.block1182
  %polly.indvar571.ph = phi i64 [ 0, %polly.loop_header562 ], [ %n.vec1188, %middle.block1182 ]
  br label %polly.loop_header568

polly.loop_exit570:                               ; preds = %polly.loop_header568, %middle.block1182
  %polly.indvar_next566 = add nuw nsw i64 %polly.indvar565, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar_next566, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1058.not, label %polly.loop_header578.preheader, label %polly.loop_header562

polly.loop_header578.preheader:                   ; preds = %polly.loop_exit570
  %Packed_MemRef_call1479 = bitcast i8* %malloccall478 to double*
  br label %polly.loop_header578

polly.loop_header568:                             ; preds = %polly.loop_header568.preheader, %polly.loop_header568
  %polly.indvar571 = phi i64 [ %polly.indvar_next572, %polly.loop_header568 ], [ %polly.indvar571.ph, %polly.loop_header568.preheader ]
  %172 = shl nuw nsw i64 %polly.indvar571, 3
  %scevgep575 = getelementptr i8, i8* %scevgep574, i64 %172
  %scevgep575576 = bitcast i8* %scevgep575 to double*
  %_p_scalar_577 = load double, double* %scevgep575576, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_577, 1.200000e+00
  store double %p_mul.i, double* %scevgep575576, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next572 = add nuw nsw i64 %polly.indvar571, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar_next572, %polly.indvar565
  br i1 %exitcond1057.not, label %polly.loop_exit570, label %polly.loop_header568, !llvm.loop !96

polly.loop_header578:                             ; preds = %polly.loop_header578.preheader, %polly.loop_exit587
  %indvars.iv1046 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %indvars.iv.next1047, %polly.loop_exit587 ]
  %indvars.iv1041 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %indvars.iv.next1042, %polly.loop_exit587 ]
  %polly.indvar581 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %179, %polly.loop_exit587 ]
  %173 = lshr i64 %polly.indvar581, 1
  %174 = mul nuw nsw i64 %173, 100
  %175 = sub nsw i64 %indvars.iv1041, %174
  %176 = add i64 %indvars.iv1046, %174
  %177 = mul nuw nsw i64 %polly.indvar581, 50
  %178 = mul nsw i64 %polly.indvar581, -50
  br label %polly.loop_header585

polly.loop_exit587:                               ; preds = %polly.loop_exit628
  %179 = add nuw nsw i64 %polly.indvar581, 1
  %indvars.iv.next1042 = add nuw nsw i64 %indvars.iv1041, 50
  %indvars.iv.next1047 = add nsw i64 %indvars.iv1046, -50
  %exitcond1056.not = icmp eq i64 %179, 24
  br i1 %exitcond1056.not, label %polly.exiting477, label %polly.loop_header578

polly.loop_header585:                             ; preds = %polly.loop_exit628, %polly.loop_header578
  %indvars.iv1048 = phi i64 [ %indvars.iv.next1049, %polly.loop_exit628 ], [ %176, %polly.loop_header578 ]
  %indvars.iv1043 = phi i64 [ %indvars.iv.next1044, %polly.loop_exit628 ], [ %175, %polly.loop_header578 ]
  %polly.indvar588 = phi i64 [ %polly.indvar_next589, %polly.loop_exit628 ], [ %173, %polly.loop_header578 ]
  %smax1045 = call i64 @llvm.smax.i64(i64 %indvars.iv1043, i64 0)
  %180 = add i64 %smax1045, %indvars.iv1048
  %181 = shl nuw nsw i64 %polly.indvar588, 1
  %.not.not874 = icmp ugt i64 %181, %polly.indvar581
  %182 = mul nuw nsw i64 %polly.indvar588, 100
  %183 = add nsw i64 %182, %178
  %184 = icmp sgt i64 %183, 0
  %185 = select i1 %184, i64 %183, i64 0
  %186 = add nsw i64 %183, 99
  %polly.loop_guard615.not = icmp sgt i64 %185, %186
  br i1 %.not.not874, label %polly.loop_header591.us, label %polly.loop_header585.split

polly.loop_header591.us:                          ; preds = %polly.loop_header585, %polly.loop_exit614.us
  %polly.indvar594.us = phi i64 [ %polly.indvar_next595.us, %polly.loop_exit614.us ], [ 0, %polly.loop_header585 ]
  %polly.access.mul.Packed_MemRef_call1479.us = mul nuw nsw i64 %polly.indvar594.us, 1200
  br label %polly.loop_header601.us

polly.loop_header601.us:                          ; preds = %polly.loop_header591.us, %polly.loop_header601.us
  %polly.indvar604.us = phi i64 [ %polly.indvar_next605.us, %polly.loop_header601.us ], [ 0, %polly.loop_header591.us ]
  %187 = add nuw nsw i64 %polly.indvar604.us, %177
  %polly.access.mul.call1608.us = mul nuw nsw i64 %187, 1000
  %polly.access.add.call1609.us = add nuw nsw i64 %polly.access.mul.call1608.us, %polly.indvar594.us
  %polly.access.call1610.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1609.us
  %polly.access.call1610.load.us = load double, double* %polly.access.call1610.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479.us = add nuw nsw i64 %polly.indvar604.us, %polly.access.mul.Packed_MemRef_call1479.us
  %polly.access.Packed_MemRef_call1479.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us
  store double %polly.access.call1610.load.us, double* %polly.access.Packed_MemRef_call1479.us, align 8
  %polly.indvar_next605.us = add nuw nsw i64 %polly.indvar604.us, 1
  %exitcond1039.not = icmp eq i64 %polly.indvar_next605.us, 50
  br i1 %exitcond1039.not, label %polly.merge598.loopexit.us, label %polly.loop_header601.us

polly.loop_header612.us:                          ; preds = %polly.merge598.loopexit.us, %polly.loop_header612.us
  %polly.indvar616.us = phi i64 [ %polly.indvar_next617.us, %polly.loop_header612.us ], [ %185, %polly.merge598.loopexit.us ]
  %188 = add nuw nsw i64 %polly.indvar616.us, %177
  %polly.access.mul.call1620.us = mul nsw i64 %188, 1000
  %polly.access.add.call1621.us = add nuw nsw i64 %polly.access.mul.call1620.us, %polly.indvar594.us
  %polly.access.call1622.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1621.us
  %polly.access.call1622.load.us = load double, double* %polly.access.call1622.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479624.us = add nuw nsw i64 %polly.indvar616.us, %polly.access.mul.Packed_MemRef_call1479.us
  %polly.access.Packed_MemRef_call1479625.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479624.us
  store double %polly.access.call1622.load.us, double* %polly.access.Packed_MemRef_call1479625.us, align 8
  %polly.indvar_next617.us = add nuw nsw i64 %polly.indvar616.us, 1
  %polly.loop_cond618.not.not.us = icmp slt i64 %polly.indvar616.us, %186
  br i1 %polly.loop_cond618.not.not.us, label %polly.loop_header612.us, label %polly.loop_exit614.us

polly.loop_exit614.us:                            ; preds = %polly.loop_header612.us, %polly.merge598.loopexit.us
  %polly.indvar_next595.us = add nuw nsw i64 %polly.indvar594.us, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar_next595.us, 1000
  br i1 %exitcond1040.not, label %polly.loop_header626.preheader, label %polly.loop_header591.us

polly.merge598.loopexit.us:                       ; preds = %polly.loop_header601.us
  br i1 %polly.loop_guard615.not, label %polly.loop_exit614.us, label %polly.loop_header612.us

polly.loop_header585.split:                       ; preds = %polly.loop_header585
  br i1 %polly.loop_guard615.not, label %polly.loop_header626.preheader, label %polly.loop_header591

polly.loop_exit628:                               ; preds = %polly.loop_exit635.loopexit.us, %polly.loop_header626.preheader
  %polly.indvar_next589 = add nuw nsw i64 %polly.indvar588, 1
  %indvars.iv.next1044 = add i64 %indvars.iv1043, -100
  %indvars.iv.next1049 = add i64 %indvars.iv1048, 100
  %exitcond1055.not = icmp eq i64 %polly.indvar_next589, 12
  br i1 %exitcond1055.not, label %polly.loop_exit587, label %polly.loop_header585

polly.loop_header591:                             ; preds = %polly.loop_header585.split, %polly.loop_exit614
  %polly.indvar594 = phi i64 [ %polly.indvar_next595, %polly.loop_exit614 ], [ 0, %polly.loop_header585.split ]
  %polly.access.mul.Packed_MemRef_call1479623 = mul nuw nsw i64 %polly.indvar594, 1200
  br label %polly.loop_header612

polly.loop_exit614:                               ; preds = %polly.loop_header612
  %polly.indvar_next595 = add nuw nsw i64 %polly.indvar594, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar_next595, 1000
  br i1 %exitcond1038.not, label %polly.loop_header626.preheader, label %polly.loop_header591

polly.loop_header626.preheader:                   ; preds = %polly.loop_exit614, %polly.loop_exit614.us, %polly.loop_header585.split
  %189 = sub nsw i64 %177, %182
  %190 = icmp sgt i64 %189, 0
  %191 = select i1 %190, i64 %189, i64 0
  %polly.loop_guard636 = icmp slt i64 %191, 100
  br i1 %polly.loop_guard636, label %polly.loop_header626.us, label %polly.loop_exit628

polly.loop_header626.us:                          ; preds = %polly.loop_header626.preheader, %polly.loop_exit635.loopexit.us
  %polly.indvar629.us = phi i64 [ %polly.indvar_next630.us, %polly.loop_exit635.loopexit.us ], [ 0, %polly.loop_header626.preheader ]
  %192 = shl nuw nsw i64 %polly.indvar629.us, 3
  %scevgep652.us = getelementptr i8, i8* %call2, i64 %192
  %polly.access.mul.Packed_MemRef_call1479648.us = mul nuw nsw i64 %polly.indvar629.us, 1200
  br label %polly.loop_header633.us

polly.loop_header633.us:                          ; preds = %polly.loop_exit643.us, %polly.loop_header626.us
  %indvars.iv1050 = phi i64 [ %indvars.iv.next1051, %polly.loop_exit643.us ], [ %180, %polly.loop_header626.us ]
  %polly.indvar637.us = phi i64 [ %polly.indvar_next638.us, %polly.loop_exit643.us ], [ %191, %polly.loop_header626.us ]
  %smin1052 = call i64 @llvm.smin.i64(i64 %indvars.iv1050, i64 49)
  %193 = add nsw i64 %polly.indvar637.us, %183
  %polly.loop_guard644.us1095 = icmp sgt i64 %193, -1
  br i1 %polly.loop_guard644.us1095, label %polly.loop_header641.preheader.us, label %polly.loop_exit643.us

polly.loop_header641.us:                          ; preds = %polly.loop_header641.preheader.us, %polly.loop_header641.us
  %polly.indvar645.us = phi i64 [ %polly.indvar_next646.us, %polly.loop_header641.us ], [ 0, %polly.loop_header641.preheader.us ]
  %194 = add nuw nsw i64 %polly.indvar645.us, %177
  %polly.access.add.Packed_MemRef_call1479649.us = add nuw nsw i64 %polly.indvar645.us, %polly.access.mul.Packed_MemRef_call1479648.us
  %polly.access.Packed_MemRef_call1479650.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479649.us
  %_p_scalar_651.us = load double, double* %polly.access.Packed_MemRef_call1479650.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_655.us, %_p_scalar_651.us
  %195 = mul nuw nsw i64 %194, 8000
  %scevgep657.us = getelementptr i8, i8* %scevgep652.us, i64 %195
  %scevgep657658.us = bitcast i8* %scevgep657.us to double*
  %_p_scalar_659.us = load double, double* %scevgep657658.us, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i.us = fmul fast double %_p_scalar_663.us, %_p_scalar_659.us
  %196 = shl i64 %194, 3
  %197 = add i64 %196, %200
  %scevgep664.us = getelementptr i8, i8* %call, i64 %197
  %scevgep664665.us = bitcast i8* %scevgep664.us to double*
  %_p_scalar_666.us = load double, double* %scevgep664665.us, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_666.us
  store double %p_add42.i.us, double* %scevgep664665.us, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next646.us = add nuw nsw i64 %polly.indvar645.us, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar645.us, %smin1052
  br i1 %exitcond1053.not, label %polly.loop_exit643.us, label %polly.loop_header641.us

polly.loop_exit643.us:                            ; preds = %polly.loop_header641.us, %polly.loop_header633.us
  %polly.indvar_next638.us = add nuw nsw i64 %polly.indvar637.us, 1
  %polly.loop_cond639.us = icmp ult i64 %polly.indvar637.us, 99
  %indvars.iv.next1051 = add i64 %indvars.iv1050, 1
  br i1 %polly.loop_cond639.us, label %polly.loop_header633.us, label %polly.loop_exit635.loopexit.us

polly.loop_header641.preheader.us:                ; preds = %polly.loop_header633.us
  %198 = add nuw nsw i64 %polly.indvar637.us, %182
  %199 = mul i64 %198, 8000
  %scevgep653.us = getelementptr i8, i8* %scevgep652.us, i64 %199
  %scevgep653654.us = bitcast i8* %scevgep653.us to double*
  %_p_scalar_655.us = load double, double* %scevgep653654.us, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1479661.us = add nsw i64 %193, %polly.access.mul.Packed_MemRef_call1479648.us
  %polly.access.Packed_MemRef_call1479662.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479661.us
  %_p_scalar_663.us = load double, double* %polly.access.Packed_MemRef_call1479662.us, align 8
  %200 = mul i64 %198, 9600
  br label %polly.loop_header641.us

polly.loop_exit635.loopexit.us:                   ; preds = %polly.loop_exit643.us
  %polly.indvar_next630.us = add nuw nsw i64 %polly.indvar629.us, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar_next630.us, 1000
  br i1 %exitcond1054.not, label %polly.loop_exit628, label %polly.loop_header626.us

polly.loop_header612:                             ; preds = %polly.loop_header591, %polly.loop_header612
  %polly.indvar616 = phi i64 [ %polly.indvar_next617, %polly.loop_header612 ], [ %185, %polly.loop_header591 ]
  %201 = add nuw nsw i64 %polly.indvar616, %177
  %polly.access.mul.call1620 = mul nsw i64 %201, 1000
  %polly.access.add.call1621 = add nuw nsw i64 %polly.access.mul.call1620, %polly.indvar594
  %polly.access.call1622 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1621
  %polly.access.call1622.load = load double, double* %polly.access.call1622, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479624 = add nuw nsw i64 %polly.indvar616, %polly.access.mul.Packed_MemRef_call1479623
  %polly.access.Packed_MemRef_call1479625 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479624
  store double %polly.access.call1622.load, double* %polly.access.Packed_MemRef_call1479625, align 8
  %polly.indvar_next617 = add nuw nsw i64 %polly.indvar616, 1
  %polly.loop_cond618.not.not = icmp slt i64 %polly.indvar616, %186
  br i1 %polly.loop_cond618.not.not, label %polly.loop_header612, label %polly.loop_exit614

polly.loop_header793:                             ; preds = %entry, %polly.loop_exit801
  %indvars.iv1083 = phi i64 [ %indvars.iv.next1084, %polly.loop_exit801 ], [ 0, %entry ]
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %entry ]
  %smin1085 = call i64 @llvm.smin.i64(i64 %indvars.iv1083, i64 -1168)
  %202 = shl nsw i64 %polly.indvar796, 5
  %203 = add nsw i64 %smin1085, 1199
  br label %polly.loop_header799

polly.loop_exit801:                               ; preds = %polly.loop_exit807
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %indvars.iv.next1084 = add nsw i64 %indvars.iv1083, -32
  %exitcond1088.not = icmp eq i64 %polly.indvar_next797, 38
  br i1 %exitcond1088.not, label %polly.loop_header820, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_exit807, %polly.loop_header793
  %indvars.iv1079 = phi i64 [ %indvars.iv.next1080, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %204 = mul nsw i64 %polly.indvar802, -32
  %smin1123 = call i64 @llvm.smin.i64(i64 %204, i64 -1168)
  %205 = add nsw i64 %smin1123, 1200
  %smin1081 = call i64 @llvm.smin.i64(i64 %indvars.iv1079, i64 -1168)
  %206 = shl nsw i64 %polly.indvar802, 5
  %207 = add nsw i64 %smin1081, 1199
  br label %polly.loop_header805

polly.loop_exit807:                               ; preds = %polly.loop_exit813
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %indvars.iv.next1080 = add nsw i64 %indvars.iv1079, -32
  %exitcond1087.not = icmp eq i64 %polly.indvar_next803, 38
  br i1 %exitcond1087.not, label %polly.loop_exit801, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_exit813, %polly.loop_header799
  %polly.indvar808 = phi i64 [ 0, %polly.loop_header799 ], [ %polly.indvar_next809, %polly.loop_exit813 ]
  %208 = add nuw nsw i64 %polly.indvar808, %202
  %209 = trunc i64 %208 to i32
  %210 = mul nuw nsw i64 %208, 9600
  %min.iters.check = icmp eq i64 %205, 0
  br i1 %min.iters.check, label %polly.loop_header811, label %vector.ph1124

vector.ph1124:                                    ; preds = %polly.loop_header805
  %broadcast.splatinsert1131 = insertelement <4 x i64> poison, i64 %206, i32 0
  %broadcast.splat1132 = shufflevector <4 x i64> %broadcast.splatinsert1131, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1133 = insertelement <4 x i32> poison, i32 %209, i32 0
  %broadcast.splat1134 = shufflevector <4 x i32> %broadcast.splatinsert1133, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1122

vector.body1122:                                  ; preds = %vector.body1122, %vector.ph1124
  %index1125 = phi i64 [ 0, %vector.ph1124 ], [ %index.next1126, %vector.body1122 ]
  %vec.ind1129 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1124 ], [ %vec.ind.next1130, %vector.body1122 ]
  %211 = add nuw nsw <4 x i64> %vec.ind1129, %broadcast.splat1132
  %212 = trunc <4 x i64> %211 to <4 x i32>
  %213 = mul <4 x i32> %broadcast.splat1134, %212
  %214 = add <4 x i32> %213, <i32 3, i32 3, i32 3, i32 3>
  %215 = urem <4 x i32> %214, <i32 1200, i32 1200, i32 1200, i32 1200>
  %216 = sitofp <4 x i32> %215 to <4 x double>
  %217 = fmul fast <4 x double> %216, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %218 = extractelement <4 x i64> %211, i32 0
  %219 = shl i64 %218, 3
  %220 = add nuw nsw i64 %219, %210
  %221 = getelementptr i8, i8* %call, i64 %220
  %222 = bitcast i8* %221 to <4 x double>*
  store <4 x double> %217, <4 x double>* %222, align 8, !alias.scope !99, !noalias !101
  %index.next1126 = add i64 %index1125, 4
  %vec.ind.next1130 = add <4 x i64> %vec.ind1129, <i64 4, i64 4, i64 4, i64 4>
  %223 = icmp eq i64 %index.next1126, %205
  br i1 %223, label %polly.loop_exit813, label %vector.body1122, !llvm.loop !104

polly.loop_exit813:                               ; preds = %vector.body1122, %polly.loop_header811
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar808, %203
  br i1 %exitcond1086.not, label %polly.loop_exit807, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_header805, %polly.loop_header811
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_header811 ], [ 0, %polly.loop_header805 ]
  %224 = add nuw nsw i64 %polly.indvar814, %206
  %225 = trunc i64 %224 to i32
  %226 = mul i32 %225, %209
  %227 = add i32 %226, 3
  %228 = urem i32 %227, 1200
  %p_conv31.i = sitofp i32 %228 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %229 = shl i64 %224, 3
  %230 = add nuw nsw i64 %229, %210
  %scevgep817 = getelementptr i8, i8* %call, i64 %230
  %scevgep817818 = bitcast i8* %scevgep817 to double*
  store double %p_div33.i, double* %scevgep817818, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar814, %207
  br i1 %exitcond1082.not, label %polly.loop_exit813, label %polly.loop_header811, !llvm.loop !105

polly.loop_header820:                             ; preds = %polly.loop_exit801, %polly.loop_exit828
  %indvars.iv1073 = phi i64 [ %indvars.iv.next1074, %polly.loop_exit828 ], [ 0, %polly.loop_exit801 ]
  %polly.indvar823 = phi i64 [ %polly.indvar_next824, %polly.loop_exit828 ], [ 0, %polly.loop_exit801 ]
  %smin1075 = call i64 @llvm.smin.i64(i64 %indvars.iv1073, i64 -1168)
  %231 = shl nsw i64 %polly.indvar823, 5
  %232 = add nsw i64 %smin1075, 1199
  br label %polly.loop_header826

polly.loop_exit828:                               ; preds = %polly.loop_exit834
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %indvars.iv.next1074 = add nsw i64 %indvars.iv1073, -32
  %exitcond1078.not = icmp eq i64 %polly.indvar_next824, 38
  br i1 %exitcond1078.not, label %polly.loop_header846, label %polly.loop_header820

polly.loop_header826:                             ; preds = %polly.loop_exit834, %polly.loop_header820
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit834 ], [ 0, %polly.loop_header820 ]
  %polly.indvar829 = phi i64 [ %polly.indvar_next830, %polly.loop_exit834 ], [ 0, %polly.loop_header820 ]
  %233 = mul nsw i64 %polly.indvar829, -32
  %smin1138 = call i64 @llvm.smin.i64(i64 %233, i64 -968)
  %234 = add nsw i64 %smin1138, 1000
  %smin1071 = call i64 @llvm.smin.i64(i64 %indvars.iv1069, i64 -968)
  %235 = shl nsw i64 %polly.indvar829, 5
  %236 = add nsw i64 %smin1071, 999
  br label %polly.loop_header832

polly.loop_exit834:                               ; preds = %polly.loop_exit840
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %indvars.iv.next1070 = add nsw i64 %indvars.iv1069, -32
  %exitcond1077.not = icmp eq i64 %polly.indvar_next830, 32
  br i1 %exitcond1077.not, label %polly.loop_exit828, label %polly.loop_header826

polly.loop_header832:                             ; preds = %polly.loop_exit840, %polly.loop_header826
  %polly.indvar835 = phi i64 [ 0, %polly.loop_header826 ], [ %polly.indvar_next836, %polly.loop_exit840 ]
  %237 = add nuw nsw i64 %polly.indvar835, %231
  %238 = trunc i64 %237 to i32
  %239 = mul nuw nsw i64 %237, 8000
  %min.iters.check1139 = icmp eq i64 %234, 0
  br i1 %min.iters.check1139, label %polly.loop_header838, label %vector.ph1140

vector.ph1140:                                    ; preds = %polly.loop_header832
  %broadcast.splatinsert1149 = insertelement <4 x i64> poison, i64 %235, i32 0
  %broadcast.splat1150 = shufflevector <4 x i64> %broadcast.splatinsert1149, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1151 = insertelement <4 x i32> poison, i32 %238, i32 0
  %broadcast.splat1152 = shufflevector <4 x i32> %broadcast.splatinsert1151, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1137

vector.body1137:                                  ; preds = %vector.body1137, %vector.ph1140
  %index1143 = phi i64 [ 0, %vector.ph1140 ], [ %index.next1144, %vector.body1137 ]
  %vec.ind1147 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1140 ], [ %vec.ind.next1148, %vector.body1137 ]
  %240 = add nuw nsw <4 x i64> %vec.ind1147, %broadcast.splat1150
  %241 = trunc <4 x i64> %240 to <4 x i32>
  %242 = mul <4 x i32> %broadcast.splat1152, %241
  %243 = add <4 x i32> %242, <i32 2, i32 2, i32 2, i32 2>
  %244 = urem <4 x i32> %243, <i32 1000, i32 1000, i32 1000, i32 1000>
  %245 = sitofp <4 x i32> %244 to <4 x double>
  %246 = fmul fast <4 x double> %245, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %247 = extractelement <4 x i64> %240, i32 0
  %248 = shl i64 %247, 3
  %249 = add nuw nsw i64 %248, %239
  %250 = getelementptr i8, i8* %call2, i64 %249
  %251 = bitcast i8* %250 to <4 x double>*
  store <4 x double> %246, <4 x double>* %251, align 8, !alias.scope !103, !noalias !106
  %index.next1144 = add i64 %index1143, 4
  %vec.ind.next1148 = add <4 x i64> %vec.ind1147, <i64 4, i64 4, i64 4, i64 4>
  %252 = icmp eq i64 %index.next1144, %234
  br i1 %252, label %polly.loop_exit840, label %vector.body1137, !llvm.loop !107

polly.loop_exit840:                               ; preds = %vector.body1137, %polly.loop_header838
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar835, %232
  br i1 %exitcond1076.not, label %polly.loop_exit834, label %polly.loop_header832

polly.loop_header838:                             ; preds = %polly.loop_header832, %polly.loop_header838
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_header838 ], [ 0, %polly.loop_header832 ]
  %253 = add nuw nsw i64 %polly.indvar841, %235
  %254 = trunc i64 %253 to i32
  %255 = mul i32 %254, %238
  %256 = add i32 %255, 2
  %257 = urem i32 %256, 1000
  %p_conv10.i = sitofp i32 %257 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %258 = shl i64 %253, 3
  %259 = add nuw nsw i64 %258, %239
  %scevgep844 = getelementptr i8, i8* %call2, i64 %259
  %scevgep844845 = bitcast i8* %scevgep844 to double*
  store double %p_div12.i, double* %scevgep844845, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar841, %236
  br i1 %exitcond1072.not, label %polly.loop_exit840, label %polly.loop_header838, !llvm.loop !108

polly.loop_header846:                             ; preds = %polly.loop_exit828, %polly.loop_exit854
  %indvars.iv1063 = phi i64 [ %indvars.iv.next1064, %polly.loop_exit854 ], [ 0, %polly.loop_exit828 ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %polly.loop_exit828 ]
  %smin1065 = call i64 @llvm.smin.i64(i64 %indvars.iv1063, i64 -1168)
  %260 = shl nsw i64 %polly.indvar849, 5
  %261 = add nsw i64 %smin1065, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1064 = add nsw i64 %indvars.iv1063, -32
  %exitcond1068.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1068.not, label %init_array.exit, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %262 = mul nsw i64 %polly.indvar855, -32
  %smin1156 = call i64 @llvm.smin.i64(i64 %262, i64 -968)
  %263 = add nsw i64 %smin1156, 1000
  %smin1061 = call i64 @llvm.smin.i64(i64 %indvars.iv1059, i64 -968)
  %264 = shl nsw i64 %polly.indvar855, 5
  %265 = add nsw i64 %smin1061, 999
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, -32
  %exitcond1067.not = icmp eq i64 %polly.indvar_next856, 32
  br i1 %exitcond1067.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %polly.indvar861 = phi i64 [ 0, %polly.loop_header852 ], [ %polly.indvar_next862, %polly.loop_exit866 ]
  %266 = add nuw nsw i64 %polly.indvar861, %260
  %267 = trunc i64 %266 to i32
  %268 = mul nuw nsw i64 %266, 8000
  %min.iters.check1157 = icmp eq i64 %263, 0
  br i1 %min.iters.check1157, label %polly.loop_header864, label %vector.ph1158

vector.ph1158:                                    ; preds = %polly.loop_header858
  %broadcast.splatinsert1167 = insertelement <4 x i64> poison, i64 %264, i32 0
  %broadcast.splat1168 = shufflevector <4 x i64> %broadcast.splatinsert1167, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1169 = insertelement <4 x i32> poison, i32 %267, i32 0
  %broadcast.splat1170 = shufflevector <4 x i32> %broadcast.splatinsert1169, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1155

vector.body1155:                                  ; preds = %vector.body1155, %vector.ph1158
  %index1161 = phi i64 [ 0, %vector.ph1158 ], [ %index.next1162, %vector.body1155 ]
  %vec.ind1165 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1158 ], [ %vec.ind.next1166, %vector.body1155 ]
  %269 = add nuw nsw <4 x i64> %vec.ind1165, %broadcast.splat1168
  %270 = trunc <4 x i64> %269 to <4 x i32>
  %271 = mul <4 x i32> %broadcast.splat1170, %270
  %272 = add <4 x i32> %271, <i32 1, i32 1, i32 1, i32 1>
  %273 = urem <4 x i32> %272, <i32 1200, i32 1200, i32 1200, i32 1200>
  %274 = sitofp <4 x i32> %273 to <4 x double>
  %275 = fmul fast <4 x double> %274, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %276 = extractelement <4 x i64> %269, i32 0
  %277 = shl i64 %276, 3
  %278 = add nuw nsw i64 %277, %268
  %279 = getelementptr i8, i8* %call1, i64 %278
  %280 = bitcast i8* %279 to <4 x double>*
  store <4 x double> %275, <4 x double>* %280, align 8, !alias.scope !102, !noalias !109
  %index.next1162 = add i64 %index1161, 4
  %vec.ind.next1166 = add <4 x i64> %vec.ind1165, <i64 4, i64 4, i64 4, i64 4>
  %281 = icmp eq i64 %index.next1162, %263
  br i1 %281, label %polly.loop_exit866, label %vector.body1155, !llvm.loop !110

polly.loop_exit866:                               ; preds = %vector.body1155, %polly.loop_header864
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar861, %261
  br i1 %exitcond1066.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_header858, %polly.loop_header864
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_header864 ], [ 0, %polly.loop_header858 ]
  %282 = add nuw nsw i64 %polly.indvar867, %264
  %283 = trunc i64 %282 to i32
  %284 = mul i32 %283, %267
  %285 = add i32 %284, 1
  %286 = urem i32 %285, 1200
  %p_conv.i = sitofp i32 %286 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %287 = shl i64 %282, 3
  %288 = add nuw nsw i64 %287, %268
  %scevgep871 = getelementptr i8, i8* %call1, i64 %288
  %scevgep871872 = bitcast i8* %scevgep871 to double*
  store double %p_div.i, double* %scevgep871872, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar867, %265
  br i1 %exitcond1062.not, label %polly.loop_exit866, label %polly.loop_header864, !llvm.loop !111
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
!50 = !{!"llvm.loop.tile.size", i32 100}
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
