; ModuleID = 'syr2k_exhaustive/mmp_all_SM_4271.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_4271.c"
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
  %scevgep1086 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1085 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1084 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1083 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1083, %scevgep1086
  %bound1 = icmp ult i8* %scevgep1085, %scevgep1084
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
  br i1 %exitcond18.not.i, label %vector.ph1090, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1090:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1097 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1098 = shufflevector <4 x i64> %broadcast.splatinsert1097, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1089

vector.body1089:                                  ; preds = %vector.body1089, %vector.ph1090
  %index1091 = phi i64 [ 0, %vector.ph1090 ], [ %index.next1092, %vector.body1089 ]
  %vec.ind1095 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1090 ], [ %vec.ind.next1096, %vector.body1089 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1095, %broadcast.splat1098
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv7.i, i64 %index1091
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1092 = add i64 %index1091, 4
  %vec.ind.next1096 = add <4 x i64> %vec.ind1095, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1092, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1089, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1089
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1090, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit854
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start476, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1152 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1152, label %for.body3.i46.preheader1226, label %vector.ph1153

vector.ph1153:                                    ; preds = %for.body3.i46.preheader
  %n.vec1155 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1151

vector.body1151:                                  ; preds = %vector.body1151, %vector.ph1153
  %index1156 = phi i64 [ 0, %vector.ph1153 ], [ %index.next1157, %vector.body1151 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i, i64 %index1156
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1157 = add i64 %index1156, 4
  %46 = icmp eq i64 %index.next1157, %n.vec1155
  br i1 %46, label %middle.block1149, label %vector.body1151, !llvm.loop !18

middle.block1149:                                 ; preds = %vector.body1151
  %cmp.n1159 = icmp eq i64 %indvars.iv21.i, %n.vec1155
  br i1 %cmp.n1159, label %for.inc6.i, label %for.body3.i46.preheader1226

for.body3.i46.preheader1226:                      ; preds = %for.body3.i46.preheader, %middle.block1149
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1155, %middle.block1149 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1226, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1226 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1149, %for.cond1.preheader.i45
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !43

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
  %min.iters.check1175 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1175, label %for.body3.i60.preheader1225, label %vector.ph1176

vector.ph1176:                                    ; preds = %for.body3.i60.preheader
  %n.vec1178 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1174

vector.body1174:                                  ; preds = %vector.body1174, %vector.ph1176
  %index1179 = phi i64 [ 0, %vector.ph1176 ], [ %index.next1180, %vector.body1174 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i52, i64 %index1179
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1183 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1183, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1180 = add i64 %index1179, 4
  %57 = icmp eq i64 %index.next1180, %n.vec1178
  br i1 %57, label %middle.block1172, label %vector.body1174, !llvm.loop !54

middle.block1172:                                 ; preds = %vector.body1174
  %cmp.n1182 = icmp eq i64 %indvars.iv21.i52, %n.vec1178
  br i1 %cmp.n1182, label %for.inc6.i63, label %for.body3.i60.preheader1225

for.body3.i60.preheader1225:                      ; preds = %for.body3.i60.preheader, %middle.block1172
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1178, %middle.block1172 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1225, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1225 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1172, %for.cond1.preheader.i54
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !43

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
  %min.iters.check1201 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1201, label %for.body3.i99.preheader1224, label %vector.ph1202

vector.ph1202:                                    ; preds = %for.body3.i99.preheader
  %n.vec1204 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %vector.ph1202
  %index1205 = phi i64 [ 0, %vector.ph1202 ], [ %index.next1206, %vector.body1200 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i91, i64 %index1205
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1209 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1209, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1206 = add i64 %index1205, 4
  %68 = icmp eq i64 %index.next1206, %n.vec1204
  br i1 %68, label %middle.block1198, label %vector.body1200, !llvm.loop !56

middle.block1198:                                 ; preds = %vector.body1200
  %cmp.n1208 = icmp eq i64 %indvars.iv21.i91, %n.vec1204
  br i1 %cmp.n1208, label %for.inc6.i102, label %for.body3.i99.preheader1224

for.body3.i99.preheader1224:                      ; preds = %for.body3.i99.preheader, %middle.block1198
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1204, %middle.block1198 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1224, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1224 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1198, %for.cond1.preheader.i93
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !43

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !58
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !60

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !61

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1213 = phi i64 [ %indvar.next1214, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1213, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1215 = icmp ult i64 %88, 4
  br i1 %min.iters.check1215, label %polly.loop_header191.preheader, label %vector.ph1216

vector.ph1216:                                    ; preds = %polly.loop_header
  %n.vec1218 = and i64 %88, -4
  br label %vector.body1212

vector.body1212:                                  ; preds = %vector.body1212, %vector.ph1216
  %index1219 = phi i64 [ 0, %vector.ph1216 ], [ %index.next1220, %vector.body1212 ]
  %90 = shl nuw nsw i64 %index1219, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1223 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1223, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1220 = add i64 %index1219, 4
  %95 = icmp eq i64 %index.next1220, %n.vec1218
  br i1 %95, label %middle.block1210, label %vector.body1212, !llvm.loop !68

middle.block1210:                                 ; preds = %vector.body1212
  %cmp.n1222 = icmp eq i64 %88, %n.vec1218
  br i1 %cmp.n1222, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1210
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1218, %middle.block1210 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1210
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond999.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1214 = add i64 %indvar1213, 1
  br i1 %exitcond999.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond998.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond998.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !69

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv985 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next986, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = add nuw nsw i64 %polly.indvar202, 6
  %pexp.p_div_q = udiv i64 %97, 5
  %98 = sub nsw i64 %polly.indvar202, %pexp.p_div_q
  %polly.loop_guard = icmp sgt i64 %98, -2
  %99 = mul nsw i64 %polly.indvar202, -16
  %100 = shl nsw i64 %polly.indvar202, 4
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -16
  %indvars.iv.next986 = add nuw nsw i64 %indvars.iv985, 16
  %exitcond997.not = icmp eq i64 %polly.indvar_next203, 75
  br i1 %exitcond997.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  br i1 %polly.loop_guard, label %polly.loop_header211.preheader, label %polly.loop_exit213

polly.loop_header211.preheader:                   ; preds = %polly.loop_header205
  %101 = mul nuw nsw i64 %polly.indvar208, 20
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit220, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond996.not = icmp eq i64 %polly.indvar_next209, 50
  br i1 %exitcond996.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211.preheader, %polly.loop_exit220
  %indvars.iv987 = phi i64 [ %indvars.iv985, %polly.loop_header211.preheader ], [ %indvars.iv.next988, %polly.loop_exit220 ]
  %indvars.iv983 = phi i64 [ %indvars.iv, %polly.loop_header211.preheader ], [ %indvars.iv.next984, %polly.loop_exit220 ]
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header211.preheader ], [ %polly.indvar_next215, %polly.loop_exit220 ]
  %102 = mul nuw nsw i64 %polly.indvar214, 20
  %103 = add nsw i64 %102, %99
  %104 = icmp sgt i64 %103, 0
  %105 = select i1 %104, i64 %103, i64 0
  %polly.loop_guard221 = icmp slt i64 %105, 16
  br i1 %polly.loop_guard221, label %polly.loop_header218.preheader, label %polly.loop_exit220

polly.loop_header218.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv983, i64 0)
  %106 = add i64 %smax, %indvars.iv987
  %107 = sub nsw i64 %100, %102
  %108 = add nuw nsw i64 %102, 20
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_exit252, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %polly.loop_cond216.not = icmp sgt i64 %polly.indvar214, %98
  %indvars.iv.next984 = add nsw i64 %indvars.iv983, 20
  %indvars.iv.next988 = add nsw i64 %indvars.iv987, -20
  br i1 %polly.loop_cond216.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header218:                             ; preds = %polly.loop_header218.preheader, %polly.loop_exit252
  %indvars.iv989 = phi i64 [ %106, %polly.loop_header218.preheader ], [ %indvars.iv.next990, %polly.loop_exit252 ]
  %polly.indvar222 = phi i64 [ %105, %polly.loop_header218.preheader ], [ %polly.indvar_next223, %polly.loop_exit252 ]
  %smin993 = call i64 @llvm.smin.i64(i64 %indvars.iv989, i64 19)
  %109 = add nsw i64 %polly.indvar222, %107
  %polly.loop_guard2351078 = icmp sgt i64 %109, -1
  %110 = add nuw nsw i64 %polly.indvar222, %100
  %.not = icmp ult i64 %110, %108
  %polly.access.mul.call1244 = mul nsw i64 %110, 1000
  %111 = add nuw i64 %polly.access.mul.call1244, %101
  br i1 %polly.loop_guard2351078, label %polly.loop_header225.us, label %polly.loop_header218.split

polly.loop_header225.us:                          ; preds = %polly.loop_header218, %polly.merge.us
  %polly.indvar228.us = phi i64 [ %polly.indvar_next229.us, %polly.merge.us ], [ 0, %polly.loop_header218 ]
  %112 = add nuw nsw i64 %polly.indvar228.us, %101
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar228.us, 1200
  br label %polly.loop_header232.us

polly.loop_header232.us:                          ; preds = %polly.loop_header225.us, %polly.loop_header232.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_header232.us ], [ 0, %polly.loop_header225.us ]
  %113 = add nuw nsw i64 %polly.indvar236.us, %102
  %polly.access.mul.call1240.us = mul nuw nsw i64 %113, 1000
  %polly.access.add.call1241.us = add nuw nsw i64 %112, %polly.access.mul.call1240.us
  %polly.access.call1242.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1241.us
  %polly.access.call1242.load.us = load double, double* %polly.access.call1242.us, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar236.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1242.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %exitcond991.not = icmp eq i64 %polly.indvar236.us, %smin993
  br i1 %exitcond991.not, label %polly.cond.loopexit.us, label %polly.loop_header232.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1245.us = add nuw nsw i64 %111, %polly.indvar228.us
  %polly.access.call1246.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.us
  %polly.access.call1246.load.us = load double, double* %polly.access.call1246.us, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %109
  %polly.access.Packed_MemRef_call1249.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.us
  store double %polly.access.call1246.load.us, double* %polly.access.Packed_MemRef_call1249.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next229.us = add nuw nsw i64 %polly.indvar228.us, 1
  %exitcond992.not = icmp eq i64 %polly.indvar_next229.us, 20
  br i1 %exitcond992.not, label %polly.loop_header250.preheader, label %polly.loop_header225.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header232.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header218.split:                       ; preds = %polly.loop_header218
  br i1 %.not, label %polly.loop_exit252, label %polly.loop_header225.preheader

polly.loop_header225.preheader:                   ; preds = %polly.loop_header218.split
  %polly.access.call1246 = getelementptr double, double* %polly.access.cast.call1671, i64 %111
  %polly.access.call1246.load = load double, double* %polly.access.call1246, align 8, !alias.scope !65, !noalias !71
  %polly.access.Packed_MemRef_call1249 = getelementptr double, double* %Packed_MemRef_call1, i64 %109
  store double %polly.access.call1246.load, double* %polly.access.Packed_MemRef_call1249, align 8
  %polly.access.add.call1245.1 = or i64 %111, 1
  %polly.access.call1246.1 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.1
  %polly.access.call1246.load.1 = load double, double* %polly.access.call1246.1, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.1 = add nsw i64 %109, 1200
  %polly.access.Packed_MemRef_call1249.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.1
  store double %polly.access.call1246.load.1, double* %polly.access.Packed_MemRef_call1249.1, align 8
  %polly.access.add.call1245.2 = or i64 %111, 2
  %polly.access.call1246.2 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.2
  %polly.access.call1246.load.2 = load double, double* %polly.access.call1246.2, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.2 = add nsw i64 %109, 2400
  %polly.access.Packed_MemRef_call1249.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.2
  store double %polly.access.call1246.load.2, double* %polly.access.Packed_MemRef_call1249.2, align 8
  %polly.access.add.call1245.3 = or i64 %111, 3
  %polly.access.call1246.3 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.3
  %polly.access.call1246.load.3 = load double, double* %polly.access.call1246.3, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.3 = add nsw i64 %109, 3600
  %polly.access.Packed_MemRef_call1249.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.3
  store double %polly.access.call1246.load.3, double* %polly.access.Packed_MemRef_call1249.3, align 8
  %polly.access.add.call1245.4 = add nuw nsw i64 %111, 4
  %polly.access.call1246.4 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.4
  %polly.access.call1246.load.4 = load double, double* %polly.access.call1246.4, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.4 = add nsw i64 %109, 4800
  %polly.access.Packed_MemRef_call1249.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.4
  store double %polly.access.call1246.load.4, double* %polly.access.Packed_MemRef_call1249.4, align 8
  %polly.access.add.call1245.5 = add nuw nsw i64 %111, 5
  %polly.access.call1246.5 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.5
  %polly.access.call1246.load.5 = load double, double* %polly.access.call1246.5, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.5 = add nsw i64 %109, 6000
  %polly.access.Packed_MemRef_call1249.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.5
  store double %polly.access.call1246.load.5, double* %polly.access.Packed_MemRef_call1249.5, align 8
  %polly.access.add.call1245.6 = add nuw nsw i64 %111, 6
  %polly.access.call1246.6 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.6
  %polly.access.call1246.load.6 = load double, double* %polly.access.call1246.6, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.6 = add nsw i64 %109, 7200
  %polly.access.Packed_MemRef_call1249.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.6
  store double %polly.access.call1246.load.6, double* %polly.access.Packed_MemRef_call1249.6, align 8
  %polly.access.add.call1245.7 = add nuw nsw i64 %111, 7
  %polly.access.call1246.7 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.7
  %polly.access.call1246.load.7 = load double, double* %polly.access.call1246.7, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.7 = add nsw i64 %109, 8400
  %polly.access.Packed_MemRef_call1249.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.7
  store double %polly.access.call1246.load.7, double* %polly.access.Packed_MemRef_call1249.7, align 8
  %polly.access.add.call1245.8 = add nuw nsw i64 %111, 8
  %polly.access.call1246.8 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.8
  %polly.access.call1246.load.8 = load double, double* %polly.access.call1246.8, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.8 = add nsw i64 %109, 9600
  %polly.access.Packed_MemRef_call1249.8 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.8
  store double %polly.access.call1246.load.8, double* %polly.access.Packed_MemRef_call1249.8, align 8
  %polly.access.add.call1245.9 = add nuw nsw i64 %111, 9
  %polly.access.call1246.9 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.9
  %polly.access.call1246.load.9 = load double, double* %polly.access.call1246.9, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.9 = add nsw i64 %109, 10800
  %polly.access.Packed_MemRef_call1249.9 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.9
  store double %polly.access.call1246.load.9, double* %polly.access.Packed_MemRef_call1249.9, align 8
  %polly.access.add.call1245.10 = add nuw nsw i64 %111, 10
  %polly.access.call1246.10 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.10
  %polly.access.call1246.load.10 = load double, double* %polly.access.call1246.10, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.10 = add nsw i64 %109, 12000
  %polly.access.Packed_MemRef_call1249.10 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.10
  store double %polly.access.call1246.load.10, double* %polly.access.Packed_MemRef_call1249.10, align 8
  %polly.access.add.call1245.11 = add nuw nsw i64 %111, 11
  %polly.access.call1246.11 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.11
  %polly.access.call1246.load.11 = load double, double* %polly.access.call1246.11, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.11 = add nsw i64 %109, 13200
  %polly.access.Packed_MemRef_call1249.11 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.11
  store double %polly.access.call1246.load.11, double* %polly.access.Packed_MemRef_call1249.11, align 8
  %polly.access.add.call1245.12 = add nuw nsw i64 %111, 12
  %polly.access.call1246.12 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.12
  %polly.access.call1246.load.12 = load double, double* %polly.access.call1246.12, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.12 = add nsw i64 %109, 14400
  %polly.access.Packed_MemRef_call1249.12 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.12
  store double %polly.access.call1246.load.12, double* %polly.access.Packed_MemRef_call1249.12, align 8
  %polly.access.add.call1245.13 = add nuw nsw i64 %111, 13
  %polly.access.call1246.13 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.13
  %polly.access.call1246.load.13 = load double, double* %polly.access.call1246.13, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.13 = add nsw i64 %109, 15600
  %polly.access.Packed_MemRef_call1249.13 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.13
  store double %polly.access.call1246.load.13, double* %polly.access.Packed_MemRef_call1249.13, align 8
  %polly.access.add.call1245.14 = add nuw nsw i64 %111, 14
  %polly.access.call1246.14 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.14
  %polly.access.call1246.load.14 = load double, double* %polly.access.call1246.14, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.14 = add nsw i64 %109, 16800
  %polly.access.Packed_MemRef_call1249.14 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.14
  store double %polly.access.call1246.load.14, double* %polly.access.Packed_MemRef_call1249.14, align 8
  %polly.access.add.call1245.15 = add nuw nsw i64 %111, 15
  %polly.access.call1246.15 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.15
  %polly.access.call1246.load.15 = load double, double* %polly.access.call1246.15, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.15 = add nsw i64 %109, 18000
  %polly.access.Packed_MemRef_call1249.15 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.15
  store double %polly.access.call1246.load.15, double* %polly.access.Packed_MemRef_call1249.15, align 8
  %polly.access.add.call1245.16 = add nuw nsw i64 %111, 16
  %polly.access.call1246.16 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.16
  %polly.access.call1246.load.16 = load double, double* %polly.access.call1246.16, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.16 = add nsw i64 %109, 19200
  %polly.access.Packed_MemRef_call1249.16 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.16
  store double %polly.access.call1246.load.16, double* %polly.access.Packed_MemRef_call1249.16, align 8
  %polly.access.add.call1245.17 = add nuw nsw i64 %111, 17
  %polly.access.call1246.17 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.17
  %polly.access.call1246.load.17 = load double, double* %polly.access.call1246.17, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.17 = add nsw i64 %109, 20400
  %polly.access.Packed_MemRef_call1249.17 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.17
  store double %polly.access.call1246.load.17, double* %polly.access.Packed_MemRef_call1249.17, align 8
  %polly.access.add.call1245.18 = add nuw nsw i64 %111, 18
  %polly.access.call1246.18 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.18
  %polly.access.call1246.load.18 = load double, double* %polly.access.call1246.18, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.18 = add nsw i64 %109, 21600
  %polly.access.Packed_MemRef_call1249.18 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.18
  store double %polly.access.call1246.load.18, double* %polly.access.Packed_MemRef_call1249.18, align 8
  %polly.access.add.call1245.19 = add nuw nsw i64 %111, 19
  %polly.access.call1246.19 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.19
  %polly.access.call1246.load.19 = load double, double* %polly.access.call1246.19, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.19 = add nsw i64 %109, 22800
  %polly.access.Packed_MemRef_call1249.19 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.19
  store double %polly.access.call1246.load.19, double* %polly.access.Packed_MemRef_call1249.19, align 8
  br label %polly.loop_exit252

polly.loop_exit252:                               ; preds = %polly.loop_exit259.loopexit.us, %polly.loop_header218.split, %polly.loop_header225.preheader, %polly.loop_header250.preheader
  %polly.indvar_next223 = add nuw nsw i64 %polly.indvar222, 1
  %polly.loop_cond224 = icmp ult i64 %polly.indvar222, 15
  %indvars.iv.next990 = add i64 %indvars.iv989, 1
  br i1 %polly.loop_cond224, label %polly.loop_header218, label %polly.loop_exit220

polly.loop_header250.preheader:                   ; preds = %polly.merge.us
  %114 = mul i64 %110, 8000
  %115 = mul i64 %110, 9600
  br i1 %polly.loop_guard2351078, label %polly.loop_header250.us, label %polly.loop_exit252

polly.loop_header250.us:                          ; preds = %polly.loop_header250.preheader, %polly.loop_exit259.loopexit.us
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_exit259.loopexit.us ], [ 0, %polly.loop_header250.preheader ]
  %116 = add nuw nsw i64 %polly.indvar253.us, %101
  %polly.access.mul.Packed_MemRef_call1264.us = mul nuw nsw i64 %polly.indvar253.us, 1200
  %117 = shl i64 %116, 3
  %118 = add i64 %117, %114
  %scevgep268.us = getelementptr i8, i8* %call2, i64 %118
  %scevgep268269.us = bitcast i8* %scevgep268.us to double*
  %_p_scalar_270.us = load double, double* %scevgep268269.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1275.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1264.us, %109
  %polly.access.Packed_MemRef_call1276.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.us
  %_p_scalar_277.us = load double, double* %polly.access.Packed_MemRef_call1276.us, align 8
  br label %polly.loop_header257.us

polly.loop_header257.us:                          ; preds = %polly.loop_header250.us, %polly.loop_header257.us
  %polly.indvar261.us = phi i64 [ %polly.indvar_next262.us, %polly.loop_header257.us ], [ 0, %polly.loop_header250.us ]
  %119 = add nuw nsw i64 %polly.indvar261.us, %102
  %polly.access.add.Packed_MemRef_call1265.us = add nuw nsw i64 %polly.indvar261.us, %polly.access.mul.Packed_MemRef_call1264.us
  %polly.access.Packed_MemRef_call1266.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us
  %_p_scalar_267.us = load double, double* %polly.access.Packed_MemRef_call1266.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_270.us, %_p_scalar_267.us
  %120 = mul nuw nsw i64 %119, 8000
  %121 = add nuw nsw i64 %120, %117
  %scevgep271.us = getelementptr i8, i8* %call2, i64 %121
  %scevgep271272.us = bitcast i8* %scevgep271.us to double*
  %_p_scalar_273.us = load double, double* %scevgep271272.us, align 8, !alias.scope !66, !noalias !72
  %p_mul37.i114.us = fmul fast double %_p_scalar_277.us, %_p_scalar_273.us
  %122 = shl i64 %119, 3
  %123 = add i64 %122, %115
  %scevgep278.us = getelementptr i8, i8* %call, i64 %123
  %scevgep278279.us = bitcast i8* %scevgep278.us to double*
  %_p_scalar_280.us = load double, double* %scevgep278279.us, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_280.us
  store double %p_add42.i118.us, double* %scevgep278279.us, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next262.us = add nuw nsw i64 %polly.indvar261.us, 1
  %exitcond994.not = icmp eq i64 %polly.indvar261.us, %smin993
  br i1 %exitcond994.not, label %polly.loop_exit259.loopexit.us, label %polly.loop_header257.us

polly.loop_exit259.loopexit.us:                   ; preds = %polly.loop_header257.us
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %exitcond995.not = icmp eq i64 %polly.indvar_next254.us, 20
  br i1 %exitcond995.not, label %polly.loop_exit252, label %polly.loop_header250.us

polly.start283:                                   ; preds = %kernel_syr2k.exit
  %malloccall285 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header369

polly.exiting284:                                 ; preds = %polly.loop_exit393
  tail call void @free(i8* %malloccall285)
  br label %kernel_syr2k.exit90

polly.loop_header369:                             ; preds = %polly.loop_exit377, %polly.start283
  %indvar1187 = phi i64 [ %indvar.next1188, %polly.loop_exit377 ], [ 0, %polly.start283 ]
  %polly.indvar372 = phi i64 [ %polly.indvar_next373, %polly.loop_exit377 ], [ 1, %polly.start283 ]
  %124 = add i64 %indvar1187, 1
  %125 = mul nuw nsw i64 %polly.indvar372, 9600
  %scevgep381 = getelementptr i8, i8* %call, i64 %125
  %min.iters.check1189 = icmp ult i64 %124, 4
  br i1 %min.iters.check1189, label %polly.loop_header375.preheader, label %vector.ph1190

vector.ph1190:                                    ; preds = %polly.loop_header369
  %n.vec1192 = and i64 %124, -4
  br label %vector.body1186

vector.body1186:                                  ; preds = %vector.body1186, %vector.ph1190
  %index1193 = phi i64 [ 0, %vector.ph1190 ], [ %index.next1194, %vector.body1186 ]
  %126 = shl nuw nsw i64 %index1193, 3
  %127 = getelementptr i8, i8* %scevgep381, i64 %126
  %128 = bitcast i8* %127 to <4 x double>*
  %wide.load1197 = load <4 x double>, <4 x double>* %128, align 8, !alias.scope !73, !noalias !75
  %129 = fmul fast <4 x double> %wide.load1197, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %130 = bitcast i8* %127 to <4 x double>*
  store <4 x double> %129, <4 x double>* %130, align 8, !alias.scope !73, !noalias !75
  %index.next1194 = add i64 %index1193, 4
  %131 = icmp eq i64 %index.next1194, %n.vec1192
  br i1 %131, label %middle.block1184, label %vector.body1186, !llvm.loop !79

middle.block1184:                                 ; preds = %vector.body1186
  %cmp.n1196 = icmp eq i64 %124, %n.vec1192
  br i1 %cmp.n1196, label %polly.loop_exit377, label %polly.loop_header375.preheader

polly.loop_header375.preheader:                   ; preds = %polly.loop_header369, %middle.block1184
  %polly.indvar378.ph = phi i64 [ 0, %polly.loop_header369 ], [ %n.vec1192, %middle.block1184 ]
  br label %polly.loop_header375

polly.loop_exit377:                               ; preds = %polly.loop_header375, %middle.block1184
  %polly.indvar_next373 = add nuw nsw i64 %polly.indvar372, 1
  %exitcond1021.not = icmp eq i64 %polly.indvar_next373, 1200
  %indvar.next1188 = add i64 %indvar1187, 1
  br i1 %exitcond1021.not, label %polly.loop_header385.preheader, label %polly.loop_header369

polly.loop_header385.preheader:                   ; preds = %polly.loop_exit377
  %Packed_MemRef_call1286 = bitcast i8* %malloccall285 to double*
  br label %polly.loop_header385

polly.loop_header375:                             ; preds = %polly.loop_header375.preheader, %polly.loop_header375
  %polly.indvar378 = phi i64 [ %polly.indvar_next379, %polly.loop_header375 ], [ %polly.indvar378.ph, %polly.loop_header375.preheader ]
  %132 = shl nuw nsw i64 %polly.indvar378, 3
  %scevgep382 = getelementptr i8, i8* %scevgep381, i64 %132
  %scevgep382383 = bitcast i8* %scevgep382 to double*
  %_p_scalar_384 = load double, double* %scevgep382383, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_384, 1.200000e+00
  store double %p_mul.i57, double* %scevgep382383, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next379 = add nuw nsw i64 %polly.indvar378, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar_next379, %polly.indvar372
  br i1 %exitcond1020.not, label %polly.loop_exit377, label %polly.loop_header375, !llvm.loop !80

polly.loop_header385:                             ; preds = %polly.loop_header385.preheader, %polly.loop_exit393
  %indvars.iv1006 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %indvars.iv.next1007, %polly.loop_exit393 ]
  %indvars.iv1001 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %indvars.iv.next1002, %polly.loop_exit393 ]
  %polly.indvar388 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %polly.indvar_next389, %polly.loop_exit393 ]
  %133 = add nuw nsw i64 %polly.indvar388, 6
  %pexp.p_div_q397 = udiv i64 %133, 5
  %134 = sub nsw i64 %polly.indvar388, %pexp.p_div_q397
  %polly.loop_guard402 = icmp sgt i64 %134, -2
  %135 = mul nsw i64 %polly.indvar388, -16
  %136 = shl nsw i64 %polly.indvar388, 4
  br label %polly.loop_header391

