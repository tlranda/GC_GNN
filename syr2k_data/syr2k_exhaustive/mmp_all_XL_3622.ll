; ModuleID = 'syr2k_exhaustive/mmp_all_XL_3622.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_3622.c"
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
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %122, %polly.loop_exit207 ]
  %97 = lshr i64 %polly.indvar202, 2
  %98 = mul nuw nsw i64 %97, 80
  %99 = sub nsw i64 %indvars.iv, %98
  %100 = add i64 %indvars.iv1005, %98
  %101 = mul nuw nsw i64 %polly.indvar202, 20
  %102 = mul nsw i64 %polly.indvar202, -20
  %polly.access.mul.call1224.us = mul nuw i64 %polly.indvar202, 20000
  %103 = or i64 %101, 1
  %polly.access.mul.call1224.us.1 = mul nuw nsw i64 %103, 1000
  %104 = or i64 %101, 2
  %polly.access.mul.call1224.us.2 = mul nuw nsw i64 %104, 1000
  %105 = or i64 %101, 3
  %polly.access.mul.call1224.us.3 = mul nuw nsw i64 %105, 1000
  %106 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.4 = add i64 %106, 4000
  %107 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.5 = add i64 %107, 5000
  %108 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.6 = add i64 %108, 6000
  %109 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.7 = add i64 %109, 7000
  %110 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.8 = add i64 %110, 8000
  %111 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.9 = add i64 %111, 9000
  %112 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.10 = add i64 %112, 10000
  %113 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.11 = add i64 %113, 11000
  %114 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.12 = add i64 %114, 12000
  %115 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.13 = add i64 %115, 13000
  %116 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.14 = add i64 %116, 14000
  %117 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.15 = add i64 %117, 15000
  %118 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.16 = add i64 %118, 16000
  %119 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.17 = add i64 %119, 17000
  %120 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.18 = add i64 %120, 18000
  %121 = mul i64 %polly.indvar202, 20000
  %polly.access.mul.call1224.us.19 = add i64 %121, 19000
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit242
  %122 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 20
  %indvars.iv.next1006 = add nsw i64 %indvars.iv1005, -20
  %exitcond1014.not = icmp eq i64 %122, 60
  br i1 %exitcond1014.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit242, %polly.loop_header199
  %indvars.iv1007 = phi i64 [ %indvars.iv.next1008, %polly.loop_exit242 ], [ %100, %polly.loop_header199 ]
  %indvars.iv1003 = phi i64 [ %indvars.iv.next1004, %polly.loop_exit242 ], [ %99, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit242 ], [ %97, %polly.loop_header199 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1003, i64 0)
  %123 = add i64 %smax, %indvars.iv1007
  %124 = shl nsw i64 %polly.indvar208, 2
  %.not.not = icmp ugt i64 %124, %polly.indvar202
  %125 = mul nuw nsw i64 %polly.indvar208, 80
  %126 = add nsw i64 %125, %102
  %127 = icmp sgt i64 %126, 0
  %128 = select i1 %127, i64 %126, i64 0
  %129 = add nsw i64 %126, 79
  %polly.loop_guard.not = icmp sgt i64 %128, %129
  br i1 %.not.not, label %polly.loop_header211.us, label %polly.loop_header205.split

polly.loop_header211.us:                          ; preds = %polly.loop_header205, %polly.loop_exit229.us
  %polly.indvar214.us = phi i64 [ %polly.indvar_next215.us, %polly.loop_exit229.us ], [ 0, %polly.loop_header205 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar214.us, 1200
  %polly.access.add.call1225.us = add nuw nsw i64 %polly.access.mul.call1224.us, %polly.indvar214.us
  %polly.access.call1226.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1225.us
  %polly.access.call1226.load.us = load double, double* %polly.access.call1226.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us
  store double %polly.access.call1226.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.access.add.call1225.us.1 = add nuw nsw i64 %polly.access.mul.call1224.us.1, %polly.indvar214.us
  %polly.access.call1226.us.1 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1225.us.1
  %polly.access.call1226.load.us.1 = load double, double* %polly.access.call1226.us.1, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1226.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.access.add.call1225.us.2 = add nuw nsw i64 %polly.access.mul.call1224.us.2, %polly.indvar214.us
  %polly.access.call1226.us.2 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1225.us.2
  %polly.access.call1226.load.us.2 = load double, double* %polly.access.call1226.us.2, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 2
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1226.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.access.add.call1225.us.3 = add nuw nsw i64 %polly.access.mul.call1224.us.3, %polly.indvar214.us
  %polly.access.call1226.us.3 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1225.us.3
  %polly.access.call1226.load.us.3 = load double, double* %polly.access.call1226.us.3, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 3
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1226.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.access.add.call1225.us.4 = add nuw nsw i64 %polly.access.mul.call1224.us.4, %polly.indvar214.us
  %polly.access.call1226.us.4 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1225.us.4
  %polly.access.call1226.load.us.4 = load double, double* %polly.access.call1226.us.4, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 4
  %polly.access.Packed_MemRef_call1.us.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.4
  store double %polly.access.call1226.load.us.4, double* %polly.access.Packed_MemRef_call1.us.4, align 8
  %polly.access.add.call1225.us.5 = add nuw nsw i64 %polly.access.mul.call1224.us.5, %polly.indvar214.us
  %polly.access.call1226.us.5 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1225.us.5
  %polly.access.call1226.load.us.5 = load double, double* %polly.access.call1226.us.5, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 5
  %polly.access.Packed_MemRef_call1.us.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.5
  store double %polly.access.call1226.load.us.5, double* %polly.access.Packed_MemRef_call1.us.5, align 8
  %polly.access.add.call1225.us.6 = add nuw nsw i64 %polly.access.mul.call1224.us.6, %polly.indvar214.us
  %polly.access.call1226.us.6 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1225.us.6
  %polly.access.call1226.load.us.6 = load double, double* %polly.access.call1226.us.6, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 6
  %polly.access.Packed_MemRef_call1.us.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.6
  store double %polly.access.call1226.load.us.6, double* %polly.access.Packed_MemRef_call1.us.6, align 8
  %polly.access.add.call1225.us.7 = add nuw nsw i64 %polly.access.mul.call1224.us.7, %polly.indvar214.us
  %polly.access.call1226.us.7 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1225.us.7
  %polly.access.call1226.load.us.7 = load double, double* %polly.access.call1226.us.7, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 7
  %polly.access.Packed_MemRef_call1.us.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.7
  store double %polly.access.call1226.load.us.7, double* %polly.access.Packed_MemRef_call1.us.7, align 8
  %polly.access.add.call1225.us.8 = add nuw nsw i64 %polly.access.mul.call1224.us.8, %polly.indvar214.us
  %polly.access.call1226.us.8 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1225.us.8
  %polly.access.call1226.load.us.8 = load double, double* %polly.access.call1226.us.8, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.8 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 8
  %polly.access.Packed_MemRef_call1.us.8 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.8
  store double %polly.access.call1226.load.us.8, double* %polly.access.Packed_MemRef_call1.us.8, align 8
  %polly.access.add.call1225.us.9 = add nuw nsw i64 %polly.access.mul.call1224.us.9, %polly.indvar214.us
  %polly.access.call1226.us.9 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1225.us.9
  %polly.access.call1226.load.us.9 = load double, double* %polly.access.call1226.us.9, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.9 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 9
  %polly.access.Packed_MemRef_call1.us.9 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.9
  store double %polly.access.call1226.load.us.9, double* %polly.access.Packed_MemRef_call1.us.9, align 8
  %polly.access.add.call1225.us.10 = add nuw nsw i64 %polly.access.mul.call1224.us.10, %polly.indvar214.us
  %polly.access.call1226.us.10 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1225.us.10
  %polly.access.call1226.load.us.10 = load double, double* %polly.access.call1226.us.10, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.10 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 10
  %polly.access.Packed_MemRef_call1.us.10 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.10
  store double %polly.access.call1226.load.us.10, double* %polly.access.Packed_MemRef_call1.us.10, align 8
  %polly.access.add.call1225.us.11 = add nuw nsw i64 %polly.access.mul.call1224.us.11, %polly.indvar214.us
  %polly.access.call1226.us.11 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1225.us.11
  %polly.access.call1226.load.us.11 = load double, double* %polly.access.call1226.us.11, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.11 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 11
  %polly.access.Packed_MemRef_call1.us.11 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.11
  store double %polly.access.call1226.load.us.11, double* %polly.access.Packed_MemRef_call1.us.11, align 8
  %polly.access.add.call1225.us.12 = add nuw nsw i64 %polly.access.mul.call1224.us.12, %polly.indvar214.us
  %polly.access.call1226.us.12 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1225.us.12
  %polly.access.call1226.load.us.12 = load double, double* %polly.access.call1226.us.12, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.12 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 12
  %polly.access.Packed_MemRef_call1.us.12 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.12
  store double %polly.access.call1226.load.us.12, double* %polly.access.Packed_MemRef_call1.us.12, align 8
  %polly.access.add.call1225.us.13 = add nuw nsw i64 %polly.access.mul.call1224.us.13, %polly.indvar214.us
  %polly.access.call1226.us.13 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1225.us.13
  %polly.access.call1226.load.us.13 = load double, double* %polly.access.call1226.us.13, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.13 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 13
  %polly.access.Packed_MemRef_call1.us.13 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.13
  store double %polly.access.call1226.load.us.13, double* %polly.access.Packed_MemRef_call1.us.13, align 8
  %polly.access.add.call1225.us.14 = add nuw nsw i64 %polly.access.mul.call1224.us.14, %polly.indvar214.us
  %polly.access.call1226.us.14 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1225.us.14
  %polly.access.call1226.load.us.14 = load double, double* %polly.access.call1226.us.14, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.14 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 14
  %polly.access.Packed_MemRef_call1.us.14 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.14
  store double %polly.access.call1226.load.us.14, double* %polly.access.Packed_MemRef_call1.us.14, align 8
  %polly.access.add.call1225.us.15 = add nuw nsw i64 %polly.access.mul.call1224.us.15, %polly.indvar214.us
  %polly.access.call1226.us.15 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1225.us.15
  %polly.access.call1226.load.us.15 = load double, double* %polly.access.call1226.us.15, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.15 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 15
  %polly.access.Packed_MemRef_call1.us.15 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.15
  store double %polly.access.call1226.load.us.15, double* %polly.access.Packed_MemRef_call1.us.15, align 8
  %polly.access.add.call1225.us.16 = add nuw nsw i64 %polly.access.mul.call1224.us.16, %polly.indvar214.us
  %polly.access.call1226.us.16 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1225.us.16
  %polly.access.call1226.load.us.16 = load double, double* %polly.access.call1226.us.16, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.16 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.us, 16
  %polly.access.Packed_MemRef_call1.us.16 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.16
  store double %polly.access.call1226.load.us.16, double* %polly.access.Packed_MemRef_call1.us.16, align 8
  %polly.access.add.call1225.us.17 = add nuw nsw i64 %polly.access.mul.call1224.us.17, %polly.indvar214.us
  %polly.access.call1226.us.17 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1225.us.17
  %polly.access.call1226.load.us.17 = load double, double* %polly.access.call1226.us.17, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.17 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.us, 17
  %polly.access.Packed_MemRef_call1.us.17 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.17
  store double %polly.access.call1226.load.us.17, double* %polly.access.Packed_MemRef_call1.us.17, align 8
  %polly.access.add.call1225.us.18 = add nuw nsw i64 %polly.access.mul.call1224.us.18, %polly.indvar214.us
  %polly.access.call1226.us.18 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1225.us.18
  %polly.access.call1226.load.us.18 = load double, double* %polly.access.call1226.us.18, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.18 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.us, 18
  %polly.access.Packed_MemRef_call1.us.18 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.18
  store double %polly.access.call1226.load.us.18, double* %polly.access.Packed_MemRef_call1.us.18, align 8
  %polly.access.add.call1225.us.19 = add nuw nsw i64 %polly.access.mul.call1224.us.19, %polly.indvar214.us
  %polly.access.call1226.us.19 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1225.us.19
  %polly.access.call1226.load.us.19 = load double, double* %polly.access.call1226.us.19, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.19 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.us, 19
  %polly.access.Packed_MemRef_call1.us.19 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.19
  store double %polly.access.call1226.load.us.19, double* %polly.access.Packed_MemRef_call1.us.19, align 8
  br i1 %polly.loop_guard.not, label %polly.loop_exit229.us, label %polly.loop_header227.us

polly.loop_header227.us:                          ; preds = %polly.loop_header211.us, %polly.loop_header227.us
  %polly.indvar230.us = phi i64 [ %polly.indvar_next231.us, %polly.loop_header227.us ], [ %128, %polly.loop_header211.us ]
  %130 = add nuw nsw i64 %polly.indvar230.us, %101
  %polly.access.mul.call1234.us = mul nsw i64 %130, 1000
  %polly.access.add.call1235.us = add nuw nsw i64 %polly.access.mul.call1234.us, %polly.indvar214.us
  %polly.access.call1236.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1235.us
  %polly.access.call1236.load.us = load double, double* %polly.access.call1236.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1238.us = add nuw nsw i64 %polly.indvar230.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1239.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1238.us
  store double %polly.access.call1236.load.us, double* %polly.access.Packed_MemRef_call1239.us, align 8
  %polly.indvar_next231.us = add nuw nsw i64 %polly.indvar230.us, 1
  %polly.loop_cond232.not.not.us = icmp slt i64 %polly.indvar230.us, %129
  br i1 %polly.loop_cond232.not.not.us, label %polly.loop_header227.us, label %polly.loop_exit229.us

polly.loop_exit229.us:                            ; preds = %polly.loop_header227.us, %polly.loop_header211.us
  %polly.indvar_next215.us = add nuw nsw i64 %polly.indvar214.us, 1
  %exitcond1002.not = icmp eq i64 %polly.indvar_next215.us, 1000
  br i1 %exitcond1002.not, label %polly.loop_header240.preheader, label %polly.loop_header211.us

polly.loop_header205.split:                       ; preds = %polly.loop_header205
  br i1 %polly.loop_guard.not, label %polly.loop_header240.preheader, label %polly.loop_header211

polly.loop_exit242:                               ; preds = %polly.loop_exit249.loopexit.us, %polly.loop_header240.preheader
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next1004 = add i64 %indvars.iv1003, -80
  %indvars.iv.next1008 = add i64 %indvars.iv1007, 80
  %exitcond1013.not = icmp eq i64 %polly.indvar_next209, 15
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
  %131 = sub nsw i64 %101, %125
  %132 = icmp sgt i64 %131, 0
  %133 = select i1 %132, i64 %131, i64 0
  %polly.loop_guard250 = icmp slt i64 %133, 80
  br i1 %polly.loop_guard250, label %polly.loop_header240.us, label %polly.loop_exit242

polly.loop_header240.us:                          ; preds = %polly.loop_header240.preheader, %polly.loop_exit249.loopexit.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_exit249.loopexit.us ], [ 0, %polly.loop_header240.preheader ]
  %134 = shl nuw nsw i64 %polly.indvar243.us, 3
  %scevgep266.us = getelementptr i8, i8* %call2, i64 %134
  %polly.access.mul.Packed_MemRef_call1262.us = mul nuw nsw i64 %polly.indvar243.us, 1200
  br label %polly.loop_header247.us

