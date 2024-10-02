; ModuleID = 'polybench.c'
source_filename = "polybench.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.timeval = type { i64, i64 }

@polybench_papi_counters_threadid = dso_local local_unnamed_addr global i32 0, align 4
@polybench_program_total_flops = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [12 x i8] c"tmp <= 10.0\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"polybench.c\00", align 1
@__PRETTY_FUNCTION__.polybench_flush_cache = private unnamed_addr constant [29 x i8] c"void polybench_flush_cache()\00", align 1
@polybench_t_start = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@polybench_t_end = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@polybench_c_start = dso_local local_unnamed_addr global i64 0, align 8
@polybench_c_end = dso_local local_unnamed_addr global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Error return from gettimeofday: %d\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(33556480) i8* @calloc(i64 4194560, i64 8) #11
  %scevgep = getelementptr i8, i8* %call, i64 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x double> [ zeroinitializer, %entry ], [ %3, %vector.body ]
  %0 = shl nuw nsw i64 %index, 3
  %1 = getelementptr i8, i8* %scevgep, i64 %0
  %2 = bitcast i8* %1 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %2, align 8, !alias.scope !2, !noalias !4
  %3 = fadd fast <4 x double> %wide.load, %vec.phi
  %index.next = add i64 %index, 4
  %4 = icmp eq i64 %index.next, 4194556
  br i1 %4, label %middle.block, label %vector.body, !llvm.loop !5

middle.block:                                     ; preds = %vector.body
  %5 = call fast double @llvm.vector.reduce.fadd.v4f64(double -0.000000e+00, <4 x double> %3)
  br label %polly.merge

cond.false:                                       ; preds = %polly.exiting
  tail call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.polybench_flush_cache, i64 0, i64 0)) #12
  unreachable

cond.end:                                         ; preds = %polly.exiting
  tail call void @free(i8* nonnull %call) #11
  ret void

polly.exiting:                                    ; preds = %polly.merge
  %cmp2 = fcmp fast ugt double %p_add, 1.000000e+01
  br i1 %cmp2, label %cond.false, label %cond.end

polly.merge:                                      ; preds = %middle.block, %polly.merge
  %p_add22 = phi double [ %5, %middle.block ], [ %p_add, %polly.merge ]
  %polly.indvar21 = phi i64 [ 4194556, %middle.block ], [ %polly.indvar_next, %polly.merge ]
  %6 = shl nuw nsw i64 %polly.indvar21, 3
  %scevgep16 = getelementptr i8, i8* %scevgep, i64 %6
  %scevgep1617 = bitcast i8* %scevgep16 to double*
  %.pre_p_scalar_ = load double, double* %scevgep1617, align 8, !alias.scope !2, !noalias !4
  %polly.indvar_next = add nuw nsw i64 %polly.indvar21, 1
  %p_add = fadd fast double %.pre_p_scalar_, %p_add22
  %exitcond.not = icmp eq i64 %polly.indvar_next, 4194559
  br i1 %exitcond.not, label %polly.exiting, label %polly.merge, !llvm.loop !7
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare dso_local noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(33556480) i8* @calloc(i64 4194560, i64 8) #11
  %scevgep = getelementptr i8, i8* %call.i, i64 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x double> [ zeroinitializer, %entry ], [ %3, %vector.body ]
  %0 = shl nuw nsw i64 %index, 3
  %1 = getelementptr i8, i8* %scevgep, i64 %0
  %2 = bitcast i8* %1 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %2, align 8, !alias.scope !9, !noalias !4
  %3 = fadd fast <4 x double> %wide.load, %vec.phi
  %index.next = add i64 %index, 4
  %4 = icmp eq i64 %index.next, 4194556
  br i1 %4, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %5 = call fast double @llvm.vector.reduce.fadd.v4f64(double -0.000000e+00, <4 x double> %3)
  br label %polly.loop_header

cond.false.i:                                     ; preds = %polly.exiting
  tail call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.polybench_flush_cache, i64 0, i64 0)) #12
  unreachable

polybench_flush_cache.exit:                       ; preds = %polly.exiting
  tail call void @free(i8* nonnull %call.i) #11
  ret void

polly.exiting:                                    ; preds = %polly.loop_header
  %cmp2.i = fcmp fast ugt double %p_add.i, 1.000000e+01
  br i1 %cmp2.i, label %cond.false.i, label %polybench_flush_cache.exit