polly.loop_exit393:                               ; preds = %polly.loop_exit401
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %indvars.iv.next1002 = add nsw i64 %indvars.iv1001, -16
  %indvars.iv.next1007 = add nuw nsw i64 %indvars.iv1006, 16
  %exitcond1019.not = icmp eq i64 %polly.indvar_next389, 75
  br i1 %exitcond1019.not, label %polly.exiting284, label %polly.loop_header385

polly.loop_header391:                             ; preds = %polly.loop_exit401, %polly.loop_header385
  %polly.indvar394 = phi i64 [ 0, %polly.loop_header385 ], [ %polly.indvar_next395, %polly.loop_exit401 ]
  br i1 %polly.loop_guard402, label %polly.loop_header399.preheader, label %polly.loop_exit401

polly.loop_header399.preheader:                   ; preds = %polly.loop_header391
  %137 = mul nuw nsw i64 %polly.indvar394, 20
  br label %polly.loop_header399

polly.loop_exit401:                               ; preds = %polly.loop_exit409, %polly.loop_header391
  %polly.indvar_next395 = add nuw nsw i64 %polly.indvar394, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next395, 50
  br i1 %exitcond1018.not, label %polly.loop_exit393, label %polly.loop_header391

polly.loop_header399:                             ; preds = %polly.loop_header399.preheader, %polly.loop_exit409
  %indvars.iv1008 = phi i64 [ %indvars.iv1006, %polly.loop_header399.preheader ], [ %indvars.iv.next1009, %polly.loop_exit409 ]
  %indvars.iv1003 = phi i64 [ %indvars.iv1001, %polly.loop_header399.preheader ], [ %indvars.iv.next1004, %polly.loop_exit409 ]
  %polly.indvar403 = phi i64 [ 0, %polly.loop_header399.preheader ], [ %polly.indvar_next404, %polly.loop_exit409 ]
  %138 = mul nuw nsw i64 %polly.indvar403, 20
  %139 = add nsw i64 %138, %135
  %140 = icmp sgt i64 %139, 0
  %141 = select i1 %140, i64 %139, i64 0
  %polly.loop_guard410 = icmp slt i64 %141, 16
  br i1 %polly.loop_guard410, label %polly.loop_header407.preheader, label %polly.loop_exit409