polly.loop_header247.us:                          ; preds = %polly.loop_exit257.us, %polly.loop_header240.us
  %indvars.iv1009 = phi i64 [ %indvars.iv.next1010, %polly.loop_exit257.us ], [ %123, %polly.loop_header240.us ]
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_exit257.us ], [ %133, %polly.loop_header240.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1009, i64 19)
  %135 = add nsw i64 %polly.indvar251.us, %126
  %polly.loop_guard258.us1093 = icmp sgt i64 %135, -1
  br i1 %polly.loop_guard258.us1093, label %polly.loop_header255.preheader.us, label %polly.loop_exit257.us

polly.loop_header255.us:                          ; preds = %polly.loop_header255.preheader.us, %polly.loop_header255.us
  %polly.indvar259.us = phi i64 [ %polly.indvar_next260.us, %polly.loop_header255.us ], [ 0, %polly.loop_header255.preheader.us ]
  %136 = add nuw nsw i64 %polly.indvar259.us, %101
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar259.us, %polly.access.mul.Packed_MemRef_call1262.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  %_p_scalar_265.us = load double, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_269.us, %_p_scalar_265.us
  %137 = mul nuw nsw i64 %136, 8000
  %scevgep271.us = getelementptr i8, i8* %scevgep266.us, i64 %137
  %scevgep271272.us = bitcast i8* %scevgep271.us to double*
  %_p_scalar_273.us = load double, double* %scevgep271272.us, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114.us = fmul fast double %_p_scalar_277.us, %_p_scalar_273.us
  %138 = shl i64 %136, 3
  %139 = add i64 %138, %142
  %scevgep278.us = getelementptr i8, i8* %call, i64 %139
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
  %polly.loop_cond253.us = icmp ult i64 %polly.indvar251.us, 79
  %indvars.iv.next1010 = add i64 %indvars.iv1009, 1
  br i1 %polly.loop_cond253.us, label %polly.loop_header247.us, label %polly.loop_exit249.loopexit.us

polly.loop_header255.preheader.us:                ; preds = %polly.loop_header247.us
  %140 = add nuw nsw i64 %polly.indvar251.us, %125
  %141 = mul i64 %140, 8000
  %scevgep267.us = getelementptr i8, i8* %scevgep266.us, i64 %141
  %scevgep267268.us = bitcast i8* %scevgep267.us to double*
  %_p_scalar_269.us = load double, double* %scevgep267268.us, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1275.us = add nsw i64 %135, %polly.access.mul.Packed_MemRef_call1262.us
  %polly.access.Packed_MemRef_call1276.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.us
  %_p_scalar_277.us = load double, double* %polly.access.Packed_MemRef_call1276.us, align 8
  %142 = mul i64 %140, 9600
  br label %polly.loop_header255.us

polly.loop_exit249.loopexit.us:                   ; preds = %polly.loop_exit257.us
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar_next244.us, 1000
  br i1 %exitcond1012.not, label %polly.loop_exit242, label %polly.loop_header240.us

polly.loop_header227:                             ; preds = %polly.loop_header211, %polly.loop_header227
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_header227 ], [ %128, %polly.loop_header211 ]
  %143 = add nuw nsw i64 %polly.indvar230, %101
  %polly.access.mul.call1234 = mul nsw i64 %143, 1000
  %polly.access.add.call1235 = add nuw nsw i64 %polly.access.mul.call1234, %polly.indvar214
  %polly.access.call1236 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1235
  %polly.access.call1236.load = load double, double* %polly.access.call1236, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1238 = add nuw nsw i64 %polly.indvar230, %polly.access.mul.Packed_MemRef_call1237
  %polly.access.Packed_MemRef_call1239 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1238
  store double %polly.access.call1236.load, double* %polly.access.Packed_MemRef_call1239, align 8
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %polly.loop_cond232.not.not = icmp slt i64 %polly.indvar230, %129
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
  %144 = add i64 %indvar1209, 1
  %145 = mul nuw nsw i64 %polly.indvar372, 9600
  %scevgep381 = getelementptr i8, i8* %call, i64 %145
  %min.iters.check1211 = icmp ult i64 %144, 4
  br i1 %min.iters.check1211, label %polly.loop_header375.preheader, label %vector.ph1212

vector.ph1212:                                    ; preds = %polly.loop_header369
  %n.vec1214 = and i64 %144, -4
  br label %vector.body1208

vector.body1208:                                  ; preds = %vector.body1208, %vector.ph1212
  %index1215 = phi i64 [ 0, %vector.ph1212 ], [ %index.next1216, %vector.body1208 ]
  %146 = shl nuw nsw i64 %index1215, 3
  %147 = getelementptr i8, i8* %scevgep381, i64 %146
  %148 = bitcast i8* %147 to <4 x double>*
  %wide.load1219 = load <4 x double>, <4 x double>* %148, align 8, !alias.scope !79, !noalias !81
  %149 = fmul fast <4 x double> %wide.load1219, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %150 = bitcast i8* %147 to <4 x double>*
  store <4 x double> %149, <4 x double>* %150, align 8, !alias.scope !79, !noalias !81
  %index.next1216 = add i64 %index1215, 4
  %151 = icmp eq i64 %index.next1216, %n.vec1214
  br i1 %151, label %middle.block1206, label %vector.body1208, !llvm.loop !85