polly.loop_header:                                ; preds = %polly.loop_header, %middle.block
  %add.i1.phiops.0 = phi double [ %5, %middle.block ], [ %p_add.i, %polly.loop_header ]
  %polly.indvar = phi i64 [ 4194556, %middle.block ], [ %polly.indvar_next, %polly.loop_header ]
  %6 = shl nuw nsw i64 %polly.indvar, 3
  %scevgep3 = getelementptr i8, i8* %scevgep, i64 %6
  %scevgep34 = bitcast i8* %scevgep3 to double*
  %.pre.i_p_scalar_ = load double, double* %scevgep34, align 8, !alias.scope !9, !noalias !4
  %p_add.i = fadd fast double %.pre.i_p_scalar_, %add.i1.phiops.0
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next, 4194559
  br i1 %exitcond.not, label %polly.exiting, label %polly.loop_header, !llvm.loop !12
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #0 {
entry:
  %Tp.i = alloca %struct.timeval, align 8
  %call.i.i = tail call noalias dereferenceable_or_null(33556480) i8* @calloc(i64 4194560, i64 8) #11
  %scevgep = getelementptr i8, i8* %call.i.i, i64 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x double> [ zeroinitializer, %entry ], [ %3, %vector.body ]
  %0 = shl nuw nsw i64 %index, 3
  %1 = getelementptr i8, i8* %scevgep, i64 %0
  %2 = bitcast i8* %1 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %2, align 8, !alias.scope !13, !noalias !4
  %3 = fadd fast <4 x double> %wide.load, %vec.phi
  %index.next = add i64 %index, 4
  %4 = icmp eq i64 %index.next, 4194556
  br i1 %4, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %5 = call fast double @llvm.vector.reduce.fadd.v4f64(double -0.000000e+00, <4 x double> %3)
  br label %polly.loop_header

cond.false.i.i:                                   ; preds = %polly.exiting
  tail call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.polybench_flush_cache, i64 0, i64 0)) #12
  unreachable

polybench_prepare_instruments.exit:               ; preds = %polly.exiting
  tail call void @free(i8* nonnull %call.i.i) #11
  %6 = bitcast %struct.timeval* %Tp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #11
  %call.i = call i32 @gettimeofday(%struct.timeval* nonnull %Tp.i, i8* null) #11
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %rtclock.exit, label %if.then.i

if.then.i:                                        ; preds = %polybench_prepare_instruments.exit
  %call1.i = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %call.i) #11
  br label %rtclock.exit

rtclock.exit:                                     ; preds = %polybench_prepare_instruments.exit, %if.then.i
  %tv_sec.i = getelementptr inbounds %struct.timeval, %struct.timeval* %Tp.i, i64 0, i32 0
  %7 = load i64, i64* %tv_sec.i, align 8, !tbaa !16
  %conv.i = sitofp i64 %7 to double
  %tv_usec.i = getelementptr inbounds %struct.timeval, %struct.timeval* %Tp.i, i64 0, i32 1
  %8 = load i64, i64* %tv_usec.i, align 8, !tbaa !21
  %conv2.i = sitofp i64 %8 to double
  %mul.i = fmul fast double %conv2.i, 0x3EB0C6F7A0B5ED8D
  %add.i = fadd fast double %mul.i, %conv.i
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #11
  store double %add.i, double* @polybench_t_start, align 8, !tbaa !22
  ret void

polly.exiting:                                    ; preds = %polly.loop_header
  %cmp2.i.i = fcmp fast ugt double %p_add.i.i, 1.000000e+01
  br i1 %cmp2.i.i, label %cond.false.i.i, label %polybench_prepare_instruments.exit