polly.loop_header407.preheader:                   ; preds = %polly.loop_header399
  %smax1005 = call i64 @llvm.smax.i64(i64 %indvars.iv1003, i64 0)
  %142 = add i64 %smax1005, %indvars.iv1008
  %143 = sub nsw i64 %136, %138
  %144 = add nuw nsw i64 %138, 20
  br label %polly.loop_header407

polly.loop_exit409:                               ; preds = %polly.loop_exit445, %polly.loop_header399
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %polly.loop_cond405.not = icmp sgt i64 %polly.indvar403, %134
  %indvars.iv.next1004 = add nsw i64 %indvars.iv1003, 20
  %indvars.iv.next1009 = add nsw i64 %indvars.iv1008, -20
  br i1 %polly.loop_cond405.not, label %polly.loop_exit401, label %polly.loop_header399

polly.loop_header407:                             ; preds = %polly.loop_header407.preheader, %polly.loop_exit445
  %indvars.iv1010 = phi i64 [ %142, %polly.loop_header407.preheader ], [ %indvars.iv.next1011, %polly.loop_exit445 ]
  %polly.indvar411 = phi i64 [ %141, %polly.loop_header407.preheader ], [ %polly.indvar_next412, %polly.loop_exit445 ]
  %smin1015 = call i64 @llvm.smin.i64(i64 %indvars.iv1010, i64 19)
  %145 = add nsw i64 %polly.indvar411, %143
  %polly.loop_guard4241079 = icmp sgt i64 %145, -1
  %146 = add nuw nsw i64 %polly.indvar411, %136
  %.not873 = icmp ult i64 %146, %144
  %polly.access.mul.call1437 = mul nsw i64 %146, 1000
  %147 = add nuw i64 %polly.access.mul.call1437, %137
  br i1 %polly.loop_guard4241079, label %polly.loop_header414.us, label %polly.loop_header407.split

polly.loop_header414.us:                          ; preds = %polly.loop_header407, %polly.merge433.us
  %polly.indvar417.us = phi i64 [ %polly.indvar_next418.us, %polly.merge433.us ], [ 0, %polly.loop_header407 ]
  %148 = add nuw nsw i64 %polly.indvar417.us, %137
  %polly.access.mul.Packed_MemRef_call1286.us = mul nuw nsw i64 %polly.indvar417.us, 1200
  br label %polly.loop_header421.us

polly.loop_header421.us:                          ; preds = %polly.loop_header414.us, %polly.loop_header421.us
  %polly.indvar425.us = phi i64 [ %polly.indvar_next426.us, %polly.loop_header421.us ], [ 0, %polly.loop_header414.us ]
  %149 = add nuw nsw i64 %polly.indvar425.us, %138
  %polly.access.mul.call1429.us = mul nuw nsw i64 %149, 1000
  %polly.access.add.call1430.us = add nuw nsw i64 %148, %polly.access.mul.call1429.us
  %polly.access.call1431.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1430.us
  %polly.access.call1431.load.us = load double, double* %polly.access.call1431.us, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286.us = add nuw nsw i64 %polly.indvar425.us, %polly.access.mul.Packed_MemRef_call1286.us
  %polly.access.Packed_MemRef_call1286.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us
  store double %polly.access.call1431.load.us, double* %polly.access.Packed_MemRef_call1286.us, align 8
  %polly.indvar_next426.us = add nuw nsw i64 %polly.indvar425.us, 1
  %exitcond1013.not = icmp eq i64 %polly.indvar425.us, %smin1015
  br i1 %exitcond1013.not, label %polly.cond432.loopexit.us, label %polly.loop_header421.us