middle.block1206:                                 ; preds = %vector.body1208
  %cmp.n1218 = icmp eq i64 %144, %n.vec1214
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
  %152 = shl nuw nsw i64 %polly.indvar378, 3
  %scevgep382 = getelementptr i8, i8* %scevgep381, i64 %152
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
  %polly.indvar388 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %178, %polly.loop_exit394 ]
  %153 = lshr i64 %polly.indvar388, 2
  %154 = mul nuw nsw i64 %153, 80
  %155 = sub nsw i64 %indvars.iv1020, %154
  %156 = add i64 %indvars.iv1025, %154
  %157 = mul nuw nsw i64 %polly.indvar388, 20
  %158 = mul nsw i64 %polly.indvar388, -20
  %polly.access.mul.call1415.us = mul nuw i64 %polly.indvar388, 20000
  %159 = or i64 %157, 1
  %polly.access.mul.call1415.us.1 = mul nuw nsw i64 %159, 1000
  %160 = or i64 %157, 2
  %polly.access.mul.call1415.us.2 = mul nuw nsw i64 %160, 1000
  %161 = or i64 %157, 3
  %polly.access.mul.call1415.us.3 = mul nuw nsw i64 %161, 1000
  %162 = mul i64 %polly.indvar388, 20000
  %polly.access.mul.call1415.us.4 = add i64 %162, 4000
  %163 = mul i64 %polly.indvar388, 20000
  %polly.access.mul.call1415.us.5 = add i64 %163, 5000
  %164 = mul i64 %polly.indvar388, 20000
  %polly.access.mul.call1415.us.6 = add i64 %164, 6000
  %165 = mul i64 %polly.indvar388, 20000
  %polly.access.mul.call1415.us.7 = add i64 %165, 7000
  %166 = mul i64 %polly.indvar388, 20000
  %polly.access.mul.call1415.us.8 = add i64 %166, 8000
  %167 = mul i64 %polly.indvar388, 20000
  %polly.access.mul.call1415.us.9 = add i64 %167, 9000
  %168 = mul i64 %polly.indvar388, 20000
  %polly.access.mul.call1415.us.10 = add i64 %168, 10000
  %169 = mul i64 %polly.indvar388, 20000
  %polly.access.mul.call1415.us.11 = add i64 %169, 11000
  %170 = mul i64 %polly.indvar388, 20000
  %polly.access.mul.call1415.us.12 = add i64 %170, 12000
  %171 = mul i64 %polly.indvar388, 20000
  %polly.access.mul.call1415.us.13 = add i64 %171, 13000
  %172 = mul i64 %polly.indvar388, 20000
  %polly.access.mul.call1415.us.14 = add i64 %172, 14000
  %173 = mul i64 %polly.indvar388, 20000
  %polly.access.mul.call1415.us.15 = add i64 %173, 15000
  %174 = mul i64 %polly.indvar388, 20000
  %polly.access.mul.call1415.us.16 = add i64 %174, 16000
  %175 = mul i64 %polly.indvar388, 20000
  %polly.access.mul.call1415.us.17 = add i64 %175, 17000
  %176 = mul i64 %polly.indvar388, 20000
  %polly.access.mul.call1415.us.18 = add i64 %176, 18000
  %177 = mul i64 %polly.indvar388, 20000
  %polly.access.mul.call1415.us.19 = add i64 %177, 19000
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_exit435
  %178 = add nuw nsw i64 %polly.indvar388, 1
  %indvars.iv.next1021 = add nuw nsw i64 %indvars.iv1020, 20
  %indvars.iv.next1026 = add nsw i64 %indvars.iv1025, -20
  %exitcond1035.not = icmp eq i64 %178, 60
  br i1 %exitcond1035.not, label %polly.exiting284, label %polly.loop_header385

polly.loop_header392:                             ; preds = %polly.loop_exit435, %polly.loop_header385
  %indvars.iv1027 = phi i64 [ %indvars.iv.next1028, %polly.loop_exit435 ], [ %156, %polly.loop_header385 ]
  %indvars.iv1022 = phi i64 [ %indvars.iv.next1023, %polly.loop_exit435 ], [ %155, %polly.loop_header385 ]
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_exit435 ], [ %153, %polly.loop_header385 ]
  %smax1024 = call i64 @llvm.smax.i64(i64 %indvars.iv1022, i64 0)
  %179 = add i64 %smax1024, %indvars.iv1027
  %180 = shl nsw i64 %polly.indvar395, 2
  %.not.not873 = icmp ugt i64 %180, %polly.indvar388
  %181 = mul nuw nsw i64 %polly.indvar395, 80
  %182 = add nsw i64 %181, %158
  %183 = icmp sgt i64 %182, 0
  %184 = select i1 %183, i64 %182, i64 0
  %185 = add nsw i64 %182, 79
  %polly.loop_guard422.not = icmp sgt i64 %184, %185
  br i1 %.not.not873, label %polly.loop_header398.us, label %polly.loop_header392.split

polly.loop_header398.us:                          ; preds = %polly.loop_header392, %polly.loop_exit421.us
  %polly.indvar401.us = phi i64 [ %polly.indvar_next402.us, %polly.loop_exit421.us ], [ 0, %polly.loop_header392 ]
  %polly.access.mul.Packed_MemRef_call1286.us = mul nuw nsw i64 %polly.indvar401.us, 1200
  %polly.access.add.call1416.us = add nuw nsw i64 %polly.access.mul.call1415.us, %polly.indvar401.us
  %polly.access.call1417.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1416.us
  %polly.access.call1417.load.us = load double, double* %polly.access.call1417.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.Packed_MemRef_call1286.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.mul.Packed_MemRef_call1286.us
  store double %polly.access.call1417.load.us, double* %polly.access.Packed_MemRef_call1286.us, align 8
  %polly.access.add.call1416.us.1 = add nuw nsw i64 %polly.access.mul.call1415.us.1, %polly.indvar401.us
  %polly.access.call1417.us.1 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1416.us.1
  %polly.access.call1417.load.us.1 = load double, double* %polly.access.call1417.us.1, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 1
  %polly.access.Packed_MemRef_call1286.us.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.1
  store double %polly.access.call1417.load.us.1, double* %polly.access.Packed_MemRef_call1286.us.1, align 8
  %polly.access.add.call1416.us.2 = add nuw nsw i64 %polly.access.mul.call1415.us.2, %polly.indvar401.us
  %polly.access.call1417.us.2 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1416.us.2
  %polly.access.call1417.load.us.2 = load double, double* %polly.access.call1417.us.2, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 2
  %polly.access.Packed_MemRef_call1286.us.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.2
  store double %polly.access.call1417.load.us.2, double* %polly.access.Packed_MemRef_call1286.us.2, align 8
  %polly.access.add.call1416.us.3 = add nuw nsw i64 %polly.access.mul.call1415.us.3, %polly.indvar401.us
  %polly.access.call1417.us.3 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1416.us.3
  %polly.access.call1417.load.us.3 = load double, double* %polly.access.call1417.us.3, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 3
  %polly.access.Packed_MemRef_call1286.us.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.3
  store double %polly.access.call1417.load.us.3, double* %polly.access.Packed_MemRef_call1286.us.3, align 8
  %polly.access.add.call1416.us.4 = add nuw nsw i64 %polly.access.mul.call1415.us.4, %polly.indvar401.us
  %polly.access.call1417.us.4 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1416.us.4
  %polly.access.call1417.load.us.4 = load double, double* %polly.access.call1417.us.4, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 4
  %polly.access.Packed_MemRef_call1286.us.4 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.4
  store double %polly.access.call1417.load.us.4, double* %polly.access.Packed_MemRef_call1286.us.4, align 8
  %polly.access.add.call1416.us.5 = add nuw nsw i64 %polly.access.mul.call1415.us.5, %polly.indvar401.us
  %polly.access.call1417.us.5 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1416.us.5
  %polly.access.call1417.load.us.5 = load double, double* %polly.access.call1417.us.5, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 5
  %polly.access.Packed_MemRef_call1286.us.5 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.5
  store double %polly.access.call1417.load.us.5, double* %polly.access.Packed_MemRef_call1286.us.5, align 8
  %polly.access.add.call1416.us.6 = add nuw nsw i64 %polly.access.mul.call1415.us.6, %polly.indvar401.us
  %polly.access.call1417.us.6 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1416.us.6
  %polly.access.call1417.load.us.6 = load double, double* %polly.access.call1417.us.6, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 6
  %polly.access.Packed_MemRef_call1286.us.6 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.6
  store double %polly.access.call1417.load.us.6, double* %polly.access.Packed_MemRef_call1286.us.6, align 8
  %polly.access.add.call1416.us.7 = add nuw nsw i64 %polly.access.mul.call1415.us.7, %polly.indvar401.us
  %polly.access.call1417.us.7 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1416.us.7
  %polly.access.call1417.load.us.7 = load double, double* %polly.access.call1417.us.7, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 7
  %polly.access.Packed_MemRef_call1286.us.7 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.7
  store double %polly.access.call1417.load.us.7, double* %polly.access.Packed_MemRef_call1286.us.7, align 8
  %polly.access.add.call1416.us.8 = add nuw nsw i64 %polly.access.mul.call1415.us.8, %polly.indvar401.us
  %polly.access.call1417.us.8 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1416.us.8
  %polly.access.call1417.load.us.8 = load double, double* %polly.access.call1417.us.8, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286.us.8 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 8
  %polly.access.Packed_MemRef_call1286.us.8 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.8
  store double %polly.access.call1417.load.us.8, double* %polly.access.Packed_MemRef_call1286.us.8, align 8
  %polly.access.add.call1416.us.9 = add nuw nsw i64 %polly.access.mul.call1415.us.9, %polly.indvar401.us
  %polly.access.call1417.us.9 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1416.us.9
  %polly.access.call1417.load.us.9 = load double, double* %polly.access.call1417.us.9, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286.us.9 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 9
  %polly.access.Packed_MemRef_call1286.us.9 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.9
  store double %polly.access.call1417.load.us.9, double* %polly.access.Packed_MemRef_call1286.us.9, align 8
  %polly.access.add.call1416.us.10 = add nuw nsw i64 %polly.access.mul.call1415.us.10, %polly.indvar401.us
  %polly.access.call1417.us.10 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1416.us.10
  %polly.access.call1417.load.us.10 = load double, double* %polly.access.call1417.us.10, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286.us.10 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 10
  %polly.access.Packed_MemRef_call1286.us.10 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.10
  store double %polly.access.call1417.load.us.10, double* %polly.access.Packed_MemRef_call1286.us.10, align 8
  %polly.access.add.call1416.us.11 = add nuw nsw i64 %polly.access.mul.call1415.us.11, %polly.indvar401.us
  %polly.access.call1417.us.11 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1416.us.11
  %polly.access.call1417.load.us.11 = load double, double* %polly.access.call1417.us.11, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286.us.11 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 11
  %polly.access.Packed_MemRef_call1286.us.11 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.11
  store double %polly.access.call1417.load.us.11, double* %polly.access.Packed_MemRef_call1286.us.11, align 8
  %polly.access.add.call1416.us.12 = add nuw nsw i64 %polly.access.mul.call1415.us.12, %polly.indvar401.us
  %polly.access.call1417.us.12 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1416.us.12
  %polly.access.call1417.load.us.12 = load double, double* %polly.access.call1417.us.12, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286.us.12 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 12
  %polly.access.Packed_MemRef_call1286.us.12 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.12
  store double %polly.access.call1417.load.us.12, double* %polly.access.Packed_MemRef_call1286.us.12, align 8
  %polly.access.add.call1416.us.13 = add nuw nsw i64 %polly.access.mul.call1415.us.13, %polly.indvar401.us
  %polly.access.call1417.us.13 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1416.us.13
  %polly.access.call1417.load.us.13 = load double, double* %polly.access.call1417.us.13, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286.us.13 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 13
  %polly.access.Packed_MemRef_call1286.us.13 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.13
  store double %polly.access.call1417.load.us.13, double* %polly.access.Packed_MemRef_call1286.us.13, align 8
  %polly.access.add.call1416.us.14 = add nuw nsw i64 %polly.access.mul.call1415.us.14, %polly.indvar401.us
  %polly.access.call1417.us.14 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1416.us.14
  %polly.access.call1417.load.us.14 = load double, double* %polly.access.call1417.us.14, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286.us.14 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 14
  %polly.access.Packed_MemRef_call1286.us.14 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.14
  store double %polly.access.call1417.load.us.14, double* %polly.access.Packed_MemRef_call1286.us.14, align 8
  %polly.access.add.call1416.us.15 = add nuw nsw i64 %polly.access.mul.call1415.us.15, %polly.indvar401.us
  %polly.access.call1417.us.15 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1416.us.15
  %polly.access.call1417.load.us.15 = load double, double* %polly.access.call1417.us.15, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286.us.15 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 15
  %polly.access.Packed_MemRef_call1286.us.15 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.15
  store double %polly.access.call1417.load.us.15, double* %polly.access.Packed_MemRef_call1286.us.15, align 8
  %polly.access.add.call1416.us.16 = add nuw nsw i64 %polly.access.mul.call1415.us.16, %polly.indvar401.us
  %polly.access.call1417.us.16 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1416.us.16
  %polly.access.call1417.load.us.16 = load double, double* %polly.access.call1417.us.16, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286.us.16 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1286.us, 16
  %polly.access.Packed_MemRef_call1286.us.16 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.16
  store double %polly.access.call1417.load.us.16, double* %polly.access.Packed_MemRef_call1286.us.16, align 8
  %polly.access.add.call1416.us.17 = add nuw nsw i64 %polly.access.mul.call1415.us.17, %polly.indvar401.us
  %polly.access.call1417.us.17 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1416.us.17
  %polly.access.call1417.load.us.17 = load double, double* %polly.access.call1417.us.17, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286.us.17 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1286.us, 17
  %polly.access.Packed_MemRef_call1286.us.17 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.17
  store double %polly.access.call1417.load.us.17, double* %polly.access.Packed_MemRef_call1286.us.17, align 8
  %polly.access.add.call1416.us.18 = add nuw nsw i64 %polly.access.mul.call1415.us.18, %polly.indvar401.us
  %polly.access.call1417.us.18 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1416.us.18
  %polly.access.call1417.load.us.18 = load double, double* %polly.access.call1417.us.18, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286.us.18 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1286.us, 18
  %polly.access.Packed_MemRef_call1286.us.18 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.18
  store double %polly.access.call1417.load.us.18, double* %polly.access.Packed_MemRef_call1286.us.18, align 8
  %polly.access.add.call1416.us.19 = add nuw nsw i64 %polly.access.mul.call1415.us.19, %polly.indvar401.us
  %polly.access.call1417.us.19 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1416.us.19
  %polly.access.call1417.load.us.19 = load double, double* %polly.access.call1417.us.19, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286.us.19 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1286.us, 19
  %polly.access.Packed_MemRef_call1286.us.19 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.19
  store double %polly.access.call1417.load.us.19, double* %polly.access.Packed_MemRef_call1286.us.19, align 8
  br i1 %polly.loop_guard422.not, label %polly.loop_exit421.us, label %polly.loop_header419.us

