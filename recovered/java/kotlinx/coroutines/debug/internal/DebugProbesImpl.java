package kotlinx.coroutines.debug.internal;

import _COROUTINE.ArtificialStackFrames;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.l;
import kotlin.comparisons.ComparisonsKt;
import kotlin.concurrent.ThreadsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.RangesKt;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineId;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.debug.internal.DebugProbesImpl;
import kotlinx.coroutines.internal.ScopeCoroutine;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÁ\u0002\u0018\u00002\u00020\u0001:\u0001EB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\b\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0007\u0010\u0003J\u0017\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0000¢\u0006\u0004\b\f\u0010\rJ\u0013\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00010\u000f¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0013\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00120\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0013\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u0016¢\u0006\u0004\b\u001a\u0010\u0018J\u0017\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001bH\u0001¢\u0006\u0004\b\u001d\u0010\u001eJ)\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00162\u0006\u0010\u0013\u001a\u00020\u00122\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u0016¢\u0006\u0004\b!\u0010\"J\u001b\u0010'\u001a\u00020\u00042\n\u0010$\u001a\u0006\u0012\u0002\b\u00030#H\u0000¢\u0006\u0004\b%\u0010&J\u001b\u0010)\u001a\u00020\u00042\n\u0010$\u001a\u0006\u0012\u0002\b\u00030#H\u0000¢\u0006\u0004\b(\u0010&J)\u0010.\u001a\b\u0012\u0004\u0012\u00028\u00000#\"\u0004\b\u0000\u0010*2\f\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00000#H\u0000¢\u0006\u0004\b,\u0010-R\"\u00106\u001a\u00020/8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\"\u0010:\u001a\u00020/8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b7\u00101\u001a\u0004\b8\u00103\"\u0004\b9\u00105R\"\u0010>\u001a\u00020/8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u00101\u001a\u0004\b<\u00103\"\u0004\b=\u00105R\u0011\u0010@\u001a\u00020/8G¢\u0006\u0006\u001a\u0004\b?\u00103R\u000b\u0010B\u001a\u00020A8\u0002X\u0082\u0004R\u000b\u0010D\u001a\u00020C8\u0002X\u0082\u0004¨\u0006F"}, d2 = {"Lkotlinx/coroutines/debug/internal/DebugProbesImpl;", "", "<init>", "()V", "", "install$kotlinx_coroutines_core", "install", "uninstall$kotlinx_coroutines_core", "uninstall", "Lkotlinx/coroutines/Job;", "job", "", "hierarchyToString$kotlinx_coroutines_core", "(Lkotlinx/coroutines/Job;)Ljava/lang/String;", "hierarchyToString", "", "dumpCoroutinesInfoAsJsonAndReferences", "()[Ljava/lang/Object;", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;", "info", "enhanceStackTraceWithThreadDumpAsJson", "(Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;)Ljava/lang/String;", "", "dumpCoroutinesInfo", "()Ljava/util/List;", "Lkotlinx/coroutines/debug/internal/DebuggerInfo;", "dumpDebuggerInfo", "Ljava/io/PrintStream;", "out", "dumpCoroutines", "(Ljava/io/PrintStream;)V", "Ljava/lang/StackTraceElement;", "coroutineTrace", "enhanceStackTraceWithThreadDump", "(Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;Ljava/util/List;)Ljava/util/List;", "Lkotlin/coroutines/Continuation;", "frame", "probeCoroutineResumed$kotlinx_coroutines_core", "(Lkotlin/coroutines/Continuation;)V", "probeCoroutineResumed", "probeCoroutineSuspended$kotlinx_coroutines_core", "probeCoroutineSuspended", "T", "completion", "probeCoroutineCreated$kotlinx_coroutines_core", "(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "probeCoroutineCreated", "", "g", "Z", "getSanitizeStackTraces$kotlinx_coroutines_core", "()Z", "setSanitizeStackTraces$kotlinx_coroutines_core", "(Z)V", "sanitizeStackTraces", "h", "getEnableCreationStackTraces$kotlinx_coroutines_core", "setEnableCreationStackTraces$kotlinx_coroutines_core", "enableCreationStackTraces", "i", "getIgnoreCoroutinesWithEmptyContext", "setIgnoreCoroutinesWithEmptyContext", "ignoreCoroutinesWithEmptyContext", "isInstalled$kotlinx_coroutines_debug", "isInstalled", "Lkotlinx/atomicfu/AtomicInt;", "installations", "Lkotlinx/atomicfu/AtomicLong;", "sequenceNumber", "CoroutineOwner", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@PublishedApi
@SourceDebugExtension({"SMAP\nDebugProbesImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,616:1\n146#1:640\n147#1,4:642\n152#1,5:647\n146#1:652\n147#1,4:654\n152#1,5:659\n1#2:617\n1#2:641\n1#2:653\n774#3:618\n865#3,2:619\n1216#3,2:621\n1246#3,4:623\n1863#3,2:667\n360#3,7:675\n1827#3,8:682\n607#4:627\n607#4:646\n607#4:658\n607#4:664\n1317#4,2:665\n37#5:628\n36#5,3:629\n37#5:632\n36#5,3:633\n37#5:636\n36#5,3:637\n1682#6,6:669\n1790#6,6:690\n*S KotlinDebug\n*F\n+ 1 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl\n*L\n241#1:640\n241#1:642,4\n241#1:647,5\n248#1:652\n248#1:654,4\n248#1:659,5\n241#1:641\n248#1:653\n106#1:618\n106#1:619,2\n107#1:621,2\n107#1:623,4\n303#1:667,2\n412#1:675,7\n502#1:682,8\n150#1:627\n241#1:646\n248#1:658\n283#1:664\n284#1:665,2\n207#1:628\n207#1:629,3\n208#1:632\n208#1:633,3\n209#1:636\n209#1:637,3\n351#1:669,6\n554#1:690,6\n*E\n"})
/* loaded from: classes2.dex */
public final class DebugProbesImpl {
    public static Thread c;

    /* renamed from: h, reason: from kotlin metadata */
    public static boolean enableCreationStackTraces;
    public static final Function1 j;
    public static final ConcurrentWeakMap k;

    @NotNull
    public static final DebugProbesImpl INSTANCE = new DebugProbesImpl();

    /* renamed from: a, reason: collision with root package name */
    public static final StackTraceElement f6250a = new ArtificialStackFrames().coroutineCreation();

    /* renamed from: b, reason: collision with root package name */
    public static final SimpleDateFormat f6251b = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    public static final ConcurrentWeakMap d = new ConcurrentWeakMap(false, 1, 0 == true ? 1 : 0);
    public static final /* synthetic */ AtomicInteger e = new AtomicInteger(0);
    public static final /* synthetic */ AtomicLong f = new AtomicLong(0);

    /* renamed from: g, reason: collision with root package name and from kotlin metadata */
    public static boolean sanitizeStackTraces = true;

    /* renamed from: i, reason: from kotlin metadata */
    public static boolean ignoreCoroutinesWithEmptyContext = true;

    private DebugProbesImpl() {
    }

    public static final /* synthetic */ boolean access$isFinished(DebugProbesImpl debugProbesImpl, CoroutineOwner coroutineOwner) {
        debugProbesImpl.getClass();
        return d(coroutineOwner);
    }

    public static final void access$probeCoroutineCompleted(DebugProbesImpl debugProbesImpl, CoroutineOwner coroutineOwner) {
        debugProbesImpl.getClass();
        d.remove(coroutineOwner);
        CoroutineStackFrame lastObservedFrame$kotlinx_coroutines_core = coroutineOwner.info.getLastObservedFrame$kotlinx_coroutines_core();
        if (lastObservedFrame$kotlinx_coroutines_core != null) {
            while (true) {
                lastObservedFrame$kotlinx_coroutines_core = lastObservedFrame$kotlinx_coroutines_core.getCallerFrame();
                if (lastObservedFrame$kotlinx_coroutines_core == null) {
                    lastObservedFrame$kotlinx_coroutines_core = null;
                    break;
                } else if (lastObservedFrame$kotlinx_coroutines_core.getF6258b() != null) {
                    break;
                }
            }
            if (lastObservedFrame$kotlinx_coroutines_core == null) {
                return;
            }
            k.remove(lastObservedFrame$kotlinx_coroutines_core);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Object objM565constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            Object objNewInstance = Class.forName("kotlinx.coroutines.debug.ByteBuddyDynamicAttach").getConstructors()[0].newInstance(new Object[0]);
            Intrinsics.checkNotNull(objNewInstance, "null cannot be cast to non-null type kotlin.Function1<kotlin.Boolean, kotlin.Unit>");
            objM565constructorimpl = Result.m565constructorimpl((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(objNewInstance, 1));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM565constructorimpl = Result.m565constructorimpl(ResultKt.createFailure(th));
        }
        j = (Function1) (Result.m570isFailureimpl(objM565constructorimpl) ? null : objM565constructorimpl);
        k = new ConcurrentWeakMap(true);
    }

    @JvmName(name = "isInstalled$kotlinx_coroutines_debug")
    public final boolean isInstalled$kotlinx_coroutines_debug() {
        return e.get() > 0;
    }

    public final boolean getSanitizeStackTraces$kotlinx_coroutines_core() {
        return sanitizeStackTraces;
    }

    public final void setSanitizeStackTraces$kotlinx_coroutines_core(boolean z) {
        sanitizeStackTraces = z;
    }

    public final boolean getEnableCreationStackTraces$kotlinx_coroutines_core() {
        return enableCreationStackTraces;
    }

    public final void setEnableCreationStackTraces$kotlinx_coroutines_core(boolean z) {
        enableCreationStackTraces = z;
    }

    public final boolean getIgnoreCoroutinesWithEmptyContext() {
        return ignoreCoroutinesWithEmptyContext;
    }

    public final void setIgnoreCoroutinesWithEmptyContext(boolean z) {
        ignoreCoroutinesWithEmptyContext = z;
    }

    public final void install$kotlinx_coroutines_core() {
        Function1 function1;
        if (e.incrementAndGet() > 1) {
            return;
        }
        c = ThreadsKt.thread$default(false, true, null, "Coroutines Debugger Cleaner", 0, new f(), 21, null);
        if (AgentInstallationType.INSTANCE.isInstalledStatically$kotlinx_coroutines_core() || (function1 = j) == null) {
            return;
        }
        function1.invoke(Boolean.TRUE);
    }

    public final void uninstall$kotlinx_coroutines_core() throws InterruptedException {
        Function1 function1;
        if (!isInstalled$kotlinx_coroutines_debug()) {
            throw new IllegalStateException("Agent was not installed");
        }
        if (e.decrementAndGet() != 0) {
            return;
        }
        Thread thread = c;
        if (thread != null) {
            c = null;
            thread.interrupt();
            thread.join();
        }
        d.clear();
        k.clear();
        if (AgentInstallationType.INSTANCE.isInstalledStatically$kotlinx_coroutines_core() || (function1 = j) == null) {
            return;
        }
        function1.invoke(Boolean.FALSE);
    }

    @NotNull
    public final String hierarchyToString$kotlinx_coroutines_core(@NotNull Job job) {
        if (isInstalled$kotlinx_coroutines_debug()) {
            Collection collectionKeySet = d.keySet();
            ArrayList arrayList = new ArrayList();
            for (Object obj : collectionKeySet) {
                if (((CoroutineOwner) obj).delegate.getContext().get(Job.INSTANCE) != null) {
                    arrayList.add(obj);
                }
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(l.collectionSizeOrDefault(arrayList, 10)), 16));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                CoroutineOwner coroutineOwner = (CoroutineOwner) it.next();
                linkedHashMap.put(JobKt.getJob(coroutineOwner.delegate.getContext()), coroutineOwner.info);
            }
            StringBuilder sb = new StringBuilder();
            INSTANCE.getClass();
            a(job, linkedHashMap, sb, "");
            return sb.toString();
        }
        throw new IllegalStateException("Debug probes are not installed");
    }

    public static void a(Job job, LinkedHashMap linkedHashMap, StringBuilder sb, String str) {
        DebugCoroutineInfoImpl debugCoroutineInfoImpl = (DebugCoroutineInfoImpl) linkedHashMap.get(job);
        if (debugCoroutineInfoImpl != null) {
            StackTraceElement stackTraceElement = (StackTraceElement) CollectionsKt.firstOrNull((List) debugCoroutineInfoImpl.lastObservedStackTrace$kotlinx_coroutines_core());
            String str2 = debugCoroutineInfoImpl.get_state();
            StringBuilder sbP = _COROUTINE.a.p(str);
            sbP.append(job instanceof JobSupport ? ((JobSupport) job).toDebugString() : job.toString());
            sbP.append(", continuation is ");
            sbP.append(str2);
            sbP.append(" at line ");
            sbP.append(stackTraceElement);
            sbP.append('\n');
            sb.append(sbP.toString());
            str = str + '\t';
        } else if (!(job instanceof ScopeCoroutine)) {
            StringBuilder sbP2 = _COROUTINE.a.p(str);
            sbP2.append(job instanceof JobSupport ? ((JobSupport) job).toDebugString() : job.toString());
            sbP2.append('\n');
            sb.append(sbP2.toString());
            str = str + '\t';
        }
        Iterator<Job> it = job.getChildren().iterator();
        while (it.hasNext()) {
            a(it.next(), linkedHashMap, sb, str);
        }
    }

    @NotNull
    public final Object[] dumpCoroutinesInfoAsJsonAndReferences() {
        String name;
        List<DebugCoroutineInfo> listDumpCoroutinesInfo = dumpCoroutinesInfo();
        int size = listDumpCoroutinesInfo.size();
        ArrayList arrayList = new ArrayList(size);
        ArrayList arrayList2 = new ArrayList(size);
        ArrayList arrayList3 = new ArrayList(size);
        for (DebugCoroutineInfo debugCoroutineInfo : listDumpCoroutinesInfo) {
            CoroutineContext context = debugCoroutineInfo.getContext();
            CoroutineName coroutineName = (CoroutineName) context.get(CoroutineName.INSTANCE);
            Long lValueOf = null;
            String strAccess$repr = (coroutineName == null || (name = coroutineName.getName()) == null) ? null : DebugProbesImplKt.access$repr(name.toString());
            CoroutineDispatcher coroutineDispatcher = (CoroutineDispatcher) context.get(CoroutineDispatcher.INSTANCE);
            String strAccess$repr2 = coroutineDispatcher != null ? DebugProbesImplKt.access$repr(coroutineDispatcher.getC()) : null;
            StringBuilder sbR = _COROUTINE.a.r("\n                {\n                    \"name\": ", strAccess$repr, ",\n                    \"id\": ");
            CoroutineId coroutineId = (CoroutineId) context.get(CoroutineId.INSTANCE);
            if (coroutineId != null) {
                lValueOf = Long.valueOf(coroutineId.getId());
            }
            sbR.append(lValueOf);
            sbR.append(",\n                    \"dispatcher\": ");
            sbR.append(strAccess$repr2);
            sbR.append(",\n                    \"sequenceNumber\": ");
            sbR.append(debugCoroutineInfo.getSequenceNumber());
            sbR.append(",\n                    \"state\": \"");
            sbR.append(debugCoroutineInfo.getState());
            sbR.append("\"\n                } \n                ");
            arrayList3.add(StringsKt.trimIndent(sbR.toString()));
            arrayList2.add(debugCoroutineInfo.getLastObservedFrame());
            arrayList.add(debugCoroutineInfo.getLastObservedThread());
        }
        return new Object[]{"[" + CollectionsKt___CollectionsKt.joinToString$default(arrayList3, null, null, null, 0, null, null, 63, null) + ']', arrayList.toArray(new Thread[0]), arrayList2.toArray(new CoroutineStackFrame[0]), listDumpCoroutinesInfo.toArray(new DebugCoroutineInfo[0])};
    }

    @NotNull
    public final String enhanceStackTraceWithThreadDumpAsJson(@NotNull DebugCoroutineInfo info) {
        List<StackTraceElement> listEnhanceStackTraceWithThreadDump = enhanceStackTraceWithThreadDump(info, info.lastObservedStackTrace());
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : listEnhanceStackTraceWithThreadDump) {
            StringBuilder sb = new StringBuilder("\n                {\n                    \"declaringClass\": \"");
            sb.append(stackTraceElement.getClassName());
            sb.append("\",\n                    \"methodName\": \"");
            sb.append(stackTraceElement.getMethodName());
            sb.append("\",\n                    \"fileName\": ");
            String fileName = stackTraceElement.getFileName();
            sb.append(fileName != null ? DebugProbesImplKt.access$repr(fileName.toString()) : null);
            sb.append(",\n                    \"lineNumber\": ");
            sb.append(stackTraceElement.getLineNumber());
            sb.append("\n                }\n                ");
            arrayList.add(StringsKt.trimIndent(sb.toString()));
        }
        return "[" + CollectionsKt___CollectionsKt.joinToString$default(arrayList, null, null, null, 0, null, null, 63, null) + ']';
    }

    @JvmName(name = "dumpCoroutines")
    public final void dumpCoroutines(@NotNull PrintStream out) {
        synchronized (out) {
            INSTANCE.b(out);
            Unit unit = Unit.INSTANCE;
        }
    }

    public static boolean d(CoroutineOwner coroutineOwner) {
        Job job;
        CoroutineContext context = coroutineOwner.info.getContext();
        if (context == null || (job = (Job) context.get(Job.INSTANCE)) == null || !job.isCompleted()) {
            return false;
        }
        d.remove(coroutineOwner);
        return true;
    }

    public final void b(PrintStream printStream) {
        if (!isInstalled$kotlinx_coroutines_debug()) {
            throw new IllegalStateException("Debug probes are not installed");
        }
        printStream.print("Coroutines dump " + f6251b.format(Long.valueOf(System.currentTimeMillis())));
        for (CoroutineOwner coroutineOwner : SequencesKt.sortedWith(SequencesKt___SequencesKt.filter(CollectionsKt.asSequence(d.keySet()), new e()), new Comparator() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpCoroutinesSynchronized$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Long.valueOf(((DebugProbesImpl.CoroutineOwner) t).info.sequenceNumber), Long.valueOf(((DebugProbesImpl.CoroutineOwner) t2).info.sequenceNumber));
            }
        })) {
            DebugCoroutineInfoImpl debugCoroutineInfoImpl = coroutineOwner.info;
            List<StackTraceElement> listLastObservedStackTrace$kotlinx_coroutines_core = debugCoroutineInfoImpl.lastObservedStackTrace$kotlinx_coroutines_core();
            DebugProbesImpl debugProbesImpl = INSTANCE;
            String str = debugCoroutineInfoImpl.get_state();
            Thread thread = debugCoroutineInfoImpl.lastObservedThread;
            debugProbesImpl.getClass();
            List<StackTraceElement> listC = c(str, thread, listLastObservedStackTrace$kotlinx_coroutines_core);
            printStream.print("\n\nCoroutine " + coroutineOwner.delegate + ", state: " + ((Intrinsics.areEqual(debugCoroutineInfoImpl.get_state(), DebugCoroutineInfoImplKt.RUNNING) && listC == listLastObservedStackTrace$kotlinx_coroutines_core) ? debugCoroutineInfoImpl.get_state() + " (Last suspension stacktrace, not an actual stacktrace)" : debugCoroutineInfoImpl.get_state()));
            if (listLastObservedStackTrace$kotlinx_coroutines_core.isEmpty()) {
                printStream.print("\n\tat " + f6250a);
                e(printStream, debugCoroutineInfoImpl.getCreationStackTrace());
            } else {
                e(printStream, listC);
            }
        }
    }

    public static void e(PrintStream printStream, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            printStream.print("\n\tat " + ((StackTraceElement) it.next()));
        }
    }

    @NotNull
    public final List<StackTraceElement> enhanceStackTraceWithThreadDump(@NotNull DebugCoroutineInfo info, @NotNull List<StackTraceElement> coroutineTrace) {
        return c(info.getState(), info.getLastObservedThread(), coroutineTrace);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00c4 A[LOOP:1: B:29:0x0061->B:47:0x00c4, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00b7 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List c(java.lang.String r9, java.lang.Thread r10, java.util.List r11) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.debug.internal.DebugProbesImpl.c(java.lang.String, java.lang.Thread, java.util.List):java.util.List");
    }

    public final void probeCoroutineResumed$kotlinx_coroutines_core(@NotNull Continuation<?> frame) {
        f(frame, DebugCoroutineInfoImplKt.RUNNING);
    }

    public final void probeCoroutineSuspended$kotlinx_coroutines_core(@NotNull Continuation<?> frame) {
        f(frame, DebugCoroutineInfoImplKt.SUSPENDED);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x006f  */
    /* JADX WARN: Type inference failed for: r0v10, types: [kotlin.coroutines.jvm.internal.CoroutineStackFrame] */
    /* JADX WARN: Type inference failed for: r0v15, types: [java.util.Map, kotlinx.coroutines.debug.internal.ConcurrentWeakMap] */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v9, types: [kotlin.coroutines.jvm.internal.CoroutineStackFrame] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v3, types: [kotlin.coroutines.jvm.internal.CoroutineStackFrame] */
    /* JADX WARN: Type inference failed for: r7v4, types: [kotlin.coroutines.jvm.internal.CoroutineStackFrame] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(kotlin.coroutines.Continuation r7, java.lang.String r8) {
        /*
            r6 = this;
            boolean r0 = r6.isInstalled$kotlinx_coroutines_debug()
            if (r0 != 0) goto L8
            goto Lb5
        L8:
            boolean r0 = kotlinx.coroutines.debug.internal.DebugProbesImpl.ignoreCoroutinesWithEmptyContext
            if (r0 == 0) goto L16
            kotlin.coroutines.CoroutineContext r0 = r7.getContext()
            kotlin.coroutines.EmptyCoroutineContext r1 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            if (r0 != r1) goto L16
            goto Lb5
        L16:
            java.lang.String r0 = "RUNNING"
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r0)
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L92
            boolean r0 = r7 instanceof kotlin.coroutines.jvm.internal.CoroutineStackFrame
            if (r0 == 0) goto L27
            kotlin.coroutines.jvm.internal.CoroutineStackFrame r7 = (kotlin.coroutines.jvm.internal.CoroutineStackFrame) r7
            goto L28
        L27:
            r7 = r1
        L28:
            if (r7 != 0) goto L2c
            goto Lb5
        L2c:
            boolean r0 = r6.isInstalled$kotlinx_coroutines_debug()
            if (r0 != 0) goto L34
            goto Lb5
        L34:
            kotlinx.coroutines.debug.internal.ConcurrentWeakMap r0 = kotlinx.coroutines.debug.internal.DebugProbesImpl.k
            java.lang.Object r3 = r0.remove(r7)
            kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl r3 = (kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl) r3
            if (r3 == 0) goto L40
            r2 = 0
            goto L72
        L40:
            r3 = r7
        L41:
            boolean r4 = r3 instanceof kotlinx.coroutines.debug.internal.DebugProbesImpl.CoroutineOwner
            if (r4 == 0) goto L48
            kotlinx.coroutines.debug.internal.DebugProbesImpl$CoroutineOwner r3 = (kotlinx.coroutines.debug.internal.DebugProbesImpl.CoroutineOwner) r3
            goto L50
        L48:
            kotlin.coroutines.jvm.internal.CoroutineStackFrame r3 = r3.getCallerFrame()
            if (r3 == 0) goto L4f
            goto L41
        L4f:
            r3 = r1
        L50:
            if (r3 == 0) goto Lb5
            kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl r3 = r3.info
            if (r3 != 0) goto L58
            goto Lb5
        L58:
            kotlin.coroutines.jvm.internal.CoroutineStackFrame r4 = r3.getLastObservedFrame$kotlinx_coroutines_core()
            if (r4 == 0) goto L6c
        L5e:
            kotlin.coroutines.jvm.internal.CoroutineStackFrame r4 = r4.getCallerFrame()
            if (r4 != 0) goto L65
            goto L6c
        L65:
            java.lang.StackTraceElement r5 = r4.getF6258b()
            if (r5 == 0) goto L5e
            goto L6d
        L6c:
            r4 = r1
        L6d:
            if (r4 == 0) goto L72
            r0.remove(r4)
        L72:
            java.lang.String r4 = "null cannot be cast to non-null type kotlin.coroutines.Continuation<*>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r7, r4)
            r4 = r7
            kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
            r3.updateState$kotlinx_coroutines_core(r8, r4, r2)
        L7d:
            kotlin.coroutines.jvm.internal.CoroutineStackFrame r7 = r7.getCallerFrame()
            if (r7 != 0) goto L84
            goto L8b
        L84:
            java.lang.StackTraceElement r8 = r7.getF6258b()
            if (r8 == 0) goto L7d
            r1 = r7
        L8b:
            if (r1 != 0) goto L8e
            goto Lb5
        L8e:
            r0.put(r1, r3)
            return
        L92:
            boolean r0 = r7 instanceof kotlin.coroutines.jvm.internal.CoroutineStackFrame
            if (r0 == 0) goto L9a
            r0 = r7
            kotlin.coroutines.jvm.internal.CoroutineStackFrame r0 = (kotlin.coroutines.jvm.internal.CoroutineStackFrame) r0
            goto L9b
        L9a:
            r0 = r1
        L9b:
            if (r0 == 0) goto Lac
        L9d:
            boolean r3 = r0 instanceof kotlinx.coroutines.debug.internal.DebugProbesImpl.CoroutineOwner
            if (r3 == 0) goto La5
            r1 = r0
            kotlinx.coroutines.debug.internal.DebugProbesImpl$CoroutineOwner r1 = (kotlinx.coroutines.debug.internal.DebugProbesImpl.CoroutineOwner) r1
            goto Lac
        La5:
            kotlin.coroutines.jvm.internal.CoroutineStackFrame r0 = r0.getCallerFrame()
            if (r0 == 0) goto Lac
            goto L9d
        Lac:
            if (r1 != 0) goto Laf
            goto Lb5
        Laf:
            boolean r0 = r6.isInstalled$kotlinx_coroutines_debug()
            if (r0 != 0) goto Lb6
        Lb5:
            return
        Lb6:
            kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl r0 = r1.info
            r0.updateState$kotlinx_coroutines_core(r8, r7, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.debug.internal.DebugProbesImpl.f(kotlin.coroutines.Continuation, java.lang.String):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0034  */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T> kotlin.coroutines.Continuation<T> probeCoroutineCreated$kotlinx_coroutines_core(@org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super T> r10) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.debug.internal.DebugProbesImpl.probeCoroutineCreated$kotlinx_coroutines_core(kotlin.coroutines.Continuation):kotlin.coroutines.Continuation");
    }

    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u0003B\u001f\b\u0000\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0011\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\u000f\u001a\u00020\u000e2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0014R\u0014\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0015R\u0016\u0010\u0018\u001a\u0004\u0018\u00010\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;", "T", "Lkotlin/coroutines/Continuation;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "delegate", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", "info", "<init>", "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;)V", "Ljava/lang/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "Lkotlin/Result;", "result", "", "resumeWith", "(Ljava/lang/Object;)V", "", "toString", "()Ljava/lang/String;", "Lkotlin/coroutines/Continuation;", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class CoroutineOwner<T> implements Continuation<T>, CoroutineStackFrame {

        @JvmField
        @NotNull
        public final Continuation<T> delegate;

        @JvmField
        @NotNull
        public final DebugCoroutineInfoImpl info;

        @Override // kotlin.coroutines.Continuation
        @NotNull
        public CoroutineContext getContext() {
            return this.delegate.getContext();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public CoroutineOwner(@NotNull Continuation<? super T> continuation, @NotNull DebugCoroutineInfoImpl debugCoroutineInfoImpl) {
            this.delegate = continuation;
            this.info = debugCoroutineInfoImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
        @Nullable
        public CoroutineStackFrame getCallerFrame() {
            StackTraceFrame creationStackBottom = this.info.getCreationStackBottom();
            if (creationStackBottom != null) {
                return creationStackBottom.getCallerFrame();
            }
            return null;
        }

        @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
        @Nullable
        /* renamed from: getStackTraceElement */
        public StackTraceElement getF6258b() {
            StackTraceFrame creationStackBottom = this.info.getCreationStackBottom();
            if (creationStackBottom != null) {
                return creationStackBottom.getF6258b();
            }
            return null;
        }

        @Override // kotlin.coroutines.Continuation
        public void resumeWith(@NotNull Object result) {
            DebugProbesImpl.access$probeCoroutineCompleted(DebugProbesImpl.INSTANCE, this);
            this.delegate.resumeWith(result);
        }

        @NotNull
        public String toString() {
            return this.delegate.toString();
        }
    }

    @NotNull
    public final List<DebugCoroutineInfo> dumpCoroutinesInfo() {
        if (!isInstalled$kotlinx_coroutines_debug()) {
            throw new IllegalStateException("Debug probes are not installed");
        }
        return SequencesKt.toList(SequencesKt.mapNotNull(SequencesKt.sortedWith(CollectionsKt.asSequence(d.keySet()), new DebugProbesImpl$dumpCoroutinesInfoImpl$$inlined$sortedBy$1()), new Function1<CoroutineOwner<?>, DebugCoroutineInfo>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpCoroutinesInfo$$inlined$dumpCoroutinesInfoImpl$1
            @Override // kotlin.jvm.functions.Function1
            public final DebugCoroutineInfo invoke(DebugProbesImpl.CoroutineOwner<?> coroutineOwner) {
                CoroutineContext context;
                if (DebugProbesImpl.access$isFinished(DebugProbesImpl.INSTANCE, coroutineOwner) || (context = coroutineOwner.info.getContext()) == null) {
                    return null;
                }
                return new DebugCoroutineInfo(coroutineOwner.info, context);
            }
        }));
    }

    @NotNull
    public final List<DebuggerInfo> dumpDebuggerInfo() {
        if (!isInstalled$kotlinx_coroutines_debug()) {
            throw new IllegalStateException("Debug probes are not installed");
        }
        return SequencesKt.toList(SequencesKt.mapNotNull(SequencesKt.sortedWith(CollectionsKt.asSequence(d.keySet()), new DebugProbesImpl$dumpCoroutinesInfoImpl$$inlined$sortedBy$1()), new Function1<CoroutineOwner<?>, DebuggerInfo>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpDebuggerInfo$$inlined$dumpCoroutinesInfoImpl$1
            @Override // kotlin.jvm.functions.Function1
            public final DebuggerInfo invoke(DebugProbesImpl.CoroutineOwner<?> coroutineOwner) {
                CoroutineContext context;
                if (DebugProbesImpl.access$isFinished(DebugProbesImpl.INSTANCE, coroutineOwner) || (context = coroutineOwner.info.getContext()) == null) {
                    return null;
                }
                return new DebuggerInfo(coroutineOwner.info, context);
            }
        }));
    }
}