polly.then434.us:                                 ; preds = %polly.cond432.loopexit.us
  %polly.access.add.call1438.us = add nuw nsw i64 %147, %polly.indvar417.us
  %polly.access.call1439.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.us
  %polly.access.call1439.load.us = load double, double* %polly.access.call1439.us, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1286.us, %145
  %polly.access.Packed_MemRef_call1286442.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.us
  store double %polly.access.call1439.load.us, double* %polly.access.Packed_MemRef_call1286442.us, align 8
  br label %polly.merge433.us

polly.merge433.us:                                ; preds = %polly.then434.us, %polly.cond432.loopexit.us
  %polly.indvar_next418.us = add nuw nsw i64 %polly.indvar417.us, 1
  %exitcond1014.not = icmp eq i64 %polly.indvar_next418.us, 20
  br i1 %exitcond1014.not, label %polly.loop_header443.preheader, label %polly.loop_header414.us

polly.cond432.loopexit.us:                        ; preds = %polly.loop_header421.us
  br i1 %.not873, label %polly.merge433.us, label %polly.then434.us

polly.loop_header407.split:                       ; preds = %polly.loop_header407
  br i1 %.not873, label %polly.loop_exit445, label %polly.loop_header414.preheader

polly.loop_header414.preheader:                   ; preds = %polly.loop_header407.split
  %polly.access.call1439 = getelementptr double, double* %polly.access.cast.call1671, i64 %147
  %polly.access.call1439.load = load double, double* %polly.access.call1439, align 8, !alias.scope !76, !noalias !81
  %polly.access.Packed_MemRef_call1286442 = getelementptr double, double* %Packed_MemRef_call1286, i64 %145
  store double %polly.access.call1439.load, double* %polly.access.Packed_MemRef_call1286442, align 8
  %polly.access.add.call1438.1 = or i64 %147, 1
  %polly.access.call1439.1 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.1
  %polly.access.call1439.load.1 = load double, double* %polly.access.call1439.1, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.1 = add nsw i64 %145, 1200
  %polly.access.Packed_MemRef_call1286442.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.1
  store double %polly.access.call1439.load.1, double* %polly.access.Packed_MemRef_call1286442.1, align 8
  %polly.access.add.call1438.2 = or i64 %147, 2
  %polly.access.call1439.2 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.2
  %polly.access.call1439.load.2 = load double, double* %polly.access.call1439.2, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.2 = add nsw i64 %145, 2400
  %polly.access.Packed_MemRef_call1286442.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.2
  store double %polly.access.call1439.load.2, double* %polly.access.Packed_MemRef_call1286442.2, align 8
  %polly.access.add.call1438.3 = or i64 %147, 3
  %polly.access.call1439.3 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.3
  %polly.access.call1439.load.3 = load double, double* %polly.access.call1439.3, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.3 = add nsw i64 %145, 3600
  %polly.access.Packed_MemRef_call1286442.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.3
  store double %polly.access.call1439.load.3, double* %polly.access.Packed_MemRef_call1286442.3, align 8
  %polly.access.add.call1438.4 = add nuw nsw i64 %147, 4
  %polly.access.call1439.4 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.4
  %polly.access.call1439.load.4 = load double, double* %polly.access.call1439.4, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.4 = add nsw i64 %145, 4800
  %polly.access.Packed_MemRef_call1286442.4 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.4
  store double %polly.access.call1439.load.4, double* %polly.access.Packed_MemRef_call1286442.4, align 8
  %polly.access.add.call1438.5 = add nuw nsw i64 %147, 5
  %polly.access.call1439.5 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.5
  %polly.access.call1439.load.5 = load double, double* %polly.access.call1439.5, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.5 = add nsw i64 %145, 6000
  %polly.access.Packed_MemRef_call1286442.5 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.5
  store double %polly.access.call1439.load.5, double* %polly.access.Packed_MemRef_call1286442.5, align 8
  %polly.access.add.call1438.6 = add nuw nsw i64 %147, 6
  %polly.access.call1439.6 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.6
  %polly.access.call1439.load.6 = load double, double* %polly.access.call1439.6, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.6 = add nsw i64 %145, 7200
  %polly.access.Packed_MemRef_call1286442.6 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.6
  store double %polly.access.call1439.load.6, double* %polly.access.Packed_MemRef_call1286442.6, align 8
  %polly.access.add.call1438.7 = add nuw nsw i64 %147, 7
  %polly.access.call1439.7 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.7
  %polly.access.call1439.load.7 = load double, double* %polly.access.call1439.7, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.7 = add nsw i64 %145, 8400
  %polly.access.Packed_MemRef_call1286442.7 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.7
  store double %polly.access.call1439.load.7, double* %polly.access.Packed_MemRef_call1286442.7, align 8
  %polly.access.add.call1438.8 = add nuw nsw i64 %147, 8
  %polly.access.call1439.8 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.8
  %polly.access.call1439.load.8 = load double, double* %polly.access.call1439.8, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.8 = add nsw i64 %145, 9600
  %polly.access.Packed_MemRef_call1286442.8 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.8
  store double %polly.access.call1439.load.8, double* %polly.access.Packed_MemRef_call1286442.8, align 8
  %polly.access.add.call1438.9 = add nuw nsw i64 %147, 9
  %polly.access.call1439.9 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.9
  %polly.access.call1439.load.9 = load double, double* %polly.access.call1439.9, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.9 = add nsw i64 %145, 10800
  %polly.access.Packed_MemRef_call1286442.9 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.9
  store double %polly.access.call1439.load.9, double* %polly.access.Packed_MemRef_call1286442.9, align 8
  %polly.access.add.call1438.10 = add nuw nsw i64 %147, 10
  %polly.access.call1439.10 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.10
  %polly.access.call1439.load.10 = load double, double* %polly.access.call1439.10, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.10 = add nsw i64 %145, 12000
  %polly.access.Packed_MemRef_call1286442.10 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.10
  store double %polly.access.call1439.load.10, double* %polly.access.Packed_MemRef_call1286442.10, align 8
  %polly.access.add.call1438.11 = add nuw nsw i64 %147, 11
  %polly.access.call1439.11 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.11
  %polly.access.call1439.load.11 = load double, double* %polly.access.call1439.11, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.11 = add nsw i64 %145, 13200
  %polly.access.Packed_MemRef_call1286442.11 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.11
  store double %polly.access.call1439.load.11, double* %polly.access.Packed_MemRef_call1286442.11, align 8
  %polly.access.add.call1438.12 = add nuw nsw i64 %147, 12
  %polly.access.call1439.12 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.12
  %polly.access.call1439.load.12 = load double, double* %polly.access.call1439.12, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.12 = add nsw i64 %145, 14400
  %polly.access.Packed_MemRef_call1286442.12 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.12
  store double %polly.access.call1439.load.12, double* %polly.access.Packed_MemRef_call1286442.12, align 8
  %polly.access.add.call1438.13 = add nuw nsw i64 %147, 13
  %polly.access.call1439.13 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.13
  %polly.access.call1439.load.13 = load double, double* %polly.access.call1439.13, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.13 = add nsw i64 %145, 15600
  %polly.access.Packed_MemRef_call1286442.13 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.13
  store double %polly.access.call1439.load.13, double* %polly.access.Packed_MemRef_call1286442.13, align 8
  %polly.access.add.call1438.14 = add nuw nsw i64 %147, 14
  %polly.access.call1439.14 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.14
  %polly.access.call1439.load.14 = load double, double* %polly.access.call1439.14, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.14 = add nsw i64 %145, 16800
  %polly.access.Packed_MemRef_call1286442.14 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.14
  store double %polly.access.call1439.load.14, double* %polly.access.Packed_MemRef_call1286442.14, align 8
  %polly.access.add.call1438.15 = add nuw nsw i64 %147, 15
  %polly.access.call1439.15 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.15
  %polly.access.call1439.load.15 = load double, double* %polly.access.call1439.15, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.15 = add nsw i64 %145, 18000
  %polly.access.Packed_MemRef_call1286442.15 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.15
  store double %polly.access.call1439.load.15, double* %polly.access.Packed_MemRef_call1286442.15, align 8
  %polly.access.add.call1438.16 = add nuw nsw i64 %147, 16
  %polly.access.call1439.16 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.16
  %polly.access.call1439.load.16 = load double, double* %polly.access.call1439.16, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.16 = add nsw i64 %145, 19200
  %polly.access.Packed_MemRef_call1286442.16 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.16
  store double %polly.access.call1439.load.16, double* %polly.access.Packed_MemRef_call1286442.16, align 8
  %polly.access.add.call1438.17 = add nuw nsw i64 %147, 17
  %polly.access.call1439.17 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.17
  %polly.access.call1439.load.17 = load double, double* %polly.access.call1439.17, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.17 = add nsw i64 %145, 20400
  %polly.access.Packed_MemRef_call1286442.17 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.17
  store double %polly.access.call1439.load.17, double* %polly.access.Packed_MemRef_call1286442.17, align 8
  %polly.access.add.call1438.18 = add nuw nsw i64 %147, 18
  %polly.access.call1439.18 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.18
  %polly.access.call1439.load.18 = load double, double* %polly.access.call1439.18, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.18 = add nsw i64 %145, 21600
  %polly.access.Packed_MemRef_call1286442.18 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.18
  store double %polly.access.call1439.load.18, double* %polly.access.Packed_MemRef_call1286442.18, align 8
  %polly.access.add.call1438.19 = add nuw nsw i64 %147, 19
  %polly.access.call1439.19 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.19
  %polly.access.call1439.load.19 = load double, double* %polly.access.call1439.19, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.19 = add nsw i64 %145, 22800
  %polly.access.Packed_MemRef_call1286442.19 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.19
  store double %polly.access.call1439.load.19, double* %polly.access.Packed_MemRef_call1286442.19, align 8
  br label %polly.loop_exit445

polly.loop_exit445:                               ; preds = %polly.loop_exit452.loopexit.us, %polly.loop_header407.split, %polly.loop_header414.preheader, %polly.loop_header443.preheader
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %polly.loop_cond413 = icmp ult i64 %polly.indvar411, 15
  %indvars.iv.next1011 = add i64 %indvars.iv1010, 1
  br i1 %polly.loop_cond413, label %polly.loop_header407, label %polly.loop_exit409

polly.loop_header443.preheader:                   ; preds = %polly.merge433.us
  %150 = mul i64 %146, 8000
  %151 = mul i64 %146, 9600
  br i1 %polly.loop_guard4241079, label %polly.loop_header443.us, label %polly.loop_exit445

polly.loop_header443.us:                          ; preds = %polly.loop_header443.preheader, %polly.loop_exit452.loopexit.us
  %polly.indvar446.us = phi i64 [ %polly.indvar_next447.us, %polly.loop_exit452.loopexit.us ], [ 0, %polly.loop_header443.preheader ]
  %152 = add nuw nsw i64 %polly.indvar446.us, %137
  %polly.access.mul.Packed_MemRef_call1286457.us = mul nuw nsw i64 %polly.indvar446.us, 1200
  %153 = shl i64 %152, 3
  %154 = add i64 %153, %150
  %scevgep461.us = getelementptr i8, i8* %call2, i64 %154
  %scevgep461462.us = bitcast i8* %scevgep461.us to double*
  %_p_scalar_463.us = load double, double* %scevgep461462.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1286468.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1286457.us, %145
  %polly.access.Packed_MemRef_call1286469.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286468.us
  %_p_scalar_470.us = load double, double* %polly.access.Packed_MemRef_call1286469.us, align 8
  br label %polly.loop_header450.us