polly.loop_header419.us:                          ; preds = %polly.loop_header398.us, %polly.loop_header419.us
  %polly.indvar423.us = phi i64 [ %polly.indvar_next424.us, %polly.loop_header419.us ], [ %184, %polly.loop_header398.us ]
  %186 = add nuw nsw i64 %polly.indvar423.us, %157
  %polly.access.mul.call1427.us = mul nsw i64 %186, 1000
  %polly.access.add.call1428.us = add nuw nsw i64 %polly.access.mul.call1427.us, %polly.indvar401.us
  %polly.access.call1429.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1428.us
  %polly.access.call1429.load.us = load double, double* %polly.access.call1429.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286431.us = add nuw nsw i64 %polly.indvar423.us, %polly.access.mul.Packed_MemRef_call1286.us
  %polly.access.Packed_MemRef_call1286432.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286431.us
  store double %polly.access.call1429.load.us, double* %polly.access.Packed_MemRef_call1286432.us, align 8
  %polly.indvar_next424.us = add nuw nsw i64 %polly.indvar423.us, 1
  %polly.loop_cond425.not.not.us = icmp slt i64 %polly.indvar423.us, %185
  br i1 %polly.loop_cond425.not.not.us, label %polly.loop_header419.us, label %polly.loop_exit421.us

polly.loop_exit421.us:                            ; preds = %polly.loop_header419.us, %polly.loop_header398.us
  %polly.indvar_next402.us = add nuw nsw i64 %polly.indvar401.us, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar_next402.us, 1000
  br i1 %exitcond1019.not, label %polly.loop_header433.preheader, label %polly.loop_header398.us

polly.loop_header392.split:                       ; preds = %polly.loop_header392
  br i1 %polly.loop_guard422.not, label %polly.loop_header433.preheader, label %polly.loop_header398

polly.loop_exit435:                               ; preds = %polly.loop_exit442.loopexit.us, %polly.loop_header433.preheader
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %indvars.iv.next1023 = add i64 %indvars.iv1022, -80
  %indvars.iv.next1028 = add i64 %indvars.iv1027, 80
  %exitcond1034.not = icmp eq i64 %polly.indvar_next396, 15
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
  %187 = sub nsw i64 %157, %181
  %188 = icmp sgt i64 %187, 0
  %189 = select i1 %188, i64 %187, i64 0
  %polly.loop_guard443 = icmp slt i64 %189, 80
  br i1 %polly.loop_guard443, label %polly.loop_header433.us, label %polly.loop_exit435

polly.loop_header433.us:                          ; preds = %polly.loop_header433.preheader, %polly.loop_exit442.loopexit.us
  %polly.indvar436.us = phi i64 [ %polly.indvar_next437.us, %polly.loop_exit442.loopexit.us ], [ 0, %polly.loop_header433.preheader ]
  %190 = shl nuw nsw i64 %polly.indvar436.us, 3
  %scevgep459.us = getelementptr i8, i8* %call2, i64 %190
  %polly.access.mul.Packed_MemRef_call1286455.us = mul nuw nsw i64 %polly.indvar436.us, 1200
  br label %polly.loop_header440.us

polly.loop_header440.us:                          ; preds = %polly.loop_exit450.us, %polly.loop_header433.us
  %indvars.iv1029 = phi i64 [ %indvars.iv.next1030, %polly.loop_exit450.us ], [ %179, %polly.loop_header433.us ]
  %polly.indvar444.us = phi i64 [ %polly.indvar_next445.us, %polly.loop_exit450.us ], [ %189, %polly.loop_header433.us ]
  %smin1031 = call i64 @llvm.smin.i64(i64 %indvars.iv1029, i64 19)
  %191 = add nsw i64 %polly.indvar444.us, %182
  %polly.loop_guard451.us1094 = icmp sgt i64 %191, -1
  br i1 %polly.loop_guard451.us1094, label %polly.loop_header448.preheader.us, label %polly.loop_exit450.us

polly.loop_header448.us:                          ; preds = %polly.loop_header448.preheader.us, %polly.loop_header448.us
  %polly.indvar452.us = phi i64 [ %polly.indvar_next453.us, %polly.loop_header448.us ], [ 0, %polly.loop_header448.preheader.us ]
  %192 = add nuw nsw i64 %polly.indvar452.us, %157
  %polly.access.add.Packed_MemRef_call1286456.us = add nuw nsw i64 %polly.indvar452.us, %polly.access.mul.Packed_MemRef_call1286455.us
  %polly.access.Packed_MemRef_call1286457.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286456.us
  %_p_scalar_458.us = load double, double* %polly.access.Packed_MemRef_call1286457.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_462.us, %_p_scalar_458.us
  %193 = mul nuw nsw i64 %192, 8000
  %scevgep464.us = getelementptr i8, i8* %scevgep459.us, i64 %193
  %scevgep464465.us = bitcast i8* %scevgep464.us to double*
  %_p_scalar_466.us = load double, double* %scevgep464465.us, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75.us = fmul fast double %_p_scalar_470.us, %_p_scalar_466.us
  %194 = shl i64 %192, 3
  %195 = add i64 %194, %198
  %scevgep471.us = getelementptr i8, i8* %call, i64 %195
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
  %polly.loop_cond446.us = icmp ult i64 %polly.indvar444.us, 79
  %indvars.iv.next1030 = add i64 %indvars.iv1029, 1
  br i1 %polly.loop_cond446.us, label %polly.loop_header440.us, label %polly.loop_exit442.loopexit.us

polly.loop_header448.preheader.us:                ; preds = %polly.loop_header440.us
  %196 = add nuw nsw i64 %polly.indvar444.us, %181
  %197 = mul i64 %196, 8000
  %scevgep460.us = getelementptr i8, i8* %scevgep459.us, i64 %197
  %scevgep460461.us = bitcast i8* %scevgep460.us to double*
  %_p_scalar_462.us = load double, double* %scevgep460461.us, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1286468.us = add nsw i64 %191, %polly.access.mul.Packed_MemRef_call1286455.us
  %polly.access.Packed_MemRef_call1286469.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286468.us
  %_p_scalar_470.us = load double, double* %polly.access.Packed_MemRef_call1286469.us, align 8
  %198 = mul i64 %196, 9600
  br label %polly.loop_header448.us

