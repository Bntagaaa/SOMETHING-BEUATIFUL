package kotlinx.coroutines.channels;

import com.google.appinventor.components.common.YaVersion;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.FullScreenVideoUtil;
import gnu.kawa.functions.LispEscapeFormat;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kawa.Telnet;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.ObsoleteCoroutinesApi;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.scheduling.WorkQueueKt;
import me.aemo.specialkeyboard.addon.KeyboardChangeListener;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000¸\u0001\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u001f\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\"\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010#\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u001aC\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u001d\u0010\u0004\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0006\u0012\u0004\u0012\u0002H\u00010\u0005¢\u0006\u0002\b\u0007H\u0087\b¢\u0006\u0002\u0010\b\u001a2\u0010\t\u001a\u00020\n\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\n0\u0005H\u0087H¢\u0006\u0002\u0010\f\u001aJ\u0010\r\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\n0\u0005j\u0002`\u00122\u001a\u0010\u0013\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00060\u0014\"\u0006\u0012\u0002\b\u00030\u0006H\u0001¢\u0006\u0002\u0010\u0015\u001a&\u0010\u0016\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0018H\u0087@¢\u0006\u0002\u0010\u0019\u001a(\u0010\u001a\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0018H\u0087@¢\u0006\u0002\u0010\u0019\u001a\u001e\u0010\u001b\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a \u0010\u001d\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a&\u0010\u001e\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010\u001f\u001a\u0002H\u0002H\u0087@¢\u0006\u0002\u0010 \u001a\u001e\u0010!\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a&\u0010\"\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010\u001f\u001a\u0002H\u0002H\u0087@¢\u0006\u0002\u0010 \u001a \u0010#\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a\u001e\u0010$\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a \u0010%\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a0\u0010&\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010'\u001a\u00020\u00182\b\b\u0002\u0010(\u001a\u00020)H\u0007\u001aQ\u0010*\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)2\"\u0010+\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0-\u0012\u0006\u0012\u0004\u0018\u00010/0,H\u0007¢\u0006\u0002\u00100\u001aQ\u00101\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)2\"\u0010+\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0-\u0012\u0006\u0012\u0004\u0018\u00010/0,H\u0001¢\u0006\u0002\u00100\u001af\u00102\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)27\u0010+\u001a3\b\u0001\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0-\u0012\u0006\u0012\u0004\u0018\u00010/03H\u0007¢\u0006\u0002\u00104\u001aQ\u00105\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)2\"\u0010+\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0-\u0012\u0006\u0012\u0004\u0018\u00010/0,H\u0007¢\u0006\u0002\u00100\u001a$\u00106\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\b\b\u0000\u0010\u0002*\u00020/*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0006H\u0001\u001a>\u00107\u001a\u0002H8\"\b\b\u0000\u0010\u0002*\u00020/\"\u0010\b\u0001\u00108*\n\u0012\u0006\b\u0000\u0012\u0002H\u000209*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u00062\u0006\u0010:\u001a\u0002H8H\u0087@¢\u0006\u0002\u0010;\u001a<\u00107\u001a\u0002H8\"\b\b\u0000\u0010\u0002*\u00020/\"\u000e\b\u0001\u00108*\b\u0012\u0004\u0012\u0002H\u00020<*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u00062\u0006\u0010:\u001a\u0002H8H\u0087@¢\u0006\u0002\u0010=\u001a0\u0010>\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010'\u001a\u00020\u00182\b\b\u0002\u0010(\u001a\u00020)H\u0007\u001aQ\u0010?\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)2\"\u0010+\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0-\u0012\u0006\u0012\u0004\u0018\u00010/0,H\u0007¢\u0006\u0002\u00100\u001a6\u0010@\u001a\u0002H8\"\u0004\b\u0000\u0010\u0002\"\u000e\b\u0001\u00108*\b\u0012\u0004\u0012\u0002H\u00020<*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010:\u001a\u0002H8H\u0081@¢\u0006\u0002\u0010=\u001a8\u0010A\u001a\u0002H8\"\u0004\b\u0000\u0010\u0002\"\u0010\b\u0001\u00108*\n\u0012\u0006\b\u0000\u0012\u0002H\u000209*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010:\u001a\u0002H8H\u0081@¢\u0006\u0002\u0010;\u001a<\u0010B\u001a\u000e\u0012\u0004\u0012\u0002HD\u0012\u0004\u0012\u0002HE0C\"\u0004\b\u0000\u0010D\"\u0004\b\u0001\u0010E*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002HD\u0012\u0004\u0012\u0002HE0F0\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001aR\u0010B\u001a\u0002HG\"\u0004\b\u0000\u0010D\"\u0004\b\u0001\u0010E\"\u0018\b\u0002\u0010G*\u0012\u0012\u0006\b\u0000\u0012\u0002HD\u0012\u0006\b\u0000\u0012\u0002HE0H*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002HD\u0012\u0004\u0012\u0002HE0F0\u00062\u0006\u0010:\u001a\u0002HGH\u0081@¢\u0006\u0002\u0010I\u001a$\u0010J\u001a\b\u0012\u0004\u0012\u0002H\u00020K\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a$\u0010L\u001a\b\u0012\u0004\u0012\u0002H\u00020M\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a]\u0010N\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)2(\u0010O\u001a$\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u00060-\u0012\u0006\u0012\u0004\u0018\u00010/0,H\u0007¢\u0006\u0002\u00100\u001aW\u0010P\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)2\"\u0010O\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010-\u0012\u0006\u0012\u0004\u0018\u00010/0,H\u0001¢\u0006\u0002\u00100\u001al\u0010Q\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)27\u0010O\u001a3\b\u0001\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010-\u0012\u0006\u0012\u0004\u0018\u00010/03H\u0001¢\u0006\u0002\u00104\u001ar\u0010R\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006\"\u0004\b\u0000\u0010\u0002\"\b\b\u0001\u0010\u0001*\u00020/*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)29\u0010O\u001a5\b\u0001\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u0002H\u0002\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00010-\u0012\u0006\u0012\u0004\u0018\u00010/03H\u0007¢\u0006\u0002\u00104\u001a]\u0010S\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006\"\u0004\b\u0000\u0010\u0002\"\b\b\u0001\u0010\u0001*\u00020/*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)2$\u0010O\u001a \b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00010-\u0012\u0006\u0012\u0004\u0018\u00010/0,H\u0007¢\u0006\u0002\u00100\u001a.\u0010T\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020U0\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)H\u0007\u001a\u001e\u0010V\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0007\u001aW\u0010W\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010D*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)2\"\u0010X\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u0002HD0-\u0012\u0006\u0012\u0004\u0018\u00010/0,H\u0001¢\u0006\u0002\u00100\u001a$\u0010Y\u001a\b\u0012\u0004\u0012\u0002H\u00020Z\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0081@¢\u0006\u0002\u0010\u001c\u001a\u001e\u0010[\u001a\u00020.\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a\u001e\u0010\\\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a<\u0010]\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u001a\u0010^\u001a\u0016\u0012\u0006\b\u0000\u0012\u0002H\u00020_j\n\u0012\u0006\b\u0000\u0012\u0002H\u0002``H\u0087@¢\u0006\u0002\u0010a\u001a<\u0010b\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u001a\u0010^\u001a\u0016\u0012\u0006\b\u0000\u0012\u0002H\u00020_j\n\u0012\u0006\b\u0000\u0012\u0002H\u0002``H\u0087@¢\u0006\u0002\u0010a\u001a\u001e\u0010c\u001a\u00020.\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a$\u0010d\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\b\b\u0000\u0010\u0002*\u00020/*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0006H\u0007\u001a?\u0010e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00010F0\u0006\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00062\f\u0010f\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006H\u0087\u0004\u001az\u0010e\u001a\b\u0012\u0004\u0012\u0002HE0\u0006\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010E*\b\u0012\u0004\u0012\u0002H\u00020\u00062\f\u0010f\u001a\b\u0012\u0004\u0012\u0002H\u00010\u00062\b\b\u0002\u0010(\u001a\u00020)26\u0010O\u001a2\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(g\u0012\u0013\u0012\u0011H\u0001¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(h\u0012\u0004\u0012\u0002HE0,H\u0001\u001a1\u0010i\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\n0\u0005j\u0002`\u0012*\u0006\u0012\u0002\b\u00030\u0006H\u0001¨\u0006j"}, d2 = {"consume", "R", "E", "Lkotlinx/coroutines/channels/BroadcastChannel;", "block", "Lkotlin/Function1;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "Lkotlin/ExtensionFunctionType;", "(Lkotlinx/coroutines/channels/BroadcastChannel;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "consumeEach", "", "action", "(Lkotlinx/coroutines/channels/BroadcastChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "consumesAll", "", "Lkotlin/ParameterName;", "name", "cause", "Lkotlinx/coroutines/CompletionHandler;", "channels", "", "([Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlin/jvm/functions/Function1;", "elementAt", "index", "", "(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "elementAtOrNull", "first", "(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "firstOrNull", "indexOf", "element", "(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "last", "lastIndexOf", "lastOrNull", "single", "singleOrNull", "drop", "n", "context", "Lkotlin/coroutines/CoroutineContext;", "dropWhile", "predicate", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;", "filter", "filterIndexed", "Lkotlin/Function3;", "(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/channels/ReceiveChannel;", "filterNot", "filterNotNull", "filterNotNullTo", "C", "", "destination", "(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/SendChannel;", "(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "take", "takeWhile", "toChannel", "toCollection", "toMap", "", "K", "V", "Lkotlin/Pair;", "M", "", "(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toMutableList", "", "toSet", "", "flatMap", "transform", "map", "mapIndexed", "mapIndexedNotNull", "mapNotNull", "withIndex", "Lkotlin/collections/IndexedValue;", "distinct", "distinctBy", "selector", "toMutableSet", "", "any", "count", "maxWith", "comparator", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Comparator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "minWith", "none", "requireNoNulls", "zip", "other", "a", "b", "consumes", "kotlinx-coroutines-core"}, k = 5, mv = {2, 1, 0}, xi = 48, xs = "kotlinx/coroutines/channels/ChannelsKt")
@SourceDebugExtension({"SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,509:1\n24#1,5:510\n94#2,8:515\n94#2,8:523\n94#2,8:531\n94#2,8:539\n160#2:547\n94#2,3:548\n161#2:551\n101#2:552\n162#2:553\n97#2,3:554\n94#2,8:557\n160#2:565\n94#2,3:566\n161#2,2:569\n101#2:571\n97#2,3:572\n94#2,8:575\n94#2,8:583\n94#2,8:591\n160#2:599\n94#2,3:600\n161#2,2:603\n101#2:605\n97#2,3:606\n160#2:609\n94#2,3:610\n161#2,2:613\n101#2:615\n97#2,3:616\n160#2:619\n94#2,3:620\n161#2,2:623\n101#2:625\n97#2,3:626\n160#2:629\n94#2,3:630\n161#2,2:633\n101#2:635\n97#2,3:636\n160#2:639\n94#2,3:640\n161#2,2:643\n101#2:645\n97#2,3:646\n94#2,8:649\n160#2:657\n94#2,3:658\n161#2,2:661\n101#2:663\n97#2,3:664\n94#2,8:667\n94#2,8:675\n94#2,8:683\n1#3:691\n*S KotlinDebug\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt\n*L\n40#1:510,5\n64#1:515,8\n79#1:523,8\n93#1:531,8\n103#1:539,8\n114#1:547\n114#1:548,3\n114#1:551\n114#1:552\n114#1:553\n114#1:554,3\n125#1:557,8\n140#1:565\n140#1:566,3\n140#1:569,2\n140#1:571\n140#1:572,3\n151#1:575,8\n164#1:583,8\n177#1:591,8\n262#1:599\n262#1:600,3\n262#1:603,2\n262#1:605\n262#1:606,3\n271#1:609\n271#1:610,3\n271#1:613,2\n271#1:615\n271#1:616,3\n307#1:619\n307#1:620,3\n307#1:623,2\n307#1:625\n307#1:626,3\n315#1:629\n315#1:630,3\n315#1:633,2\n315#1:635\n315#1:636,3\n328#1:639\n328#1:640,3\n328#1:643,2\n328#1:645\n328#1:646,3\n433#1:649,8\n441#1:657\n441#1:658,3\n441#1:661,2\n441#1:663\n441#1:664,3\n448#1:667,8\n462#1:675,8\n476#1:683,8\n*E\n"})
/* loaded from: classes2.dex */
final /* synthetic */ class l {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0}, l = {434}, m = "any", n = {"$this$consume$iv"}, s = {"L$0"})
    public static final class a<E> extends ContinuationImpl {
        public ReceiveChannel d;
        public /* synthetic */ Object e;
        public int f;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.e = obj;
            this.f |= Integer.MIN_VALUE;
            return l.any(null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0}, l = {477}, m = "none", n = {"$this$consume$iv"}, s = {"L$0"})
    public static final class a0<E> extends ContinuationImpl {
        public ReceiveChannel d;
        public /* synthetic */ Object e;
        public int f;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.e = obj;
            this.f |= Integer.MIN_VALUE;
            return l.none(null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {41}, m = "consumeEach", n = {"action", "channel$iv"}, s = {"L$0", "L$1"})
    public static final class b<E> extends ContinuationImpl {
        public Function1 d;
        public ReceiveChannel e;
        public ChannelIterator f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f6192g;
        public int h;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f6192g = obj;
            this.h |= Integer.MIN_VALUE;
            return l.consumeEach(null, null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {ErrorMessages.ERROR_BLUETOOTH_COULD_NOT_FIT_ELEMENT_IN_BYTE}, m = "count", n = {"count", "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
    public static final class c<E> extends ContinuationImpl {
        public Ref.IntRef d;
        public ReceiveChannel e;
        public ChannelIterator f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f6193g;
        public int h;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f6193g = obj;
            this.h |= Integer.MIN_VALUE;
            return l.count(null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {166, 169}, m = "single", n = {"$this$consume$iv", "iterator", "$this$consume$iv", "single"}, s = {"L$0", "L$1", "L$0", "L$1"})
    public static final class c0<E> extends ContinuationImpl {
        public ReceiveChannel d;
        public Object e;
        public /* synthetic */ Object f;

        /* renamed from: g, reason: collision with root package name */
        public int f6194g;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f = obj;
            this.f6194g |= Integer.MIN_VALUE;
            return l.single(null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {179, 182}, m = "singleOrNull", n = {"$this$consume$iv", "iterator", "$this$consume$iv", "single"}, s = {"L$0", "L$1", "L$0", "L$1"})
    public static final class d0<E> extends ContinuationImpl {
        public ReceiveChannel d;
        public Object e;
        public /* synthetic */ Object f;

        /* renamed from: g, reason: collision with root package name */
        public int f6195g;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f = obj;
            this.f6195g |= Integer.MIN_VALUE;
            return l.singleOrNull(null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {ErrorMessages.ERROR_BLUETOOTH_COULD_NOT_FIT_ELEMENT_IN_BYTE, ErrorMessages.ERROR_TWITTER_REQUEST_FOLLOWERS_FAILED}, m = "toChannel", n = {"destination", "$this$consume$iv$iv", "destination", "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$0", "L$1"})
    public static final class g0<E, C extends SendChannel<? super E>> extends ContinuationImpl {
        public SendChannel d;
        public ReceiveChannel e;
        public ChannelIterator f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f6201g;
        public int h;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f6201g = obj;
            this.h |= Integer.MIN_VALUE;
            return ChannelsKt.toChannel(null, null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0}, l = {68}, m = "elementAt", n = {"$this$consume$iv", "index", "count"}, s = {"L$0", "I$0", "I$1"})
    public static final class h<E> extends ContinuationImpl {
        public int d;
        public int e;
        public ReceiveChannel f;

        /* renamed from: g, reason: collision with root package name */
        public ChannelIterator f6202g;
        public /* synthetic */ Object h;
        public int i;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.h = obj;
            this.i |= Integer.MIN_VALUE;
            return l.elementAt(null, 0, this);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {ErrorMessages.ERROR_BLUETOOTH_COULD_NOT_FIT_ELEMENT_IN_BYTE}, m = "toCollection", n = {"destination", "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
    public static final class h0<E, C extends Collection<? super E>> extends ContinuationImpl {
        public Collection d;
        public ReceiveChannel e;
        public ChannelIterator f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f6203g;
        public int h;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f6203g = obj;
            this.h |= Integer.MIN_VALUE;
            return ChannelsKt.toCollection(null, null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0}, l = {83}, m = "elementAtOrNull", n = {"$this$consume$iv", "index", "count"}, s = {"L$0", "I$0", "I$1"})
    public static final class i<E> extends ContinuationImpl {
        public int d;
        public int e;
        public ReceiveChannel f;

        /* renamed from: g, reason: collision with root package name */
        public ChannelIterator f6204g;
        public /* synthetic */ Object h;
        public int i;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.h = obj;
            this.i |= Integer.MIN_VALUE;
            return l.elementAtOrNull(null, 0, this);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {ErrorMessages.ERROR_BLUETOOTH_COULD_NOT_FIT_ELEMENT_IN_BYTE}, m = "toMap", n = {"destination", "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
    public static final class i0<K, V, M extends Map<? super K, ? super V>> extends ContinuationImpl {
        public Map d;
        public ReceiveChannel e;
        public ChannelIterator f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f6205g;
        public int h;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f6205g = obj;
            this.h |= Integer.MIN_VALUE;
            return ChannelsKt.toMap(null, null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {ErrorMessages.ERROR_BLUETOOTH_COULD_NOT_FIT_ELEMENT_IN_BYTE}, m = "filterNotNullTo", n = {"destination", "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
    public static final class n<E, C extends Collection<? super E>> extends ContinuationImpl {
        public Collection d;
        public ReceiveChannel e;
        public ChannelIterator f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f6211g;
        public int h;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f6211g = obj;
            this.h |= Integer.MIN_VALUE;
            return l.filterNotNullTo((ReceiveChannel) null, (Collection) null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {ErrorMessages.ERROR_BLUETOOTH_COULD_NOT_FIT_ELEMENT_IN_BYTE, 272}, m = "filterNotNullTo", n = {"destination", "$this$consume$iv$iv", "destination", "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$0", "L$1"})
    public static final class o<E, C extends SendChannel<? super E>> extends ContinuationImpl {
        public SendChannel d;
        public ReceiveChannel e;
        public ChannelIterator f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f6212g;
        public int h;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f6212g = obj;
            this.h |= Integer.MIN_VALUE;
            return l.filterNotNullTo((ReceiveChannel) null, (SendChannel) null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {95}, m = "first", n = {"$this$consume$iv", "iterator"}, s = {"L$0", "L$1"})
    public static final class p<E> extends ContinuationImpl {
        public ReceiveChannel d;
        public ChannelIterator e;
        public /* synthetic */ Object f;

        /* renamed from: g, reason: collision with root package name */
        public int f6213g;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f = obj;
            this.f6213g |= Integer.MIN_VALUE;
            return l.first(null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {105}, m = "firstOrNull", n = {"$this$consume$iv", "iterator"}, s = {"L$0", "L$1"})
    public static final class q<E> extends ContinuationImpl {
        public ReceiveChannel d;
        public ChannelIterator e;
        public /* synthetic */ Object f;

        /* renamed from: g, reason: collision with root package name */
        public int f6214g;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f = obj;
            this.f6214g |= Integer.MIN_VALUE;
            return l.firstOrNull(null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0}, l = {ErrorMessages.ERROR_BLUETOOTH_COULD_NOT_FIT_ELEMENT_IN_BYTE}, m = "indexOf", n = {"element", "index", "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$2"})
    public static final class s<E> extends ContinuationImpl {
        public Object d;
        public Ref.IntRef e;
        public ReceiveChannel f;

        /* renamed from: g, reason: collision with root package name */
        public ChannelIterator f6216g;
        public /* synthetic */ Object h;
        public int i;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.h = obj;
            this.i |= Integer.MIN_VALUE;
            return l.indexOf(null, null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1, 1}, l = {WorkQueueKt.MASK, 130}, m = "last", n = {"$this$consume$iv", "iterator", "$this$consume$iv", "iterator", "last"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2"})
    public static final class t<E> extends ContinuationImpl {
        public ReceiveChannel d;
        public ChannelIterator e;
        public Object f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f6217g;
        public int h;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f6217g = obj;
            this.h |= Integer.MIN_VALUE;
            return l.last(null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0, 0}, l = {ErrorMessages.ERROR_BLUETOOTH_COULD_NOT_FIT_ELEMENT_IN_BYTE}, m = "lastIndexOf", n = {"element", "lastIndex", "index", "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$2", "L$3"})
    public static final class u<E> extends ContinuationImpl {
        public Object d;
        public Ref.IntRef e;
        public Ref.IntRef f;

        /* renamed from: g, reason: collision with root package name */
        public ReceiveChannel f6218g;
        public ChannelIterator h;
        public /* synthetic */ Object i;
        public int j;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.i = obj;
            this.j |= Integer.MIN_VALUE;
            return l.lastIndexOf(null, null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1, 1}, l = {153, 156}, m = "lastOrNull", n = {"$this$consume$iv", "iterator", "$this$consume$iv", "iterator", "last"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2"})
    public static final class v<E> extends ContinuationImpl {
        public ReceiveChannel d;
        public ChannelIterator e;
        public Object f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f6219g;
        public int h;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f6219g = obj;
            this.h |= Integer.MIN_VALUE;
            return l.lastOrNull(null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0, 1, 1, 1, 1}, l = {450, 452}, m = "maxWith", n = {"comparator", "$this$consume$iv", "iterator", "comparator", "$this$consume$iv", "iterator", "max"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3"})
    public static final class y<E> extends ContinuationImpl {
        public Comparator d;
        public ReceiveChannel e;
        public ChannelIterator f;

        /* renamed from: g, reason: collision with root package name */
        public Object f6222g;
        public /* synthetic */ Object h;
        public int i;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.h = obj;
            this.i |= Integer.MIN_VALUE;
            return l.maxWith(null, null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0, 1, 1, 1, 1}, l = {464, 466}, m = "minWith", n = {"comparator", "$this$consume$iv", "iterator", "comparator", "$this$consume$iv", "iterator", "min"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3"})
    public static final class z<E> extends ContinuationImpl {
        public Comparator d;
        public ReceiveChannel e;
        public ChannelIterator f;

        /* renamed from: g, reason: collision with root package name */
        public Object f6223g;
        public /* synthetic */ Object h;
        public int i;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.h = obj;
            this.i |= Integer.MIN_VALUE;
            return l.minWith(null, null, this);
        }
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
    @ObsoleteCoroutinesApi
    public static final <E, R> R consume(@NotNull BroadcastChannel<E> broadcastChannel, @NotNull Function1<? super ReceiveChannel<? extends E>, ? extends R> function1) {
        ReceiveChannel<E> receiveChannelOpenSubscription = broadcastChannel.openSubscription();
        try {
            return function1.invoke(receiveChannelOpenSubscription);
        } finally {
            InlineMarker.finallyStart(1);
            ReceiveChannel.DefaultImpls.cancel$default((ReceiveChannel) receiveChannelOpenSubscription, (CancellationException) null, 1, (Object) null);
            InlineMarker.finallyEnd(1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x005a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0067 A[Catch: all -> 0x0071, TryCatch #0 {all -> 0x0071, blocks: (B:26:0x005f, B:28:0x0067, B:31:0x0074), top: B:40:0x005f }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0074 A[Catch: all -> 0x0071, TRY_LEAVE, TryCatch #0 {all -> 0x0071, blocks: (B:26:0x005f, B:28:0x0067, B:31:0x0074), top: B:40:0x005f }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x005b -> B:14:0x0032). Please report as a decompilation issue!!! */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.ERROR, message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <E> java.lang.Object consumeEach(@org.jetbrains.annotations.NotNull kotlinx.coroutines.channels.BroadcastChannel<E> r6, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super E, kotlin.Unit> r7, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r8) throws java.lang.Throwable {
        /*
            boolean r0 = r8 instanceof kotlinx.coroutines.channels.l.b
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.channels.l$b r0 = (kotlinx.coroutines.channels.l.b) r0
            int r1 = r0.h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.h = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.l$b r0 = new kotlinx.coroutines.channels.l$b
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f6192g
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.h
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L3e
            if (r2 != r4) goto L36
            kotlinx.coroutines.channels.ChannelIterator r6 = r0.f
            kotlinx.coroutines.channels.ReceiveChannel r7 = r0.e
            kotlin.jvm.functions.Function1 r2 = r0.d
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L34
            r5 = r0
            r0 = r7
            r7 = r2
        L32:
            r2 = r5
            goto L5f
        L34:
            r6 = move-exception
            goto L89
        L36:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3e:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.channels.ReceiveChannel r6 = r6.openSubscription()
            kotlinx.coroutines.channels.ChannelIterator r8 = r6.iterator()     // Catch: java.lang.Throwable -> L85
            r5 = r8
            r8 = r6
            r6 = r5
        L4c:
            r0.d = r7     // Catch: java.lang.Throwable -> L82
            r0.e = r8     // Catch: java.lang.Throwable -> L82
            r0.f = r6     // Catch: java.lang.Throwable -> L82
            r0.h = r4     // Catch: java.lang.Throwable -> L82
            java.lang.Object r2 = r6.hasNext(r0)     // Catch: java.lang.Throwable -> L82
            if (r2 != r1) goto L5b
            return r1
        L5b:
            r5 = r0
            r0 = r8
            r8 = r2
            goto L32
        L5f:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L71
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L71
            if (r8 == 0) goto L74
            java.lang.Object r8 = r6.next()     // Catch: java.lang.Throwable -> L71
            r7.invoke(r8)     // Catch: java.lang.Throwable -> L71
            r8 = r0
            r0 = r2
            goto L4c
        L71:
            r6 = move-exception
            r7 = r0
            goto L89
        L74:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L71
            kotlin.jvm.internal.InlineMarker.finallyStart(r4)
            kotlinx.coroutines.channels.ReceiveChannel.DefaultImpls.cancel$default(r0, r3, r4, r3)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r4)
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L82:
            r6 = move-exception
            r7 = r8
            goto L89
        L85:
            r7 = move-exception
            r5 = r7
            r7 = r6
            r6 = r5
        L89:
            kotlin.jvm.internal.InlineMarker.finallyStart(r4)
            kotlinx.coroutines.channels.ReceiveChannel.DefaultImpls.cancel$default(r7, r3, r4, r3)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.consumeEach(kotlinx.coroutines.channels.BroadcastChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @PublishedApi
    @NotNull
    public static final Function1<Throwable, Unit> consumesAll(@NotNull ReceiveChannel<?>... receiveChannelArr) {
        return new kotlin.collections.a(receiveChannelArr, 10);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x005a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0068 A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #1 {all -> 0x0035, blocks: (B:12:0x0031, B:25:0x0060, B:27:0x0068, B:33:0x0079, B:34:0x0090), top: B:44:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0079 A[Catch: all -> 0x0035, TRY_ENTER, TryCatch #1 {all -> 0x0035, blocks: (B:12:0x0031, B:25:0x0060, B:27:0x0068, B:33:0x0079, B:34:0x0090), top: B:44:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x005b -> B:25:0x0060). Please report as a decompilation issue!!! */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object elementAt(kotlinx.coroutines.channels.ReceiveChannel r9, int r10, kotlin.coroutines.Continuation r11) {
        /*
            boolean r0 = r11 instanceof kotlinx.coroutines.channels.l.h
            if (r0 == 0) goto L13
            r0 = r11
            kotlinx.coroutines.channels.l$h r0 = (kotlinx.coroutines.channels.l.h) r0
            int r1 = r0.i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.i = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.l$h r0 = new kotlinx.coroutines.channels.l$h
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.i
            r3 = 1
            r4 = 46
            java.lang.String r5 = "ReceiveChannel doesn't contain element at index "
            if (r2 == 0) goto L40
            if (r2 != r3) goto L38
            int r9 = r0.e
            int r10 = r0.d
            kotlinx.coroutines.channels.ChannelIterator r2 = r0.f6202g
            kotlinx.coroutines.channels.ReceiveChannel r6 = r0.f
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L35
            goto L60
        L35:
            r9 = move-exception
            goto Laa
        L38:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L40:
            kotlin.ResultKt.throwOnFailure(r11)
            if (r10 < 0) goto L95
            kotlinx.coroutines.channels.ChannelIterator r11 = r9.iterator()     // Catch: java.lang.Throwable -> L91
            r2 = 0
        L4a:
            r0.f = r9     // Catch: java.lang.Throwable -> L91
            r0.f6202g = r11     // Catch: java.lang.Throwable -> L91
            r0.d = r10     // Catch: java.lang.Throwable -> L91
            r0.e = r2     // Catch: java.lang.Throwable -> L91
            r0.i = r3     // Catch: java.lang.Throwable -> L91
            java.lang.Object r6 = r11.hasNext(r0)     // Catch: java.lang.Throwable -> L91
            if (r6 != r1) goto L5b
            return r1
        L5b:
            r8 = r6
            r6 = r9
            r9 = r2
            r2 = r11
            r11 = r8
        L60:
            java.lang.Boolean r11 = (java.lang.Boolean) r11     // Catch: java.lang.Throwable -> L35
            boolean r11 = r11.booleanValue()     // Catch: java.lang.Throwable -> L35
            if (r11 == 0) goto L79
            java.lang.Object r11 = r2.next()     // Catch: java.lang.Throwable -> L35
            int r7 = r9 + 1
            if (r10 != r9) goto L75
            r9 = 0
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r6, r9)
            return r11
        L75:
            r11 = r2
            r9 = r6
            r2 = r7
            goto L4a
        L79:
            java.lang.IndexOutOfBoundsException r9 = new java.lang.IndexOutOfBoundsException     // Catch: java.lang.Throwable -> L35
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L35
            r11.<init>()     // Catch: java.lang.Throwable -> L35
            r11.append(r5)     // Catch: java.lang.Throwable -> L35
            r11.append(r10)     // Catch: java.lang.Throwable -> L35
            r11.append(r4)     // Catch: java.lang.Throwable -> L35
            java.lang.String r10 = r11.toString()     // Catch: java.lang.Throwable -> L35
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L35
            throw r9     // Catch: java.lang.Throwable -> L35
        L91:
            r10 = move-exception
            r6 = r9
            r9 = r10
            goto Laa
        L95:
            java.lang.IndexOutOfBoundsException r11 = new java.lang.IndexOutOfBoundsException     // Catch: java.lang.Throwable -> L91
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L91
            r0.<init>(r5)     // Catch: java.lang.Throwable -> L91
            r0.append(r10)     // Catch: java.lang.Throwable -> L91
            r0.append(r4)     // Catch: java.lang.Throwable -> L91
            java.lang.String r10 = r0.toString()     // Catch: java.lang.Throwable -> L91
            r11.<init>(r10)     // Catch: java.lang.Throwable -> L91
            throw r11     // Catch: java.lang.Throwable -> L91
        Laa:
            throw r9     // Catch: java.lang.Throwable -> Lab
        Lab:
            r10 = move-exception
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r6, r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.elementAt(kotlinx.coroutines.channels.ReceiveChannel, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006c A[Catch: all -> 0x007c, TRY_LEAVE, TryCatch #2 {all -> 0x007c, blocks: (B:27:0x0064, B:29:0x006c, B:23:0x004f, B:22:0x004a), top: B:47:0x004a }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0060 -> B:27:0x0064). Please report as a decompilation issue!!! */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object elementAtOrNull(kotlinx.coroutines.channels.ReceiveChannel r8, int r9, kotlin.coroutines.Continuation r10) {
        /*
            boolean r0 = r10 instanceof kotlinx.coroutines.channels.l.i
            if (r0 == 0) goto L13
            r0 = r10
            kotlinx.coroutines.channels.l$i r0 = (kotlinx.coroutines.channels.l.i) r0
            int r1 = r0.i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.i = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.l$i r0 = new kotlinx.coroutines.channels.l$i
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.i
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L41
            if (r2 != r3) goto L39
            int r8 = r0.e
            int r9 = r0.d
            kotlinx.coroutines.channels.ChannelIterator r2 = r0.f6204g
            kotlinx.coroutines.channels.ReceiveChannel r5 = r0.f
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L37
            r7 = r2
            r2 = r8
            r8 = r5
            r5 = r0
            r0 = r7
            goto L64
        L37:
            r8 = move-exception
            goto L84
        L39:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L41:
            kotlin.ResultKt.throwOnFailure(r10)
            if (r9 >= 0) goto L4a
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r8, r4)
            return r4
        L4a:
            kotlinx.coroutines.channels.ChannelIterator r10 = r8.iterator()     // Catch: java.lang.Throwable -> L7c
            r2 = 0
        L4f:
            r0.f = r8     // Catch: java.lang.Throwable -> L7c
            r0.f6204g = r10     // Catch: java.lang.Throwable -> L7c
            r0.d = r9     // Catch: java.lang.Throwable -> L7c
            r0.e = r2     // Catch: java.lang.Throwable -> L7c
            r0.i = r3     // Catch: java.lang.Throwable -> L7c
            java.lang.Object r5 = r10.hasNext(r0)     // Catch: java.lang.Throwable -> L7c
            if (r5 != r1) goto L60
            return r1
        L60:
            r7 = r0
            r0 = r10
            r10 = r5
            r5 = r7
        L64:
            java.lang.Boolean r10 = (java.lang.Boolean) r10     // Catch: java.lang.Throwable -> L7c
            boolean r10 = r10.booleanValue()     // Catch: java.lang.Throwable -> L7c
            if (r10 == 0) goto L80
            java.lang.Object r10 = r0.next()     // Catch: java.lang.Throwable -> L7c
            int r6 = r2 + 1
            if (r9 != r2) goto L78
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r8, r4)
            return r10
        L78:
            r10 = r0
            r0 = r5
            r2 = r6
            goto L4f
        L7c:
            r9 = move-exception
            r5 = r8
            r8 = r9
            goto L84
        L80:
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r8, r4)
            return r4
        L84:
            throw r8     // Catch: java.lang.Throwable -> L85
        L85:
            r9 = move-exception
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r5, r8)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.elementAtOrNull(kotlinx.coroutines.channels.ReceiveChannel, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0057 A[Catch: all -> 0x002d, TRY_LEAVE, TryCatch #2 {all -> 0x002d, blocks: (B:12:0x0029, B:23:0x004f, B:25:0x0057, B:28:0x0060, B:29:0x0067), top: B:40:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0060 A[Catch: all -> 0x002d, TRY_ENTER, TryCatch #2 {all -> 0x002d, blocks: (B:12:0x0029, B:23:0x004f, B:25:0x0057, B:28:0x0060, B:29:0x0067), top: B:40:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object first(kotlinx.coroutines.channels.ReceiveChannel r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.channels.l.p
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.channels.l$p r0 = (kotlinx.coroutines.channels.l.p) r0
            int r1 = r0.f6213g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f6213g = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.l$p r0 = new kotlinx.coroutines.channels.l$p
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f6213g
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlinx.coroutines.channels.ChannelIterator r5 = r0.e
            kotlinx.coroutines.channels.ReceiveChannel r0 = r0.d
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L2d
            goto L4f
        L2d:
            r5 = move-exception
            goto L6b
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.channels.ChannelIterator r6 = r5.iterator()     // Catch: java.lang.Throwable -> L68
            r0.d = r5     // Catch: java.lang.Throwable -> L68
            r0.e = r6     // Catch: java.lang.Throwable -> L68
            r0.f6213g = r3     // Catch: java.lang.Throwable -> L68
            java.lang.Object r0 = r6.hasNext(r0)     // Catch: java.lang.Throwable -> L68
            if (r0 != r1) goto L4b
            return r1
        L4b:
            r4 = r0
            r0 = r5
            r5 = r6
            r6 = r4
        L4f:
            java.lang.Boolean r6 = (java.lang.Boolean) r6     // Catch: java.lang.Throwable -> L2d
            boolean r6 = r6.booleanValue()     // Catch: java.lang.Throwable -> L2d
            if (r6 == 0) goto L60
            java.lang.Object r5 = r5.next()     // Catch: java.lang.Throwable -> L2d
            r6 = 0
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r0, r6)
            return r5
        L60:
            java.util.NoSuchElementException r5 = new java.util.NoSuchElementException     // Catch: java.lang.Throwable -> L2d
            java.lang.String r6 = "ReceiveChannel is empty."
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L2d
            throw r5     // Catch: java.lang.Throwable -> L2d
        L68:
            r6 = move-exception
            r0 = r5
            r5 = r6
        L6b:
            throw r5     // Catch: java.lang.Throwable -> L6c
        L6c:
            r6 = move-exception
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r0, r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.first(kotlinx.coroutines.channels.ReceiveChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object firstOrNull(kotlinx.coroutines.channels.ReceiveChannel r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.channels.l.q
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.channels.l$q r0 = (kotlinx.coroutines.channels.l.q) r0
            int r1 = r0.f6214g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f6214g = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.l$q r0 = new kotlinx.coroutines.channels.l$q
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f6214g
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlinx.coroutines.channels.ChannelIterator r5 = r0.e
            kotlinx.coroutines.channels.ReceiveChannel r0 = r0.d
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L2d
            goto L4f
        L2d:
            r5 = move-exception
            goto L67
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.channels.ChannelIterator r6 = r5.iterator()     // Catch: java.lang.Throwable -> L64
            r0.d = r5     // Catch: java.lang.Throwable -> L64
            r0.e = r6     // Catch: java.lang.Throwable -> L64
            r0.f6214g = r3     // Catch: java.lang.Throwable -> L64
            java.lang.Object r0 = r6.hasNext(r0)     // Catch: java.lang.Throwable -> L64
            if (r0 != r1) goto L4b
            return r1
        L4b:
            r4 = r0
            r0 = r5
            r5 = r6
            r6 = r4
        L4f:
            java.lang.Boolean r6 = (java.lang.Boolean) r6     // Catch: java.lang.Throwable -> L2d
            boolean r6 = r6.booleanValue()     // Catch: java.lang.Throwable -> L2d
            r1 = 0
            if (r6 != 0) goto L5c
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r0, r1)
            return r1
        L5c:
            java.lang.Object r5 = r5.next()     // Catch: java.lang.Throwable -> L2d
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r0, r1)
            return r5
        L64:
            r6 = move-exception
            r0 = r5
            r5 = r6
        L67:
            throw r5     // Catch: java.lang.Throwable -> L68
        L68:
            r6 = move-exception
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r0, r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.firstOrNull(kotlinx.coroutines.channels.ReceiveChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x005d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006a A[Catch: all -> 0x0031, TryCatch #1 {all -> 0x0031, blocks: (B:12:0x002d, B:25:0x0061, B:27:0x006a, B:29:0x0074, B:32:0x007e, B:21:0x004d, B:33:0x0085), top: B:44:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0085 A[Catch: all -> 0x0031, TRY_LEAVE, TryCatch #1 {all -> 0x0031, blocks: (B:12:0x002d, B:25:0x0061, B:27:0x006a, B:29:0x0074, B:32:0x007e, B:21:0x004d, B:33:0x0085), top: B:44:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x005e -> B:25:0x0061). Please report as a decompilation issue!!! */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object indexOf(kotlinx.coroutines.channels.ReceiveChannel r7, java.lang.Object r8, kotlin.coroutines.Continuation r9) {
        /*
            boolean r0 = r9 instanceof kotlinx.coroutines.channels.l.s
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.channels.l$s r0 = (kotlinx.coroutines.channels.l.s) r0
            int r1 = r0.i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.i = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.l$s r0 = new kotlinx.coroutines.channels.l$s
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.i
            r3 = 1
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            kotlinx.coroutines.channels.ChannelIterator r7 = r0.f6216g
            kotlinx.coroutines.channels.ReceiveChannel r8 = r0.f
            kotlin.jvm.internal.Ref$IntRef r2 = r0.e
            java.lang.Object r4 = r0.d
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L31
            goto L61
        L31:
            r7 = move-exception
            goto L94
        L34:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3c:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlin.jvm.internal.Ref$IntRef r9 = new kotlin.jvm.internal.Ref$IntRef
            r9.<init>()
            kotlinx.coroutines.channels.ChannelIterator r2 = r7.iterator()     // Catch: java.lang.Throwable -> L90
            r6 = r8
            r8 = r7
            r7 = r2
            r2 = r9
            r9 = r6
        L4d:
            r0.d = r9     // Catch: java.lang.Throwable -> L31
            r0.e = r2     // Catch: java.lang.Throwable -> L31
            r0.f = r8     // Catch: java.lang.Throwable -> L31
            r0.f6216g = r7     // Catch: java.lang.Throwable -> L31
            r0.i = r3     // Catch: java.lang.Throwable -> L31
            java.lang.Object r4 = r7.hasNext(r0)     // Catch: java.lang.Throwable -> L31
            if (r4 != r1) goto L5e
            return r1
        L5e:
            r6 = r4
            r4 = r9
            r9 = r6
        L61:
            java.lang.Boolean r9 = (java.lang.Boolean) r9     // Catch: java.lang.Throwable -> L31
            boolean r9 = r9.booleanValue()     // Catch: java.lang.Throwable -> L31
            r5 = 0
            if (r9 == 0) goto L85
            java.lang.Object r9 = r7.next()     // Catch: java.lang.Throwable -> L31
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r9)     // Catch: java.lang.Throwable -> L31
            if (r9 == 0) goto L7e
            int r7 = r2.element     // Catch: java.lang.Throwable -> L31
            java.lang.Integer r7 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r7)     // Catch: java.lang.Throwable -> L31
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r8, r5)
            return r7
        L7e:
            int r9 = r2.element     // Catch: java.lang.Throwable -> L31
            int r9 = r9 + r3
            r2.element = r9     // Catch: java.lang.Throwable -> L31
            r9 = r4
            goto L4d
        L85:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L31
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r8, r5)
            r7 = -1
            java.lang.Integer r7 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r7)
            return r7
        L90:
            r8 = move-exception
            r6 = r8
            r8 = r7
            r7 = r6
        L94:
            throw r7     // Catch: java.lang.Throwable -> L95
        L95:
            r9 = move-exception
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r8, r7)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.indexOf(kotlinx.coroutines.channels.ReceiveChannel, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008b A[Catch: all -> 0x0032, TRY_LEAVE, TryCatch #0 {all -> 0x0032, blocks: (B:13:0x002e, B:37:0x0083, B:39:0x008b), top: B:51:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x007f -> B:37:0x0083). Please report as a decompilation issue!!! */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object last(kotlinx.coroutines.channels.ReceiveChannel r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof kotlinx.coroutines.channels.l.t
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.channels.l$t r0 = (kotlinx.coroutines.channels.l.t) r0
            int r1 = r0.h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.h = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.l$t r0 = new kotlinx.coroutines.channels.l$t
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f6217g
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.h
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L49
            if (r2 == r4) goto L3e
            if (r2 != r3) goto L36
            java.lang.Object r6 = r0.f
            kotlinx.coroutines.channels.ChannelIterator r2 = r0.e
            kotlinx.coroutines.channels.ReceiveChannel r4 = r0.d
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L32
            goto L83
        L32:
            r6 = move-exception
            r2 = r4
            goto La2
        L36:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3e:
            kotlinx.coroutines.channels.ChannelIterator r6 = r0.e
            kotlinx.coroutines.channels.ReceiveChannel r2 = r0.d
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L46
            goto L61
        L46:
            r6 = move-exception
            goto La2
        L49:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.channels.ChannelIterator r7 = r6.iterator()     // Catch: java.lang.Throwable -> L96
            r0.d = r6     // Catch: java.lang.Throwable -> L96
            r0.e = r7     // Catch: java.lang.Throwable -> L96
            r0.h = r4     // Catch: java.lang.Throwable -> L96
            java.lang.Object r2 = r7.hasNext(r0)     // Catch: java.lang.Throwable -> L96
            if (r2 != r1) goto L5d
            goto L7e
        L5d:
            r5 = r2
            r2 = r6
            r6 = r7
            r7 = r5
        L61:
            java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch: java.lang.Throwable -> L46
            boolean r7 = r7.booleanValue()     // Catch: java.lang.Throwable -> L46
            if (r7 == 0) goto L9a
            java.lang.Object r7 = r6.next()     // Catch: java.lang.Throwable -> L46
            r5 = r2
            r2 = r6
            r6 = r5
        L70:
            r0.d = r6     // Catch: java.lang.Throwable -> L96
            r0.e = r2     // Catch: java.lang.Throwable -> L96
            r0.f = r7     // Catch: java.lang.Throwable -> L96
            r0.h = r3     // Catch: java.lang.Throwable -> L96
            java.lang.Object r4 = r2.hasNext(r0)     // Catch: java.lang.Throwable -> L96
            if (r4 != r1) goto L7f
        L7e:
            return r1
        L7f:
            r5 = r4
            r4 = r6
            r6 = r7
            r7 = r5
        L83:
            java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch: java.lang.Throwable -> L32
            boolean r7 = r7.booleanValue()     // Catch: java.lang.Throwable -> L32
            if (r7 == 0) goto L91
            java.lang.Object r7 = r2.next()     // Catch: java.lang.Throwable -> L32
            r6 = r4
            goto L70
        L91:
            r7 = 0
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r4, r7)
            return r6
        L96:
            r7 = move-exception
            r2 = r6
            r6 = r7
            goto La2
        L9a:
            java.util.NoSuchElementException r6 = new java.util.NoSuchElementException     // Catch: java.lang.Throwable -> L46
            java.lang.String r7 = "ReceiveChannel is empty."
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L46
            throw r6     // Catch: java.lang.Throwable -> L46
        La2:
            throw r6     // Catch: java.lang.Throwable -> La3
        La3:
            r7 = move-exception
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r2, r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.last(kotlinx.coroutines.channels.ReceiveChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0069 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0075 A[Catch: all -> 0x0033, TryCatch #0 {all -> 0x0033, blocks: (B:12:0x002f, B:25:0x006d, B:27:0x0075, B:29:0x007f, B:30:0x0083, B:21:0x0057, B:31:0x008a), top: B:40:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008a A[Catch: all -> 0x0033, TRY_LEAVE, TryCatch #0 {all -> 0x0033, blocks: (B:12:0x002f, B:25:0x006d, B:27:0x0075, B:29:0x007f, B:30:0x0083, B:21:0x0057, B:31:0x008a), top: B:40:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x006a -> B:25:0x006d). Please report as a decompilation issue!!! */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object lastIndexOf(kotlinx.coroutines.channels.ReceiveChannel r7, java.lang.Object r8, kotlin.coroutines.Continuation r9) {
        /*
            boolean r0 = r9 instanceof kotlinx.coroutines.channels.l.u
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.channels.l$u r0 = (kotlinx.coroutines.channels.l.u) r0
            int r1 = r0.j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.j = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.l$u r0 = new kotlinx.coroutines.channels.l$u
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.j
            r3 = 1
            if (r2 == 0) goto L3e
            if (r2 != r3) goto L36
            kotlinx.coroutines.channels.ChannelIterator r7 = r0.h
            kotlinx.coroutines.channels.ReceiveChannel r8 = r0.f6218g
            kotlin.jvm.internal.Ref$IntRef r2 = r0.f
            kotlin.jvm.internal.Ref$IntRef r4 = r0.e
            java.lang.Object r5 = r0.d
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L33
            goto L6d
        L33:
            r7 = move-exception
            goto L9b
        L36:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3e:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlin.jvm.internal.Ref$IntRef r9 = new kotlin.jvm.internal.Ref$IntRef
            r9.<init>()
            r2 = -1
            r9.element = r2
            kotlin.jvm.internal.Ref$IntRef r2 = new kotlin.jvm.internal.Ref$IntRef
            r2.<init>()
            kotlinx.coroutines.channels.ChannelIterator r4 = r7.iterator()     // Catch: java.lang.Throwable -> L97
            r6 = r8
            r8 = r7
            r7 = r4
            r4 = r9
            r9 = r6
        L57:
            r0.d = r9     // Catch: java.lang.Throwable -> L33
            r0.e = r4     // Catch: java.lang.Throwable -> L33
            r0.f = r2     // Catch: java.lang.Throwable -> L33
            r0.f6218g = r8     // Catch: java.lang.Throwable -> L33
            r0.h = r7     // Catch: java.lang.Throwable -> L33
            r0.j = r3     // Catch: java.lang.Throwable -> L33
            java.lang.Object r5 = r7.hasNext(r0)     // Catch: java.lang.Throwable -> L33
            if (r5 != r1) goto L6a
            return r1
        L6a:
            r6 = r5
            r5 = r9
            r9 = r6
        L6d:
            java.lang.Boolean r9 = (java.lang.Boolean) r9     // Catch: java.lang.Throwable -> L33
            boolean r9 = r9.booleanValue()     // Catch: java.lang.Throwable -> L33
            if (r9 == 0) goto L8a
            java.lang.Object r9 = r7.next()     // Catch: java.lang.Throwable -> L33
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r9)     // Catch: java.lang.Throwable -> L33
            if (r9 == 0) goto L83
            int r9 = r2.element     // Catch: java.lang.Throwable -> L33
            r4.element = r9     // Catch: java.lang.Throwable -> L33
        L83:
            int r9 = r2.element     // Catch: java.lang.Throwable -> L33
            int r9 = r9 + r3
            r2.element = r9     // Catch: java.lang.Throwable -> L33
            r9 = r5
            goto L57
        L8a:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L33
            r7 = 0
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r8, r7)
            int r7 = r4.element
            java.lang.Integer r7 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r7)
            return r7
        L97:
            r8 = move-exception
            r6 = r8
            r8 = r7
            r7 = r6
        L9b:
            throw r7     // Catch: java.lang.Throwable -> L9c
        L9c:
            r9 = move-exception
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r8, r7)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.lastIndexOf(kotlinx.coroutines.channels.ReceiveChannel, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008f A[Catch: all -> 0x0033, TRY_LEAVE, TryCatch #0 {all -> 0x0033, blocks: (B:13:0x002f, B:39:0x0087, B:41:0x008f), top: B:51:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0083 -> B:39:0x0087). Please report as a decompilation issue!!! */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object lastOrNull(kotlinx.coroutines.channels.ReceiveChannel r7, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof kotlinx.coroutines.channels.l.v
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.channels.l$v r0 = (kotlinx.coroutines.channels.l.v) r0
            int r1 = r0.h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.h = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.l$v r0 = new kotlinx.coroutines.channels.l$v
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f6219g
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.h
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L49
            if (r2 == r4) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r7 = r0.f
            kotlinx.coroutines.channels.ChannelIterator r2 = r0.e
            kotlinx.coroutines.channels.ReceiveChannel r4 = r0.d
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L33
            goto L87
        L33:
            r7 = move-exception
            r2 = r4
            goto L9c
        L37:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3f:
            kotlinx.coroutines.channels.ChannelIterator r7 = r0.e
            kotlinx.coroutines.channels.ReceiveChannel r2 = r0.d
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L47
            goto L61
        L47:
            r7 = move-exception
            goto L9c
        L49:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.channels.ChannelIterator r8 = r7.iterator()     // Catch: java.lang.Throwable -> L99
            r0.d = r7     // Catch: java.lang.Throwable -> L99
            r0.e = r8     // Catch: java.lang.Throwable -> L99
            r0.h = r4     // Catch: java.lang.Throwable -> L99
            java.lang.Object r2 = r8.hasNext(r0)     // Catch: java.lang.Throwable -> L99
            if (r2 != r1) goto L5d
            goto L82
        L5d:
            r6 = r2
            r2 = r7
            r7 = r8
            r8 = r6
        L61:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L47
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L47
            if (r8 != 0) goto L6d
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r2, r5)
            return r5
        L6d:
            java.lang.Object r8 = r7.next()     // Catch: java.lang.Throwable -> L47
            r6 = r2
            r2 = r7
            r7 = r6
        L74:
            r0.d = r7     // Catch: java.lang.Throwable -> L99
            r0.e = r2     // Catch: java.lang.Throwable -> L99
            r0.f = r8     // Catch: java.lang.Throwable -> L99
            r0.h = r3     // Catch: java.lang.Throwable -> L99
            java.lang.Object r4 = r2.hasNext(r0)     // Catch: java.lang.Throwable -> L99
            if (r4 != r1) goto L83
        L82:
            return r1
        L83:
            r6 = r4
            r4 = r7
            r7 = r8
            r8 = r6
        L87:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L33
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L33
            if (r8 == 0) goto L95
            java.lang.Object r8 = r2.next()     // Catch: java.lang.Throwable -> L33
            r7 = r4
            goto L74
        L95:
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r4, r5)
            return r7
        L99:
            r8 = move-exception
            r2 = r7
            r7 = r8
        L9c:
            throw r7     // Catch: java.lang.Throwable -> L9d
        L9d:
            r8 = move-exception
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r2, r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.lastOrNull(kotlinx.coroutines.channels.ReceiveChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0068 A[Catch: all -> 0x0046, TRY_LEAVE, TryCatch #1 {all -> 0x0046, blocks: (B:20:0x0042, B:29:0x0060, B:31:0x0068, B:41:0x0092, B:42:0x0099), top: B:51:0x0042 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008a A[Catch: all -> 0x0030, TRY_ENTER, TryCatch #0 {all -> 0x0030, blocks: (B:13:0x002c, B:35:0x007d, B:39:0x008a, B:40:0x0091), top: B:49:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0092 A[Catch: all -> 0x0046, TRY_ENTER, TryCatch #1 {all -> 0x0046, blocks: (B:20:0x0042, B:29:0x0060, B:31:0x0068, B:41:0x0092, B:42:0x0099), top: B:51:0x0042 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object single(kotlinx.coroutines.channels.ReceiveChannel r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof kotlinx.coroutines.channels.l.c0
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.channels.l$c0 r0 = (kotlinx.coroutines.channels.l.c0) r0
            int r1 = r0.f6194g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f6194g = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.l$c0 r0 = new kotlinx.coroutines.channels.l$c0
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f6194g
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L48
            if (r2 == r4) goto L3c
            if (r2 != r3) goto L34
            java.lang.Object r6 = r0.e
            kotlinx.coroutines.channels.ReceiveChannel r0 = r0.d
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L30
            goto L7d
        L30:
            r6 = move-exception
            r2 = r0
            goto L9d
        L34:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3c:
            java.lang.Object r6 = r0.e
            kotlinx.coroutines.channels.ChannelIterator r6 = (kotlinx.coroutines.channels.ChannelIterator) r6
            kotlinx.coroutines.channels.ReceiveChannel r2 = r0.d
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L46
            goto L60
        L46:
            r6 = move-exception
            goto L9d
        L48:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.channels.ChannelIterator r7 = r6.iterator()     // Catch: java.lang.Throwable -> L9a
            r0.d = r6     // Catch: java.lang.Throwable -> L9a
            r0.e = r7     // Catch: java.lang.Throwable -> L9a
            r0.f6194g = r4     // Catch: java.lang.Throwable -> L9a
            java.lang.Object r2 = r7.hasNext(r0)     // Catch: java.lang.Throwable -> L9a
            if (r2 != r1) goto L5c
            goto L78
        L5c:
            r5 = r2
            r2 = r6
            r6 = r7
            r7 = r5
        L60:
            java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch: java.lang.Throwable -> L46
            boolean r7 = r7.booleanValue()     // Catch: java.lang.Throwable -> L46
            if (r7 == 0) goto L92
            java.lang.Object r7 = r6.next()     // Catch: java.lang.Throwable -> L46
            r0.d = r2     // Catch: java.lang.Throwable -> L46
            r0.e = r7     // Catch: java.lang.Throwable -> L46
            r0.f6194g = r3     // Catch: java.lang.Throwable -> L46
            java.lang.Object r6 = r6.hasNext(r0)     // Catch: java.lang.Throwable -> L46
            if (r6 != r1) goto L79
        L78:
            return r1
        L79:
            r0 = r7
            r7 = r6
            r6 = r0
            r0 = r2
        L7d:
            java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch: java.lang.Throwable -> L30
            boolean r7 = r7.booleanValue()     // Catch: java.lang.Throwable -> L30
            if (r7 != 0) goto L8a
            r7 = 0
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r0, r7)
            return r6
        L8a:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L30
            java.lang.String r7 = "ReceiveChannel has more than one element."
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L30
            throw r6     // Catch: java.lang.Throwable -> L30
        L92:
            java.util.NoSuchElementException r6 = new java.util.NoSuchElementException     // Catch: java.lang.Throwable -> L46
            java.lang.String r7 = "ReceiveChannel is empty."
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L46
            throw r6     // Catch: java.lang.Throwable -> L46
        L9a:
            r7 = move-exception
            r2 = r6
            r6 = r7
        L9d:
            throw r6     // Catch: java.lang.Throwable -> L9e
        L9e:
            r7 = move-exception
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r2, r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.single(kotlinx.coroutines.channels.ReceiveChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object singleOrNull(kotlinx.coroutines.channels.ReceiveChannel r7, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof kotlinx.coroutines.channels.l.d0
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.channels.l$d0 r0 = (kotlinx.coroutines.channels.l.d0) r0
            int r1 = r0.f6195g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f6195g = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.l$d0 r0 = new kotlinx.coroutines.channels.l$d0
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f6195g
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L49
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r7 = r0.e
            kotlinx.coroutines.channels.ReceiveChannel r0 = r0.d
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L31
            goto L82
        L31:
            r7 = move-exception
            r2 = r0
            goto L95
        L35:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3d:
            java.lang.Object r7 = r0.e
            kotlinx.coroutines.channels.ChannelIterator r7 = (kotlinx.coroutines.channels.ChannelIterator) r7
            kotlinx.coroutines.channels.ReceiveChannel r2 = r0.d
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L47
            goto L61
        L47:
            r7 = move-exception
            goto L95
        L49:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.channels.ChannelIterator r8 = r7.iterator()     // Catch: java.lang.Throwable -> L92
            r0.d = r7     // Catch: java.lang.Throwable -> L92
            r0.e = r8     // Catch: java.lang.Throwable -> L92
            r0.f6195g = r4     // Catch: java.lang.Throwable -> L92
            java.lang.Object r2 = r8.hasNext(r0)     // Catch: java.lang.Throwable -> L92
            if (r2 != r1) goto L5d
            goto L7d
        L5d:
            r6 = r2
            r2 = r7
            r7 = r8
            r8 = r6
        L61:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L47
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L47
            if (r8 != 0) goto L6d
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r2, r5)
            return r5
        L6d:
            java.lang.Object r8 = r7.next()     // Catch: java.lang.Throwable -> L47
            r0.d = r2     // Catch: java.lang.Throwable -> L47
            r0.e = r8     // Catch: java.lang.Throwable -> L47
            r0.f6195g = r3     // Catch: java.lang.Throwable -> L47
            java.lang.Object r7 = r7.hasNext(r0)     // Catch: java.lang.Throwable -> L47
            if (r7 != r1) goto L7e
        L7d:
            return r1
        L7e:
            r0 = r8
            r8 = r7
            r7 = r0
            r0 = r2
        L82:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L31
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L31
            if (r8 == 0) goto L8e
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r0, r5)
            return r5
        L8e:
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r0, r5)
            return r7
        L92:
            r8 = move-exception
            r2 = r7
            r7 = r8
        L95:
            throw r7     // Catch: java.lang.Throwable -> L96
        L96:
            r8 = move-exception
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r2, r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.singleOrNull(kotlinx.coroutines.channels.ReceiveChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "E", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$drop$1", f = "Deprecated.kt", i = {0, 0, 1, 2}, l = {FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_SOURCE, 199, 200}, m = "invokeSuspend", n = {"$this$produce", "remaining", "$this$produce", "$this$produce"}, s = {"L$0", "I$0", "L$0", "L$0"})
    @SourceDebugExtension({"SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,509:1\n1#2:510\n*E\n"})
    public static final class f extends SuspendLambda implements Function2 {
        public ChannelIterator e;
        public int f;

        /* renamed from: g, reason: collision with root package name */
        public int f6198g;
        public /* synthetic */ Object h;
        public final /* synthetic */ int i;
        public final /* synthetic */ ReceiveChannel j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(ReceiveChannel receiveChannel, int i, Continuation continuation) {
            super(2, continuation);
            this.i = i;
            this.j = receiveChannel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            f fVar = new f(this.j, this.i, continuation);
            fVar.h = obj;
            return fVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope producerScope, Continuation continuation) {
            return ((f) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x005a, code lost:
        
            if (r10 == r0) goto L34;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x006a, code lost:
        
            if (r1 == 0) goto L24;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0097, code lost:
        
            if (r2.send(r10, r9) == r0) goto L34;
         */
        /* JADX WARN: Removed duplicated region for block: B:29:0x007e  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0089  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x009a  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005a -> B:20:0x005d). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0097 -> B:8:0x001c). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r10) {
            /*
                r9 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r9.f6198g
                kotlinx.coroutines.channels.ReceiveChannel r2 = r9.j
                r3 = 3
                r4 = 2
                r5 = 1
                if (r1 == 0) goto L3c
                if (r1 == r5) goto L30
                if (r1 == r4) goto L26
                if (r1 != r3) goto L1e
                kotlinx.coroutines.channels.ChannelIterator r1 = r9.e
                java.lang.Object r2 = r9.h
                kotlinx.coroutines.channels.ProducerScope r2 = (kotlinx.coroutines.channels.ProducerScope) r2
                kotlin.ResultKt.throwOnFailure(r10)
            L1c:
                r10 = r2
                goto L71
            L1e:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r0)
                throw r10
            L26:
                kotlinx.coroutines.channels.ChannelIterator r1 = r9.e
                java.lang.Object r2 = r9.h
                kotlinx.coroutines.channels.ProducerScope r2 = (kotlinx.coroutines.channels.ProducerScope) r2
                kotlin.ResultKt.throwOnFailure(r10)
                goto L81
            L30:
                int r1 = r9.f
                kotlinx.coroutines.channels.ChannelIterator r6 = r9.e
                java.lang.Object r7 = r9.h
                kotlinx.coroutines.channels.ProducerScope r7 = (kotlinx.coroutines.channels.ProducerScope) r7
                kotlin.ResultKt.throwOnFailure(r10)
                goto L5d
            L3c:
                kotlin.ResultKt.throwOnFailure(r10)
                java.lang.Object r10 = r9.h
                kotlinx.coroutines.channels.ProducerScope r10 = (kotlinx.coroutines.channels.ProducerScope) r10
                int r1 = r9.i
                if (r1 < 0) goto L9d
                if (r1 <= 0) goto L6d
                kotlinx.coroutines.channels.ChannelIterator r6 = r2.iterator()
                r7 = r10
            L4e:
                r9.h = r7
                r9.e = r6
                r9.f = r1
                r9.f6198g = r5
                java.lang.Object r10 = r6.hasNext(r9)
                if (r10 != r0) goto L5d
                goto L99
            L5d:
                java.lang.Boolean r10 = (java.lang.Boolean) r10
                boolean r10 = r10.booleanValue()
                if (r10 == 0) goto L6c
                r6.next()
                int r1 = r1 + (-1)
                if (r1 != 0) goto L4e
            L6c:
                r10 = r7
            L6d:
                kotlinx.coroutines.channels.ChannelIterator r1 = r2.iterator()
            L71:
                r9.h = r10
                r9.e = r1
                r9.f6198g = r4
                java.lang.Object r2 = r1.hasNext(r9)
                if (r2 != r0) goto L7e
                goto L99
            L7e:
                r8 = r2
                r2 = r10
                r10 = r8
            L81:
                java.lang.Boolean r10 = (java.lang.Boolean) r10
                boolean r10 = r10.booleanValue()
                if (r10 == 0) goto L9a
                java.lang.Object r10 = r1.next()
                r9.h = r2
                r9.e = r1
                r9.f6198g = r3
                java.lang.Object r10 = r2.send(r10, r9)
                if (r10 != r0) goto L1c
            L99:
                return r0
            L9a:
                kotlin.Unit r10 = kotlin.Unit.INSTANCE
                return r10
            L9d:
                java.lang.String r10 = "Requested element count "
                java.lang.String r0 = " is less than zero."
                java.lang.String r10 = _COROUTINE.a.e(r1, r10, r0)
                java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
                java.lang.String r10 = r10.toString()
                r0.<init>(r10)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.f.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static /* synthetic */ ReceiveChannel drop$default(ReceiveChannel receiveChannel, int i2, CoroutineContext coroutineContext, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return drop(receiveChannel, i2, coroutineContext);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel drop(ReceiveChannel receiveChannel, int i2, CoroutineContext coroutineContext) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, ChannelsKt.consumes(receiveChannel), new f(receiveChannel, i2, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel dropWhile$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return dropWhile(receiveChannel, coroutineContext, function2);
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "E", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$dropWhile$1", f = "Deprecated.kt", i = {0, 1, 1, 2, 3, 4}, l = {211, 212, 213, 217, 218}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "e", "$this$produce", "$this$produce", "$this$produce"}, s = {"L$0", "L$0", "L$2", "L$0", "L$0", "L$0"})
    public static final class g extends SuspendLambda implements Function2 {
        public ChannelIterator e;
        public Object f;

        /* renamed from: g, reason: collision with root package name */
        public int f6200g;
        public /* synthetic */ Object h;
        public final /* synthetic */ ReceiveChannel i;
        public final /* synthetic */ Function2 j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(ReceiveChannel receiveChannel, Function2 function2, Continuation continuation) {
            super(2, continuation);
            this.i = receiveChannel;
            this.j = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            g gVar = new g(this.i, this.j, continuation);
            gVar.h = obj;
            return gVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope producerScope, Continuation continuation) {
            return ((g) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:44:0x00e3, code lost:
        
            if (r2.send(r13, r12) == r0) goto L45;
         */
        /* JADX WARN: Removed duplicated region for block: B:18:0x005b A[PHI: r1 r9 r13
          0x005b: PHI (r1v2 kotlinx.coroutines.channels.ChannelIterator) = (r1v4 kotlinx.coroutines.channels.ChannelIterator), (r1v13 kotlinx.coroutines.channels.ChannelIterator) binds: [B:21:0x0077, B:17:0x0052] A[DONT_GENERATE, DONT_INLINE]
          0x005b: PHI (r9v1 kotlinx.coroutines.channels.ProducerScope) = (r9v4 kotlinx.coroutines.channels.ProducerScope), (r9v8 kotlinx.coroutines.channels.ProducerScope) binds: [B:21:0x0077, B:17:0x0052] A[DONT_GENERATE, DONT_INLINE]
          0x005b: PHI (r13v3 java.lang.Object) = (r13v8 java.lang.Object), (r13v0 java.lang.Object) binds: [B:21:0x0077, B:17:0x0052] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0083  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00a5  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00b6  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00c9  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00d5  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x00e6  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0098 -> B:16:0x0050). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00e3 -> B:10:0x0023). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r13) {
            /*
                Method dump skipped, instructions count: 233
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.g.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel dropWhile(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, ChannelsKt.consumes(receiveChannel), new g(receiveChannel, function2, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel filter$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.filter(receiveChannel, coroutineContext, function2);
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "E", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filter$1", f = "Deprecated.kt", i = {0, 1, 1, 2}, l = {YaVersion.YOUNG_ANDROID_VERSION, 229, 229}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "e", "$this$produce"}, s = {"L$0", "L$0", "L$2", "L$0"})
    public static final class j<E> extends SuspendLambda implements Function2<ProducerScope<? super E>, Continuation<? super Unit>, Object> {
        public ChannelIterator e;
        public Object f;

        /* renamed from: g, reason: collision with root package name */
        public int f6206g;
        public /* synthetic */ Object h;
        public final /* synthetic */ ReceiveChannel i;
        public final /* synthetic */ Function2 j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(ReceiveChannel receiveChannel, Function2 function2, Continuation continuation) {
            super(2, continuation);
            this.i = receiveChannel;
            this.j = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            j jVar = new j(this.i, this.j, continuation);
            jVar.h = obj;
            return jVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super E> producerScope, Continuation<? super Unit> continuation) {
            return ((j) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x004b, code lost:
        
            r6 = r7;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0062  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0083  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0092  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0094  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r10) {
            /*
                r9 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r9.f6206g
                r2 = 0
                r3 = 3
                r4 = 2
                r5 = 1
                if (r1 == 0) goto L3d
                if (r1 == r5) goto L33
                if (r1 == r4) goto L24
                if (r1 != r3) goto L1c
                kotlinx.coroutines.channels.ChannelIterator r1 = r9.e
                java.lang.Object r6 = r9.h
                kotlinx.coroutines.channels.ProducerScope r6 = (kotlinx.coroutines.channels.ProducerScope) r6
                kotlin.ResultKt.throwOnFailure(r10)
                goto L4b
            L1c:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r0)
                throw r10
            L24:
                java.lang.Object r1 = r9.f
                kotlinx.coroutines.channels.ChannelIterator r6 = r9.e
                java.lang.Object r7 = r9.h
                kotlinx.coroutines.channels.ProducerScope r7 = (kotlinx.coroutines.channels.ProducerScope) r7
                kotlin.ResultKt.throwOnFailure(r10)
                r8 = r6
                r6 = r1
                r1 = r8
                goto L7b
            L33:
                kotlinx.coroutines.channels.ChannelIterator r1 = r9.e
                java.lang.Object r6 = r9.h
                kotlinx.coroutines.channels.ProducerScope r6 = (kotlinx.coroutines.channels.ProducerScope) r6
                kotlin.ResultKt.throwOnFailure(r10)
                goto L5a
            L3d:
                kotlin.ResultKt.throwOnFailure(r10)
                java.lang.Object r10 = r9.h
                kotlinx.coroutines.channels.ProducerScope r10 = (kotlinx.coroutines.channels.ProducerScope) r10
                kotlinx.coroutines.channels.ReceiveChannel r1 = r9.i
                kotlinx.coroutines.channels.ChannelIterator r1 = r1.iterator()
                r6 = r10
            L4b:
                r9.h = r6
                r9.e = r1
                r9.f = r2
                r9.f6206g = r5
                java.lang.Object r10 = r1.hasNext(r9)
                if (r10 != r0) goto L5a
                goto L91
            L5a:
                java.lang.Boolean r10 = (java.lang.Boolean) r10
                boolean r10 = r10.booleanValue()
                if (r10 == 0) goto L94
                java.lang.Object r10 = r1.next()
                r9.h = r6
                r9.e = r1
                r9.f = r10
                r9.f6206g = r4
                kotlin.jvm.functions.Function2 r7 = r9.j
                java.lang.Object r7 = r7.invoke(r10, r9)
                if (r7 != r0) goto L77
                goto L91
            L77:
                r8 = r6
                r6 = r10
                r10 = r7
                r7 = r8
            L7b:
                java.lang.Boolean r10 = (java.lang.Boolean) r10
                boolean r10 = r10.booleanValue()
                if (r10 == 0) goto L92
                r9.h = r7
                r9.e = r1
                r9.f = r2
                r9.f6206g = r3
                java.lang.Object r10 = r7.send(r6, r9)
                if (r10 != r0) goto L92
            L91:
                return r0
            L92:
                r6 = r7
                goto L4b
            L94:
                kotlin.Unit r10 = kotlin.Unit.INSTANCE
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.j.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @PublishedApi
    @NotNull
    public static final <E> ReceiveChannel<E> filter(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull CoroutineContext coroutineContext, @NotNull Function2<? super E, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, ChannelsKt.consumes(receiveChannel), new j(receiveChannel, function2, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel filterIndexed$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function3 function3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return filterIndexed(receiveChannel, coroutineContext, function3);
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "E", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterIndexed$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 1, 2, 2}, l = {LispEscapeFormat.ESCAPE_NORMAL, LispEscapeFormat.ESCAPE_ALL, LispEscapeFormat.ESCAPE_ALL}, m = "invokeSuspend", n = {"$this$produce", "index", "$this$produce", "e", "index", "$this$produce", "index"}, s = {"L$0", "I$0", "L$0", "L$2", "I$0", "L$0", "I$0"})
    public static final class k extends SuspendLambda implements Function2 {
        public ChannelIterator e;
        public Object f;

        /* renamed from: g, reason: collision with root package name */
        public int f6208g;
        public int h;
        public /* synthetic */ Object i;
        public final /* synthetic */ ReceiveChannel j;
        public final /* synthetic */ Function3 k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(ReceiveChannel receiveChannel, Function3 function3, Continuation continuation) {
            super(2, continuation);
            this.j = receiveChannel;
            this.k = function3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            k kVar = new k(this.j, this.k, continuation);
            kVar.i = obj;
            return kVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope producerScope, Continuation continuation) {
            return ((k) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x0054, code lost:
        
            r7 = r8;
         */
        /* JADX WARN: Removed duplicated region for block: B:18:0x006d  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0097  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00a8  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00aa  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r12) {
            /*
                r11 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r11.h
                r2 = 1
                r3 = 0
                r4 = 3
                r5 = 2
                if (r1 == 0) goto L43
                if (r1 == r2) goto L37
                if (r1 == r5) goto L26
                if (r1 != r4) goto L1e
                int r1 = r11.f6208g
                kotlinx.coroutines.channels.ChannelIterator r6 = r11.e
                java.lang.Object r7 = r11.i
                kotlinx.coroutines.channels.ProducerScope r7 = (kotlinx.coroutines.channels.ProducerScope) r7
                kotlin.ResultKt.throwOnFailure(r12)
                goto L54
            L1e:
                java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r12.<init>(r0)
                throw r12
            L26:
                int r1 = r11.f6208g
                java.lang.Object r6 = r11.f
                kotlinx.coroutines.channels.ChannelIterator r7 = r11.e
                java.lang.Object r8 = r11.i
                kotlinx.coroutines.channels.ProducerScope r8 = (kotlinx.coroutines.channels.ProducerScope) r8
                kotlin.ResultKt.throwOnFailure(r12)
                r10 = r7
                r7 = r6
                r6 = r10
                goto L8f
            L37:
                int r1 = r11.f6208g
                kotlinx.coroutines.channels.ChannelIterator r6 = r11.e
                java.lang.Object r7 = r11.i
                kotlinx.coroutines.channels.ProducerScope r7 = (kotlinx.coroutines.channels.ProducerScope) r7
                kotlin.ResultKt.throwOnFailure(r12)
                goto L65
            L43:
                kotlin.ResultKt.throwOnFailure(r12)
                java.lang.Object r12 = r11.i
                kotlinx.coroutines.channels.ProducerScope r12 = (kotlinx.coroutines.channels.ProducerScope) r12
                kotlinx.coroutines.channels.ReceiveChannel r1 = r11.j
                kotlinx.coroutines.channels.ChannelIterator r1 = r1.iterator()
                r6 = 0
                r7 = r12
                r6 = r1
                r1 = 0
            L54:
                r11.i = r7
                r11.e = r6
                r11.f = r3
                r11.f6208g = r1
                r11.h = r2
                java.lang.Object r12 = r6.hasNext(r11)
                if (r12 != r0) goto L65
                goto La7
            L65:
                java.lang.Boolean r12 = (java.lang.Boolean) r12
                boolean r12 = r12.booleanValue()
                if (r12 == 0) goto Laa
                java.lang.Object r12 = r6.next()
                int r8 = r1 + 1
                java.lang.Integer r1 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r1)
                r11.i = r7
                r11.e = r6
                r11.f = r12
                r11.f6208g = r8
                r11.h = r5
                kotlin.jvm.functions.Function3 r9 = r11.k
                java.lang.Object r1 = r9.invoke(r1, r12, r11)
                if (r1 != r0) goto L8a
                goto La7
            L8a:
                r10 = r7
                r7 = r12
                r12 = r1
                r1 = r8
                r8 = r10
            L8f:
                java.lang.Boolean r12 = (java.lang.Boolean) r12
                boolean r12 = r12.booleanValue()
                if (r12 == 0) goto La8
                r11.i = r8
                r11.e = r6
                r11.f = r3
                r11.f6208g = r1
                r11.h = r4
                java.lang.Object r12 = r8.send(r7, r11)
                if (r12 != r0) goto La8
            La7:
                return r0
            La8:
                r7 = r8
                goto L54
            Laa:
                kotlin.Unit r12 = kotlin.Unit.INSTANCE
                return r12
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.k.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel filterIndexed(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function3 function3) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, ChannelsKt.consumes(receiveChannel), new k(receiveChannel, function3, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel filterNot$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return filterNot(receiveChannel, coroutineContext, function2);
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\n"}, d2 = {"<anonymous>", "", "E", "it"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterNot$1", f = "Deprecated.kt", i = {}, l = {Telnet.WONT}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: kotlinx.coroutines.channels.l$l, reason: collision with other inner class name */
    public static final class C0156l extends SuspendLambda implements Function2 {
        public int e;
        public /* synthetic */ Object f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Function2 f6210g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0156l(Function2 function2, Continuation continuation) {
            super(2, continuation);
            this.f6210g = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C0156l c0156l = new C0156l(this.f6210g, continuation);
            c0156l.f = obj;
            return c0156l;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Continuation continuation) {
            return ((C0156l) create(obj, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.e;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Object obj2 = this.f;
                this.e = 1;
                obj = this.f6210g.invoke(obj2, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Boxing.boxBoolean(!((Boolean) obj).booleanValue());
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel filterNot(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2) {
        return ChannelsKt.filter(receiveChannel, coroutineContext, new C0156l(function2, null));
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u0001H\u0002H\n"}, d2 = {"<anonymous>", "", "E", "", "it"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterNotNull$1", f = "Deprecated.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class m<E> extends SuspendLambda implements Function2<E, Continuation<? super Boolean>, Object> {
        public /* synthetic */ Object e;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            m mVar = new m(2, continuation);
            mVar.e = obj;
            return mVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Continuation<? super Boolean> continuation) {
            return invoke2((m<E>) obj, continuation);
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(E e, Continuation<? super Boolean> continuation) {
            return ((m) create(e, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(this.e != null);
        }
    }

    @PublishedApi
    @NotNull
    public static final <E> ReceiveChannel<E> filterNotNull(@NotNull ReceiveChannel<? extends E> receiveChannel) {
        ReceiveChannel<E> receiveChannelFilter$default = filter$default(receiveChannel, null, new m(2, null), 1, null);
        Intrinsics.checkNotNull(receiveChannelFilter$default, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveChannel<E of kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.filterNotNull>");
        return receiveChannelFilter$default;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0057 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0063 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:12:0x002d, B:25:0x005b, B:27:0x0063, B:29:0x0069, B:21:0x0046, B:31:0x006e), top: B:40:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006e A[Catch: all -> 0x0031, TRY_LEAVE, TryCatch #0 {all -> 0x0031, blocks: (B:12:0x002d, B:25:0x005b, B:27:0x0063, B:29:0x0069, B:21:0x0046, B:31:0x006e), top: B:40:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0058 -> B:25:0x005b). Please report as a decompilation issue!!! */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object filterNotNullTo(kotlinx.coroutines.channels.ReceiveChannel r5, java.util.Collection r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof kotlinx.coroutines.channels.l.n
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.channels.l$n r0 = (kotlinx.coroutines.channels.l.n) r0
            int r1 = r0.h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.h = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.l$n r0 = new kotlinx.coroutines.channels.l$n
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f6211g
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.h
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            kotlinx.coroutines.channels.ChannelIterator r5 = r0.f
            kotlinx.coroutines.channels.ReceiveChannel r6 = r0.e
            java.util.Collection r2 = r0.d
            java.util.Collection r2 = (java.util.Collection) r2
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L31
            goto L5b
        L31:
            r5 = move-exception
            goto L79
        L33:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3b:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.channels.ChannelIterator r7 = r5.iterator()     // Catch: java.lang.Throwable -> L75
            r4 = r6
            r6 = r5
            r5 = r7
            r7 = r4
        L46:
            r2 = r7
            java.util.Collection r2 = (java.util.Collection) r2     // Catch: java.lang.Throwable -> L31
            r0.d = r2     // Catch: java.lang.Throwable -> L31
            r0.e = r6     // Catch: java.lang.Throwable -> L31
            r0.f = r5     // Catch: java.lang.Throwable -> L31
            r0.h = r3     // Catch: java.lang.Throwable -> L31
            java.lang.Object r2 = r5.hasNext(r0)     // Catch: java.lang.Throwable -> L31
            if (r2 != r1) goto L58
            return r1
        L58:
            r4 = r2
            r2 = r7
            r7 = r4
        L5b:
            java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch: java.lang.Throwable -> L31
            boolean r7 = r7.booleanValue()     // Catch: java.lang.Throwable -> L31
            if (r7 == 0) goto L6e
            java.lang.Object r7 = r5.next()     // Catch: java.lang.Throwable -> L31
            if (r7 == 0) goto L6c
            r2.add(r7)     // Catch: java.lang.Throwable -> L31
        L6c:
            r7 = r2
            goto L46
        L6e:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L31
            r5 = 0
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r6, r5)
            return r2
        L75:
            r6 = move-exception
            r4 = r6
            r6 = r5
            r5 = r4
        L79:
            throw r5     // Catch: java.lang.Throwable -> L7a
        L7a:
            r7 = move-exception
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r6, r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.filterNotNullTo(kotlinx.coroutines.channels.ReceiveChannel, java.util.Collection, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x007b, code lost:
    
        if (r2.send(r8, r0) == r1) goto L34;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0069 A[Catch: all -> 0x0032, TryCatch #0 {all -> 0x0032, blocks: (B:13:0x002e, B:28:0x0061, B:30:0x0069, B:32:0x006f, B:36:0x0082, B:20:0x0042), top: B:45:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0082 A[Catch: all -> 0x0032, TRY_LEAVE, TryCatch #0 {all -> 0x0032, blocks: (B:13:0x002e, B:28:0x0061, B:30:0x0069, B:32:0x006f, B:36:0x0082, B:20:0x0042), top: B:45:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r7v0, types: [kotlinx.coroutines.channels.SendChannel] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v2, types: [kotlinx.coroutines.channels.ReceiveChannel] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [kotlinx.coroutines.channels.ReceiveChannel] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x006d -> B:35:0x007e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x007b -> B:35:0x007e). Please report as a decompilation issue!!! */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object filterNotNullTo(kotlinx.coroutines.channels.ReceiveChannel r6, kotlinx.coroutines.channels.SendChannel r7, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof kotlinx.coroutines.channels.l.o
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.channels.l$o r0 = (kotlinx.coroutines.channels.l.o) r0
            int r1 = r0.h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.h = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.l$o r0 = new kotlinx.coroutines.channels.l$o
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f6212g
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.h
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L46
            if (r2 == r4) goto L3c
            if (r2 != r3) goto L34
            kotlinx.coroutines.channels.ChannelIterator r6 = r0.f
            kotlinx.coroutines.channels.ReceiveChannel r7 = r0.e
            kotlinx.coroutines.channels.SendChannel r2 = r0.d
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L32
            goto L7e
        L32:
            r6 = move-exception
            goto L8d
        L34:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3c:
            kotlinx.coroutines.channels.ChannelIterator r6 = r0.f
            kotlinx.coroutines.channels.ReceiveChannel r7 = r0.e
            kotlinx.coroutines.channels.SendChannel r2 = r0.d
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L32
            goto L61
        L46:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.channels.ChannelIterator r8 = r6.iterator()     // Catch: java.lang.Throwable -> L89
        L4d:
            r0.d = r7     // Catch: java.lang.Throwable -> L89
            r0.e = r6     // Catch: java.lang.Throwable -> L89
            r0.f = r8     // Catch: java.lang.Throwable -> L89
            r0.h = r4     // Catch: java.lang.Throwable -> L89
            java.lang.Object r2 = r8.hasNext(r0)     // Catch: java.lang.Throwable -> L89
            if (r2 != r1) goto L5c
            goto L7d
        L5c:
            r5 = r7
            r7 = r6
            r6 = r8
            r8 = r2
            r2 = r5
        L61:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L32
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L32
            if (r8 == 0) goto L82
            java.lang.Object r8 = r6.next()     // Catch: java.lang.Throwable -> L32
            if (r8 == 0) goto L7e
            r0.d = r2     // Catch: java.lang.Throwable -> L32
            r0.e = r7     // Catch: java.lang.Throwable -> L32
            r0.f = r6     // Catch: java.lang.Throwable -> L32
            r0.h = r3     // Catch: java.lang.Throwable -> L32
            java.lang.Object r8 = r2.send(r8, r0)     // Catch: java.lang.Throwable -> L32
            if (r8 != r1) goto L7e
        L7d:
            return r1
        L7e:
            r8 = r6
            r6 = r7
            r7 = r2
            goto L4d
        L82:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L32
            r6 = 0
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r7, r6)
            return r2
        L89:
            r7 = move-exception
            r5 = r7
            r7 = r6
            r6 = r5
        L8d:
            throw r6     // Catch: java.lang.Throwable -> L8e
        L8e:
            r8 = move-exception
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r7, r6)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.filterNotNullTo(kotlinx.coroutines.channels.ReceiveChannel, kotlinx.coroutines.channels.SendChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "E", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$take$1", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {284, 285}, m = "invokeSuspend", n = {"$this$produce", "remaining", "$this$produce", "remaining"}, s = {"L$0", "I$0", "L$0", "I$0"})
    @SourceDebugExtension({"SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,509:1\n1#2:510\n*E\n"})
    public static final class e0 extends SuspendLambda implements Function2 {
        public ChannelIterator e;
        public int f;

        /* renamed from: g, reason: collision with root package name */
        public int f6197g;
        public /* synthetic */ Object h;
        public final /* synthetic */ int i;
        public final /* synthetic */ ReceiveChannel j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e0(ReceiveChannel receiveChannel, int i, Continuation continuation) {
            super(2, continuation);
            this.i = i;
            this.j = receiveChannel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            e0 e0Var = new e0(this.j, this.i, continuation);
            e0Var.h = obj;
            return e0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope producerScope, Continuation continuation) {
            return ((e0) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x006f, code lost:
        
            if (r5.send(r8, r7) == r0) goto L25;
         */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0054  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0079  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x006f -> B:7:0x0019). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r7.f6197g
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L2f
                if (r1 == r3) goto L23
                if (r1 != r2) goto L1b
                int r1 = r7.f
                kotlinx.coroutines.channels.ChannelIterator r4 = r7.e
                java.lang.Object r5 = r7.h
                kotlinx.coroutines.channels.ProducerScope r5 = (kotlinx.coroutines.channels.ProducerScope) r5
                kotlin.ResultKt.throwOnFailure(r8)
            L19:
                r8 = r5
                goto L72
            L1b:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L23:
                int r1 = r7.f
                kotlinx.coroutines.channels.ChannelIterator r4 = r7.e
                java.lang.Object r5 = r7.h
                kotlinx.coroutines.channels.ProducerScope r5 = (kotlinx.coroutines.channels.ProducerScope) r5
                kotlin.ResultKt.throwOnFailure(r8)
                goto L57
            L2f:
                kotlin.ResultKt.throwOnFailure(r8)
                java.lang.Object r8 = r7.h
                kotlinx.coroutines.channels.ProducerScope r8 = (kotlinx.coroutines.channels.ProducerScope) r8
                int r1 = r7.i
                if (r1 != 0) goto L3d
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            L3d:
                if (r1 < 0) goto L7c
                kotlinx.coroutines.channels.ReceiveChannel r4 = r7.j
                kotlinx.coroutines.channels.ChannelIterator r4 = r4.iterator()
            L45:
                r7.h = r8
                r7.e = r4
                r7.f = r1
                r7.f6197g = r3
                java.lang.Object r5 = r4.hasNext(r7)
                if (r5 != r0) goto L54
                goto L71
            L54:
                r6 = r5
                r5 = r8
                r8 = r6
            L57:
                java.lang.Boolean r8 = (java.lang.Boolean) r8
                boolean r8 = r8.booleanValue()
                if (r8 == 0) goto L79
                java.lang.Object r8 = r4.next()
                r7.h = r5
                r7.e = r4
                r7.f = r1
                r7.f6197g = r2
                java.lang.Object r8 = r5.send(r8, r7)
                if (r8 != r0) goto L19
            L71:
                return r0
            L72:
                int r1 = r1 + (-1)
                if (r1 != 0) goto L45
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            L79:
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            L7c:
                java.lang.String r8 = "Requested element count "
                java.lang.String r0 = " is less than zero."
                java.lang.String r8 = _COROUTINE.a.e(r1, r8, r0)
                java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
                java.lang.String r8 = r8.toString()
                r0.<init>(r8)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.e0.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static /* synthetic */ ReceiveChannel take$default(ReceiveChannel receiveChannel, int i2, CoroutineContext coroutineContext, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return take(receiveChannel, i2, coroutineContext);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel take(ReceiveChannel receiveChannel, int i2, CoroutineContext coroutineContext) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, ChannelsKt.consumes(receiveChannel), new e0(receiveChannel, i2, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel takeWhile$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return takeWhile(receiveChannel, coroutineContext, function2);
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "E", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$takeWhile$1", f = "Deprecated.kt", i = {0, 1, 1, 2}, l = {299, KeyboardChangeListener.MIN_KEYBOARD_HEIGHT, ErrorMessages.ERROR_TWITTER_UNSUPPORTED_LOGIN_FUNCTION}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "e", "$this$produce"}, s = {"L$0", "L$0", "L$2", "L$0"})
    public static final class f0 extends SuspendLambda implements Function2 {
        public ChannelIterator e;
        public Object f;

        /* renamed from: g, reason: collision with root package name */
        public int f6199g;
        public /* synthetic */ Object h;
        public final /* synthetic */ ReceiveChannel i;
        public final /* synthetic */ Function2 j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f0(ReceiveChannel receiveChannel, Function2 function2, Continuation continuation) {
            super(2, continuation);
            this.i = receiveChannel;
            this.j = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            f0 f0Var = new f0(this.i, this.j, continuation);
            f0Var.h = obj;
            return f0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope producerScope, Continuation continuation) {
            return ((f0) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x007e  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0081  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0094  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0091 -> B:13:0x0047). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                r8 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r8.f6199g
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L39
                if (r1 == r4) goto L2f
                if (r1 == r3) goto L23
                if (r1 != r2) goto L1b
                kotlinx.coroutines.channels.ChannelIterator r1 = r8.e
                java.lang.Object r5 = r8.h
                kotlinx.coroutines.channels.ProducerScope r5 = (kotlinx.coroutines.channels.ProducerScope) r5
                kotlin.ResultKt.throwOnFailure(r9)
                goto L47
            L1b:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r9.<init>(r0)
                throw r9
            L23:
                java.lang.Object r1 = r8.f
                kotlinx.coroutines.channels.ChannelIterator r5 = r8.e
                java.lang.Object r6 = r8.h
                kotlinx.coroutines.channels.ProducerScope r6 = (kotlinx.coroutines.channels.ProducerScope) r6
                kotlin.ResultKt.throwOnFailure(r9)
                goto L76
            L2f:
                kotlinx.coroutines.channels.ChannelIterator r1 = r8.e
                java.lang.Object r5 = r8.h
                kotlinx.coroutines.channels.ProducerScope r5 = (kotlinx.coroutines.channels.ProducerScope) r5
                kotlin.ResultKt.throwOnFailure(r9)
                goto L54
            L39:
                kotlin.ResultKt.throwOnFailure(r9)
                java.lang.Object r9 = r8.h
                kotlinx.coroutines.channels.ProducerScope r9 = (kotlinx.coroutines.channels.ProducerScope) r9
                kotlinx.coroutines.channels.ReceiveChannel r1 = r8.i
                kotlinx.coroutines.channels.ChannelIterator r1 = r1.iterator()
                r5 = r9
            L47:
                r8.h = r5
                r8.e = r1
                r8.f6199g = r4
                java.lang.Object r9 = r1.hasNext(r8)
                if (r9 != r0) goto L54
                goto L90
            L54:
                java.lang.Boolean r9 = (java.lang.Boolean) r9
                boolean r9 = r9.booleanValue()
                if (r9 == 0) goto L94
                java.lang.Object r9 = r1.next()
                r8.h = r5
                r8.e = r1
                r8.f = r9
                r8.f6199g = r3
                kotlin.jvm.functions.Function2 r6 = r8.j
                java.lang.Object r6 = r6.invoke(r9, r8)
                if (r6 != r0) goto L71
                goto L90
            L71:
                r7 = r1
                r1 = r9
                r9 = r6
                r6 = r5
                r5 = r7
            L76:
                java.lang.Boolean r9 = (java.lang.Boolean) r9
                boolean r9 = r9.booleanValue()
                if (r9 != 0) goto L81
                kotlin.Unit r9 = kotlin.Unit.INSTANCE
                return r9
            L81:
                r8.h = r6
                r8.e = r5
                r9 = 0
                r8.f = r9
                r8.f6199g = r2
                java.lang.Object r9 = r6.send(r1, r8)
                if (r9 != r0) goto L91
            L90:
                return r0
            L91:
                r1 = r5
                r5 = r6
                goto L47
            L94:
                kotlin.Unit r9 = kotlin.Unit.INSTANCE
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.f0.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel takeWhile(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, ChannelsKt.consumes(receiveChannel), new f0(receiveChannel, function2, null), 6, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x007c, code lost:
    
        if (r2.send(r8, r0) == r1) goto L32;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006c A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:13:0x002e, B:28:0x0064, B:30:0x006c, B:33:0x007f, B:20:0x0045), top: B:42:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007f A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #0 {all -> 0x0035, blocks: (B:13:0x002e, B:28:0x0064, B:30:0x006c, B:33:0x007f, B:20:0x0045), top: B:42:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r7v0, types: [C extends kotlinx.coroutines.channels.SendChannel<? super E>] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [kotlinx.coroutines.channels.ReceiveChannel] */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v24 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [kotlinx.coroutines.channels.ReceiveChannel] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x007c -> B:14:0x0031). Please report as a decompilation issue!!! */
    @kotlin.PublishedApi
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <E, C extends kotlinx.coroutines.channels.SendChannel<? super E>> java.lang.Object toChannel(@org.jetbrains.annotations.NotNull kotlinx.coroutines.channels.ReceiveChannel<? extends E> r6, @org.jetbrains.annotations.NotNull C r7, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super C> r8) {
        /*
            boolean r0 = r8 instanceof kotlinx.coroutines.channels.l.g0
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.channels.l$g0 r0 = (kotlinx.coroutines.channels.l.g0) r0
            int r1 = r0.h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.h = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.l$g0 r0 = new kotlinx.coroutines.channels.l$g0
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f6201g
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.h
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L49
            if (r2 == r4) goto L3f
            if (r2 != r3) goto L37
            kotlinx.coroutines.channels.ChannelIterator r6 = r0.f
            kotlinx.coroutines.channels.ReceiveChannel r7 = r0.e
            kotlinx.coroutines.channels.SendChannel r2 = r0.d
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L35
        L31:
            r8 = r6
            r6 = r7
            r7 = r2
            goto L50
        L35:
            r6 = move-exception
            goto L8a
        L37:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3f:
            kotlinx.coroutines.channels.ChannelIterator r6 = r0.f
            kotlinx.coroutines.channels.ReceiveChannel r7 = r0.e
            kotlinx.coroutines.channels.SendChannel r2 = r0.d
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L35
            goto L64
        L49:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.channels.ChannelIterator r8 = r6.iterator()     // Catch: java.lang.Throwable -> L86
        L50:
            r0.d = r7     // Catch: java.lang.Throwable -> L86
            r0.e = r6     // Catch: java.lang.Throwable -> L86
            r0.f = r8     // Catch: java.lang.Throwable -> L86
            r0.h = r4     // Catch: java.lang.Throwable -> L86
            java.lang.Object r2 = r8.hasNext(r0)     // Catch: java.lang.Throwable -> L86
            if (r2 != r1) goto L5f
            goto L7e
        L5f:
            r5 = r7
            r7 = r6
            r6 = r8
            r8 = r2
            r2 = r5
        L64:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L35
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L35
            if (r8 == 0) goto L7f
            java.lang.Object r8 = r6.next()     // Catch: java.lang.Throwable -> L35
            r0.d = r2     // Catch: java.lang.Throwable -> L35
            r0.e = r7     // Catch: java.lang.Throwable -> L35
            r0.f = r6     // Catch: java.lang.Throwable -> L35
            r0.h = r3     // Catch: java.lang.Throwable -> L35
            java.lang.Object r8 = r2.send(r8, r0)     // Catch: java.lang.Throwable -> L35
            if (r8 != r1) goto L31
        L7e:
            return r1
        L7f:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L35
            r6 = 0
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r7, r6)
            return r2
        L86:
            r7 = move-exception
            r5 = r7
            r7 = r6
            r6 = r5
        L8a:
            throw r6     // Catch: java.lang.Throwable -> L8b
        L8b:
            r8 = move-exception
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r7, r6)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.toChannel(kotlinx.coroutines.channels.ReceiveChannel, kotlinx.coroutines.channels.SendChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0057 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0063 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:12:0x002d, B:25:0x005b, B:27:0x0063, B:21:0x0046, B:28:0x006c), top: B:37:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006c A[Catch: all -> 0x0031, TRY_LEAVE, TryCatch #0 {all -> 0x0031, blocks: (B:12:0x002d, B:25:0x005b, B:27:0x0063, B:21:0x0046, B:28:0x006c), top: B:37:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0058 -> B:25:0x005b). Please report as a decompilation issue!!! */
    @kotlin.PublishedApi
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <E, C extends java.util.Collection<? super E>> java.lang.Object toCollection(@org.jetbrains.annotations.NotNull kotlinx.coroutines.channels.ReceiveChannel<? extends E> r5, @org.jetbrains.annotations.NotNull C r6, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super C> r7) {
        /*
            boolean r0 = r7 instanceof kotlinx.coroutines.channels.l.h0
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.channels.l$h0 r0 = (kotlinx.coroutines.channels.l.h0) r0
            int r1 = r0.h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.h = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.l$h0 r0 = new kotlinx.coroutines.channels.l$h0
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f6203g
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.h
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            kotlinx.coroutines.channels.ChannelIterator r5 = r0.f
            kotlinx.coroutines.channels.ReceiveChannel r6 = r0.e
            java.util.Collection r2 = r0.d
            java.util.Collection r2 = (java.util.Collection) r2
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L31
            goto L5b
        L31:
            r5 = move-exception
            goto L77
        L33:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3b:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.channels.ChannelIterator r7 = r5.iterator()     // Catch: java.lang.Throwable -> L73
            r4 = r6
            r6 = r5
            r5 = r7
            r7 = r4
        L46:
            r2 = r7
            java.util.Collection r2 = (java.util.Collection) r2     // Catch: java.lang.Throwable -> L31
            r0.d = r2     // Catch: java.lang.Throwable -> L31
            r0.e = r6     // Catch: java.lang.Throwable -> L31
            r0.f = r5     // Catch: java.lang.Throwable -> L31
            r0.h = r3     // Catch: java.lang.Throwable -> L31
            java.lang.Object r2 = r5.hasNext(r0)     // Catch: java.lang.Throwable -> L31
            if (r2 != r1) goto L58
            return r1
        L58:
            r4 = r2
            r2 = r7
            r7 = r4
        L5b:
            java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch: java.lang.Throwable -> L31
            boolean r7 = r7.booleanValue()     // Catch: java.lang.Throwable -> L31
            if (r7 == 0) goto L6c
            java.lang.Object r7 = r5.next()     // Catch: java.lang.Throwable -> L31
            r2.add(r7)     // Catch: java.lang.Throwable -> L31
            r7 = r2
            goto L46
        L6c:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L31
            r5 = 0
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r6, r5)
            return r2
        L73:
            r6 = move-exception
            r4 = r6
            r6 = r5
            r5 = r4
        L77:
            throw r5     // Catch: java.lang.Throwable -> L78
        L78:
            r7 = move-exception
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r6, r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.toCollection(kotlinx.coroutines.channels.ReceiveChannel, java.util.Collection, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0052 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005e A[Catch: all -> 0x002f, TryCatch #2 {all -> 0x002f, blocks: (B:12:0x002b, B:25:0x0056, B:27:0x005e, B:21:0x0044, B:28:0x0071), top: B:41:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0071 A[Catch: all -> 0x002f, TRY_LEAVE, TryCatch #2 {all -> 0x002f, blocks: (B:12:0x002b, B:25:0x0056, B:27:0x005e, B:21:0x0044, B:28:0x0071), top: B:41:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0053 -> B:25:0x0056). Please report as a decompilation issue!!! */
    @kotlin.PublishedApi
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <K, V, M extends java.util.Map<? super K, ? super V>> java.lang.Object toMap(@org.jetbrains.annotations.NotNull kotlinx.coroutines.channels.ReceiveChannel<? extends kotlin.Pair<? extends K, ? extends V>> r6, @org.jetbrains.annotations.NotNull M r7, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super M> r8) {
        /*
            boolean r0 = r8 instanceof kotlinx.coroutines.channels.l.i0
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.channels.l$i0 r0 = (kotlinx.coroutines.channels.l.i0) r0
            int r1 = r0.h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.h = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.l$i0 r0 = new kotlinx.coroutines.channels.l$i0
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f6205g
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.h
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            kotlinx.coroutines.channels.ChannelIterator r6 = r0.f
            kotlinx.coroutines.channels.ReceiveChannel r7 = r0.e
            java.util.Map r2 = r0.d
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L2f
            goto L56
        L2f:
            r6 = move-exception
            goto L7c
        L31:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L39:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.channels.ChannelIterator r8 = r6.iterator()     // Catch: java.lang.Throwable -> L78
            r5 = r7
            r7 = r6
            r6 = r8
            r8 = r5
        L44:
            r0.d = r8     // Catch: java.lang.Throwable -> L2f
            r0.e = r7     // Catch: java.lang.Throwable -> L2f
            r0.f = r6     // Catch: java.lang.Throwable -> L2f
            r0.h = r3     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r2 = r6.hasNext(r0)     // Catch: java.lang.Throwable -> L2f
            if (r2 != r1) goto L53
            return r1
        L53:
            r5 = r2
            r2 = r8
            r8 = r5
        L56:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L2f
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L2f
            if (r8 == 0) goto L71
            java.lang.Object r8 = r6.next()     // Catch: java.lang.Throwable -> L2f
            kotlin.Pair r8 = (kotlin.Pair) r8     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r4 = r8.getFirst()     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r8 = r8.getSecond()     // Catch: java.lang.Throwable -> L2f
            r2.put(r4, r8)     // Catch: java.lang.Throwable -> L2f
            r8 = r2
            goto L44
        L71:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L2f
            r6 = 0
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r7, r6)
            return r2
        L78:
            r7 = move-exception
            r5 = r7
            r7 = r6
            r6 = r5
        L7c:
            throw r6     // Catch: java.lang.Throwable -> L7d
        L7d:
            r8 = move-exception
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r7, r6)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.toMap(kotlinx.coroutines.channels.ReceiveChannel, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ ReceiveChannel flatMap$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return flatMap(receiveChannel, coroutineContext, function2);
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "R", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$flatMap$1", f = "Deprecated.kt", i = {0, 1, 2}, l = {351, 352, 352}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "$this$produce"}, s = {"L$0", "L$0", "L$0"})
    public static final class r extends SuspendLambda implements Function2 {
        public ChannelIterator e;
        public int f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f6215g;
        public final /* synthetic */ ReceiveChannel h;
        public final /* synthetic */ Function2 i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public r(ReceiveChannel receiveChannel, Function2 function2, Continuation continuation) {
            super(2, continuation);
            this.h = receiveChannel;
            this.i = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            r rVar = new r(this.h, this.i, continuation);
            rVar.f6215g = obj;
            return rVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope producerScope, Continuation continuation) {
            return ((r) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x005a  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x007c  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0079 -> B:13:0x0045). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r7.f
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L37
                if (r1 == r4) goto L2d
                if (r1 == r3) goto L23
                if (r1 != r2) goto L1b
                kotlinx.coroutines.channels.ChannelIterator r1 = r7.e
                java.lang.Object r5 = r7.f6215g
                kotlinx.coroutines.channels.ProducerScope r5 = (kotlinx.coroutines.channels.ProducerScope) r5
                kotlin.ResultKt.throwOnFailure(r8)
                goto L45
            L1b:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L23:
                kotlinx.coroutines.channels.ChannelIterator r1 = r7.e
                java.lang.Object r5 = r7.f6215g
                kotlinx.coroutines.channels.ProducerScope r5 = (kotlinx.coroutines.channels.ProducerScope) r5
                kotlin.ResultKt.throwOnFailure(r8)
                goto L6d
            L2d:
                kotlinx.coroutines.channels.ChannelIterator r1 = r7.e
                java.lang.Object r5 = r7.f6215g
                kotlinx.coroutines.channels.ProducerScope r5 = (kotlinx.coroutines.channels.ProducerScope) r5
                kotlin.ResultKt.throwOnFailure(r8)
                goto L52
            L37:
                kotlin.ResultKt.throwOnFailure(r8)
                java.lang.Object r8 = r7.f6215g
                kotlinx.coroutines.channels.ProducerScope r8 = (kotlinx.coroutines.channels.ProducerScope) r8
                kotlinx.coroutines.channels.ReceiveChannel r1 = r7.h
                kotlinx.coroutines.channels.ChannelIterator r1 = r1.iterator()
                r5 = r8
            L45:
                r7.f6215g = r5
                r7.e = r1
                r7.f = r4
                java.lang.Object r8 = r1.hasNext(r7)
                if (r8 != r0) goto L52
                goto L7b
            L52:
                java.lang.Boolean r8 = (java.lang.Boolean) r8
                boolean r8 = r8.booleanValue()
                if (r8 == 0) goto L7c
                java.lang.Object r8 = r1.next()
                r7.f6215g = r5
                r7.e = r1
                r7.f = r3
                kotlin.jvm.functions.Function2 r6 = r7.i
                java.lang.Object r8 = r6.invoke(r8, r7)
                if (r8 != r0) goto L6d
                goto L7b
            L6d:
                kotlinx.coroutines.channels.ReceiveChannel r8 = (kotlinx.coroutines.channels.ReceiveChannel) r8
                r7.f6215g = r5
                r7.e = r1
                r7.f = r2
                java.lang.Object r8 = kotlinx.coroutines.channels.ChannelsKt.toChannel(r8, r5, r7)
                if (r8 != r0) goto L45
            L7b:
                return r0
            L7c:
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.r.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel flatMap(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, ChannelsKt.consumes(receiveChannel), new r(receiveChannel, function2, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel map$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.map(receiveChannel, coroutineContext, function2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "R", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$map$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 2, 2}, l = {ErrorMessages.ERROR_BLUETOOTH_COULD_NOT_FIT_ELEMENT_IN_BYTE, 363, 363}, m = "invokeSuspend", n = {"$this$produce", "$this$consume$iv$iv", "$this$produce", "$this$consume$iv$iv", "$this$produce", "$this$consume$iv$iv"}, s = {"L$0", "L$2", "L$0", "L$2", "L$0", "L$2"})
    @SourceDebugExtension({"SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,509:1\n160#2:510\n94#2,3:511\n161#2,2:514\n101#2:516\n97#2,3:517\n*S KotlinDebug\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1\n*L\n362#1:510\n362#1:511,3\n362#1:514,2\n362#1:516\n362#1:517,3\n*E\n"})
    public static final class w<R> extends SuspendLambda implements Function2<ProducerScope<? super R>, Continuation<? super Unit>, Object> {
        public Function2 e;
        public ReceiveChannel f;

        /* renamed from: g, reason: collision with root package name */
        public ChannelIterator f6220g;
        public ProducerScope h;
        public int i;
        public /* synthetic */ Object j;
        public final /* synthetic */ ReceiveChannel k;
        public final /* synthetic */ Function2 l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public w(ReceiveChannel receiveChannel, Function2 function2, Continuation continuation) {
            super(2, continuation);
            this.k = receiveChannel;
            this.l = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            w wVar = new w(this.k, this.l, continuation);
            wVar.j = obj;
            return wVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super R> producerScope, Continuation<? super Unit> continuation) {
            return ((w) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x0079 A[Catch: all -> 0x0021, TRY_LEAVE, TryCatch #0 {all -> 0x0021, blocks: (B:8:0x001c, B:25:0x005d, B:29:0x0071, B:31:0x0079, B:39:0x00ad, B:20:0x004a, B:23:0x0057), top: B:46:0x000a }] */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00a8  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00ad A[Catch: all -> 0x0021, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0021, blocks: (B:8:0x001c, B:25:0x005d, B:29:0x0071, B:31:0x0079, B:39:0x00ad, B:20:0x004a, B:23:0x0057), top: B:46:0x000a }] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00a8 -> B:25:0x005d). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r12) {
            /*
                r11 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r11.i
                r2 = 3
                r3 = 2
                r4 = 1
                r5 = 0
                if (r1 == 0) goto L4e
                if (r1 == r4) goto L40
                if (r1 == r3) goto L2c
                if (r1 != r2) goto L24
                kotlinx.coroutines.channels.ChannelIterator r1 = r11.f6220g
                kotlinx.coroutines.channels.ReceiveChannel r6 = r11.f
                kotlin.jvm.functions.Function2 r7 = r11.e
                java.lang.Object r8 = r11.j
                kotlinx.coroutines.channels.ProducerScope r8 = (kotlinx.coroutines.channels.ProducerScope) r8
                kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Throwable -> L21
                r12 = r8
                goto L5d
            L21:
                r12 = move-exception
                goto Lb5
            L24:
                java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r12.<init>(r0)
                throw r12
            L2c:
                kotlinx.coroutines.channels.ProducerScope r1 = r11.h
                kotlinx.coroutines.channels.ChannelIterator r6 = r11.f6220g
                kotlinx.coroutines.channels.ReceiveChannel r7 = r11.f
                kotlin.jvm.functions.Function2 r8 = r11.e
                java.lang.Object r9 = r11.j
                kotlinx.coroutines.channels.ProducerScope r9 = (kotlinx.coroutines.channels.ProducerScope) r9
                kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Throwable -> L3c
                goto L95
            L3c:
                r12 = move-exception
                r6 = r7
                goto Lb5
            L40:
                kotlinx.coroutines.channels.ChannelIterator r1 = r11.f6220g
                kotlinx.coroutines.channels.ReceiveChannel r6 = r11.f
                kotlin.jvm.functions.Function2 r7 = r11.e
                java.lang.Object r8 = r11.j
                kotlinx.coroutines.channels.ProducerScope r8 = (kotlinx.coroutines.channels.ProducerScope) r8
                kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Throwable -> L21
                goto L71
            L4e:
                kotlin.ResultKt.throwOnFailure(r12)
                java.lang.Object r12 = r11.j
                kotlinx.coroutines.channels.ProducerScope r12 = (kotlinx.coroutines.channels.ProducerScope) r12
                kotlinx.coroutines.channels.ReceiveChannel r6 = r11.k
                kotlinx.coroutines.channels.ChannelIterator r1 = r6.iterator()     // Catch: java.lang.Throwable -> L21
                kotlin.jvm.functions.Function2 r7 = r11.l
            L5d:
                r11.j = r12     // Catch: java.lang.Throwable -> L21
                r11.e = r7     // Catch: java.lang.Throwable -> L21
                r11.f = r6     // Catch: java.lang.Throwable -> L21
                r11.f6220g = r1     // Catch: java.lang.Throwable -> L21
                r11.i = r4     // Catch: java.lang.Throwable -> L21
                java.lang.Object r8 = r1.hasNext(r11)     // Catch: java.lang.Throwable -> L21
                if (r8 != r0) goto L6e
                goto La7
            L6e:
                r10 = r8
                r8 = r12
                r12 = r10
            L71:
                java.lang.Boolean r12 = (java.lang.Boolean) r12     // Catch: java.lang.Throwable -> L21
                boolean r12 = r12.booleanValue()     // Catch: java.lang.Throwable -> L21
                if (r12 == 0) goto Lad
                java.lang.Object r12 = r1.next()     // Catch: java.lang.Throwable -> L21
                r11.j = r8     // Catch: java.lang.Throwable -> L21
                r11.e = r7     // Catch: java.lang.Throwable -> L21
                r11.f = r6     // Catch: java.lang.Throwable -> L21
                r11.f6220g = r1     // Catch: java.lang.Throwable -> L21
                r11.h = r8     // Catch: java.lang.Throwable -> L21
                r11.i = r3     // Catch: java.lang.Throwable -> L21
                java.lang.Object r12 = r7.invoke(r12, r11)     // Catch: java.lang.Throwable -> L21
                if (r12 != r0) goto L90
                goto La7
            L90:
                r9 = r8
                r8 = r7
                r7 = r6
                r6 = r1
                r1 = r9
            L95:
                r11.j = r9     // Catch: java.lang.Throwable -> L3c
                r11.e = r8     // Catch: java.lang.Throwable -> L3c
                r11.f = r7     // Catch: java.lang.Throwable -> L3c
                r11.f6220g = r6     // Catch: java.lang.Throwable -> L3c
                r11.h = r5     // Catch: java.lang.Throwable -> L3c
                r11.i = r2     // Catch: java.lang.Throwable -> L3c
                java.lang.Object r12 = r1.send(r12, r11)     // Catch: java.lang.Throwable -> L3c
                if (r12 != r0) goto La8
            La7:
                return r0
            La8:
                r1 = r6
                r6 = r7
                r7 = r8
                r12 = r9
                goto L5d
            Lad:
                kotlin.Unit r12 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L21
                kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r6, r5)
                kotlin.Unit r12 = kotlin.Unit.INSTANCE
                return r12
            Lb5:
                throw r12     // Catch: java.lang.Throwable -> Lb6
            Lb6:
                r0 = move-exception
                kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r6, r12)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.w.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @PublishedApi
    @NotNull
    public static final <E, R> ReceiveChannel<R> map(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull CoroutineContext coroutineContext, @NotNull Function2<? super E, ? super Continuation<? super R>, ? extends Object> function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, ChannelsKt.consumes(receiveChannel), new w(receiveChannel, function2, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel mapIndexed$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function3 function3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.mapIndexed(receiveChannel, coroutineContext, function3);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "R", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$mapIndexed$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 2, 2}, l = {374, 375, 375}, m = "invokeSuspend", n = {"$this$produce", "index", "$this$produce", "index", "$this$produce", "index"}, s = {"L$0", "I$0", "L$0", "I$0", "L$0", "I$0"})
    public static final class x<R> extends SuspendLambda implements Function2<ProducerScope<? super R>, Continuation<? super Unit>, Object> {
        public ChannelIterator e;
        public ProducerScope f;

        /* renamed from: g, reason: collision with root package name */
        public int f6221g;
        public int h;
        public /* synthetic */ Object i;
        public final /* synthetic */ ReceiveChannel j;
        public final /* synthetic */ Function3 k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public x(ReceiveChannel receiveChannel, Function3 function3, Continuation continuation) {
            super(2, continuation);
            this.j = receiveChannel;
            this.k = function3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            x xVar = new x(this.j, this.k, continuation);
            xVar.i = obj;
            return xVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super R> producerScope, Continuation<? super Unit> continuation) {
            return ((x) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x006a  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x009d  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00a0  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x009d -> B:13:0x0050). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r10.h
                r2 = 1
                r3 = 3
                r4 = 2
                if (r1 == 0) goto L40
                if (r1 == r2) goto L34
                if (r1 == r4) goto L26
                if (r1 != r3) goto L1e
                int r1 = r10.f6221g
                kotlinx.coroutines.channels.ChannelIterator r5 = r10.e
                java.lang.Object r6 = r10.i
                kotlinx.coroutines.channels.ProducerScope r6 = (kotlinx.coroutines.channels.ProducerScope) r6
                kotlin.ResultKt.throwOnFailure(r11)
                r11 = r6
                goto L50
            L1e:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r0)
                throw r11
            L26:
                int r1 = r10.f6221g
                kotlinx.coroutines.channels.ProducerScope r5 = r10.f
                kotlinx.coroutines.channels.ChannelIterator r6 = r10.e
                java.lang.Object r7 = r10.i
                kotlinx.coroutines.channels.ProducerScope r7 = (kotlinx.coroutines.channels.ProducerScope) r7
                kotlin.ResultKt.throwOnFailure(r11)
                goto L8b
            L34:
                int r1 = r10.f6221g
                kotlinx.coroutines.channels.ChannelIterator r5 = r10.e
                java.lang.Object r6 = r10.i
                kotlinx.coroutines.channels.ProducerScope r6 = (kotlinx.coroutines.channels.ProducerScope) r6
                kotlin.ResultKt.throwOnFailure(r11)
                goto L62
            L40:
                kotlin.ResultKt.throwOnFailure(r11)
                java.lang.Object r11 = r10.i
                kotlinx.coroutines.channels.ProducerScope r11 = (kotlinx.coroutines.channels.ProducerScope) r11
                kotlinx.coroutines.channels.ReceiveChannel r1 = r10.j
                kotlinx.coroutines.channels.ChannelIterator r1 = r1.iterator()
                r5 = 0
                r5 = r1
                r1 = 0
            L50:
                r10.i = r11
                r10.e = r5
                r10.f6221g = r1
                r10.h = r2
                java.lang.Object r6 = r5.hasNext(r10)
                if (r6 != r0) goto L5f
                goto L9c
            L5f:
                r9 = r6
                r6 = r11
                r11 = r9
            L62:
                java.lang.Boolean r11 = (java.lang.Boolean) r11
                boolean r11 = r11.booleanValue()
                if (r11 == 0) goto La0
                java.lang.Object r11 = r5.next()
                int r7 = r1 + 1
                java.lang.Integer r1 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r1)
                r10.i = r6
                r10.e = r5
                r10.f = r6
                r10.f6221g = r7
                r10.h = r4
                kotlin.jvm.functions.Function3 r8 = r10.k
                java.lang.Object r11 = r8.invoke(r1, r11, r10)
                if (r11 != r0) goto L87
                goto L9c
            L87:
                r1 = r7
                r7 = r6
                r6 = r5
                r5 = r7
            L8b:
                r10.i = r7
                r10.e = r6
                r8 = 0
                r10.f = r8
                r10.f6221g = r1
                r10.h = r3
                java.lang.Object r11 = r5.send(r11, r10)
                if (r11 != r0) goto L9d
            L9c:
                return r0
            L9d:
                r5 = r6
                r11 = r7
                goto L50
            La0:
                kotlin.Unit r11 = kotlin.Unit.INSTANCE
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.x.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @PublishedApi
    @NotNull
    public static final <E, R> ReceiveChannel<R> mapIndexed(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull CoroutineContext coroutineContext, @NotNull Function3<? super Integer, ? super E, ? super Continuation<? super R>, ? extends Object> function3) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, ChannelsKt.consumes(receiveChannel), new x(receiveChannel, function3, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel mapIndexedNotNull$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function3 function3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return mapIndexedNotNull(receiveChannel, coroutineContext, function3);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel mapIndexedNotNull(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function3 function3) {
        return ChannelsKt.filterNotNull(ChannelsKt.mapIndexed(receiveChannel, coroutineContext, function3));
    }

    public static /* synthetic */ ReceiveChannel mapNotNull$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return mapNotNull(receiveChannel, coroutineContext, function2);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel mapNotNull(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2) {
        return ChannelsKt.filterNotNull(ChannelsKt.map(receiveChannel, coroutineContext, function2));
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\n"}, d2 = {"<anonymous>", "", "E", "Lkotlinx/coroutines/channels/ProducerScope;", "Lkotlin/collections/IndexedValue;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$withIndex$1", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {400, ErrorMessages.ERROR_NXT_BLUETOOTH_NOT_SET}, m = "invokeSuspend", n = {"$this$produce", "index", "$this$produce", "index"}, s = {"L$0", "I$0", "L$0", "I$0"})
    public static final class j0 extends SuspendLambda implements Function2 {
        public ChannelIterator e;
        public int f;

        /* renamed from: g, reason: collision with root package name */
        public int f6207g;
        public /* synthetic */ Object h;
        public final /* synthetic */ ReceiveChannel i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j0(ReceiveChannel receiveChannel, Continuation continuation) {
            super(2, continuation);
            this.i = receiveChannel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            j0 j0Var = new j0(this.i, continuation);
            j0Var.h = obj;
            return j0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope producerScope, Continuation continuation) {
            return ((j0) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x004f  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x005d  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x007a  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0077 -> B:7:0x001c). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r10) {
            /*
                r9 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r9.f6207g
                r2 = 1
                r3 = 2
                if (r1 == 0) goto L32
                if (r1 == r2) goto L26
                if (r1 != r3) goto L1e
                int r1 = r9.f
                kotlinx.coroutines.channels.ChannelIterator r4 = r9.e
                java.lang.Object r5 = r9.h
                kotlinx.coroutines.channels.ProducerScope r5 = (kotlinx.coroutines.channels.ProducerScope) r5
                kotlin.ResultKt.throwOnFailure(r10)
                r10 = r4
                r4 = r1
                r1 = r10
            L1c:
                r10 = r5
                goto L40
            L1e:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r0)
                throw r10
            L26:
                int r1 = r9.f
                kotlinx.coroutines.channels.ChannelIterator r4 = r9.e
                java.lang.Object r5 = r9.h
                kotlinx.coroutines.channels.ProducerScope r5 = (kotlinx.coroutines.channels.ProducerScope) r5
                kotlin.ResultKt.throwOnFailure(r10)
                goto L55
            L32:
                kotlin.ResultKt.throwOnFailure(r10)
                java.lang.Object r10 = r9.h
                kotlinx.coroutines.channels.ProducerScope r10 = (kotlinx.coroutines.channels.ProducerScope) r10
                kotlinx.coroutines.channels.ReceiveChannel r1 = r9.i
                kotlinx.coroutines.channels.ChannelIterator r1 = r1.iterator()
                r4 = 0
            L40:
                r9.h = r10
                r9.e = r1
                r9.f = r4
                r9.f6207g = r2
                java.lang.Object r5 = r1.hasNext(r9)
                if (r5 != r0) goto L4f
                goto L76
            L4f:
                r8 = r5
                r5 = r10
                r10 = r8
                r8 = r4
                r4 = r1
                r1 = r8
            L55:
                java.lang.Boolean r10 = (java.lang.Boolean) r10
                boolean r10 = r10.booleanValue()
                if (r10 == 0) goto L7a
                java.lang.Object r10 = r4.next()
                kotlin.collections.IndexedValue r6 = new kotlin.collections.IndexedValue
                int r7 = r1 + 1
                r6.<init>(r1, r10)
                r9.h = r5
                r9.e = r4
                r9.f = r7
                r9.f6207g = r3
                java.lang.Object r10 = r5.send(r6, r9)
                if (r10 != r0) goto L77
            L76:
                return r0
            L77:
                r1 = r4
                r4 = r7
                goto L1c
            L7a:
                kotlin.Unit r10 = kotlin.Unit.INSTANCE
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.j0.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static /* synthetic */ ReceiveChannel withIndex$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return withIndex(receiveChannel, coroutineContext);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel withIndex(ReceiveChannel receiveChannel, CoroutineContext coroutineContext) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, ChannelsKt.consumes(receiveChannel), new j0(receiveChannel, null), 6, null);
    }

    @Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u0002H\u0001H\n"}, d2 = {"<anonymous>", "E", "it"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$distinct$1", f = "Deprecated.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class d extends SuspendLambda implements Function2 {
        public /* synthetic */ Object e;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            d dVar = new d(2, continuation);
            dVar.e = obj;
            return dVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Continuation continuation) {
            return ((d) create(obj, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            return this.e;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final ReceiveChannel distinct(ReceiveChannel receiveChannel) {
        return distinctBy$default(receiveChannel, null, new d(2, null), 1, null);
    }

    public static /* synthetic */ ReceiveChannel distinctBy$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.distinctBy(receiveChannel, coroutineContext, function2);
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "E", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$distinctBy$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 1, 2, 2, 2}, l = {ErrorMessages.ERROR_NXT_CANNOT_DETECT_COLOR, ErrorMessages.ERROR_NXT_CANNOT_DETECT_LIGHT, ErrorMessages.ERROR_NXT_INVALID_MOTOR_MODE}, m = "invokeSuspend", n = {"$this$produce", "keys", "$this$produce", "keys", "e", "$this$produce", "keys", "k"}, s = {"L$0", "L$1", "L$0", "L$1", "L$3", "L$0", "L$1", "L$3"})
    public static final class e<E> extends SuspendLambda implements Function2<ProducerScope<? super E>, Continuation<? super Unit>, Object> {
        public HashSet e;
        public ChannelIterator f;

        /* renamed from: g, reason: collision with root package name */
        public Object f6196g;
        public int h;
        public /* synthetic */ Object i;
        public final /* synthetic */ ReceiveChannel j;
        public final /* synthetic */ Function2 k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(ReceiveChannel receiveChannel, Function2 function2, Continuation continuation) {
            super(2, continuation);
            this.j = receiveChannel;
            this.k = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            e eVar = new e(this.j, this.k, continuation);
            eVar.i = obj;
            return eVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super E> producerScope, Continuation<? super Unit> continuation) {
            return ((e) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:16:0x006d A[PHI: r1 r5 r6 r11
          0x006d: PHI (r1v5 kotlinx.coroutines.channels.ChannelIterator<E>) = (r1v6 kotlinx.coroutines.channels.ChannelIterator<E>), (r1v10 kotlinx.coroutines.channels.ChannelIterator<E>) binds: [B:14:0x006a, B:11:0x0039] A[DONT_GENERATE, DONT_INLINE]
          0x006d: PHI (r5v6 java.util.HashSet) = (r5v8 java.util.HashSet), (r5v11 java.util.HashSet) binds: [B:14:0x006a, B:11:0x0039] A[DONT_GENERATE, DONT_INLINE]
          0x006d: PHI (r6v3 kotlinx.coroutines.channels.ProducerScope) = (r6v5 kotlinx.coroutines.channels.ProducerScope), (r6v10 kotlinx.coroutines.channels.ProducerScope) binds: [B:14:0x006a, B:11:0x0039] A[DONT_GENERATE, DONT_INLINE]
          0x006d: PHI (r11v4 java.lang.Object) = (r11v11 java.lang.Object), (r11v0 java.lang.Object) binds: [B:14:0x006a, B:11:0x0039] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0075  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0097  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00b1  */
        /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r6v13 */
        /* JADX WARN: Type inference failed for: r6v14 */
        /* JADX WARN: Type inference failed for: r6v8, types: [java.util.Collection] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0095 -> B:29:0x00ae). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00a8 -> B:28:0x00aa). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r10.h
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L45
                if (r1 == r4) goto L39
                if (r1 == r3) goto L28
                if (r1 != r2) goto L20
                java.lang.Object r1 = r10.f6196g
                kotlinx.coroutines.channels.ChannelIterator r5 = r10.f
                java.util.HashSet r6 = r10.e
                java.lang.Object r7 = r10.i
                kotlinx.coroutines.channels.ProducerScope r7 = (kotlinx.coroutines.channels.ProducerScope) r7
                kotlin.ResultKt.throwOnFailure(r11)
                goto Laa
            L20:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r0)
                throw r11
            L28:
                java.lang.Object r1 = r10.f6196g
                kotlinx.coroutines.channels.ChannelIterator r5 = r10.f
                java.util.HashSet r6 = r10.e
                java.lang.Object r7 = r10.i
                kotlinx.coroutines.channels.ProducerScope r7 = (kotlinx.coroutines.channels.ProducerScope) r7
                kotlin.ResultKt.throwOnFailure(r11)
                r9 = r5
                r5 = r1
                r1 = r9
                goto L91
            L39:
                kotlinx.coroutines.channels.ChannelIterator r1 = r10.f
                java.util.HashSet r5 = r10.e
                java.lang.Object r6 = r10.i
                kotlinx.coroutines.channels.ProducerScope r6 = (kotlinx.coroutines.channels.ProducerScope) r6
                kotlin.ResultKt.throwOnFailure(r11)
                goto L6d
            L45:
                kotlin.ResultKt.throwOnFailure(r11)
                java.lang.Object r11 = r10.i
                kotlinx.coroutines.channels.ProducerScope r11 = (kotlinx.coroutines.channels.ProducerScope) r11
                java.util.HashSet r1 = new java.util.HashSet
                r1.<init>()
                kotlinx.coroutines.channels.ReceiveChannel r5 = r10.j
                kotlinx.coroutines.channels.ChannelIterator r5 = r5.iterator()
                r6 = r5
                r5 = r1
                r1 = r6
                r6 = r11
            L5b:
                r10.i = r6
                r10.e = r5
                r10.f = r1
                r11 = 0
                r10.f6196g = r11
                r10.h = r4
                java.lang.Object r11 = r1.hasNext(r10)
                if (r11 != r0) goto L6d
                goto La7
            L6d:
                java.lang.Boolean r11 = (java.lang.Boolean) r11
                boolean r11 = r11.booleanValue()
                if (r11 == 0) goto Lb1
                java.lang.Object r11 = r1.next()
                r10.i = r6
                r10.e = r5
                r10.f = r1
                r10.f6196g = r11
                r10.h = r3
                kotlin.jvm.functions.Function2 r7 = r10.k
                java.lang.Object r7 = r7.invoke(r11, r10)
                if (r7 != r0) goto L8c
                goto La7
            L8c:
                r9 = r5
                r5 = r11
                r11 = r7
                r7 = r6
                r6 = r9
            L91:
                boolean r8 = r6.contains(r11)
                if (r8 != 0) goto Lae
                r10.i = r7
                r10.e = r6
                r10.f = r1
                r10.f6196g = r11
                r10.h = r2
                java.lang.Object r5 = r7.send(r5, r10)
                if (r5 != r0) goto La8
            La7:
                return r0
            La8:
                r5 = r1
                r1 = r11
            Laa:
                r6.add(r1)
                r1 = r5
            Lae:
                r5 = r6
                r6 = r7
                goto L5b
            Lb1:
                kotlin.Unit r11 = kotlin.Unit.INSTANCE
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.e.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @PublishedApi
    @NotNull
    public static final <E, K> ReceiveChannel<E> distinctBy(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull CoroutineContext coroutineContext, @NotNull Function2<? super E, ? super Continuation<? super K>, ? extends Object> function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, ChannelsKt.consumes(receiveChannel), new e(receiveChannel, function2, null), 6, null);
    }

    @PublishedApi
    @Nullable
    public static final <E> Object toMutableSet(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Continuation<? super Set<E>> continuation) {
        return ChannelsKt.toCollection(receiveChannel, new LinkedHashSet(), continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object any(kotlinx.coroutines.channels.ReceiveChannel r4, kotlin.coroutines.Continuation r5) {
        /*
            boolean r0 = r5 instanceof kotlinx.coroutines.channels.l.a
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.channels.l$a r0 = (kotlinx.coroutines.channels.l.a) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.l$a r0 = new kotlinx.coroutines.channels.l$a
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            kotlinx.coroutines.channels.ReceiveChannel r4 = r0.d
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.lang.Throwable -> L2b
            goto L47
        L2b:
            r5 = move-exception
            goto L4c
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.ResultKt.throwOnFailure(r5)
            kotlinx.coroutines.channels.ChannelIterator r5 = r4.iterator()     // Catch: java.lang.Throwable -> L2b
            r0.d = r4     // Catch: java.lang.Throwable -> L2b
            r0.f = r3     // Catch: java.lang.Throwable -> L2b
            java.lang.Object r5 = r5.hasNext(r0)     // Catch: java.lang.Throwable -> L2b
            if (r5 != r1) goto L47
            return r1
        L47:
            r0 = 0
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r4, r0)
            return r5
        L4c:
            throw r5     // Catch: java.lang.Throwable -> L4d
        L4d:
            r0 = move-exception
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r4, r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.any(kotlinx.coroutines.channels.ReceiveChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0056 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0062 A[Catch: all -> 0x002f, TryCatch #3 {all -> 0x002f, blocks: (B:12:0x002b, B:25:0x005a, B:27:0x0062, B:28:0x006c), top: B:45:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006c A[Catch: all -> 0x002f, TRY_LEAVE, TryCatch #3 {all -> 0x002f, blocks: (B:12:0x002b, B:25:0x005a, B:27:0x0062, B:28:0x006c), top: B:45:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0057 -> B:25:0x005a). Please report as a decompilation issue!!! */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object count(kotlinx.coroutines.channels.ReceiveChannel r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof kotlinx.coroutines.channels.l.c
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.channels.l$c r0 = (kotlinx.coroutines.channels.l.c) r0
            int r1 = r0.h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.h = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.l$c r0 = new kotlinx.coroutines.channels.l$c
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f6193g
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.h
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            kotlinx.coroutines.channels.ChannelIterator r6 = r0.f
            kotlinx.coroutines.channels.ReceiveChannel r2 = r0.e
            kotlin.jvm.internal.Ref$IntRef r4 = r0.d
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L2f
            goto L5a
        L2f:
            r6 = move-exception
            goto L7f
        L31:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L39:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlin.jvm.internal.Ref$IntRef r7 = new kotlin.jvm.internal.Ref$IntRef
            r7.<init>()
            kotlinx.coroutines.channels.ChannelIterator r2 = r6.iterator()     // Catch: java.lang.Throwable -> L7c
            r4 = r7
            r7 = r6
            r6 = r2
        L48:
            r0.d = r4     // Catch: java.lang.Throwable -> L79
            r0.e = r7     // Catch: java.lang.Throwable -> L79
            r0.f = r6     // Catch: java.lang.Throwable -> L79
            r0.h = r3     // Catch: java.lang.Throwable -> L79
            java.lang.Object r2 = r6.hasNext(r0)     // Catch: java.lang.Throwable -> L79
            if (r2 != r1) goto L57
            return r1
        L57:
            r5 = r2
            r2 = r7
            r7 = r5
        L5a:
            java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch: java.lang.Throwable -> L2f
            boolean r7 = r7.booleanValue()     // Catch: java.lang.Throwable -> L2f
            if (r7 == 0) goto L6c
            r6.next()     // Catch: java.lang.Throwable -> L2f
            int r7 = r4.element     // Catch: java.lang.Throwable -> L2f
            int r7 = r7 + r3
            r4.element = r7     // Catch: java.lang.Throwable -> L2f
            r7 = r2
            goto L48
        L6c:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L2f
            r6 = 0
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r2, r6)
            int r6 = r4.element
            java.lang.Integer r6 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r6)
            return r6
        L79:
            r6 = move-exception
            r2 = r7
            goto L7f
        L7c:
            r7 = move-exception
            r2 = r6
            r6 = r7
        L7f:
            throw r6     // Catch: java.lang.Throwable -> L80
        L80:
            r7 = move-exception
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r2, r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.count(kotlinx.coroutines.channels.ReceiveChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a9 A[Catch: all -> 0x00b7, TRY_LEAVE, TryCatch #2 {all -> 0x00b7, blocks: (B:40:0x00a1, B:42:0x00a9, B:36:0x0089, B:26:0x005a), top: B:58:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x009d -> B:15:0x0039). Please report as a decompilation issue!!! */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object maxWith(kotlinx.coroutines.channels.ReceiveChannel r8, java.util.Comparator r9, kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instructions count: 198
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.maxWith(kotlinx.coroutines.channels.ReceiveChannel, java.util.Comparator, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a9 A[Catch: all -> 0x00b7, TRY_LEAVE, TryCatch #2 {all -> 0x00b7, blocks: (B:40:0x00a1, B:42:0x00a9, B:36:0x0089, B:26:0x005a), top: B:58:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x009d -> B:15:0x0039). Please report as a decompilation issue!!! */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object minWith(kotlinx.coroutines.channels.ReceiveChannel r8, java.util.Comparator r9, kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instructions count: 198
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.minWith(kotlinx.coroutines.channels.ReceiveChannel, java.util.Comparator, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object none(kotlinx.coroutines.channels.ReceiveChannel r4, kotlin.coroutines.Continuation r5) {
        /*
            boolean r0 = r5 instanceof kotlinx.coroutines.channels.l.a0
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.channels.l$a0 r0 = (kotlinx.coroutines.channels.l.a0) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.l$a0 r0 = new kotlinx.coroutines.channels.l$a0
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            kotlinx.coroutines.channels.ReceiveChannel r4 = r0.d
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.lang.Throwable -> L2b
            goto L47
        L2b:
            r5 = move-exception
            goto L57
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.ResultKt.throwOnFailure(r5)
            kotlinx.coroutines.channels.ChannelIterator r5 = r4.iterator()     // Catch: java.lang.Throwable -> L2b
            r0.d = r4     // Catch: java.lang.Throwable -> L2b
            r0.f = r3     // Catch: java.lang.Throwable -> L2b
            java.lang.Object r5 = r5.hasNext(r0)     // Catch: java.lang.Throwable -> L2b
            if (r5 != r1) goto L47
            return r1
        L47:
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch: java.lang.Throwable -> L2b
            boolean r5 = r5.booleanValue()     // Catch: java.lang.Throwable -> L2b
            r5 = r5 ^ r3
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)     // Catch: java.lang.Throwable -> L2b
            r0 = 0
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r4, r0)
            return r5
        L57:
            throw r5     // Catch: java.lang.Throwable -> L58
        L58:
            r0 = move-exception
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r4, r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.none(kotlinx.coroutines.channels.ReceiveChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u0001H\u0001H\n"}, d2 = {"<anonymous>", "E", "", "it"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$requireNoNulls$1", f = "Deprecated.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class b0 extends SuspendLambda implements Function2 {
        public /* synthetic */ Object e;
        public final /* synthetic */ ReceiveChannel f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b0(ReceiveChannel receiveChannel, Continuation continuation) {
            super(2, continuation);
            this.f = receiveChannel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            b0 b0Var = new b0(this.f, continuation);
            b0Var.e = obj;
            return b0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Continuation continuation) {
            return ((b0) create(obj, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            Object obj2 = this.e;
            if (obj2 != null) {
                return obj2;
            }
            throw new IllegalArgumentException("null element found in " + this.f + '.');
        }
    }

    public static /* synthetic */ ReceiveChannel zip$default(ReceiveChannel receiveChannel, ReceiveChannel receiveChannel2, CoroutineContext coroutineContext, Function2 function2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.zip(receiveChannel, receiveChannel2, coroutineContext, function2);
    }

    /* JADX INFO: Add missing generic type declarations: [V] */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "V", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$zip$2", f = "Deprecated.kt", i = {0, 0, 0, 1, 1, 1, 1, 2, 2, 2}, l = {ErrorMessages.ERROR_BLUETOOTH_COULD_NOT_FIT_ELEMENT_IN_BYTE, 499, ErrorMessages.ERROR_BLUETOOTH_NOT_AVAILABLE}, m = "invokeSuspend", n = {"$this$produce", "otherIterator", "$this$consume$iv$iv", "$this$produce", "otherIterator", "$this$consume$iv$iv", "element1", "$this$produce", "otherIterator", "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$3", "L$0", "L$1", "L$3", "L$5", "L$0", "L$1", "L$3"})
    @SourceDebugExtension({"SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,509:1\n160#2:510\n94#2,3:511\n161#2,2:514\n101#2:516\n97#2,3:517\n*S KotlinDebug\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2\n*L\n498#1:510\n498#1:511,3\n498#1:514,2\n498#1:516\n498#1:517,3\n*E\n"})
    public static final class k0<V> extends SuspendLambda implements Function2<ProducerScope<? super V>, Continuation<? super Unit>, Object> {
        public ChannelIterator e;
        public Function2 f;

        /* renamed from: g, reason: collision with root package name */
        public ReceiveChannel f6209g;
        public ChannelIterator h;
        public Object i;
        public int j;
        public /* synthetic */ Object k;
        public final /* synthetic */ ReceiveChannel l;
        public final /* synthetic */ ReceiveChannel m;
        public final /* synthetic */ Function2 n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k0(ReceiveChannel receiveChannel, ReceiveChannel receiveChannel2, Function2 function2, Continuation continuation) {
            super(2, continuation);
            this.l = receiveChannel;
            this.m = receiveChannel2;
            this.n = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            k0 k0Var = new k0(this.l, this.m, this.n, continuation);
            k0Var.k = obj;
            return k0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super V> producerScope, Continuation<? super Unit> continuation) {
            return ((k0) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:53:0x0071, code lost:
        
            r6 = r7;
            r7 = r8;
            r8 = r9;
            r9 = r10;
         */
        /* JADX WARN: Removed duplicated region for block: B:30:0x008e A[Catch: all -> 0x0022, TRY_LEAVE, TryCatch #1 {all -> 0x0022, blocks: (B:8:0x001e, B:25:0x0071, B:28:0x0086, B:30:0x008e, B:40:0x00d8, B:20:0x0053, B:23:0x0066), top: B:49:0x000a }] */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00b6 A[Catch: all -> 0x0043, TRY_LEAVE, TryCatch #2 {all -> 0x0043, blocks: (B:34:0x00ae, B:36:0x00b6, B:15:0x003b), top: B:51:0x003b }] */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00d3  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00d8 A[Catch: all -> 0x0022, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0022, blocks: (B:8:0x001e, B:25:0x0071, B:28:0x0086, B:30:0x008e, B:40:0x00d8, B:20:0x0053, B:23:0x0066), top: B:49:0x000a }] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r13) {
            /*
                Method dump skipped, instructions count: 230
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.l.k0.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @PublishedApi
    @NotNull
    public static final <E, R, V> ReceiveChannel<V> zip(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull ReceiveChannel<? extends R> receiveChannel2, @NotNull CoroutineContext coroutineContext, @NotNull Function2<? super E, ? super R, ? extends V> function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, ChannelsKt.consumesAll(receiveChannel, receiveChannel2), new k0(receiveChannel2, receiveChannel, function2, null), 6, null);
    }

    @PublishedApi
    @NotNull
    public static final Function1<Throwable, Unit> consumes(@NotNull ReceiveChannel<?> receiveChannel) {
        return new kotlinx.coroutines.channels.c(receiveChannel, 1);
    }
}