polly.loop_header450.us:                          ; preds = %polly.loop_header443.us, %polly.loop_header450.us
  %polly.indvar454.us = phi i64 [ %polly.indvar_next455.us, %polly.loop_header450.us ], [ 0, %polly.loop_header443.us ]
  %155 = add nuw nsw i64 %polly.indvar454.us, %138
  %polly.access.add.Packed_MemRef_call1286458.us = add nuw nsw i64 %polly.indvar454.us, %polly.access.mul.Packed_MemRef_call1286457.us
  %polly.access.Packed_MemRef_call1286459.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286458.us
  %_p_scalar_460.us = load double, double* %polly.access.Packed_MemRef_call1286459.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_463.us, %_p_scalar_460.us
  %156 = mul nuw nsw i64 %155, 8000
  %157 = add nuw nsw i64 %156, %153
  %scevgep464.us = getelementptr i8, i8* %call2, i64 %157
  %scevgep464465.us = bitcast i8* %scevgep464.us to double*
  %_p_scalar_466.us = load double, double* %scevgep464465.us, align 8, !alias.scope !77, !noalias !82
  %p_mul37.i75.us = fmul fast double %_p_scalar_470.us, %_p_scalar_466.us
  %158 = shl i64 %155, 3
  %159 = add i64 %158, %151
  %scevgep471.us = getelementptr i8, i8* %call, i64 %159
  %scevgep471472.us = bitcast i8* %scevgep471.us to double*
  %_p_scalar_473.us = load double, double* %scevgep471472.us, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_473.us
  store double %p_add42.i79.us, double* %scevgep471472.us, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next455.us = add nuw nsw i64 %polly.indvar454.us, 1
  %exitcond1016.not = icmp eq i64 %polly.indvar454.us, %smin1015
  br i1 %exitcond1016.not, label %polly.loop_exit452.loopexit.us, label %polly.loop_header450.us

polly.loop_exit452.loopexit.us:                   ; preds = %polly.loop_header450.us
  %polly.indvar_next447.us = add nuw nsw i64 %polly.indvar446.us, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar_next447.us, 20
  br i1 %exitcond1017.not, label %polly.loop_exit445, label %polly.loop_header443.us

polly.start476:                                   ; preds = %init_array.exit
  %malloccall478 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header562

polly.exiting477:                                 ; preds = %polly.loop_exit586
  tail call void @free(i8* %malloccall478)
  br label %kernel_syr2k.exit

polly.loop_header562:                             ; preds = %polly.loop_exit570, %polly.start476
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit570 ], [ 0, %polly.start476 ]
  %polly.indvar565 = phi i64 [ %polly.indvar_next566, %polly.loop_exit570 ], [ 1, %polly.start476 ]
  %160 = add i64 %indvar, 1
  %161 = mul nuw nsw i64 %polly.indvar565, 9600
  %scevgep574 = getelementptr i8, i8* %call, i64 %161
  %min.iters.check1163 = icmp ult i64 %160, 4
  br i1 %min.iters.check1163, label %polly.loop_header568.preheader, label %vector.ph1164

vector.ph1164:                                    ; preds = %polly.loop_header562
  %n.vec1166 = and i64 %160, -4
  br label %vector.body1162

vector.body1162:                                  ; preds = %vector.body1162, %vector.ph1164
  %index1167 = phi i64 [ 0, %vector.ph1164 ], [ %index.next1168, %vector.body1162 ]
  %162 = shl nuw nsw i64 %index1167, 3
  %163 = getelementptr i8, i8* %scevgep574, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  %wide.load1171 = load <4 x double>, <4 x double>* %164, align 8, !alias.scope !83, !noalias !85
  %165 = fmul fast <4 x double> %wide.load1171, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %166 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %165, <4 x double>* %166, align 8, !alias.scope !83, !noalias !85
  %index.next1168 = add i64 %index1167, 4
  %167 = icmp eq i64 %index.next1168, %n.vec1166
  br i1 %167, label %middle.block1160, label %vector.body1162, !llvm.loop !89

middle.block1160:                                 ; preds = %vector.body1162
  %cmp.n1170 = icmp eq i64 %160, %n.vec1166
  br i1 %cmp.n1170, label %polly.loop_exit570, label %polly.loop_header568.preheader

polly.loop_header568.preheader:                   ; preds = %polly.loop_header562, %middle.block1160
  %polly.indvar571.ph = phi i64 [ 0, %polly.loop_header562 ], [ %n.vec1166, %middle.block1160 ]
  br label %polly.loop_header568

polly.loop_exit570:                               ; preds = %polly.loop_header568, %middle.block1160
  %polly.indvar_next566 = add nuw nsw i64 %polly.indvar565, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar_next566, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1043.not, label %polly.loop_header578.preheader, label %polly.loop_header562

polly.loop_header578.preheader:                   ; preds = %polly.loop_exit570
  %Packed_MemRef_call1479 = bitcast i8* %malloccall478 to double*
  br label %polly.loop_header578

polly.loop_header568:                             ; preds = %polly.loop_header568.preheader, %polly.loop_header568
  %polly.indvar571 = phi i64 [ %polly.indvar_next572, %polly.loop_header568 ], [ %polly.indvar571.ph, %polly.loop_header568.preheader ]
  %168 = shl nuw nsw i64 %polly.indvar571, 3
  %scevgep575 = getelementptr i8, i8* %scevgep574, i64 %168
  %scevgep575576 = bitcast i8* %scevgep575 to double*
  %_p_scalar_577 = load double, double* %scevgep575576, align 8, !alias.scope !83, !noalias !85
  %p_mul.i = fmul fast double %_p_scalar_577, 1.200000e+00
  store double %p_mul.i, double* %scevgep575576, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next572 = add nuw nsw i64 %polly.indvar571, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar_next572, %polly.indvar565
  br i1 %exitcond1042.not, label %polly.loop_exit570, label %polly.loop_header568, !llvm.loop !90

polly.loop_header578:                             ; preds = %polly.loop_header578.preheader, %polly.loop_exit586
  %indvars.iv1028 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %indvars.iv.next1029, %polly.loop_exit586 ]
  %indvars.iv1023 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %indvars.iv.next1024, %polly.loop_exit586 ]
  %polly.indvar581 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %polly.indvar_next582, %polly.loop_exit586 ]
  %169 = add nuw nsw i64 %polly.indvar581, 6
  %pexp.p_div_q590 = udiv i64 %169, 5
  %170 = sub nsw i64 %polly.indvar581, %pexp.p_div_q590
  %polly.loop_guard595 = icmp sgt i64 %170, -2
  %171 = mul nsw i64 %polly.indvar581, -16
  %172 = shl nsw i64 %polly.indvar581, 4
  br label %polly.loop_header584

polly.loop_exit586:                               ; preds = %polly.loop_exit594
  %polly.indvar_next582 = add nuw nsw i64 %polly.indvar581, 1
  %indvars.iv.next1024 = add nsw i64 %indvars.iv1023, -16
  %indvars.iv.next1029 = add nuw nsw i64 %indvars.iv1028, 16
  %exitcond1041.not = icmp eq i64 %polly.indvar_next582, 75
  br i1 %exitcond1041.not, label %polly.exiting477, label %polly.loop_header578

polly.loop_header584:                             ; preds = %polly.loop_exit594, %polly.loop_header578
  %polly.indvar587 = phi i64 [ 0, %polly.loop_header578 ], [ %polly.indvar_next588, %polly.loop_exit594 ]
  br i1 %polly.loop_guard595, label %polly.loop_header592.preheader, label %polly.loop_exit594

polly.loop_header592.preheader:                   ; preds = %polly.loop_header584
  %173 = mul nuw nsw i64 %polly.indvar587, 20
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_exit602, %polly.loop_header584
  %polly.indvar_next588 = add nuw nsw i64 %polly.indvar587, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar_next588, 50
  br i1 %exitcond1040.not, label %polly.loop_exit586, label %polly.loop_header584

polly.loop_header592:                             ; preds = %polly.loop_header592.preheader, %polly.loop_exit602
  %indvars.iv1030 = phi i64 [ %indvars.iv1028, %polly.loop_header592.preheader ], [ %indvars.iv.next1031, %polly.loop_exit602 ]
  %indvars.iv1025 = phi i64 [ %indvars.iv1023, %polly.loop_header592.preheader ], [ %indvars.iv.next1026, %polly.loop_exit602 ]
  %polly.indvar596 = phi i64 [ 0, %polly.loop_header592.preheader ], [ %polly.indvar_next597, %polly.loop_exit602 ]
  %174 = mul nuw nsw i64 %polly.indvar596, 20
  %175 = add nsw i64 %174, %171
  %176 = icmp sgt i64 %175, 0
  %177 = select i1 %176, i64 %175, i64 0
  %polly.loop_guard603 = icmp slt i64 %177, 16
  br i1 %polly.loop_guard603, label %polly.loop_header600.preheader, label %polly.loop_exit602

polly.loop_header600.preheader:                   ; preds = %polly.loop_header592
  %smax1027 = call i64 @llvm.smax.i64(i64 %indvars.iv1025, i64 0)
  %178 = add i64 %smax1027, %indvars.iv1030
  %179 = sub nsw i64 %172, %174
  %180 = add nuw nsw i64 %174, 20
  br label %polly.loop_header600

polly.loop_exit602:                               ; preds = %polly.loop_exit638, %polly.loop_header592
  %polly.indvar_next597 = add nuw nsw i64 %polly.indvar596, 1
  %polly.loop_cond598.not = icmp sgt i64 %polly.indvar596, %170
  %indvars.iv.next1026 = add nsw i64 %indvars.iv1025, 20
  %indvars.iv.next1031 = add nsw i64 %indvars.iv1030, -20
  br i1 %polly.loop_cond598.not, label %polly.loop_exit594, label %polly.loop_header592

polly.loop_header600:                             ; preds = %polly.loop_header600.preheader, %polly.loop_exit638
  %indvars.iv1032 = phi i64 [ %178, %polly.loop_header600.preheader ], [ %indvars.iv.next1033, %polly.loop_exit638 ]
  %polly.indvar604 = phi i64 [ %177, %polly.loop_header600.preheader ], [ %polly.indvar_next605, %polly.loop_exit638 ]
  %smin1037 = call i64 @llvm.smin.i64(i64 %indvars.iv1032, i64 19)
  %181 = add nsw i64 %polly.indvar604, %179
  %polly.loop_guard6171080 = icmp sgt i64 %181, -1
  %182 = add nuw nsw i64 %polly.indvar604, %172
  %.not874 = icmp ult i64 %182, %180
  %polly.access.mul.call1630 = mul nsw i64 %182, 1000
  %183 = add nuw i64 %polly.access.mul.call1630, %173
  br i1 %polly.loop_guard6171080, label %polly.loop_header607.us, label %polly.loop_header600.split

polly.loop_header607.us:                          ; preds = %polly.loop_header600, %polly.merge626.us
  %polly.indvar610.us = phi i64 [ %polly.indvar_next611.us, %polly.merge626.us ], [ 0, %polly.loop_header600 ]
  %184 = add nuw nsw i64 %polly.indvar610.us, %173
  %polly.access.mul.Packed_MemRef_call1479.us = mul nuw nsw i64 %polly.indvar610.us, 1200
  br label %polly.loop_header614.us