polly.loop_exit442.loopexit.us:                   ; preds = %polly.loop_exit450.us
  %polly.indvar_next437.us = add nuw nsw i64 %polly.indvar436.us, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next437.us, 1000
  br i1 %exitcond1033.not, label %polly.loop_exit435, label %polly.loop_header433.us

polly.loop_header419:                             ; preds = %polly.loop_header398, %polly.loop_header419
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_header419 ], [ %184, %polly.loop_header398 ]
  %199 = add nuw nsw i64 %polly.indvar423, %157
  %polly.access.mul.call1427 = mul nsw i64 %199, 1000
  %polly.access.add.call1428 = add nuw nsw i64 %polly.access.mul.call1427, %polly.indvar401
  %polly.access.call1429 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1428
  %polly.access.call1429.load = load double, double* %polly.access.call1429, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286431 = add nuw nsw i64 %polly.indvar423, %polly.access.mul.Packed_MemRef_call1286430
  %polly.access.Packed_MemRef_call1286432 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286431
  store double %polly.access.call1429.load, double* %polly.access.Packed_MemRef_call1286432, align 8
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %polly.loop_cond425.not.not = icmp slt i64 %polly.indvar423, %185
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
  %200 = add i64 %indvar, 1
  %201 = mul nuw nsw i64 %polly.indvar565, 9600
  %scevgep574 = getelementptr i8, i8* %call, i64 %201
  %min.iters.check1185 = icmp ult i64 %200, 4
  br i1 %min.iters.check1185, label %polly.loop_header568.preheader, label %vector.ph1186

vector.ph1186:                                    ; preds = %polly.loop_header562
  %n.vec1188 = and i64 %200, -4
  br label %vector.body1184

vector.body1184:                                  ; preds = %vector.body1184, %vector.ph1186
  %index1189 = phi i64 [ 0, %vector.ph1186 ], [ %index.next1190, %vector.body1184 ]
  %202 = shl nuw nsw i64 %index1189, 3
  %203 = getelementptr i8, i8* %scevgep574, i64 %202
  %204 = bitcast i8* %203 to <4 x double>*
  %wide.load1193 = load <4 x double>, <4 x double>* %204, align 8, !alias.scope !89, !noalias !91
  %205 = fmul fast <4 x double> %wide.load1193, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %206 = bitcast i8* %203 to <4 x double>*
  store <4 x double> %205, <4 x double>* %206, align 8, !alias.scope !89, !noalias !91
  %index.next1190 = add i64 %index1189, 4
  %207 = icmp eq i64 %index.next1190, %n.vec1188
  br i1 %207, label %middle.block1182, label %vector.body1184, !llvm.loop !95

middle.block1182:                                 ; preds = %vector.body1184
  %cmp.n1192 = icmp eq i64 %200, %n.vec1188
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
  %208 = shl nuw nsw i64 %polly.indvar571, 3
  %scevgep575 = getelementptr i8, i8* %scevgep574, i64 %208
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
  %polly.indvar581 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %234, %polly.loop_exit587 ]
  %209 = lshr i64 %polly.indvar581, 2
  %210 = mul nuw nsw i64 %209, 80
  %211 = sub nsw i64 %indvars.iv1041, %210
  %212 = add i64 %indvars.iv1046, %210
  %213 = mul nuw nsw i64 %polly.indvar581, 20
  %214 = mul nsw i64 %polly.indvar581, -20
  %polly.access.mul.call1608.us = mul nuw i64 %polly.indvar581, 20000
  %215 = or i64 %213, 1
  %polly.access.mul.call1608.us.1 = mul nuw nsw i64 %215, 1000
  %216 = or i64 %213, 2
  %polly.access.mul.call1608.us.2 = mul nuw nsw i64 %216, 1000
  %217 = or i64 %213, 3
  %polly.access.mul.call1608.us.3 = mul nuw nsw i64 %217, 1000
  %218 = mul i64 %polly.indvar581, 20000
  %polly.access.mul.call1608.us.4 = add i64 %218, 4000
  %219 = mul i64 %polly.indvar581, 20000
  %polly.access.mul.call1608.us.5 = add i64 %219, 5000
  %220 = mul i64 %polly.indvar581, 20000
  %polly.access.mul.call1608.us.6 = add i64 %220, 6000
  %221 = mul i64 %polly.indvar581, 20000
  %polly.access.mul.call1608.us.7 = add i64 %221, 7000
  %222 = mul i64 %polly.indvar581, 20000
  %polly.access.mul.call1608.us.8 = add i64 %222, 8000
  %223 = mul i64 %polly.indvar581, 20000
  %polly.access.mul.call1608.us.9 = add i64 %223, 9000
  %224 = mul i64 %polly.indvar581, 20000
  %polly.access.mul.call1608.us.10 = add i64 %224, 10000
  %225 = mul i64 %polly.indvar581, 20000
  %polly.access.mul.call1608.us.11 = add i64 %225, 11000
  %226 = mul i64 %polly.indvar581, 20000
  %polly.access.mul.call1608.us.12 = add i64 %226, 12000
  %227 = mul i64 %polly.indvar581, 20000
  %polly.access.mul.call1608.us.13 = add i64 %227, 13000
  %228 = mul i64 %polly.indvar581, 20000
  %polly.access.mul.call1608.us.14 = add i64 %228, 14000
  %229 = mul i64 %polly.indvar581, 20000
  %polly.access.mul.call1608.us.15 = add i64 %229, 15000
  %230 = mul i64 %polly.indvar581, 20000
  %polly.access.mul.call1608.us.16 = add i64 %230, 16000
  %231 = mul i64 %polly.indvar581, 20000
  %polly.access.mul.call1608.us.17 = add i64 %231, 17000
  %232 = mul i64 %polly.indvar581, 20000
  %polly.access.mul.call1608.us.18 = add i64 %232, 18000
  %233 = mul i64 %polly.indvar581, 20000
  %polly.access.mul.call1608.us.19 = add i64 %233, 19000
  br label %polly.loop_header585

polly.loop_exit587:                               ; preds = %polly.loop_exit628
  %234 = add nuw nsw i64 %polly.indvar581, 1
  %indvars.iv.next1042 = add nuw nsw i64 %indvars.iv1041, 20
  %indvars.iv.next1047 = add nsw i64 %indvars.iv1046, -20
  %exitcond1056.not = icmp eq i64 %234, 60
  br i1 %exitcond1056.not, label %polly.exiting477, label %polly.loop_header578

polly.loop_header585:                             ; preds = %polly.loop_exit628, %polly.loop_header578
  %indvars.iv1048 = phi i64 [ %indvars.iv.next1049, %polly.loop_exit628 ], [ %212, %polly.loop_header578 ]
  %indvars.iv1043 = phi i64 [ %indvars.iv.next1044, %polly.loop_exit628 ], [ %211, %polly.loop_header578 ]
  %polly.indvar588 = phi i64 [ %polly.indvar_next589, %polly.loop_exit628 ], [ %209, %polly.loop_header578 ]
  %smax1045 = call i64 @llvm.smax.i64(i64 %indvars.iv1043, i64 0)
  %235 = add i64 %smax1045, %indvars.iv1048
  %236 = shl nsw i64 %polly.indvar588, 2
  %.not.not874 = icmp ugt i64 %236, %polly.indvar581
  %237 = mul nuw nsw i64 %polly.indvar588, 80
  %238 = add nsw i64 %237, %214
  %239 = icmp sgt i64 %238, 0
  %240 = select i1 %239, i64 %238, i64 0
  %241 = add nsw i64 %238, 79
  %polly.loop_guard615.not = icmp sgt i64 %240, %241
  br i1 %.not.not874, label %polly.loop_header591.us, label %polly.loop_header585.split