polly.loop_header:                                ; preds = %polly.loop_header, %middle.block
  %add.i1.i.phiops.0 = phi double [ %5, %middle.block ], [ %p_add.i.i, %polly.loop_header ]
  %polly.indvar = phi i64 [ 4194556, %middle.block ], [ %polly.indvar_next, %polly.loop_header ]
  %9 = shl nuw nsw i64 %polly.indvar, 3
  %scevgep1 = getelementptr i8, i8* %scevgep, i64 %9
  %scevgep12 = bitcast i8* %scevgep1 to double*
  %.pre.i.i_p_scalar_ = load double, double* %scevgep12, align 8, !alias.scope !13, !noalias !4
  %p_add.i.i = fadd fast double %.pre.i.i_p_scalar_, %add.i1.i.phiops.0
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next, 4194559
  br i1 %exitcond.not, label %polly.exiting, label %polly.loop_header, !llvm.loop !24
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #5 {
entry:
  %Tp.i = alloca %struct.timeval, align 8
  %0 = bitcast %struct.timeval* %Tp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11
  %call.i = call i32 @gettimeofday(%struct.timeval* nonnull %Tp.i, i8* null) #11
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %rtclock.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call1.i = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %call.i) #11
  br label %rtclock.exit

rtclock.exit:                                     ; preds = %entry, %if.then.i
  %tv_sec.i = getelementptr inbounds %struct.timeval, %struct.timeval* %Tp.i, i64 0, i32 0
  %1 = load i64, i64* %tv_sec.i, align 8, !tbaa !16
  %conv.i = sitofp i64 %1 to double
  %tv_usec.i = getelementptr inbounds %struct.timeval, %struct.timeval* %Tp.i, i64 0, i32 1
  %2 = load i64, i64* %tv_usec.i, align 8, !tbaa !21
  %conv2.i = sitofp i64 %2 to double
  %mul.i = fmul fast double %conv2.i, 0x3EB0C6F7A0B5ED8D
  %add.i = fadd fast double %mul.i, %conv.i
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11
  store double %add.i, double* @polybench_t_end, align 8, !tbaa !22
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #5 {
entry:
  %0 = load double, double* @polybench_t_end, align 8, !tbaa !22
  %1 = load double, double* @polybench_t_start, align 8, !tbaa !22
  %sub = fsub fast double %0, %1
  %call = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), double %sub)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i8* @polybench_alloc_data(i64 %n, i32 %elt_size) local_unnamed_addr #7 {
entry:
  %cur.i = alloca i8*, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %conv, %n
  %0 = bitcast i8** %cur.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i8* null, i8** %cur.i, align 8, !tbaa !25
  %call.i = call i32 (i8**, i32, i64, ...) bitcast (i32 (...)* @posix_memalign to i32 (i8**, i32, i64, ...)*)(i8** nonnull %cur.i, i32 32, i64 %mul) #11
  %1 = load i8*, i8** %cur.i, align 8, !tbaa !25
  %tobool.i = icmp eq i8* %1, null
  %tobool1.i = icmp ne i32 %call.i, 0
  %or.cond.i = or i1 %tobool1.i, %tobool.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !25
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* %2) #13
  call void @exit(i32 1) #12
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i8* %1
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #6

declare dso_local i32 @posix_memalign(...) local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nosync nounwind readnone willreturn
declare double @llvm.vector.reduce.fadd.v4f64(double, <4 x double>) #10

attributes #0 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { inaccessiblememonly nofree nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #3 = { noreturn nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #5 = { nofree nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #6 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #7 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #8 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #9 = { nofree nounwind }
attributes #10 = { nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { cold nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 13.0.0 (https://github.com/SOLLVE/llvm-project.git a48e6204b7f1f0d6ea84ab2f2f4c04e15a4338fb)"}
!2 = distinct !{!2, !3, !"polly.alias.scope.MemRef_call"}
!3 = distinct !{!3, !"polly.alias.scope.domain"}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = distinct !{!7, !8, !6}
!8 = !{!"llvm.loop.unroll.runtime.disable"}
!9 = distinct !{!9, !10, !"polly.alias.scope.MemRef_call_i"}
!10 = distinct !{!10, !"polly.alias.scope.domain"}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !8, !6}
!13 = distinct !{!13, !14, !"polly.alias.scope.MemRef_call_i_i"}
!14 = distinct !{!14, !"polly.alias.scope.domain"}
!15 = distinct !{!15, !6}
!16 = !{!17, !18, i64 0}
!17 = !{!"timeval", !18, i64 0, !18, i64 8}
!18 = !{!"long", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !{!17, !18, i64 8}
!22 = !{!23, !23, i64 0}
!23 = !{!"double", !19, i64 0}
!24 = distinct !{!24, !8, !6}
!25 = !{!26, !26, i64 0}
!26 = !{!"any pointer", !19, i64 0}