polly.loop_header614.us:                          ; preds = %polly.loop_header607.us, %polly.loop_header614.us
  %polly.indvar618.us = phi i64 [ %polly.indvar_next619.us, %polly.loop_header614.us ], [ 0, %polly.loop_header607.us ]
  %185 = add nuw nsw i64 %polly.indvar618.us, %174
  %polly.access.mul.call1622.us = mul nuw nsw i64 %185, 1000
  %polly.access.add.call1623.us = add nuw nsw i64 %184, %polly.access.mul.call1622.us
  %polly.access.call1624.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1623.us
  %polly.access.call1624.load.us = load double, double* %polly.access.call1624.us, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479.us = add nuw nsw i64 %polly.indvar618.us, %polly.access.mul.Packed_MemRef_call1479.us
  %polly.access.Packed_MemRef_call1479.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us
  store double %polly.access.call1624.load.us, double* %polly.access.Packed_MemRef_call1479.us, align 8
  %polly.indvar_next619.us = add nuw nsw i64 %polly.indvar618.us, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar618.us, %smin1037
  br i1 %exitcond1035.not, label %polly.cond625.loopexit.us, label %polly.loop_header614.us

polly.then627.us:                                 ; preds = %polly.cond625.loopexit.us
  %polly.access.add.call1631.us = add nuw nsw i64 %183, %polly.indvar610.us
  %polly.access.call1632.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.us
  %polly.access.call1632.load.us = load double, double* %polly.access.call1632.us, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1479.us, %181
  %polly.access.Packed_MemRef_call1479635.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.us
  store double %polly.access.call1632.load.us, double* %polly.access.Packed_MemRef_call1479635.us, align 8
  br label %polly.merge626.us

polly.merge626.us:                                ; preds = %polly.then627.us, %polly.cond625.loopexit.us
  %polly.indvar_next611.us = add nuw nsw i64 %polly.indvar610.us, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar_next611.us, 20
  br i1 %exitcond1036.not, label %polly.loop_header636.preheader, label %polly.loop_header607.us

polly.cond625.loopexit.us:                        ; preds = %polly.loop_header614.us
  br i1 %.not874, label %polly.merge626.us, label %polly.then627.us

polly.loop_header600.split:                       ; preds = %polly.loop_header600
  br i1 %.not874, label %polly.loop_exit638, label %polly.loop_header607.preheader

polly.loop_header607.preheader:                   ; preds = %polly.loop_header600.split
  %polly.access.call1632 = getelementptr double, double* %polly.access.cast.call1671, i64 %183
  %polly.access.call1632.load = load double, double* %polly.access.call1632, align 8, !alias.scope !86, !noalias !91
  %polly.access.Packed_MemRef_call1479635 = getelementptr double, double* %Packed_MemRef_call1479, i64 %181
  store double %polly.access.call1632.load, double* %polly.access.Packed_MemRef_call1479635, align 8
  %polly.access.add.call1631.1 = or i64 %183, 1
  %polly.access.call1632.1 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.1
  %polly.access.call1632.load.1 = load double, double* %polly.access.call1632.1, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.1 = add nsw i64 %181, 1200
  %polly.access.Packed_MemRef_call1479635.1 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.1
  store double %polly.access.call1632.load.1, double* %polly.access.Packed_MemRef_call1479635.1, align 8
  %polly.access.add.call1631.2 = or i64 %183, 2
  %polly.access.call1632.2 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.2
  %polly.access.call1632.load.2 = load double, double* %polly.access.call1632.2, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.2 = add nsw i64 %181, 2400
  %polly.access.Packed_MemRef_call1479635.2 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.2
  store double %polly.access.call1632.load.2, double* %polly.access.Packed_MemRef_call1479635.2, align 8
  %polly.access.add.call1631.3 = or i64 %183, 3
  %polly.access.call1632.3 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.3
  %polly.access.call1632.load.3 = load double, double* %polly.access.call1632.3, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.3 = add nsw i64 %181, 3600
  %polly.access.Packed_MemRef_call1479635.3 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.3
  store double %polly.access.call1632.load.3, double* %polly.access.Packed_MemRef_call1479635.3, align 8
  %polly.access.add.call1631.4 = add nuw nsw i64 %183, 4
  %polly.access.call1632.4 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.4
  %polly.access.call1632.load.4 = load double, double* %polly.access.call1632.4, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.4 = add nsw i64 %181, 4800
  %polly.access.Packed_MemRef_call1479635.4 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.4
  store double %polly.access.call1632.load.4, double* %polly.access.Packed_MemRef_call1479635.4, align 8
  %polly.access.add.call1631.5 = add nuw nsw i64 %183, 5
  %polly.access.call1632.5 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.5
  %polly.access.call1632.load.5 = load double, double* %polly.access.call1632.5, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.5 = add nsw i64 %181, 6000
  %polly.access.Packed_MemRef_call1479635.5 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.5
  store double %polly.access.call1632.load.5, double* %polly.access.Packed_MemRef_call1479635.5, align 8
  %polly.access.add.call1631.6 = add nuw nsw i64 %183, 6
  %polly.access.call1632.6 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.6
  %polly.access.call1632.load.6 = load double, double* %polly.access.call1632.6, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.6 = add nsw i64 %181, 7200
  %polly.access.Packed_MemRef_call1479635.6 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.6
  store double %polly.access.call1632.load.6, double* %polly.access.Packed_MemRef_call1479635.6, align 8
  %polly.access.add.call1631.7 = add nuw nsw i64 %183, 7
  %polly.access.call1632.7 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.7
  %polly.access.call1632.load.7 = load double, double* %polly.access.call1632.7, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.7 = add nsw i64 %181, 8400
  %polly.access.Packed_MemRef_call1479635.7 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.7
  store double %polly.access.call1632.load.7, double* %polly.access.Packed_MemRef_call1479635.7, align 8
  %polly.access.add.call1631.8 = add nuw nsw i64 %183, 8
  %polly.access.call1632.8 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.8
  %polly.access.call1632.load.8 = load double, double* %polly.access.call1632.8, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.8 = add nsw i64 %181, 9600
  %polly.access.Packed_MemRef_call1479635.8 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.8
  store double %polly.access.call1632.load.8, double* %polly.access.Packed_MemRef_call1479635.8, align 8
  %polly.access.add.call1631.9 = add nuw nsw i64 %183, 9
  %polly.access.call1632.9 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.9
  %polly.access.call1632.load.9 = load double, double* %polly.access.call1632.9, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.9 = add nsw i64 %181, 10800
  %polly.access.Packed_MemRef_call1479635.9 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.9
  store double %polly.access.call1632.load.9, double* %polly.access.Packed_MemRef_call1479635.9, align 8
  %polly.access.add.call1631.10 = add nuw nsw i64 %183, 10
  %polly.access.call1632.10 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.10
  %polly.access.call1632.load.10 = load double, double* %polly.access.call1632.10, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.10 = add nsw i64 %181, 12000
  %polly.access.Packed_MemRef_call1479635.10 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.10
  store double %polly.access.call1632.load.10, double* %polly.access.Packed_MemRef_call1479635.10, align 8
  %polly.access.add.call1631.11 = add nuw nsw i64 %183, 11
  %polly.access.call1632.11 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.11
  %polly.access.call1632.load.11 = load double, double* %polly.access.call1632.11, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.11 = add nsw i64 %181, 13200
  %polly.access.Packed_MemRef_call1479635.11 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.11
  store double %polly.access.call1632.load.11, double* %polly.access.Packed_MemRef_call1479635.11, align 8
  %polly.access.add.call1631.12 = add nuw nsw i64 %183, 12
  %polly.access.call1632.12 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.12
  %polly.access.call1632.load.12 = load double, double* %polly.access.call1632.12, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.12 = add nsw i64 %181, 14400
  %polly.access.Packed_MemRef_call1479635.12 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.12
  store double %polly.access.call1632.load.12, double* %polly.access.Packed_MemRef_call1479635.12, align 8
  %polly.access.add.call1631.13 = add nuw nsw i64 %183, 13
  %polly.access.call1632.13 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.13
  %polly.access.call1632.load.13 = load double, double* %polly.access.call1632.13, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.13 = add nsw i64 %181, 15600
  %polly.access.Packed_MemRef_call1479635.13 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.13
  store double %polly.access.call1632.load.13, double* %polly.access.Packed_MemRef_call1479635.13, align 8
  %polly.access.add.call1631.14 = add nuw nsw i64 %183, 14
  %polly.access.call1632.14 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.14
  %polly.access.call1632.load.14 = load double, double* %polly.access.call1632.14, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.14 = add nsw i64 %181, 16800
  %polly.access.Packed_MemRef_call1479635.14 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.14
  store double %polly.access.call1632.load.14, double* %polly.access.Packed_MemRef_call1479635.14, align 8
  %polly.access.add.call1631.15 = add nuw nsw i64 %183, 15
  %polly.access.call1632.15 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.15
  %polly.access.call1632.load.15 = load double, double* %polly.access.call1632.15, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.15 = add nsw i64 %181, 18000
  %polly.access.Packed_MemRef_call1479635.15 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.15
  store double %polly.access.call1632.load.15, double* %polly.access.Packed_MemRef_call1479635.15, align 8
  %polly.access.add.call1631.16 = add nuw nsw i64 %183, 16
  %polly.access.call1632.16 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.16
  %polly.access.call1632.load.16 = load double, double* %polly.access.call1632.16, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.16 = add nsw i64 %181, 19200
  %polly.access.Packed_MemRef_call1479635.16 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.16
  store double %polly.access.call1632.load.16, double* %polly.access.Packed_MemRef_call1479635.16, align 8
  %polly.access.add.call1631.17 = add nuw nsw i64 %183, 17
  %polly.access.call1632.17 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.17
  %polly.access.call1632.load.17 = load double, double* %polly.access.call1632.17, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.17 = add nsw i64 %181, 20400
  %polly.access.Packed_MemRef_call1479635.17 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.17
  store double %polly.access.call1632.load.17, double* %polly.access.Packed_MemRef_call1479635.17, align 8
  %polly.access.add.call1631.18 = add nuw nsw i64 %183, 18
  %polly.access.call1632.18 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.18
  %polly.access.call1632.load.18 = load double, double* %polly.access.call1632.18, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.18 = add nsw i64 %181, 21600
  %polly.access.Packed_MemRef_call1479635.18 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.18
  store double %polly.access.call1632.load.18, double* %polly.access.Packed_MemRef_call1479635.18, align 8
  %polly.access.add.call1631.19 = add nuw nsw i64 %183, 19
  %polly.access.call1632.19 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.19
  %polly.access.call1632.load.19 = load double, double* %polly.access.call1632.19, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.19 = add nsw i64 %181, 22800
  %polly.access.Packed_MemRef_call1479635.19 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.19
  store double %polly.access.call1632.load.19, double* %polly.access.Packed_MemRef_call1479635.19, align 8
  br label %polly.loop_exit638