polly.loop_header591.us:                          ; preds = %polly.loop_header585, %polly.loop_exit614.us
  %polly.indvar594.us = phi i64 [ %polly.indvar_next595.us, %polly.loop_exit614.us ], [ 0, %polly.loop_header585 ]
  %polly.access.mul.Packed_MemRef_call1479.us = mul nuw nsw i64 %polly.indvar594.us, 1200
  %polly.access.add.call1609.us = add nuw nsw i64 %polly.access.mul.call1608.us, %polly.indvar594.us
  %polly.access.call1610.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1609.us
  %polly.access.call1610.load.us = load double, double* %polly.access.call1610.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.Packed_MemRef_call1479.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.mul.Packed_MemRef_call1479.us
  store double %polly.access.call1610.load.us, double* %polly.access.Packed_MemRef_call1479.us, align 8
  %polly.access.add.call1609.us.1 = add nuw nsw i64 %polly.access.mul.call1608.us.1, %polly.indvar594.us
  %polly.access.call1610.us.1 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1609.us.1
  %polly.access.call1610.load.us.1 = load double, double* %polly.access.call1610.us.1, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1479.us, 1
  %polly.access.Packed_MemRef_call1479.us.1 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us.1
  store double %polly.access.call1610.load.us.1, double* %polly.access.Packed_MemRef_call1479.us.1, align 8
  %polly.access.add.call1609.us.2 = add nuw nsw i64 %polly.access.mul.call1608.us.2, %polly.indvar594.us
  %polly.access.call1610.us.2 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1609.us.2
  %polly.access.call1610.load.us.2 = load double, double* %polly.access.call1610.us.2, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1479.us, 2
  %polly.access.Packed_MemRef_call1479.us.2 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us.2
  store double %polly.access.call1610.load.us.2, double* %polly.access.Packed_MemRef_call1479.us.2, align 8
  %polly.access.add.call1609.us.3 = add nuw nsw i64 %polly.access.mul.call1608.us.3, %polly.indvar594.us
  %polly.access.call1610.us.3 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1609.us.3
  %polly.access.call1610.load.us.3 = load double, double* %polly.access.call1610.us.3, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1479.us, 3
  %polly.access.Packed_MemRef_call1479.us.3 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us.3
  store double %polly.access.call1610.load.us.3, double* %polly.access.Packed_MemRef_call1479.us.3, align 8
  %polly.access.add.call1609.us.4 = add nuw nsw i64 %polly.access.mul.call1608.us.4, %polly.indvar594.us
  %polly.access.call1610.us.4 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1609.us.4
  %polly.access.call1610.load.us.4 = load double, double* %polly.access.call1610.us.4, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1479.us, 4
  %polly.access.Packed_MemRef_call1479.us.4 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us.4
  store double %polly.access.call1610.load.us.4, double* %polly.access.Packed_MemRef_call1479.us.4, align 8
  %polly.access.add.call1609.us.5 = add nuw nsw i64 %polly.access.mul.call1608.us.5, %polly.indvar594.us
  %polly.access.call1610.us.5 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1609.us.5
  %polly.access.call1610.load.us.5 = load double, double* %polly.access.call1610.us.5, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1479.us, 5
  %polly.access.Packed_MemRef_call1479.us.5 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us.5
  store double %polly.access.call1610.load.us.5, double* %polly.access.Packed_MemRef_call1479.us.5, align 8
  %polly.access.add.call1609.us.6 = add nuw nsw i64 %polly.access.mul.call1608.us.6, %polly.indvar594.us
  %polly.access.call1610.us.6 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1609.us.6
  %polly.access.call1610.load.us.6 = load double, double* %polly.access.call1610.us.6, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1479.us, 6
  %polly.access.Packed_MemRef_call1479.us.6 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us.6
  store double %polly.access.call1610.load.us.6, double* %polly.access.Packed_MemRef_call1479.us.6, align 8
  %polly.access.add.call1609.us.7 = add nuw nsw i64 %polly.access.mul.call1608.us.7, %polly.indvar594.us
  %polly.access.call1610.us.7 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1609.us.7
  %polly.access.call1610.load.us.7 = load double, double* %polly.access.call1610.us.7, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1479.us, 7
  %polly.access.Packed_MemRef_call1479.us.7 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us.7
  store double %polly.access.call1610.load.us.7, double* %polly.access.Packed_MemRef_call1479.us.7, align 8
  %polly.access.add.call1609.us.8 = add nuw nsw i64 %polly.access.mul.call1608.us.8, %polly.indvar594.us
  %polly.access.call1610.us.8 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1609.us.8
  %polly.access.call1610.load.us.8 = load double, double* %polly.access.call1610.us.8, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479.us.8 = or i64 %polly.access.mul.Packed_MemRef_call1479.us, 8
  %polly.access.Packed_MemRef_call1479.us.8 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us.8
  store double %polly.access.call1610.load.us.8, double* %polly.access.Packed_MemRef_call1479.us.8, align 8
  %polly.access.add.call1609.us.9 = add nuw nsw i64 %polly.access.mul.call1608.us.9, %polly.indvar594.us
  %polly.access.call1610.us.9 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1609.us.9
  %polly.access.call1610.load.us.9 = load double, double* %polly.access.call1610.us.9, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479.us.9 = or i64 %polly.access.mul.Packed_MemRef_call1479.us, 9
  %polly.access.Packed_MemRef_call1479.us.9 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us.9
  store double %polly.access.call1610.load.us.9, double* %polly.access.Packed_MemRef_call1479.us.9, align 8
  %polly.access.add.call1609.us.10 = add nuw nsw i64 %polly.access.mul.call1608.us.10, %polly.indvar594.us
  %polly.access.call1610.us.10 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1609.us.10
  %polly.access.call1610.load.us.10 = load double, double* %polly.access.call1610.us.10, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479.us.10 = or i64 %polly.access.mul.Packed_MemRef_call1479.us, 10
  %polly.access.Packed_MemRef_call1479.us.10 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us.10
  store double %polly.access.call1610.load.us.10, double* %polly.access.Packed_MemRef_call1479.us.10, align 8
  %polly.access.add.call1609.us.11 = add nuw nsw i64 %polly.access.mul.call1608.us.11, %polly.indvar594.us
  %polly.access.call1610.us.11 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1609.us.11
  %polly.access.call1610.load.us.11 = load double, double* %polly.access.call1610.us.11, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479.us.11 = or i64 %polly.access.mul.Packed_MemRef_call1479.us, 11
  %polly.access.Packed_MemRef_call1479.us.11 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us.11
  store double %polly.access.call1610.load.us.11, double* %polly.access.Packed_MemRef_call1479.us.11, align 8
  %polly.access.add.call1609.us.12 = add nuw nsw i64 %polly.access.mul.call1608.us.12, %polly.indvar594.us
  %polly.access.call1610.us.12 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1609.us.12
  %polly.access.call1610.load.us.12 = load double, double* %polly.access.call1610.us.12, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479.us.12 = or i64 %polly.access.mul.Packed_MemRef_call1479.us, 12
  %polly.access.Packed_MemRef_call1479.us.12 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us.12
  store double %polly.access.call1610.load.us.12, double* %polly.access.Packed_MemRef_call1479.us.12, align 8
  %polly.access.add.call1609.us.13 = add nuw nsw i64 %polly.access.mul.call1608.us.13, %polly.indvar594.us
  %polly.access.call1610.us.13 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1609.us.13
  %polly.access.call1610.load.us.13 = load double, double* %polly.access.call1610.us.13, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479.us.13 = or i64 %polly.access.mul.Packed_MemRef_call1479.us, 13
  %polly.access.Packed_MemRef_call1479.us.13 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us.13
  store double %polly.access.call1610.load.us.13, double* %polly.access.Packed_MemRef_call1479.us.13, align 8
  %polly.access.add.call1609.us.14 = add nuw nsw i64 %polly.access.mul.call1608.us.14, %polly.indvar594.us
  %polly.access.call1610.us.14 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1609.us.14
  %polly.access.call1610.load.us.14 = load double, double* %polly.access.call1610.us.14, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479.us.14 = or i64 %polly.access.mul.Packed_MemRef_call1479.us, 14
  %polly.access.Packed_MemRef_call1479.us.14 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us.14
  store double %polly.access.call1610.load.us.14, double* %polly.access.Packed_MemRef_call1479.us.14, align 8
  %polly.access.add.call1609.us.15 = add nuw nsw i64 %polly.access.mul.call1608.us.15, %polly.indvar594.us
  %polly.access.call1610.us.15 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1609.us.15
  %polly.access.call1610.load.us.15 = load double, double* %polly.access.call1610.us.15, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479.us.15 = or i64 %polly.access.mul.Packed_MemRef_call1479.us, 15
  %polly.access.Packed_MemRef_call1479.us.15 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us.15
  store double %polly.access.call1610.load.us.15, double* %polly.access.Packed_MemRef_call1479.us.15, align 8
  %polly.access.add.call1609.us.16 = add nuw nsw i64 %polly.access.mul.call1608.us.16, %polly.indvar594.us
  %polly.access.call1610.us.16 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1609.us.16
  %polly.access.call1610.load.us.16 = load double, double* %polly.access.call1610.us.16, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479.us.16 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1479.us, 16
  %polly.access.Packed_MemRef_call1479.us.16 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us.16
  store double %polly.access.call1610.load.us.16, double* %polly.access.Packed_MemRef_call1479.us.16, align 8
  %polly.access.add.call1609.us.17 = add nuw nsw i64 %polly.access.mul.call1608.us.17, %polly.indvar594.us
  %polly.access.call1610.us.17 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1609.us.17
  %polly.access.call1610.load.us.17 = load double, double* %polly.access.call1610.us.17, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479.us.17 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1479.us, 17
  %polly.access.Packed_MemRef_call1479.us.17 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us.17
  store double %polly.access.call1610.load.us.17, double* %polly.access.Packed_MemRef_call1479.us.17, align 8
  %polly.access.add.call1609.us.18 = add nuw nsw i64 %polly.access.mul.call1608.us.18, %polly.indvar594.us
  %polly.access.call1610.us.18 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1609.us.18
  %polly.access.call1610.load.us.18 = load double, double* %polly.access.call1610.us.18, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479.us.18 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1479.us, 18
  %polly.access.Packed_MemRef_call1479.us.18 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us.18
  store double %polly.access.call1610.load.us.18, double* %polly.access.Packed_MemRef_call1479.us.18, align 8
  %polly.access.add.call1609.us.19 = add nuw nsw i64 %polly.access.mul.call1608.us.19, %polly.indvar594.us
  %polly.access.call1610.us.19 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1609.us.19
  %polly.access.call1610.load.us.19 = load double, double* %polly.access.call1610.us.19, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479.us.19 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1479.us, 19
  %polly.access.Packed_MemRef_call1479.us.19 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us.19
  store double %polly.access.call1610.load.us.19, double* %polly.access.Packed_MemRef_call1479.us.19, align 8
  br i1 %polly.loop_guard615.not, label %polly.loop_exit614.us, label %polly.loop_header612.us

polly.loop_header612.us:                          ; preds = %polly.loop_header591.us, %polly.loop_header612.us
  %polly.indvar616.us = phi i64 [ %polly.indvar_next617.us, %polly.loop_header612.us ], [ %240, %polly.loop_header591.us ]
  %242 = add nuw nsw i64 %polly.indvar616.us, %213
  %polly.access.mul.call1620.us = mul nsw i64 %242, 1000
  %polly.access.add.call1621.us = add nuw nsw i64 %polly.access.mul.call1620.us, %polly.indvar594.us
  %polly.access.call1622.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1621.us
  %polly.access.call1622.load.us = load double, double* %polly.access.call1622.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479624.us = add nuw nsw i64 %polly.indvar616.us, %polly.access.mul.Packed_MemRef_call1479.us
  %polly.access.Packed_MemRef_call1479625.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479624.us
  store double %polly.access.call1622.load.us, double* %polly.access.Packed_MemRef_call1479625.us, align 8
  %polly.indvar_next617.us = add nuw nsw i64 %polly.indvar616.us, 1
  %polly.loop_cond618.not.not.us = icmp slt i64 %polly.indvar616.us, %241
  br i1 %polly.loop_cond618.not.not.us, label %polly.loop_header612.us, label %polly.loop_exit614.us

polly.loop_exit614.us:                            ; preds = %polly.loop_header612.us, %polly.loop_header591.us
  %polly.indvar_next595.us = add nuw nsw i64 %polly.indvar594.us, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar_next595.us, 1000
  br i1 %exitcond1040.not, label %polly.loop_header626.preheader, label %polly.loop_header591.us

polly.loop_header585.split:                       ; preds = %polly.loop_header585
  br i1 %polly.loop_guard615.not, label %polly.loop_header626.preheader, label %polly.loop_header591