polly.loop_exit638:                               ; preds = %polly.loop_exit645.loopexit.us, %polly.loop_header600.split, %polly.loop_header607.preheader, %polly.loop_header636.preheader
  %polly.indvar_next605 = add nuw nsw i64 %polly.indvar604, 1
  %polly.loop_cond606 = icmp ult i64 %polly.indvar604, 15
  %indvars.iv.next1033 = add i64 %indvars.iv1032, 1
  br i1 %polly.loop_cond606, label %polly.loop_header600, label %polly.loop_exit602

polly.loop_header636.preheader:                   ; preds = %polly.merge626.us
  %186 = mul i64 %182, 8000
  %187 = mul i64 %182, 9600
  br i1 %polly.loop_guard6171080, label %polly.loop_header636.us, label %polly.loop_exit638

polly.loop_header636.us:                          ; preds = %polly.loop_header636.preheader, %polly.loop_exit645.loopexit.us
  %polly.indvar639.us = phi i64 [ %polly.indvar_next640.us, %polly.loop_exit645.loopexit.us ], [ 0, %polly.loop_header636.preheader ]
  %188 = add nuw nsw i64 %polly.indvar639.us, %173
  %polly.access.mul.Packed_MemRef_call1479650.us = mul nuw nsw i64 %polly.indvar639.us, 1200
  %189 = shl i64 %188, 3
  %190 = add i64 %189, %186
  %scevgep654.us = getelementptr i8, i8* %call2, i64 %190
  %scevgep654655.us = bitcast i8* %scevgep654.us to double*
  %_p_scalar_656.us = load double, double* %scevgep654655.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1479661.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1479650.us, %181
  %polly.access.Packed_MemRef_call1479662.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479661.us
  %_p_scalar_663.us = load double, double* %polly.access.Packed_MemRef_call1479662.us, align 8
  br label %polly.loop_header643.us

polly.loop_header643.us:                          ; preds = %polly.loop_header636.us, %polly.loop_header643.us
  %polly.indvar647.us = phi i64 [ %polly.indvar_next648.us, %polly.loop_header643.us ], [ 0, %polly.loop_header636.us ]
  %191 = add nuw nsw i64 %polly.indvar647.us, %174
  %polly.access.add.Packed_MemRef_call1479651.us = add nuw nsw i64 %polly.indvar647.us, %polly.access.mul.Packed_MemRef_call1479650.us
  %polly.access.Packed_MemRef_call1479652.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479651.us
  %_p_scalar_653.us = load double, double* %polly.access.Packed_MemRef_call1479652.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_656.us, %_p_scalar_653.us
  %192 = mul nuw nsw i64 %191, 8000
  %193 = add nuw nsw i64 %192, %189
  %scevgep657.us = getelementptr i8, i8* %call2, i64 %193
  %scevgep657658.us = bitcast i8* %scevgep657.us to double*
  %_p_scalar_659.us = load double, double* %scevgep657658.us, align 8, !alias.scope !87, !noalias !92
  %p_mul37.i.us = fmul fast double %_p_scalar_663.us, %_p_scalar_659.us
  %194 = shl i64 %191, 3
  %195 = add i64 %194, %187
  %scevgep664.us = getelementptr i8, i8* %call, i64 %195
  %scevgep664665.us = bitcast i8* %scevgep664.us to double*
  %_p_scalar_666.us = load double, double* %scevgep664665.us, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_666.us
  store double %p_add42.i.us, double* %scevgep664665.us, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next648.us = add nuw nsw i64 %polly.indvar647.us, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar647.us, %smin1037
  br i1 %exitcond1038.not, label %polly.loop_exit645.loopexit.us, label %polly.loop_header643.us

polly.loop_exit645.loopexit.us:                   ; preds = %polly.loop_header643.us
  %polly.indvar_next640.us = add nuw nsw i64 %polly.indvar639.us, 1
  %exitcond1039.not = icmp eq i64 %polly.indvar_next640.us, 20
  br i1 %exitcond1039.not, label %polly.loop_exit638, label %polly.loop_header636.us

polly.loop_header793:                             ; preds = %entry, %polly.loop_exit801
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069, %polly.loop_exit801 ], [ 0, %entry ]
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %entry ]
  %smin1070 = call i64 @llvm.smin.i64(i64 %indvars.iv1068, i64 -1168)
  %196 = shl nsw i64 %polly.indvar796, 5
  %197 = add nsw i64 %smin1070, 1199
  br label %polly.loop_header799

polly.loop_exit801:                               ; preds = %polly.loop_exit807
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %indvars.iv.next1069 = add nsw i64 %indvars.iv1068, -32
  %exitcond1073.not = icmp eq i64 %polly.indvar_next797, 38
  br i1 %exitcond1073.not, label %polly.loop_header820, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_exit807, %polly.loop_header793
  %indvars.iv1064 = phi i64 [ %indvars.iv.next1065, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %198 = mul nsw i64 %polly.indvar802, -32
  %smin = call i64 @llvm.smin.i64(i64 %198, i64 -1168)
  %199 = add nsw i64 %smin, 1200
  %smin1066 = call i64 @llvm.smin.i64(i64 %indvars.iv1064, i64 -1168)
  %200 = shl nsw i64 %polly.indvar802, 5
  %201 = add nsw i64 %smin1066, 1199
  br label %polly.loop_header805

polly.loop_exit807:                               ; preds = %polly.loop_exit813
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %indvars.iv.next1065 = add nsw i64 %indvars.iv1064, -32
  %exitcond1072.not = icmp eq i64 %polly.indvar_next803, 38
  br i1 %exitcond1072.not, label %polly.loop_exit801, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_exit813, %polly.loop_header799
  %polly.indvar808 = phi i64 [ 0, %polly.loop_header799 ], [ %polly.indvar_next809, %polly.loop_exit813 ]
  %202 = add nuw nsw i64 %polly.indvar808, %196
  %203 = trunc i64 %202 to i32
  %204 = mul nuw nsw i64 %202, 9600
  %min.iters.check = icmp eq i64 %199, 0
  br i1 %min.iters.check, label %polly.loop_header811, label %vector.ph1102

vector.ph1102:                                    ; preds = %polly.loop_header805
  %broadcast.splatinsert1109 = insertelement <4 x i64> poison, i64 %200, i32 0
  %broadcast.splat1110 = shufflevector <4 x i64> %broadcast.splatinsert1109, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1111 = insertelement <4 x i32> poison, i32 %203, i32 0
  %broadcast.splat1112 = shufflevector <4 x i32> %broadcast.splatinsert1111, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1101

vector.body1101:                                  ; preds = %vector.body1101, %vector.ph1102
  %index1103 = phi i64 [ 0, %vector.ph1102 ], [ %index.next1104, %vector.body1101 ]
  %vec.ind1107 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1102 ], [ %vec.ind.next1108, %vector.body1101 ]
  %205 = add nuw nsw <4 x i64> %vec.ind1107, %broadcast.splat1110
  %206 = trunc <4 x i64> %205 to <4 x i32>
  %207 = mul <4 x i32> %broadcast.splat1112, %206
  %208 = add <4 x i32> %207, <i32 3, i32 3, i32 3, i32 3>
  %209 = urem <4 x i32> %208, <i32 1200, i32 1200, i32 1200, i32 1200>
  %210 = sitofp <4 x i32> %209 to <4 x double>
  %211 = fmul fast <4 x double> %210, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %212 = extractelement <4 x i64> %205, i32 0
  %213 = shl i64 %212, 3
  %214 = add nuw nsw i64 %213, %204
  %215 = getelementptr i8, i8* %call, i64 %214
  %216 = bitcast i8* %215 to <4 x double>*
  store <4 x double> %211, <4 x double>* %216, align 8, !alias.scope !93, !noalias !95
  %index.next1104 = add i64 %index1103, 4
  %vec.ind.next1108 = add <4 x i64> %vec.ind1107, <i64 4, i64 4, i64 4, i64 4>
  %217 = icmp eq i64 %index.next1104, %199
  br i1 %217, label %polly.loop_exit813, label %vector.body1101, !llvm.loop !98

polly.loop_exit813:                               ; preds = %vector.body1101, %polly.loop_header811
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar808, %197
  br i1 %exitcond1071.not, label %polly.loop_exit807, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_header805, %polly.loop_header811
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_header811 ], [ 0, %polly.loop_header805 ]
  %218 = add nuw nsw i64 %polly.indvar814, %200
  %219 = trunc i64 %218 to i32
  %220 = mul i32 %219, %203
  %221 = add i32 %220, 3
  %222 = urem i32 %221, 1200
  %p_conv31.i = sitofp i32 %222 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %223 = shl i64 %218, 3
  %224 = add nuw nsw i64 %223, %204
  %scevgep817 = getelementptr i8, i8* %call, i64 %224
  %scevgep817818 = bitcast i8* %scevgep817 to double*
  store double %p_div33.i, double* %scevgep817818, align 8, !alias.scope !93, !noalias !95
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar814, %201
  br i1 %exitcond1067.not, label %polly.loop_exit813, label %polly.loop_header811, !llvm.loop !99

polly.loop_header820:                             ; preds = %polly.loop_exit801, %polly.loop_exit828
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %polly.loop_exit828 ], [ 0, %polly.loop_exit801 ]
  %polly.indvar823 = phi i64 [ %polly.indvar_next824, %polly.loop_exit828 ], [ 0, %polly.loop_exit801 ]
  %smin1060 = call i64 @llvm.smin.i64(i64 %indvars.iv1058, i64 -1168)
  %225 = shl nsw i64 %polly.indvar823, 5
  %226 = add nsw i64 %smin1060, 1199
  br label %polly.loop_header826

polly.loop_exit828:                               ; preds = %polly.loop_exit834
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %indvars.iv.next1059 = add nsw i64 %indvars.iv1058, -32
  %exitcond1063.not = icmp eq i64 %polly.indvar_next824, 38
  br i1 %exitcond1063.not, label %polly.loop_header846, label %polly.loop_header820

polly.loop_header826:                             ; preds = %polly.loop_exit834, %polly.loop_header820
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055, %polly.loop_exit834 ], [ 0, %polly.loop_header820 ]
  %polly.indvar829 = phi i64 [ %polly.indvar_next830, %polly.loop_exit834 ], [ 0, %polly.loop_header820 ]
  %227 = mul nsw i64 %polly.indvar829, -32
  %smin1116 = call i64 @llvm.smin.i64(i64 %227, i64 -968)
  %228 = add nsw i64 %smin1116, 1000
  %smin1056 = call i64 @llvm.smin.i64(i64 %indvars.iv1054, i64 -968)
  %229 = shl nsw i64 %polly.indvar829, 5
  %230 = add nsw i64 %smin1056, 999
  br label %polly.loop_header832

polly.loop_exit834:                               ; preds = %polly.loop_exit840
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %indvars.iv.next1055 = add nsw i64 %indvars.iv1054, -32
  %exitcond1062.not = icmp eq i64 %polly.indvar_next830, 32
  br i1 %exitcond1062.not, label %polly.loop_exit828, label %polly.loop_header826