polly.loop_exit628:                               ; preds = %polly.loop_exit635.loopexit.us, %polly.loop_header626.preheader
  %polly.indvar_next589 = add nuw nsw i64 %polly.indvar588, 1
  %indvars.iv.next1044 = add i64 %indvars.iv1043, -80
  %indvars.iv.next1049 = add i64 %indvars.iv1048, 80
  %exitcond1055.not = icmp eq i64 %polly.indvar_next589, 15
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
  %243 = sub nsw i64 %213, %237
  %244 = icmp sgt i64 %243, 0
  %245 = select i1 %244, i64 %243, i64 0
  %polly.loop_guard636 = icmp slt i64 %245, 80
  br i1 %polly.loop_guard636, label %polly.loop_header626.us, label %polly.loop_exit628

polly.loop_header626.us:                          ; preds = %polly.loop_header626.preheader, %polly.loop_exit635.loopexit.us
  %polly.indvar629.us = phi i64 [ %polly.indvar_next630.us, %polly.loop_exit635.loopexit.us ], [ 0, %polly.loop_header626.preheader ]
  %246 = shl nuw nsw i64 %polly.indvar629.us, 3
  %scevgep652.us = getelementptr i8, i8* %call2, i64 %246
  %polly.access.mul.Packed_MemRef_call1479648.us = mul nuw nsw i64 %polly.indvar629.us, 1200
  br label %polly.loop_header633.us

polly.loop_header633.us:                          ; preds = %polly.loop_exit643.us, %polly.loop_header626.us
  %indvars.iv1050 = phi i64 [ %indvars.iv.next1051, %polly.loop_exit643.us ], [ %235, %polly.loop_header626.us ]
  %polly.indvar637.us = phi i64 [ %polly.indvar_next638.us, %polly.loop_exit643.us ], [ %245, %polly.loop_header626.us ]
  %smin1052 = call i64 @llvm.smin.i64(i64 %indvars.iv1050, i64 19)
  %247 = add nsw i64 %polly.indvar637.us, %238
  %polly.loop_guard644.us1095 = icmp sgt i64 %247, -1
  br i1 %polly.loop_guard644.us1095, label %polly.loop_header641.preheader.us, label %polly.loop_exit643.us

polly.loop_header641.us:                          ; preds = %polly.loop_header641.preheader.us, %polly.loop_header641.us
  %polly.indvar645.us = phi i64 [ %polly.indvar_next646.us, %polly.loop_header641.us ], [ 0, %polly.loop_header641.preheader.us ]
  %248 = add nuw nsw i64 %polly.indvar645.us, %213
  %polly.access.add.Packed_MemRef_call1479649.us = add nuw nsw i64 %polly.indvar645.us, %polly.access.mul.Packed_MemRef_call1479648.us
  %polly.access.Packed_MemRef_call1479650.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479649.us
  %_p_scalar_651.us = load double, double* %polly.access.Packed_MemRef_call1479650.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_655.us, %_p_scalar_651.us
  %249 = mul nuw nsw i64 %248, 8000
  %scevgep657.us = getelementptr i8, i8* %scevgep652.us, i64 %249
  %scevgep657658.us = bitcast i8* %scevgep657.us to double*
  %_p_scalar_659.us = load double, double* %scevgep657658.us, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i.us = fmul fast double %_p_scalar_663.us, %_p_scalar_659.us
  %250 = shl i64 %248, 3
  %251 = add i64 %250, %254
  %scevgep664.us = getelementptr i8, i8* %call, i64 %251
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
  %polly.loop_cond639.us = icmp ult i64 %polly.indvar637.us, 79
  %indvars.iv.next1051 = add i64 %indvars.iv1050, 1
  br i1 %polly.loop_cond639.us, label %polly.loop_header633.us, label %polly.loop_exit635.loopexit.us

polly.loop_header641.preheader.us:                ; preds = %polly.loop_header633.us
  %252 = add nuw nsw i64 %polly.indvar637.us, %237
  %253 = mul i64 %252, 8000
  %scevgep653.us = getelementptr i8, i8* %scevgep652.us, i64 %253
  %scevgep653654.us = bitcast i8* %scevgep653.us to double*
  %_p_scalar_655.us = load double, double* %scevgep653654.us, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1479661.us = add nsw i64 %247, %polly.access.mul.Packed_MemRef_call1479648.us
  %polly.access.Packed_MemRef_call1479662.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479661.us
  %_p_scalar_663.us = load double, double* %polly.access.Packed_MemRef_call1479662.us, align 8
  %254 = mul i64 %252, 9600
  br label %polly.loop_header641.us

polly.loop_exit635.loopexit.us:                   ; preds = %polly.loop_exit643.us
  %polly.indvar_next630.us = add nuw nsw i64 %polly.indvar629.us, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar_next630.us, 1000
  br i1 %exitcond1054.not, label %polly.loop_exit628, label %polly.loop_header626.us

polly.loop_header612:                             ; preds = %polly.loop_header591, %polly.loop_header612
  %polly.indvar616 = phi i64 [ %polly.indvar_next617, %polly.loop_header612 ], [ %240, %polly.loop_header591 ]
  %255 = add nuw nsw i64 %polly.indvar616, %213
  %polly.access.mul.call1620 = mul nsw i64 %255, 1000
  %polly.access.add.call1621 = add nuw nsw i64 %polly.access.mul.call1620, %polly.indvar594
  %polly.access.call1622 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1621
  %polly.access.call1622.load = load double, double* %polly.access.call1622, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1479624 = add nuw nsw i64 %polly.indvar616, %polly.access.mul.Packed_MemRef_call1479623
  %polly.access.Packed_MemRef_call1479625 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479624
  store double %polly.access.call1622.load, double* %polly.access.Packed_MemRef_call1479625, align 8
  %polly.indvar_next617 = add nuw nsw i64 %polly.indvar616, 1
  %polly.loop_cond618.not.not = icmp slt i64 %polly.indvar616, %241
  br i1 %polly.loop_cond618.not.not, label %polly.loop_header612, label %polly.loop_exit614

polly.loop_header793:                             ; preds = %entry, %polly.loop_exit801
  %indvars.iv1083 = phi i64 [ %indvars.iv.next1084, %polly.loop_exit801 ], [ 0, %entry ]
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %entry ]
  %smin1085 = call i64 @llvm.smin.i64(i64 %indvars.iv1083, i64 -1168)
  %256 = shl nsw i64 %polly.indvar796, 5
  %257 = add nsw i64 %smin1085, 1199
  br label %polly.loop_header799

polly.loop_exit801:                               ; preds = %polly.loop_exit807
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %indvars.iv.next1084 = add nsw i64 %indvars.iv1083, -32
  %exitcond1088.not = icmp eq i64 %polly.indvar_next797, 38
  br i1 %exitcond1088.not, label %polly.loop_header820, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_exit807, %polly.loop_header793
  %indvars.iv1079 = phi i64 [ %indvars.iv.next1080, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %258 = mul nsw i64 %polly.indvar802, -32
  %smin1123 = call i64 @llvm.smin.i64(i64 %258, i64 -1168)
  %259 = add nsw i64 %smin1123, 1200
  %smin1081 = call i64 @llvm.smin.i64(i64 %indvars.iv1079, i64 -1168)
  %260 = shl nsw i64 %polly.indvar802, 5
  %261 = add nsw i64 %smin1081, 1199
  br label %polly.loop_header805

polly.loop_exit807:                               ; preds = %polly.loop_exit813
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %indvars.iv.next1080 = add nsw i64 %indvars.iv1079, -32
  %exitcond1087.not = icmp eq i64 %polly.indvar_next803, 38
  br i1 %exitcond1087.not, label %polly.loop_exit801, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_exit813, %polly.loop_header799
  %polly.indvar808 = phi i64 [ 0, %polly.loop_header799 ], [ %polly.indvar_next809, %polly.loop_exit813 ]
  %262 = add nuw nsw i64 %polly.indvar808, %256
  %263 = trunc i64 %262 to i32
  %264 = mul nuw nsw i64 %262, 9600
  %min.iters.check = icmp eq i64 %259, 0
  br i1 %min.iters.check, label %polly.loop_header811, label %vector.ph1124

vector.ph1124:                                    ; preds = %polly.loop_header805
  %broadcast.splatinsert1131 = insertelement <4 x i64> poison, i64 %260, i32 0
  %broadcast.splat1132 = shufflevector <4 x i64> %broadcast.splatinsert1131, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1133 = insertelement <4 x i32> poison, i32 %263, i32 0
  %broadcast.splat1134 = shufflevector <4 x i32> %broadcast.splatinsert1133, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1122

vector.body1122:                                  ; preds = %vector.body1122, %vector.ph1124
  %index1125 = phi i64 [ 0, %vector.ph1124 ], [ %index.next1126, %vector.body1122 ]
  %vec.ind1129 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1124 ], [ %vec.ind.next1130, %vector.body1122 ]
  %265 = add nuw nsw <4 x i64> %vec.ind1129, %broadcast.splat1132
  %266 = trunc <4 x i64> %265 to <4 x i32>
  %267 = mul <4 x i32> %broadcast.splat1134, %266
  %268 = add <4 x i32> %267, <i32 3, i32 3, i32 3, i32 3>
  %269 = urem <4 x i32> %268, <i32 1200, i32 1200, i32 1200, i32 1200>
  %270 = sitofp <4 x i32> %269 to <4 x double>
  %271 = fmul fast <4 x double> %270, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %272 = extractelement <4 x i64> %265, i32 0
  %273 = shl i64 %272, 3
  %274 = add nuw nsw i64 %273, %264
  %275 = getelementptr i8, i8* %call, i64 %274
  %276 = bitcast i8* %275 to <4 x double>*
  store <4 x double> %271, <4 x double>* %276, align 8, !alias.scope !99, !noalias !101
  %index.next1126 = add i64 %index1125, 4
  %vec.ind.next1130 = add <4 x i64> %vec.ind1129, <i64 4, i64 4, i64 4, i64 4>
  %277 = icmp eq i64 %index.next1126, %259
  br i1 %277, label %polly.loop_exit813, label %vector.body1122, !llvm.loop !104

polly.loop_exit813:                               ; preds = %vector.body1122, %polly.loop_header811
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar808, %257
  br i1 %exitcond1086.not, label %polly.loop_exit807, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_header805, %polly.loop_header811
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_header811 ], [ 0, %polly.loop_header805 ]
  %278 = add nuw nsw i64 %polly.indvar814, %260
  %279 = trunc i64 %278 to i32
  %280 = mul i32 %279, %263
  %281 = add i32 %280, 3
  %282 = urem i32 %281, 1200
  %p_conv31.i = sitofp i32 %282 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %283 = shl i64 %278, 3
  %284 = add nuw nsw i64 %283, %264
  %scevgep817 = getelementptr i8, i8* %call, i64 %284
  %scevgep817818 = bitcast i8* %scevgep817 to double*
  store double %p_div33.i, double* %scevgep817818, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar814, %261
  br i1 %exitcond1082.not, label %polly.loop_exit813, label %polly.loop_header811, !llvm.loop !105