polly.loop_header832:                             ; preds = %polly.loop_exit840, %polly.loop_header826
  %polly.indvar835 = phi i64 [ 0, %polly.loop_header826 ], [ %polly.indvar_next836, %polly.loop_exit840 ]
  %231 = add nuw nsw i64 %polly.indvar835, %225
  %232 = trunc i64 %231 to i32
  %233 = mul nuw nsw i64 %231, 8000
  %min.iters.check1117 = icmp eq i64 %228, 0
  br i1 %min.iters.check1117, label %polly.loop_header838, label %vector.ph1118

vector.ph1118:                                    ; preds = %polly.loop_header832
  %broadcast.splatinsert1127 = insertelement <4 x i64> poison, i64 %229, i32 0
  %broadcast.splat1128 = shufflevector <4 x i64> %broadcast.splatinsert1127, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1129 = insertelement <4 x i32> poison, i32 %232, i32 0
  %broadcast.splat1130 = shufflevector <4 x i32> %broadcast.splatinsert1129, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1115

vector.body1115:                                  ; preds = %vector.body1115, %vector.ph1118
  %index1121 = phi i64 [ 0, %vector.ph1118 ], [ %index.next1122, %vector.body1115 ]
  %vec.ind1125 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1118 ], [ %vec.ind.next1126, %vector.body1115 ]
  %234 = add nuw nsw <4 x i64> %vec.ind1125, %broadcast.splat1128
  %235 = trunc <4 x i64> %234 to <4 x i32>
  %236 = mul <4 x i32> %broadcast.splat1130, %235
  %237 = add <4 x i32> %236, <i32 2, i32 2, i32 2, i32 2>
  %238 = urem <4 x i32> %237, <i32 1000, i32 1000, i32 1000, i32 1000>
  %239 = sitofp <4 x i32> %238 to <4 x double>
  %240 = fmul fast <4 x double> %239, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %241 = extractelement <4 x i64> %234, i32 0
  %242 = shl i64 %241, 3
  %243 = add nuw nsw i64 %242, %233
  %244 = getelementptr i8, i8* %call2, i64 %243
  %245 = bitcast i8* %244 to <4 x double>*
  store <4 x double> %240, <4 x double>* %245, align 8, !alias.scope !97, !noalias !100
  %index.next1122 = add i64 %index1121, 4
  %vec.ind.next1126 = add <4 x i64> %vec.ind1125, <i64 4, i64 4, i64 4, i64 4>
  %246 = icmp eq i64 %index.next1122, %228
  br i1 %246, label %polly.loop_exit840, label %vector.body1115, !llvm.loop !101

polly.loop_exit840:                               ; preds = %vector.body1115, %polly.loop_header838
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar835, %226
  br i1 %exitcond1061.not, label %polly.loop_exit834, label %polly.loop_header832

polly.loop_header838:                             ; preds = %polly.loop_header832, %polly.loop_header838
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_header838 ], [ 0, %polly.loop_header832 ]
  %247 = add nuw nsw i64 %polly.indvar841, %229
  %248 = trunc i64 %247 to i32
  %249 = mul i32 %248, %232
  %250 = add i32 %249, 2
  %251 = urem i32 %250, 1000
  %p_conv10.i = sitofp i32 %251 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %252 = shl i64 %247, 3
  %253 = add nuw nsw i64 %252, %233
  %scevgep844 = getelementptr i8, i8* %call2, i64 %253
  %scevgep844845 = bitcast i8* %scevgep844 to double*
  store double %p_div12.i, double* %scevgep844845, align 8, !alias.scope !97, !noalias !100
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar841, %230
  br i1 %exitcond1057.not, label %polly.loop_exit840, label %polly.loop_header838, !llvm.loop !102

polly.loop_header846:                             ; preds = %polly.loop_exit828, %polly.loop_exit854
  %indvars.iv1048 = phi i64 [ %indvars.iv.next1049, %polly.loop_exit854 ], [ 0, %polly.loop_exit828 ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %polly.loop_exit828 ]
  %smin1050 = call i64 @llvm.smin.i64(i64 %indvars.iv1048, i64 -1168)
  %254 = shl nsw i64 %polly.indvar849, 5
  %255 = add nsw i64 %smin1050, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1049 = add nsw i64 %indvars.iv1048, -32
  %exitcond1053.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1053.not, label %init_array.exit, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %256 = mul nsw i64 %polly.indvar855, -32
  %smin1134 = call i64 @llvm.smin.i64(i64 %256, i64 -968)
  %257 = add nsw i64 %smin1134, 1000
  %smin1046 = call i64 @llvm.smin.i64(i64 %indvars.iv1044, i64 -968)
  %258 = shl nsw i64 %polly.indvar855, 5
  %259 = add nsw i64 %smin1046, 999
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1045 = add nsw i64 %indvars.iv1044, -32
  %exitcond1052.not = icmp eq i64 %polly.indvar_next856, 32
  br i1 %exitcond1052.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %polly.indvar861 = phi i64 [ 0, %polly.loop_header852 ], [ %polly.indvar_next862, %polly.loop_exit866 ]
  %260 = add nuw nsw i64 %polly.indvar861, %254
  %261 = trunc i64 %260 to i32
  %262 = mul nuw nsw i64 %260, 8000
  %min.iters.check1135 = icmp eq i64 %257, 0
  br i1 %min.iters.check1135, label %polly.loop_header864, label %vector.ph1136

vector.ph1136:                                    ; preds = %polly.loop_header858
  %broadcast.splatinsert1145 = insertelement <4 x i64> poison, i64 %258, i32 0
  %broadcast.splat1146 = shufflevector <4 x i64> %broadcast.splatinsert1145, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1147 = insertelement <4 x i32> poison, i32 %261, i32 0
  %broadcast.splat1148 = shufflevector <4 x i32> %broadcast.splatinsert1147, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1133

vector.body1133:                                  ; preds = %vector.body1133, %vector.ph1136
  %index1139 = phi i64 [ 0, %vector.ph1136 ], [ %index.next1140, %vector.body1133 ]
  %vec.ind1143 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1136 ], [ %vec.ind.next1144, %vector.body1133 ]
  %263 = add nuw nsw <4 x i64> %vec.ind1143, %broadcast.splat1146
  %264 = trunc <4 x i64> %263 to <4 x i32>
  %265 = mul <4 x i32> %broadcast.splat1148, %264
  %266 = add <4 x i32> %265, <i32 1, i32 1, i32 1, i32 1>
  %267 = urem <4 x i32> %266, <i32 1200, i32 1200, i32 1200, i32 1200>
  %268 = sitofp <4 x i32> %267 to <4 x double>
  %269 = fmul fast <4 x double> %268, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %270 = extractelement <4 x i64> %263, i32 0
  %271 = shl i64 %270, 3
  %272 = add nuw nsw i64 %271, %262
  %273 = getelementptr i8, i8* %call1, i64 %272
  %274 = bitcast i8* %273 to <4 x double>*
  store <4 x double> %269, <4 x double>* %274, align 8, !alias.scope !96, !noalias !103
  %index.next1140 = add i64 %index1139, 4
  %vec.ind.next1144 = add <4 x i64> %vec.ind1143, <i64 4, i64 4, i64 4, i64 4>
  %275 = icmp eq i64 %index.next1140, %257
  br i1 %275, label %polly.loop_exit866, label %vector.body1133, !llvm.loop !104

polly.loop_exit866:                               ; preds = %vector.body1133, %polly.loop_header864
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar861, %255
  br i1 %exitcond1051.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_header858, %polly.loop_header864
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_header864 ], [ 0, %polly.loop_header858 ]
  %276 = add nuw nsw i64 %polly.indvar867, %258
  %277 = trunc i64 %276 to i32
  %278 = mul i32 %277, %261
  %279 = add i32 %278, 1
  %280 = urem i32 %279, 1200
  %p_conv.i = sitofp i32 %280 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %281 = shl i64 %276, 3
  %282 = add nuw nsw i64 %281, %262
  %scevgep871 = getelementptr i8, i8* %call1, i64 %282
  %scevgep871872 = bitcast i8* %scevgep871 to double*
  store double %p_div.i, double* %scevgep871872, align 8, !alias.scope !96, !noalias !103
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar867, %259
  br i1 %exitcond1047.not, label %polly.loop_exit866, label %polly.loop_header864, !llvm.loop !105
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
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !25, !34, !37}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !23, !39, !40, !41, !42}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = !{!"llvm.data.pack.enable", i1 true}
!41 = !{!"llvm.data.pack.array", !21}
!42 = !{!"llvm.data.pack.allocate", !"malloc"}
!43 = distinct !{!43, !12, !23, !44, !45, !46, !47, !48, !51}
!44 = !{!"llvm.loop.id", !"i"}
!45 = !{!"llvm.loop.tile.enable", i1 true}
!46 = !{!"llvm.loop.tile.depth", i32 3}
!47 = !{!"llvm.loop.tile.size", i32 16}
!48 = !{!"llvm.loop.tile.followup_floor", !49}
!49 = distinct !{!49, !12, !50}
!50 = !{!"llvm.loop.id", !"i1"}
!51 = !{!"llvm.loop.tile.followup_tile", !52}
!52 = distinct !{!52, !12, !53}
!53 = !{!"llvm.loop.id", !"i2"}
!54 = distinct !{!54, !12, !13}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !4, i64 0}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !63, !"polly.alias.scope.MemRef_call"}
!63 = distinct !{!63, !"polly.alias.scope.domain"}
!64 = !{!65, !66, !67}
!65 = distinct !{!65, !63, !"polly.alias.scope.MemRef_call1"}
!66 = distinct !{!66, !63, !"polly.alias.scope.MemRef_call2"}
!67 = distinct !{!67, !63, !"polly.alias.scope.Packed_MemRef_call1"}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !70, !13}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!62, !66, !67}
!72 = !{!62, !65, !67}
!73 = distinct !{!73, !74, !"polly.alias.scope.MemRef_call"}
!74 = distinct !{!74, !"polly.alias.scope.domain"}
!75 = !{!76, !77, !78}
!76 = distinct !{!76, !74, !"polly.alias.scope.MemRef_call1"}
!77 = distinct !{!77, !74, !"polly.alias.scope.MemRef_call2"}
!78 = distinct !{!78, !74, !"polly.alias.scope.Packed_MemRef_call1"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !70, !13}
!81 = !{!73, !77, !78}
!82 = !{!73, !76, !78}
!83 = distinct !{!83, !84, !"polly.alias.scope.MemRef_call"}
!84 = distinct !{!84, !"polly.alias.scope.domain"}
!85 = !{!86, !87, !88}
!86 = distinct !{!86, !84, !"polly.alias.scope.MemRef_call1"}
!87 = distinct !{!87, !84, !"polly.alias.scope.MemRef_call2"}
!88 = distinct !{!88, !84, !"polly.alias.scope.Packed_MemRef_call1"}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !70, !13}
!91 = !{!83, !87, !88}
!92 = !{!83, !86, !88}
!93 = distinct !{!93, !94, !"polly.alias.scope.MemRef_call"}
!94 = distinct !{!94, !"polly.alias.scope.domain"}
!95 = !{!96, !97}
!96 = distinct !{!96, !94, !"polly.alias.scope.MemRef_call1"}
!97 = distinct !{!97, !94, !"polly.alias.scope.MemRef_call2"}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !70, !13}
!100 = !{!96, !93}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !70, !13}
!103 = !{!97, !93}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !70, !13}