polly.loop_header820:                             ; preds = %polly.loop_exit801, %polly.loop_exit828
  %indvars.iv1073 = phi i64 [ %indvars.iv.next1074, %polly.loop_exit828 ], [ 0, %polly.loop_exit801 ]
  %polly.indvar823 = phi i64 [ %polly.indvar_next824, %polly.loop_exit828 ], [ 0, %polly.loop_exit801 ]
  %smin1075 = call i64 @llvm.smin.i64(i64 %indvars.iv1073, i64 -1168)
  %285 = shl nsw i64 %polly.indvar823, 5
  %286 = add nsw i64 %smin1075, 1199
  br label %polly.loop_header826

polly.loop_exit828:                               ; preds = %polly.loop_exit834
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %indvars.iv.next1074 = add nsw i64 %indvars.iv1073, -32
  %exitcond1078.not = icmp eq i64 %polly.indvar_next824, 38
  br i1 %exitcond1078.not, label %polly.loop_header846, label %polly.loop_header820

polly.loop_header826:                             ; preds = %polly.loop_exit834, %polly.loop_header820
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit834 ], [ 0, %polly.loop_header820 ]
  %polly.indvar829 = phi i64 [ %polly.indvar_next830, %polly.loop_exit834 ], [ 0, %polly.loop_header820 ]
  %287 = mul nsw i64 %polly.indvar829, -32
  %smin1138 = call i64 @llvm.smin.i64(i64 %287, i64 -968)
  %288 = add nsw i64 %smin1138, 1000
  %smin1071 = call i64 @llvm.smin.i64(i64 %indvars.iv1069, i64 -968)
  %289 = shl nsw i64 %polly.indvar829, 5
  %290 = add nsw i64 %smin1071, 999
  br label %polly.loop_header832

polly.loop_exit834:                               ; preds = %polly.loop_exit840
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %indvars.iv.next1070 = add nsw i64 %indvars.iv1069, -32
  %exitcond1077.not = icmp eq i64 %polly.indvar_next830, 32
  br i1 %exitcond1077.not, label %polly.loop_exit828, label %polly.loop_header826

polly.loop_header832:                             ; preds = %polly.loop_exit840, %polly.loop_header826
  %polly.indvar835 = phi i64 [ 0, %polly.loop_header826 ], [ %polly.indvar_next836, %polly.loop_exit840 ]
  %291 = add nuw nsw i64 %polly.indvar835, %285
  %292 = trunc i64 %291 to i32
  %293 = mul nuw nsw i64 %291, 8000
  %min.iters.check1139 = icmp eq i64 %288, 0
  br i1 %min.iters.check1139, label %polly.loop_header838, label %vector.ph1140

vector.ph1140:                                    ; preds = %polly.loop_header832
  %broadcast.splatinsert1149 = insertelement <4 x i64> poison, i64 %289, i32 0
  %broadcast.splat1150 = shufflevector <4 x i64> %broadcast.splatinsert1149, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1151 = insertelement <4 x i32> poison, i32 %292, i32 0
  %broadcast.splat1152 = shufflevector <4 x i32> %broadcast.splatinsert1151, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1137

vector.body1137:                                  ; preds = %vector.body1137, %vector.ph1140
  %index1143 = phi i64 [ 0, %vector.ph1140 ], [ %index.next1144, %vector.body1137 ]
  %vec.ind1147 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1140 ], [ %vec.ind.next1148, %vector.body1137 ]
  %294 = add nuw nsw <4 x i64> %vec.ind1147, %broadcast.splat1150
  %295 = trunc <4 x i64> %294 to <4 x i32>
  %296 = mul <4 x i32> %broadcast.splat1152, %295
  %297 = add <4 x i32> %296, <i32 2, i32 2, i32 2, i32 2>
  %298 = urem <4 x i32> %297, <i32 1000, i32 1000, i32 1000, i32 1000>
  %299 = sitofp <4 x i32> %298 to <4 x double>
  %300 = fmul fast <4 x double> %299, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %301 = extractelement <4 x i64> %294, i32 0
  %302 = shl i64 %301, 3
  %303 = add nuw nsw i64 %302, %293
  %304 = getelementptr i8, i8* %call2, i64 %303
  %305 = bitcast i8* %304 to <4 x double>*
  store <4 x double> %300, <4 x double>* %305, align 8, !alias.scope !103, !noalias !106
  %index.next1144 = add i64 %index1143, 4
  %vec.ind.next1148 = add <4 x i64> %vec.ind1147, <i64 4, i64 4, i64 4, i64 4>
  %306 = icmp eq i64 %index.next1144, %288
  br i1 %306, label %polly.loop_exit840, label %vector.body1137, !llvm.loop !107

polly.loop_exit840:                               ; preds = %vector.body1137, %polly.loop_header838
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar835, %286
  br i1 %exitcond1076.not, label %polly.loop_exit834, label %polly.loop_header832

polly.loop_header838:                             ; preds = %polly.loop_header832, %polly.loop_header838
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_header838 ], [ 0, %polly.loop_header832 ]
  %307 = add nuw nsw i64 %polly.indvar841, %289
  %308 = trunc i64 %307 to i32
  %309 = mul i32 %308, %292
  %310 = add i32 %309, 2
  %311 = urem i32 %310, 1000
  %p_conv10.i = sitofp i32 %311 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %312 = shl i64 %307, 3
  %313 = add nuw nsw i64 %312, %293
  %scevgep844 = getelementptr i8, i8* %call2, i64 %313
  %scevgep844845 = bitcast i8* %scevgep844 to double*
  store double %p_div12.i, double* %scevgep844845, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar841, %290
  br i1 %exitcond1072.not, label %polly.loop_exit840, label %polly.loop_header838, !llvm.loop !108

polly.loop_header846:                             ; preds = %polly.loop_exit828, %polly.loop_exit854
  %indvars.iv1063 = phi i64 [ %indvars.iv.next1064, %polly.loop_exit854 ], [ 0, %polly.loop_exit828 ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %polly.loop_exit828 ]
  %smin1065 = call i64 @llvm.smin.i64(i64 %indvars.iv1063, i64 -1168)
  %314 = shl nsw i64 %polly.indvar849, 5
  %315 = add nsw i64 %smin1065, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1064 = add nsw i64 %indvars.iv1063, -32
  %exitcond1068.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1068.not, label %init_array.exit, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %316 = mul nsw i64 %polly.indvar855, -32
  %smin1156 = call i64 @llvm.smin.i64(i64 %316, i64 -968)
  %317 = add nsw i64 %smin1156, 1000
  %smin1061 = call i64 @llvm.smin.i64(i64 %indvars.iv1059, i64 -968)
  %318 = shl nsw i64 %polly.indvar855, 5
  %319 = add nsw i64 %smin1061, 999
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, -32
  %exitcond1067.not = icmp eq i64 %polly.indvar_next856, 32
  br i1 %exitcond1067.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %polly.indvar861 = phi i64 [ 0, %polly.loop_header852 ], [ %polly.indvar_next862, %polly.loop_exit866 ]
  %320 = add nuw nsw i64 %polly.indvar861, %314
  %321 = trunc i64 %320 to i32
  %322 = mul nuw nsw i64 %320, 8000
  %min.iters.check1157 = icmp eq i64 %317, 0
  br i1 %min.iters.check1157, label %polly.loop_header864, label %vector.ph1158

vector.ph1158:                                    ; preds = %polly.loop_header858
  %broadcast.splatinsert1167 = insertelement <4 x i64> poison, i64 %318, i32 0
  %broadcast.splat1168 = shufflevector <4 x i64> %broadcast.splatinsert1167, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1169 = insertelement <4 x i32> poison, i32 %321, i32 0
  %broadcast.splat1170 = shufflevector <4 x i32> %broadcast.splatinsert1169, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1155

vector.body1155:                                  ; preds = %vector.body1155, %vector.ph1158
  %index1161 = phi i64 [ 0, %vector.ph1158 ], [ %index.next1162, %vector.body1155 ]
  %vec.ind1165 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1158 ], [ %vec.ind.next1166, %vector.body1155 ]
  %323 = add nuw nsw <4 x i64> %vec.ind1165, %broadcast.splat1168
  %324 = trunc <4 x i64> %323 to <4 x i32>
  %325 = mul <4 x i32> %broadcast.splat1170, %324
  %326 = add <4 x i32> %325, <i32 1, i32 1, i32 1, i32 1>
  %327 = urem <4 x i32> %326, <i32 1200, i32 1200, i32 1200, i32 1200>
  %328 = sitofp <4 x i32> %327 to <4 x double>
  %329 = fmul fast <4 x double> %328, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %330 = extractelement <4 x i64> %323, i32 0
  %331 = shl i64 %330, 3
  %332 = add nuw nsw i64 %331, %322
  %333 = getelementptr i8, i8* %call1, i64 %332
  %334 = bitcast i8* %333 to <4 x double>*
  store <4 x double> %329, <4 x double>* %334, align 8, !alias.scope !102, !noalias !109
  %index.next1162 = add i64 %index1161, 4
  %vec.ind.next1166 = add <4 x i64> %vec.ind1165, <i64 4, i64 4, i64 4, i64 4>
  %335 = icmp eq i64 %index.next1162, %317
  br i1 %335, label %polly.loop_exit866, label %vector.body1155, !llvm.loop !110

polly.loop_exit866:                               ; preds = %vector.body1155, %polly.loop_header864
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar861, %315
  br i1 %exitcond1066.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_header858, %polly.loop_header864
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_header864 ], [ 0, %polly.loop_header858 ]
  %336 = add nuw nsw i64 %polly.indvar867, %318
  %337 = trunc i64 %336 to i32
  %338 = mul i32 %337, %321
  %339 = add i32 %338, 1
  %340 = urem i32 %339, 1200
  %p_conv.i = sitofp i32 %340 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %341 = shl i64 %336, 3
  %342 = add nuw nsw i64 %341, %322
  %scevgep871 = getelementptr i8, i8* %call1, i64 %342
  %scevgep871872 = bitcast i8* %scevgep871 to double*
  store double %p_div.i, double* %scevgep871872, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar867, %319
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
!25 = !{!"llvm.loop.tile.size", i32 20}
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
!50 = !{!"llvm.loop.tile.size", i32 80}
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