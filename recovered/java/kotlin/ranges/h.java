package kotlin.ranges;

import gnu.expr.Declaration;
import java.util.NoSuchElementException;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import kotlin.random.RandomKt;
import kotlin.ranges.CharProgression;
import kotlin.ranges.IntProgression;
import kotlin.ranges.LongProgression;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\bJ\n\u0002\u0010\u000f\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0007¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0013\u0010\u0002\u001a\u00020\u0005*\u00020\u0004H\u0007¢\u0006\u0004\b\u0002\u0010\u0006\u001a\u0013\u0010\u0002\u001a\u00020\b*\u00020\u0007H\u0007¢\u0006\u0004\b\u0002\u0010\t\u001a\u0015\u0010\n\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u0007¢\u0006\u0004\b\n\u0010\u000b\u001a\u0015\u0010\n\u001a\u0004\u0018\u00010\u0005*\u00020\u0004H\u0007¢\u0006\u0004\b\n\u0010\f\u001a\u0015\u0010\n\u001a\u0004\u0018\u00010\b*\u00020\u0007H\u0007¢\u0006\u0004\b\n\u0010\r\u001a\u0013\u0010\u000e\u001a\u00020\u0001*\u00020\u0000H\u0007¢\u0006\u0004\b\u000e\u0010\u0003\u001a\u0013\u0010\u000e\u001a\u00020\u0005*\u00020\u0004H\u0007¢\u0006\u0004\b\u000e\u0010\u0006\u001a\u0013\u0010\u000e\u001a\u00020\b*\u00020\u0007H\u0007¢\u0006\u0004\b\u000e\u0010\t\u001a\u0015\u0010\u000f\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u0007¢\u0006\u0004\b\u000f\u0010\u000b\u001a\u0015\u0010\u000f\u001a\u0004\u0018\u00010\u0005*\u00020\u0004H\u0007¢\u0006\u0004\b\u000f\u0010\f\u001a\u0015\u0010\u000f\u001a\u0004\u0018\u00010\b*\u00020\u0007H\u0007¢\u0006\u0004\b\u000f\u0010\r\u001a\u001b\u0010\u0012\u001a\u00020\u0001*\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u001b\u0010\u0012\u001a\u00020\u0005*\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0012\u0010\u0015\u001a\u001b\u0010\u0012\u001a\u00020\b*\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0012\u0010\u0017\u001a\u001d\u0010\u0018\u001a\u0004\u0018\u00010\u0001*\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u001d\u0010\u0018\u001a\u0004\u0018\u00010\u0005*\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0018\u0010\u001a\u001a\u001d\u0010\u0018\u001a\u0004\u0018\u00010\b*\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0018\u0010\u001b\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u00010\u001c2\u0006\u0010\u001e\u001a\u00020\u001dH\u0087\u0002¢\u0006\u0004\b \u0010!\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u00050\u001c2\u0006\u0010\u001e\u001a\u00020\u001dH\u0087\u0002¢\u0006\u0004\b#\u0010!\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020$0\u001c2\u0006\u0010\u001e\u001a\u00020\u001dH\u0087\u0002¢\u0006\u0004\b%\u0010!\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020&0\u001c2\u0006\u0010\u001e\u001a\u00020\u001dH\u0087\u0002¢\u0006\u0004\b'\u0010!\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020(0\u001c2\u0006\u0010\u001e\u001a\u00020\u001dH\u0087\u0002¢\u0006\u0004\b)\u0010!\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u00010*2\u0006\u0010\u001e\u001a\u00020\u001dH\u0087\u0002¢\u0006\u0004\b \u0010+\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u00050*2\u0006\u0010\u001e\u001a\u00020\u001dH\u0087\u0002¢\u0006\u0004\b#\u0010+\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020$0*2\u0006\u0010\u001e\u001a\u00020\u001dH\u0087\u0002¢\u0006\u0004\b%\u0010+\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u00010\u001c2\u0006\u0010\u001e\u001a\u00020&H\u0087\u0002¢\u0006\u0004\b \u0010,\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u00050\u001c2\u0006\u0010\u001e\u001a\u00020&H\u0087\u0002¢\u0006\u0004\b#\u0010,\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001e\u001a\u00020&H\u0087\u0002¢\u0006\u0004\b-\u0010,\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020$0\u001c2\u0006\u0010\u001e\u001a\u00020&H\u0087\u0002¢\u0006\u0004\b%\u0010,\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020(0\u001c2\u0006\u0010\u001e\u001a\u00020&H\u0087\u0002¢\u0006\u0004\b)\u0010,\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u00010\u001c2\u0006\u0010\u001e\u001a\u00020(H\u0087\u0002¢\u0006\u0004\b \u0010.\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u00050\u001c2\u0006\u0010\u001e\u001a\u00020(H\u0087\u0002¢\u0006\u0004\b#\u0010.\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001e\u001a\u00020(H\u0087\u0002¢\u0006\u0004\b-\u0010.\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020$0\u001c2\u0006\u0010\u001e\u001a\u00020(H\u0087\u0002¢\u0006\u0004\b%\u0010.\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020&0\u001c2\u0006\u0010\u001e\u001a\u00020(H\u0087\u0002¢\u0006\u0004\b'\u0010.\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020&0*2\u0006\u0010\u001e\u001a\u00020(H\u0087\u0002¢\u0006\u0004\b'\u0010/\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u00050\u001c2\u0006\u0010\u001e\u001a\u00020\u0001H\u0087\u0002¢\u0006\u0004\b#\u00100\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001e\u001a\u00020\u0001H\u0087\u0002¢\u0006\u0004\b-\u00100\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020$0\u001c2\u0006\u0010\u001e\u001a\u00020\u0001H\u0087\u0002¢\u0006\u0004\b%\u00100\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020&0\u001c2\u0006\u0010\u001e\u001a\u00020\u0001H\u0087\u0002¢\u0006\u0004\b'\u00100\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020(0\u001c2\u0006\u0010\u001e\u001a\u00020\u0001H\u0087\u0002¢\u0006\u0004\b)\u00100\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u00050*2\u0006\u0010\u001e\u001a\u00020\u0001H\u0087\u0002¢\u0006\u0004\b#\u00101\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u001d0*2\u0006\u0010\u001e\u001a\u00020\u0001H\u0087\u0002¢\u0006\u0004\b-\u00101\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020$0*2\u0006\u0010\u001e\u001a\u00020\u0001H\u0087\u0002¢\u0006\u0004\b%\u00101\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u00010\u001c2\u0006\u0010\u001e\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0004\b \u00102\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001e\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0004\b-\u00102\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020$0\u001c2\u0006\u0010\u001e\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0004\b%\u00102\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020&0\u001c2\u0006\u0010\u001e\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0004\b'\u00102\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020(0\u001c2\u0006\u0010\u001e\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0004\b)\u00102\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u00010*2\u0006\u0010\u001e\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0004\b \u00103\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u001d0*2\u0006\u0010\u001e\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0004\b-\u00103\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020$0*2\u0006\u0010\u001e\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0004\b%\u00103\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u00010\u001c2\u0006\u0010\u001e\u001a\u00020$H\u0087\u0002¢\u0006\u0004\b \u00104\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u00050\u001c2\u0006\u0010\u001e\u001a\u00020$H\u0087\u0002¢\u0006\u0004\b#\u00104\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001e\u001a\u00020$H\u0087\u0002¢\u0006\u0004\b-\u00104\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020&0\u001c2\u0006\u0010\u001e\u001a\u00020$H\u0087\u0002¢\u0006\u0004\b'\u00104\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020(0\u001c2\u0006\u0010\u001e\u001a\u00020$H\u0087\u0002¢\u0006\u0004\b)\u00104\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u00010*2\u0006\u0010\u001e\u001a\u00020$H\u0087\u0002¢\u0006\u0004\b \u00105\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u00050*2\u0006\u0010\u001e\u001a\u00020$H\u0087\u0002¢\u0006\u0004\b#\u00105\u001a\"\u0010\"\u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u001d0*2\u0006\u0010\u001e\u001a\u00020$H\u0087\u0002¢\u0006\u0004\b-\u00105\u001a\u001c\u00107\u001a\u00020\u0000*\u00020\u00012\u0006\u00106\u001a\u00020\u001dH\u0086\u0004¢\u0006\u0004\b7\u00108\u001a\u001c\u00107\u001a\u00020\u0004*\u00020\u00052\u0006\u00106\u001a\u00020\u001dH\u0086\u0004¢\u0006\u0004\b7\u00109\u001a\u001c\u00107\u001a\u00020\u0000*\u00020\u001d2\u0006\u00106\u001a\u00020\u001dH\u0086\u0004¢\u0006\u0004\b7\u0010:\u001a\u001c\u00107\u001a\u00020\u0000*\u00020$2\u0006\u00106\u001a\u00020\u001dH\u0086\u0004¢\u0006\u0004\b7\u0010;\u001a\u001c\u00107\u001a\u00020\u0007*\u00020\b2\u0006\u00106\u001a\u00020\bH\u0086\u0004¢\u0006\u0004\b7\u0010<\u001a\u001c\u00107\u001a\u00020\u0000*\u00020\u00012\u0006\u00106\u001a\u00020\u0001H\u0086\u0004¢\u0006\u0004\b7\u0010=\u001a\u001c\u00107\u001a\u00020\u0004*\u00020\u00052\u0006\u00106\u001a\u00020\u0001H\u0086\u0004¢\u0006\u0004\b7\u0010>\u001a\u001c\u00107\u001a\u00020\u0000*\u00020\u001d2\u0006\u00106\u001a\u00020\u0001H\u0086\u0004¢\u0006\u0004\b7\u0010?\u001a\u001c\u00107\u001a\u00020\u0000*\u00020$2\u0006\u00106\u001a\u00020\u0001H\u0086\u0004¢\u0006\u0004\b7\u0010@\u001a\u001c\u00107\u001a\u00020\u0004*\u00020\u00012\u0006\u00106\u001a\u00020\u0005H\u0086\u0004¢\u0006\u0004\b7\u0010A\u001a\u001c\u00107\u001a\u00020\u0004*\u00020\u00052\u0006\u00106\u001a\u00020\u0005H\u0086\u0004¢\u0006\u0004\b7\u0010B\u001a\u001c\u00107\u001a\u00020\u0004*\u00020\u001d2\u0006\u00106\u001a\u00020\u0005H\u0086\u0004¢\u0006\u0004\b7\u0010C\u001a\u001c\u00107\u001a\u00020\u0004*\u00020$2\u0006\u00106\u001a\u00020\u0005H\u0086\u0004¢\u0006\u0004\b7\u0010D\u001a\u001c\u00107\u001a\u00020\u0000*\u00020\u00012\u0006\u00106\u001a\u00020$H\u0086\u0004¢\u0006\u0004\b7\u0010E\u001a\u001c\u00107\u001a\u00020\u0004*\u00020\u00052\u0006\u00106\u001a\u00020$H\u0086\u0004¢\u0006\u0004\b7\u0010F\u001a\u001c\u00107\u001a\u00020\u0000*\u00020\u001d2\u0006\u00106\u001a\u00020$H\u0086\u0004¢\u0006\u0004\b7\u0010G\u001a\u001c\u00107\u001a\u00020\u0000*\u00020$2\u0006\u00106\u001a\u00020$H\u0086\u0004¢\u0006\u0004\b7\u0010H\u001a\u0011\u0010I\u001a\u00020\u0000*\u00020\u0000¢\u0006\u0004\bI\u0010J\u001a\u0011\u0010I\u001a\u00020\u0004*\u00020\u0004¢\u0006\u0004\bI\u0010K\u001a\u0011\u0010I\u001a\u00020\u0007*\u00020\u0007¢\u0006\u0004\bI\u0010L\u001a\u001c\u0010M\u001a\u00020\u0000*\u00020\u00002\u0006\u0010M\u001a\u00020\u0001H\u0086\u0004¢\u0006\u0004\bM\u0010N\u001a\u001c\u0010M\u001a\u00020\u0004*\u00020\u00042\u0006\u0010M\u001a\u00020\u0005H\u0086\u0004¢\u0006\u0004\bM\u0010O\u001a\u001c\u0010M\u001a\u00020\u0007*\u00020\u00072\u0006\u0010M\u001a\u00020\u0001H\u0086\u0004¢\u0006\u0004\bM\u0010P\u001a\u0015\u0010Q\u001a\u0004\u0018\u00010\u001d*\u00020\u0001H\u0000¢\u0006\u0004\bQ\u0010R\u001a\u0015\u0010Q\u001a\u0004\u0018\u00010\u001d*\u00020\u0005H\u0000¢\u0006\u0004\bQ\u0010S\u001a\u0015\u0010Q\u001a\u0004\u0018\u00010\u001d*\u00020$H\u0000¢\u0006\u0004\bQ\u0010T\u001a\u0015\u0010Q\u001a\u0004\u0018\u00010\u001d*\u00020&H\u0000¢\u0006\u0004\bQ\u0010U\u001a\u0015\u0010Q\u001a\u0004\u0018\u00010\u001d*\u00020(H\u0000¢\u0006\u0004\bQ\u0010V\u001a\u0015\u0010W\u001a\u0004\u0018\u00010\u0001*\u00020\u0005H\u0000¢\u0006\u0004\bW\u0010X\u001a\u0015\u0010W\u001a\u0004\u0018\u00010\u0001*\u00020&H\u0000¢\u0006\u0004\bW\u0010Y\u001a\u0015\u0010W\u001a\u0004\u0018\u00010\u0001*\u00020(H\u0000¢\u0006\u0004\bW\u0010Z\u001a\u0015\u0010[\u001a\u0004\u0018\u00010\u0005*\u00020&H\u0000¢\u0006\u0004\b[\u0010\\\u001a\u0015\u0010[\u001a\u0004\u0018\u00010\u0005*\u00020(H\u0000¢\u0006\u0004\b[\u0010]\u001a\u0015\u0010^\u001a\u0004\u0018\u00010$*\u00020\u0001H\u0000¢\u0006\u0004\b^\u0010_\u001a\u0015\u0010^\u001a\u0004\u0018\u00010$*\u00020\u0005H\u0000¢\u0006\u0004\b^\u0010`\u001a\u0015\u0010^\u001a\u0004\u0018\u00010$*\u00020&H\u0000¢\u0006\u0004\b^\u0010a\u001a\u0015\u0010^\u001a\u0004\u0018\u00010$*\u00020(H\u0000¢\u0006\u0004\b^\u0010b\u001a\u001c\u0010c\u001a\u00020\u0010*\u00020\u00012\u0006\u00106\u001a\u00020\u001dH\u0086\u0004¢\u0006\u0004\bc\u0010d\u001a\u001c\u0010c\u001a\u00020\u0014*\u00020\u00052\u0006\u00106\u001a\u00020\u001dH\u0086\u0004¢\u0006\u0004\bc\u0010e\u001a\u001c\u0010c\u001a\u00020\u0010*\u00020\u001d2\u0006\u00106\u001a\u00020\u001dH\u0086\u0004¢\u0006\u0004\bc\u0010f\u001a\u001c\u0010c\u001a\u00020\u0010*\u00020$2\u0006\u00106\u001a\u00020\u001dH\u0086\u0004¢\u0006\u0004\bc\u0010g\u001a\u001c\u0010c\u001a\u00020\u0016*\u00020\b2\u0006\u00106\u001a\u00020\bH\u0086\u0004¢\u0006\u0004\bc\u0010h\u001a\u001c\u0010c\u001a\u00020\u0010*\u00020\u00012\u0006\u00106\u001a\u00020\u0001H\u0086\u0004¢\u0006\u0004\bc\u0010i\u001a\u001c\u0010c\u001a\u00020\u0014*\u00020\u00052\u0006\u00106\u001a\u00020\u0001H\u0086\u0004¢\u0006\u0004\bc\u0010j\u001a\u001c\u0010c\u001a\u00020\u0010*\u00020\u001d2\u0006\u00106\u001a\u00020\u0001H\u0086\u0004¢\u0006\u0004\bc\u0010k\u001a\u001c\u0010c\u001a\u00020\u0010*\u00020$2\u0006\u00106\u001a\u00020\u0001H\u0086\u0004¢\u0006\u0004\bc\u0010l\u001a\u001c\u0010c\u001a\u00020\u0014*\u00020\u00012\u0006\u00106\u001a\u00020\u0005H\u0086\u0004¢\u0006\u0004\bc\u0010m\u001a\u001c\u0010c\u001a\u00020\u0014*\u00020\u00052\u0006\u00106\u001a\u00020\u0005H\u0086\u0004¢\u0006\u0004\bc\u0010n\u001a\u001c\u0010c\u001a\u00020\u0014*\u00020\u001d2\u0006\u00106\u001a\u00020\u0005H\u0086\u0004¢\u0006\u0004\bc\u0010o\u001a\u001c\u0010c\u001a\u00020\u0014*\u00020$2\u0006\u00106\u001a\u00020\u0005H\u0086\u0004¢\u0006\u0004\bc\u0010p\u001a\u001c\u0010c\u001a\u00020\u0010*\u00020\u00012\u0006\u00106\u001a\u00020$H\u0086\u0004¢\u0006\u0004\bc\u0010q\u001a\u001c\u0010c\u001a\u00020\u0014*\u00020\u00052\u0006\u00106\u001a\u00020$H\u0086\u0004¢\u0006\u0004\bc\u0010r\u001a\u001c\u0010c\u001a\u00020\u0010*\u00020\u001d2\u0006\u00106\u001a\u00020$H\u0086\u0004¢\u0006\u0004\bc\u0010s\u001a\u001c\u0010c\u001a\u00020\u0010*\u00020$2\u0006\u00106\u001a\u00020$H\u0086\u0004¢\u0006\u0004\bc\u0010t\u001a)\u0010x\u001a\u00028\u0000\"\u000e\b\u0000\u0010v*\b\u0012\u0004\u0012\u00028\u00000u*\u00028\u00002\u0006\u0010w\u001a\u00028\u0000¢\u0006\u0004\bx\u0010y\u001a\u0019\u0010x\u001a\u00020\u001d*\u00020\u001d2\u0006\u0010w\u001a\u00020\u001d¢\u0006\u0004\bx\u0010z\u001a\u0019\u0010x\u001a\u00020$*\u00020$2\u0006\u0010w\u001a\u00020$¢\u0006\u0004\bx\u0010{\u001a\u0019\u0010x\u001a\u00020\u0001*\u00020\u00012\u0006\u0010w\u001a\u00020\u0001¢\u0006\u0004\bx\u0010|\u001a\u0019\u0010x\u001a\u00020\u0005*\u00020\u00052\u0006\u0010w\u001a\u00020\u0005¢\u0006\u0004\bx\u0010}\u001a\u0019\u0010x\u001a\u00020(*\u00020(2\u0006\u0010w\u001a\u00020(¢\u0006\u0004\bx\u0010~\u001a\u0019\u0010x\u001a\u00020&*\u00020&2\u0006\u0010w\u001a\u00020&¢\u0006\u0004\bx\u0010\u007f\u001a,\u0010\u0081\u0001\u001a\u00028\u0000\"\u000e\b\u0000\u0010v*\b\u0012\u0004\u0012\u00028\u00000u*\u00028\u00002\u0007\u0010\u0080\u0001\u001a\u00028\u0000¢\u0006\u0005\b\u0081\u0001\u0010y\u001a\u001c\u0010\u0081\u0001\u001a\u00020\u001d*\u00020\u001d2\u0007\u0010\u0080\u0001\u001a\u00020\u001d¢\u0006\u0005\b\u0081\u0001\u0010z\u001a\u001c\u0010\u0081\u0001\u001a\u00020$*\u00020$2\u0007\u0010\u0080\u0001\u001a\u00020$¢\u0006\u0005\b\u0081\u0001\u0010{\u001a\u001c\u0010\u0081\u0001\u001a\u00020\u0001*\u00020\u00012\u0007\u0010\u0080\u0001\u001a\u00020\u0001¢\u0006\u0005\b\u0081\u0001\u0010|\u001a\u001c\u0010\u0081\u0001\u001a\u00020\u0005*\u00020\u00052\u0007\u0010\u0080\u0001\u001a\u00020\u0005¢\u0006\u0005\b\u0081\u0001\u0010}\u001a\u001c\u0010\u0081\u0001\u001a\u00020(*\u00020(2\u0007\u0010\u0080\u0001\u001a\u00020(¢\u0006\u0005\b\u0081\u0001\u0010~\u001a\u001c\u0010\u0081\u0001\u001a\u00020&*\u00020&2\u0007\u0010\u0080\u0001\u001a\u00020&¢\u0006\u0005\b\u0081\u0001\u0010\u007f\u001a9\u0010\u0082\u0001\u001a\u00028\u0000\"\u000e\b\u0000\u0010v*\b\u0012\u0004\u0012\u00028\u00000u*\u00028\u00002\b\u0010w\u001a\u0004\u0018\u00018\u00002\t\u0010\u0080\u0001\u001a\u0004\u0018\u00018\u0000¢\u0006\u0006\b\u0082\u0001\u0010\u0083\u0001\u001a%\u0010\u0082\u0001\u001a\u00020\u001d*\u00020\u001d2\u0006\u0010w\u001a\u00020\u001d2\u0007\u0010\u0080\u0001\u001a\u00020\u001d¢\u0006\u0006\b\u0082\u0001\u0010\u0084\u0001\u001a%\u0010\u0082\u0001\u001a\u00020$*\u00020$2\u0006\u0010w\u001a\u00020$2\u0007\u0010\u0080\u0001\u001a\u00020$¢\u0006\u0006\b\u0082\u0001\u0010\u0085\u0001\u001a%\u0010\u0082\u0001\u001a\u00020\u0001*\u00020\u00012\u0006\u0010w\u001a\u00020\u00012\u0007\u0010\u0080\u0001\u001a\u00020\u0001¢\u0006\u0006\b\u0082\u0001\u0010\u0086\u0001\u001a%\u0010\u0082\u0001\u001a\u00020\u0005*\u00020\u00052\u0006\u0010w\u001a\u00020\u00052\u0007\u0010\u0080\u0001\u001a\u00020\u0005¢\u0006\u0006\b\u0082\u0001\u0010\u0087\u0001\u001a%\u0010\u0082\u0001\u001a\u00020(*\u00020(2\u0006\u0010w\u001a\u00020(2\u0007\u0010\u0080\u0001\u001a\u00020(¢\u0006\u0006\b\u0082\u0001\u0010\u0088\u0001\u001a%\u0010\u0082\u0001\u001a\u00020&*\u00020&2\u0006\u0010w\u001a\u00020&2\u0007\u0010\u0080\u0001\u001a\u00020&¢\u0006\u0006\b\u0082\u0001\u0010\u0089\u0001\u001a6\u0010\u0082\u0001\u001a\u00028\u0000\"\u000e\b\u0000\u0010v*\b\u0012\u0004\u0012\u00028\u00000u*\u00028\u00002\u000e\u0010\u008b\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u008a\u0001H\u0007¢\u0006\u0006\b\u0082\u0001\u0010\u008c\u0001\u001a3\u0010\u0082\u0001\u001a\u00028\u0000\"\u000e\b\u0000\u0010v*\b\u0012\u0004\u0012\u00028\u00000u*\u00028\u00002\r\u0010\u008b\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u001c¢\u0006\u0006\b\u0082\u0001\u0010\u008d\u0001\u001a#\u0010\u0082\u0001\u001a\u00020\u0001*\u00020\u00012\r\u0010\u008b\u0001\u001a\b\u0012\u0004\u0012\u00020\u00010\u001c¢\u0006\u0006\b\u0082\u0001\u0010\u008e\u0001\u001a#\u0010\u0082\u0001\u001a\u00020\u0005*\u00020\u00052\r\u0010\u008b\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u001c¢\u0006\u0006\b\u0082\u0001\u0010\u008f\u0001¨\u0006\u0090\u0001"}, d2 = {"Lkotlin/ranges/IntProgression;", "", "first", "(Lkotlin/ranges/IntProgression;)I", "Lkotlin/ranges/LongProgression;", "", "(Lkotlin/ranges/LongProgression;)J", "Lkotlin/ranges/CharProgression;", "", "(Lkotlin/ranges/CharProgression;)C", "firstOrNull", "(Lkotlin/ranges/IntProgression;)Ljava/lang/Integer;", "(Lkotlin/ranges/LongProgression;)Ljava/lang/Long;", "(Lkotlin/ranges/CharProgression;)Ljava/lang/Character;", "last", "lastOrNull", "Lkotlin/ranges/IntRange;", "Lkotlin/random/Random;", "random", "(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)I", "Lkotlin/ranges/LongRange;", "(Lkotlin/ranges/LongRange;Lkotlin/random/Random;)J", "Lkotlin/ranges/CharRange;", "(Lkotlin/ranges/CharRange;Lkotlin/random/Random;)C", "randomOrNull", "(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)Ljava/lang/Integer;", "(Lkotlin/ranges/LongRange;Lkotlin/random/Random;)Ljava/lang/Long;", "(Lkotlin/ranges/CharRange;Lkotlin/random/Random;)Ljava/lang/Character;", "Lkotlin/ranges/ClosedRange;", "", "value", "", "intRangeContains", "(Lkotlin/ranges/ClosedRange;B)Z", "contains", "longRangeContains", "", "shortRangeContains", "", "doubleRangeContains", "", "floatRangeContains", "Lkotlin/ranges/OpenEndRange;", "(Lkotlin/ranges/OpenEndRange;B)Z", "(Lkotlin/ranges/ClosedRange;D)Z", "byteRangeContains", "(Lkotlin/ranges/ClosedRange;F)Z", "(Lkotlin/ranges/OpenEndRange;F)Z", "(Lkotlin/ranges/ClosedRange;I)Z", "(Lkotlin/ranges/OpenEndRange;I)Z", "(Lkotlin/ranges/ClosedRange;J)Z", "(Lkotlin/ranges/OpenEndRange;J)Z", "(Lkotlin/ranges/ClosedRange;S)Z", "(Lkotlin/ranges/OpenEndRange;S)Z", "to", "downTo", "(IB)Lkotlin/ranges/IntProgression;", "(JB)Lkotlin/ranges/LongProgression;", "(BB)Lkotlin/ranges/IntProgression;", "(SB)Lkotlin/ranges/IntProgression;", "(CC)Lkotlin/ranges/CharProgression;", "(II)Lkotlin/ranges/IntProgression;", "(JI)Lkotlin/ranges/LongProgression;", "(BI)Lkotlin/ranges/IntProgression;", "(SI)Lkotlin/ranges/IntProgression;", "(IJ)Lkotlin/ranges/LongProgression;", "(JJ)Lkotlin/ranges/LongProgression;", "(BJ)Lkotlin/ranges/LongProgression;", "(SJ)Lkotlin/ranges/LongProgression;", "(IS)Lkotlin/ranges/IntProgression;", "(JS)Lkotlin/ranges/LongProgression;", "(BS)Lkotlin/ranges/IntProgression;", "(SS)Lkotlin/ranges/IntProgression;", "reversed", "(Lkotlin/ranges/IntProgression;)Lkotlin/ranges/IntProgression;", "(Lkotlin/ranges/LongProgression;)Lkotlin/ranges/LongProgression;", "(Lkotlin/ranges/CharProgression;)Lkotlin/ranges/CharProgression;", "step", "(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;", "(Lkotlin/ranges/LongProgression;J)Lkotlin/ranges/LongProgression;", "(Lkotlin/ranges/CharProgression;I)Lkotlin/ranges/CharProgression;", "toByteExactOrNull", "(I)Ljava/lang/Byte;", "(J)Ljava/lang/Byte;", "(S)Ljava/lang/Byte;", "(D)Ljava/lang/Byte;", "(F)Ljava/lang/Byte;", "toIntExactOrNull", "(J)Ljava/lang/Integer;", "(D)Ljava/lang/Integer;", "(F)Ljava/lang/Integer;", "toLongExactOrNull", "(D)Ljava/lang/Long;", "(F)Ljava/lang/Long;", "toShortExactOrNull", "(I)Ljava/lang/Short;", "(J)Ljava/lang/Short;", "(D)Ljava/lang/Short;", "(F)Ljava/lang/Short;", "until", "(IB)Lkotlin/ranges/IntRange;", "(JB)Lkotlin/ranges/LongRange;", "(BB)Lkotlin/ranges/IntRange;", "(SB)Lkotlin/ranges/IntRange;", "(CC)Lkotlin/ranges/CharRange;", "(II)Lkotlin/ranges/IntRange;", "(JI)Lkotlin/ranges/LongRange;", "(BI)Lkotlin/ranges/IntRange;", "(SI)Lkotlin/ranges/IntRange;", "(IJ)Lkotlin/ranges/LongRange;", "(JJ)Lkotlin/ranges/LongRange;", "(BJ)Lkotlin/ranges/LongRange;", "(SJ)Lkotlin/ranges/LongRange;", "(IS)Lkotlin/ranges/IntRange;", "(JS)Lkotlin/ranges/LongRange;", "(BS)Lkotlin/ranges/IntRange;", "(SS)Lkotlin/ranges/IntRange;", "", "T", "minimumValue", "coerceAtLeast", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "(BB)B", "(SS)S", "(II)I", "(JJ)J", "(FF)F", "(DD)D", "maximumValue", "coerceAtMost", "coerceIn", "(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "(BBB)B", "(SSS)S", "(III)I", "(JJJ)J", "(FFF)F", "(DDD)D", "Lkotlin/ranges/ClosedFloatingPointRange;", "range", "(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;", "(Ljava/lang/Comparable;Lkotlin/ranges/ClosedRange;)Ljava/lang/Comparable;", "(ILkotlin/ranges/ClosedRange;)I", "(JLkotlin/ranges/ClosedRange;)J", "kotlin-stdlib"}, k = 5, mv = {2, 1, 0}, xi = 49, xs = "kotlin/ranges/RangesKt")
@SourceDebugExtension({"SMAP\n_Ranges.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Ranges.kt\nkotlin/ranges/RangesKt___RangesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1538:1\n1#2:1539\n*E\n"})
/* loaded from: classes2.dex */
public class h extends g {
    public static final byte coerceAtLeast(byte b2, byte b3) {
        return b2 < b3 ? b3 : b2;
    }

    public static final double coerceAtLeast(double d, double d2) {
        return d < d2 ? d2 : d;
    }

    public static final float coerceAtLeast(float f, float f2) {
        return f < f2 ? f2 : f;
    }

    public static int coerceAtLeast(int i, int i2) {
        return i < i2 ? i2 : i;
    }

    public static long coerceAtLeast(long j, long j2) {
        return j < j2 ? j2 : j;
    }

    public static final short coerceAtLeast(short s, short s2) {
        return s < s2 ? s2 : s;
    }

    public static final byte coerceAtMost(byte b2, byte b3) {
        return b2 > b3 ? b3 : b2;
    }

    public static final double coerceAtMost(double d, double d2) {
        return d > d2 ? d2 : d;
    }

    public static final float coerceAtMost(float f, float f2) {
        return f > f2 ? f2 : f;
    }

    public static int coerceAtMost(int i, int i2) {
        return i > i2 ? i2 : i;
    }

    public static long coerceAtMost(long j, long j2) {
        return j > j2 ? j2 : j;
    }

    public static final short coerceAtMost(short s, short s2) {
        return s > s2 ? s2 : s;
    }

    @SinceKotlin(version = "1.7")
    public static final int first(@NotNull IntProgression intProgression) {
        Intrinsics.checkNotNullParameter(intProgression, "<this>");
        if (intProgression.isEmpty()) {
            throw new NoSuchElementException("Progression " + intProgression + " is empty.");
        }
        return intProgression.getFirst();
    }

    @SinceKotlin(version = "1.7")
    public static final long first(@NotNull LongProgression longProgression) {
        Intrinsics.checkNotNullParameter(longProgression, "<this>");
        if (longProgression.isEmpty()) {
            throw new NoSuchElementException("Progression " + longProgression + " is empty.");
        }
        return longProgression.getFirst();
    }

    @SinceKotlin(version = "1.7")
    public static final char first(@NotNull CharProgression charProgression) {
        Intrinsics.checkNotNullParameter(charProgression, "<this>");
        if (charProgression.isEmpty()) {
            throw new NoSuchElementException("Progression " + charProgression + " is empty.");
        }
        return charProgression.getFirst();
    }

    @SinceKotlin(version = "1.7")
    @Nullable
    public static final Integer firstOrNull(@NotNull IntProgression intProgression) {
        Intrinsics.checkNotNullParameter(intProgression, "<this>");
        if (intProgression.isEmpty()) {
            return null;
        }
        return Integer.valueOf(intProgression.getFirst());
    }

    @SinceKotlin(version = "1.7")
    @Nullable
    public static final Long firstOrNull(@NotNull LongProgression longProgression) {
        Intrinsics.checkNotNullParameter(longProgression, "<this>");
        if (longProgression.isEmpty()) {
            return null;
        }
        return Long.valueOf(longProgression.getFirst());
    }

    @SinceKotlin(version = "1.7")
    @Nullable
    public static final Character firstOrNull(@NotNull CharProgression charProgression) {
        Intrinsics.checkNotNullParameter(charProgression, "<this>");
        if (charProgression.isEmpty()) {
            return null;
        }
        return Character.valueOf(charProgression.getFirst());
    }

    @SinceKotlin(version = "1.7")
    public static final int last(@NotNull IntProgression intProgression) {
        Intrinsics.checkNotNullParameter(intProgression, "<this>");
        if (intProgression.isEmpty()) {
            throw new NoSuchElementException("Progression " + intProgression + " is empty.");
        }
        return intProgression.getLast();
    }

    @SinceKotlin(version = "1.7")
    public static final long last(@NotNull LongProgression longProgression) {
        Intrinsics.checkNotNullParameter(longProgression, "<this>");
        if (longProgression.isEmpty()) {
            throw new NoSuchElementException("Progression " + longProgression + " is empty.");
        }
        return longProgression.getLast();
    }

    @SinceKotlin(version = "1.7")
    public static final char last(@NotNull CharProgression charProgression) {
        Intrinsics.checkNotNullParameter(charProgression, "<this>");
        if (charProgression.isEmpty()) {
            throw new NoSuchElementException("Progression " + charProgression + " is empty.");
        }
        return charProgression.getLast();
    }

    @SinceKotlin(version = "1.7")
    @Nullable
    public static final Integer lastOrNull(@NotNull IntProgression intProgression) {
        Intrinsics.checkNotNullParameter(intProgression, "<this>");
        if (intProgression.isEmpty()) {
            return null;
        }
        return Integer.valueOf(intProgression.getLast());
    }

    @SinceKotlin(version = "1.7")
    @Nullable
    public static final Long lastOrNull(@NotNull LongProgression longProgression) {
        Intrinsics.checkNotNullParameter(longProgression, "<this>");
        if (longProgression.isEmpty()) {
            return null;
        }
        return Long.valueOf(longProgression.getLast());
    }

    @SinceKotlin(version = "1.7")
    @Nullable
    public static final Character lastOrNull(@NotNull CharProgression charProgression) {
        Intrinsics.checkNotNullParameter(charProgression, "<this>");
        if (charProgression.isEmpty()) {
            return null;
        }
        return Character.valueOf(charProgression.getLast());
    }

    @SinceKotlin(version = "1.3")
    public static final int random(@NotNull IntRange intRange, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(intRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        try {
            return RandomKt.nextInt(random, intRange);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @SinceKotlin(version = "1.3")
    public static final long random(@NotNull LongRange longRange, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(longRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        try {
            return RandomKt.nextLong(random, longRange);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @SinceKotlin(version = "1.3")
    public static final char random(@NotNull CharRange charRange, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(charRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        try {
            return (char) random.nextInt(charRange.getFirst(), charRange.getLast() + 1);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @SinceKotlin(version = "1.4")
    @Nullable
    public static final Integer randomOrNull(@NotNull IntRange intRange, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(intRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        if (intRange.isEmpty()) {
            return null;
        }
        return Integer.valueOf(RandomKt.nextInt(random, intRange));
    }

    @SinceKotlin(version = "1.4")
    @Nullable
    public static final Long randomOrNull(@NotNull LongRange longRange, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(longRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        if (longRange.isEmpty()) {
            return null;
        }
        return Long.valueOf(RandomKt.nextLong(random, longRange));
    }

    @SinceKotlin(version = "1.4")
    @Nullable
    public static final Character randomOrNull(@NotNull CharRange charRange, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(charRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        if (charRange.isEmpty()) {
            return null;
        }
        return Character.valueOf((char) random.nextInt(charRange.getFirst(), charRange.getLast() + 1));
    }

    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(@NotNull ClosedRange<Integer> closedRange, byte b2) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Integer.valueOf(b2));
    }

    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(@NotNull ClosedRange<Long> closedRange, byte b2) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Long.valueOf(b2));
    }

    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(@NotNull ClosedRange<Short> closedRange, byte b2) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Short.valueOf(b2));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "doubleRangeContains")
    public static final /* synthetic */ boolean doubleRangeContains(ClosedRange closedRange, byte b2) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Double.valueOf(b2));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "floatRangeContains")
    public static final /* synthetic */ boolean floatRangeContains(ClosedRange closedRange, byte b2) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Float.valueOf(b2));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(@NotNull OpenEndRange<Integer> openEndRange, byte b2) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        return openEndRange.contains(Integer.valueOf(b2));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(@NotNull OpenEndRange<Long> openEndRange, byte b2) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        return openEndRange.contains(Long.valueOf(b2));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(@NotNull OpenEndRange<Short> openEndRange, byte b2) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        return openEndRange.contains(Short.valueOf(b2));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "intRangeContains")
    public static final /* synthetic */ boolean intRangeContains(ClosedRange closedRange, double d) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Integer intExactOrNull = toIntExactOrNull(d);
        if (intExactOrNull != null) {
            return closedRange.contains(intExactOrNull);
        }
        return false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "longRangeContains")
    public static final /* synthetic */ boolean longRangeContains(ClosedRange closedRange, double d) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Long longExactOrNull = toLongExactOrNull(d);
        if (longExactOrNull != null) {
            return closedRange.contains(longExactOrNull);
        }
        return false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "byteRangeContains")
    public static final /* synthetic */ boolean byteRangeContains(ClosedRange closedRange, double d) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Byte byteExactOrNull = toByteExactOrNull(d);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "shortRangeContains")
    public static final /* synthetic */ boolean shortRangeContains(ClosedRange closedRange, double d) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Short shortExactOrNull = toShortExactOrNull(d);
        if (shortExactOrNull != null) {
            return closedRange.contains(shortExactOrNull);
        }
        return false;
    }

    @JvmName(name = "floatRangeContains")
    public static final boolean floatRangeContains(@NotNull ClosedRange<Float> closedRange, double d) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Float.valueOf((float) d));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "intRangeContains")
    public static final /* synthetic */ boolean intRangeContains(ClosedRange closedRange, float f) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Integer intExactOrNull = toIntExactOrNull(f);
        if (intExactOrNull != null) {
            return closedRange.contains(intExactOrNull);
        }
        return false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "longRangeContains")
    public static final /* synthetic */ boolean longRangeContains(ClosedRange closedRange, float f) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Long longExactOrNull = toLongExactOrNull(f);
        if (longExactOrNull != null) {
            return closedRange.contains(longExactOrNull);
        }
        return false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "byteRangeContains")
    public static final /* synthetic */ boolean byteRangeContains(ClosedRange closedRange, float f) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Byte byteExactOrNull = toByteExactOrNull(f);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "shortRangeContains")
    public static final /* synthetic */ boolean shortRangeContains(ClosedRange closedRange, float f) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Short shortExactOrNull = toShortExactOrNull(f);
        if (shortExactOrNull != null) {
            return closedRange.contains(shortExactOrNull);
        }
        return false;
    }

    @JvmName(name = "doubleRangeContains")
    public static final boolean doubleRangeContains(@NotNull ClosedRange<Double> closedRange, float f) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Double.valueOf(f));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "doubleRangeContains")
    public static final boolean doubleRangeContains(@NotNull OpenEndRange<Double> openEndRange, float f) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        return openEndRange.contains(Double.valueOf(f));
    }

    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(@NotNull ClosedRange<Long> closedRange, int i) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Long.valueOf(i));
    }

    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(@NotNull ClosedRange<Byte> closedRange, int i) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Byte byteExactOrNull = toByteExactOrNull(i);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(@NotNull ClosedRange<Short> closedRange, int i) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Short shortExactOrNull = toShortExactOrNull(i);
        if (shortExactOrNull != null) {
            return closedRange.contains(shortExactOrNull);
        }
        return false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "doubleRangeContains")
    public static final /* synthetic */ boolean doubleRangeContains(ClosedRange closedRange, int i) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Double.valueOf(i));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "floatRangeContains")
    public static final /* synthetic */ boolean floatRangeContains(ClosedRange closedRange, int i) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Float.valueOf(i));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(@NotNull OpenEndRange<Long> openEndRange, int i) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        return openEndRange.contains(Long.valueOf(i));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(@NotNull OpenEndRange<Byte> openEndRange, int i) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        Byte byteExactOrNull = toByteExactOrNull(i);
        if (byteExactOrNull != null) {
            return openEndRange.contains(byteExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(@NotNull OpenEndRange<Short> openEndRange, int i) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        Short shortExactOrNull = toShortExactOrNull(i);
        if (shortExactOrNull != null) {
            return openEndRange.contains(shortExactOrNull);
        }
        return false;
    }

    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(@NotNull ClosedRange<Integer> closedRange, long j) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Integer intExactOrNull = toIntExactOrNull(j);
        if (intExactOrNull != null) {
            return closedRange.contains(intExactOrNull);
        }
        return false;
    }

    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(@NotNull ClosedRange<Byte> closedRange, long j) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Byte byteExactOrNull = toByteExactOrNull(j);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(@NotNull ClosedRange<Short> closedRange, long j) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Short shortExactOrNull = toShortExactOrNull(j);
        if (shortExactOrNull != null) {
            return closedRange.contains(shortExactOrNull);
        }
        return false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "doubleRangeContains")
    public static final /* synthetic */ boolean doubleRangeContains(ClosedRange closedRange, long j) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Double.valueOf(j));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "floatRangeContains")
    public static final /* synthetic */ boolean floatRangeContains(ClosedRange closedRange, long j) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Float.valueOf(j));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(@NotNull OpenEndRange<Integer> openEndRange, long j) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        Integer intExactOrNull = toIntExactOrNull(j);
        if (intExactOrNull != null) {
            return openEndRange.contains(intExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(@NotNull OpenEndRange<Byte> openEndRange, long j) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        Byte byteExactOrNull = toByteExactOrNull(j);
        if (byteExactOrNull != null) {
            return openEndRange.contains(byteExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(@NotNull OpenEndRange<Short> openEndRange, long j) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        Short shortExactOrNull = toShortExactOrNull(j);
        if (shortExactOrNull != null) {
            return openEndRange.contains(shortExactOrNull);
        }
        return false;
    }

    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(@NotNull ClosedRange<Integer> closedRange, short s) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Integer.valueOf(s));
    }

    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(@NotNull ClosedRange<Long> closedRange, short s) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Long.valueOf(s));
    }

    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(@NotNull ClosedRange<Byte> closedRange, short s) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Byte byteExactOrNull = toByteExactOrNull(s);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "doubleRangeContains")
    public static final /* synthetic */ boolean doubleRangeContains(ClosedRange closedRange, short s) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Double.valueOf(s));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "floatRangeContains")
    public static final /* synthetic */ boolean floatRangeContains(ClosedRange closedRange, short s) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Float.valueOf(s));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(@NotNull OpenEndRange<Integer> openEndRange, short s) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        return openEndRange.contains(Integer.valueOf(s));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(@NotNull OpenEndRange<Long> openEndRange, short s) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        return openEndRange.contains(Long.valueOf(s));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(@NotNull OpenEndRange<Byte> openEndRange, short s) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        Byte byteExactOrNull = toByteExactOrNull(s);
        if (byteExactOrNull != null) {
            return openEndRange.contains(byteExactOrNull);
        }
        return false;
    }

    @NotNull
    public static final IntProgression downTo(int i, byte b2) {
        return IntProgression.INSTANCE.fromClosedRange(i, b2, -1);
    }

    @NotNull
    public static final LongProgression downTo(long j, byte b2) {
        return LongProgression.INSTANCE.fromClosedRange(j, b2, -1L);
    }

    @NotNull
    public static final IntProgression downTo(byte b2, byte b3) {
        return IntProgression.INSTANCE.fromClosedRange(b2, b3, -1);
    }

    @NotNull
    public static final IntProgression downTo(short s, byte b2) {
        return IntProgression.INSTANCE.fromClosedRange(s, b2, -1);
    }

    @NotNull
    public static final CharProgression downTo(char c, char c2) {
        return CharProgression.INSTANCE.fromClosedRange(c, c2, -1);
    }

    @NotNull
    public static IntProgression downTo(int i, int i2) {
        return IntProgression.INSTANCE.fromClosedRange(i, i2, -1);
    }

    @NotNull
    public static final LongProgression downTo(long j, int i) {
        return LongProgression.INSTANCE.fromClosedRange(j, i, -1L);
    }

    @NotNull
    public static final IntProgression downTo(byte b2, int i) {
        return IntProgression.INSTANCE.fromClosedRange(b2, i, -1);
    }

    @NotNull
    public static final IntProgression downTo(short s, int i) {
        return IntProgression.INSTANCE.fromClosedRange(s, i, -1);
    }

    @NotNull
    public static final LongProgression downTo(int i, long j) {
        return LongProgression.INSTANCE.fromClosedRange(i, j, -1L);
    }

    @NotNull
    public static final LongProgression downTo(long j, long j2) {
        return LongProgression.INSTANCE.fromClosedRange(j, j2, -1L);
    }

    @NotNull
    public static final LongProgression downTo(byte b2, long j) {
        return LongProgression.INSTANCE.fromClosedRange(b2, j, -1L);
    }

    @NotNull
    public static final LongProgression downTo(short s, long j) {
        return LongProgression.INSTANCE.fromClosedRange(s, j, -1L);
    }

    @NotNull
    public static final IntProgression downTo(int i, short s) {
        return IntProgression.INSTANCE.fromClosedRange(i, s, -1);
    }

    @NotNull
    public static final LongProgression downTo(long j, short s) {
        return LongProgression.INSTANCE.fromClosedRange(j, s, -1L);
    }

    @NotNull
    public static final IntProgression downTo(byte b2, short s) {
        return IntProgression.INSTANCE.fromClosedRange(b2, s, -1);
    }

    @NotNull
    public static final IntProgression downTo(short s, short s2) {
        return IntProgression.INSTANCE.fromClosedRange(s, s2, -1);
    }

    @NotNull
    public static final IntProgression reversed(@NotNull IntProgression intProgression) {
        Intrinsics.checkNotNullParameter(intProgression, "<this>");
        return IntProgression.INSTANCE.fromClosedRange(intProgression.getLast(), intProgression.getFirst(), -intProgression.getStep());
    }

    @NotNull
    public static final LongProgression reversed(@NotNull LongProgression longProgression) {
        Intrinsics.checkNotNullParameter(longProgression, "<this>");
        return LongProgression.INSTANCE.fromClosedRange(longProgression.getLast(), longProgression.getFirst(), -longProgression.getStep());
    }

    @NotNull
    public static final CharProgression reversed(@NotNull CharProgression charProgression) {
        Intrinsics.checkNotNullParameter(charProgression, "<this>");
        return CharProgression.INSTANCE.fromClosedRange(charProgression.getLast(), charProgression.getFirst(), -charProgression.getStep());
    }

    @NotNull
    public static IntProgression step(@NotNull IntProgression intProgression, int i) {
        Intrinsics.checkNotNullParameter(intProgression, "<this>");
        g.checkStepIsPositive(i > 0, Integer.valueOf(i));
        IntProgression.Companion companion = IntProgression.INSTANCE;
        int first = intProgression.getFirst();
        int last = intProgression.getLast();
        if (intProgression.getStep() <= 0) {
            i = -i;
        }
        return companion.fromClosedRange(first, last, i);
    }

    @NotNull
    public static final LongProgression step(@NotNull LongProgression longProgression, long j) {
        Intrinsics.checkNotNullParameter(longProgression, "<this>");
        g.checkStepIsPositive(j > 0, Long.valueOf(j));
        LongProgression.Companion companion = LongProgression.INSTANCE;
        long first = longProgression.getFirst();
        long last = longProgression.getLast();
        if (longProgression.getStep() <= 0) {
            j = -j;
        }
        return companion.fromClosedRange(first, last, j);
    }

    @NotNull
    public static final CharProgression step(@NotNull CharProgression charProgression, int i) {
        Intrinsics.checkNotNullParameter(charProgression, "<this>");
        g.checkStepIsPositive(i > 0, Integer.valueOf(i));
        CharProgression.Companion companion = CharProgression.INSTANCE;
        char first = charProgression.getFirst();
        char last = charProgression.getLast();
        if (charProgression.getStep() <= 0) {
            i = -i;
        }
        return companion.fromClosedRange(first, last, i);
    }

    @Nullable
    public static final Byte toByteExactOrNull(int i) {
        if (-128 > i || i >= 128) {
            return null;
        }
        return Byte.valueOf((byte) i);
    }

    @Nullable
    public static final Byte toByteExactOrNull(long j) {
        if (-128 > j || j >= 128) {
            return null;
        }
        return Byte.valueOf((byte) j);
    }

    @Nullable
    public static final Byte toByteExactOrNull(short s) {
        if (-128 > s || s >= 128) {
            return null;
        }
        return Byte.valueOf((byte) s);
    }

    @Nullable
    public static final Byte toByteExactOrNull(double d) {
        if (-128.0d > d || d > 127.0d) {
            return null;
        }
        return Byte.valueOf((byte) d);
    }

    @Nullable
    public static final Byte toByteExactOrNull(float f) {
        if (-128.0f > f || f > 127.0f) {
            return null;
        }
        return Byte.valueOf((byte) f);
    }

    @Nullable
    public static final Integer toIntExactOrNull(long j) {
        if (-2147483648L > j || j >= Declaration.VOLATILE_ACCESS) {
            return null;
        }
        return Integer.valueOf((int) j);
    }

    @Nullable
    public static final Integer toIntExactOrNull(double d) {
        if (-2.147483648E9d > d || d > 2.147483647E9d) {
            return null;
        }
        return Integer.valueOf((int) d);
    }

    @Nullable
    public static final Integer toIntExactOrNull(float f) {
        if (-2.1474836E9f > f || f > 2.1474836E9f) {
            return null;
        }
        return Integer.valueOf((int) f);
    }

    @Nullable
    public static final Long toLongExactOrNull(double d) {
        if (-9.223372036854776E18d > d || d > 9.223372036854776E18d) {
            return null;
        }
        return Long.valueOf((long) d);
    }

    @Nullable
    public static final Long toLongExactOrNull(float f) {
        if (-9.223372E18f > f || f > 9.223372E18f) {
            return null;
        }
        return Long.valueOf((long) f);
    }

    @Nullable
    public static final Short toShortExactOrNull(int i) {
        if (-32768 > i || i >= 32768) {
            return null;
        }
        return Short.valueOf((short) i);
    }

    @Nullable
    public static final Short toShortExactOrNull(long j) {
        if (-32768 > j || j >= 32768) {
            return null;
        }
        return Short.valueOf((short) j);
    }

    @Nullable
    public static final Short toShortExactOrNull(double d) {
        if (-32768.0d > d || d > 32767.0d) {
            return null;
        }
        return Short.valueOf((short) d);
    }

    @Nullable
    public static final Short toShortExactOrNull(float f) {
        if (-32768.0f > f || f > 32767.0f) {
            return null;
        }
        return Short.valueOf((short) f);
    }

    @NotNull
    public static final IntRange until(int i, byte b2) {
        return new IntRange(i, b2 - 1);
    }

    @NotNull
    public static final LongRange until(long j, byte b2) {
        return new LongRange(j, b2 - 1);
    }

    @NotNull
    public static final IntRange until(byte b2, byte b3) {
        return new IntRange(b2, b3 - 1);
    }

    @NotNull
    public static final IntRange until(short s, byte b2) {
        return new IntRange(s, b2 - 1);
    }

    @NotNull
    public static final CharRange until(char c, char c2) {
        return Intrinsics.compare((int) c2, 0) <= 0 ? CharRange.INSTANCE.getEMPTY() : new CharRange(c, (char) (c2 - 1));
    }

    @NotNull
    public static IntRange until(int i, int i2) {
        if (i2 <= Integer.MIN_VALUE) {
            return IntRange.INSTANCE.getEMPTY();
        }
        return new IntRange(i, i2 - 1);
    }

    @NotNull
    public static final LongRange until(long j, int i) {
        return new LongRange(j, i - 1);
    }

    @NotNull
    public static final IntRange until(byte b2, int i) {
        if (i <= Integer.MIN_VALUE) {
            return IntRange.INSTANCE.getEMPTY();
        }
        return new IntRange(b2, i - 1);
    }

    @NotNull
    public static final IntRange until(short s, int i) {
        if (i <= Integer.MIN_VALUE) {
            return IntRange.INSTANCE.getEMPTY();
        }
        return new IntRange(s, i - 1);
    }

    @NotNull
    public static final LongRange until(int i, long j) {
        if (j <= Long.MIN_VALUE) {
            return LongRange.INSTANCE.getEMPTY();
        }
        return new LongRange(i, j - 1);
    }

    @NotNull
    public static final LongRange until(long j, long j2) {
        if (j2 <= Long.MIN_VALUE) {
            return LongRange.INSTANCE.getEMPTY();
        }
        return new LongRange(j, j2 - 1);
    }

    @NotNull
    public static final LongRange until(byte b2, long j) {
        if (j <= Long.MIN_VALUE) {
            return LongRange.INSTANCE.getEMPTY();
        }
        return new LongRange(b2, j - 1);
    }

    @NotNull
    public static final LongRange until(short s, long j) {
        if (j <= Long.MIN_VALUE) {
            return LongRange.INSTANCE.getEMPTY();
        }
        return new LongRange(s, j - 1);
    }

    @NotNull
    public static final IntRange until(int i, short s) {
        return new IntRange(i, s - 1);
    }

    @NotNull
    public static final LongRange until(long j, short s) {
        return new LongRange(j, s - 1);
    }

    @NotNull
    public static final IntRange until(byte b2, short s) {
        return new IntRange(b2, s - 1);
    }

    @NotNull
    public static final IntRange until(short s, short s2) {
        return new IntRange(s, s2 - 1);
    }

    @NotNull
    public static final <T extends Comparable<? super T>> T coerceAtLeast(@NotNull T t, @NotNull T minimumValue) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(minimumValue, "minimumValue");
        return t.compareTo(minimumValue) < 0 ? minimumValue : t;
    }

    @NotNull
    public static final <T extends Comparable<? super T>> T coerceAtMost(@NotNull T t, @NotNull T maximumValue) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(maximumValue, "maximumValue");
        return t.compareTo(maximumValue) > 0 ? maximumValue : t;
    }

    @NotNull
    public static final <T extends Comparable<? super T>> T coerceIn(@NotNull T t, @Nullable T t2, @Nullable T t3) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        if (t2 != null && t3 != null) {
            if (t2.compareTo(t3) > 0) {
                throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + t3 + " is less than minimum " + t2 + '.');
            }
            if (t.compareTo(t2) < 0) {
                return t2;
            }
            if (t.compareTo(t3) > 0) {
                return t3;
            }
        } else {
            if (t2 != null && t.compareTo(t2) < 0) {
                return t2;
            }
            if (t3 != null && t.compareTo(t3) > 0) {
                return t3;
            }
        }
        return t;
    }

    public static final byte coerceIn(byte b2, byte b3, byte b4) {
        if (b3 <= b4) {
            return b2 < b3 ? b3 : b2 > b4 ? b4 : b2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((int) b4) + " is less than minimum " + ((int) b3) + '.');
    }

    public static final short coerceIn(short s, short s2, short s3) {
        if (s2 <= s3) {
            return s < s2 ? s2 : s > s3 ? s3 : s;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((int) s3) + " is less than minimum " + ((int) s2) + '.');
    }

    public static int coerceIn(int i, int i2, int i3) {
        if (i2 <= i3) {
            return i < i2 ? i2 : i > i3 ? i3 : i;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i3 + " is less than minimum " + i2 + '.');
    }

    public static long coerceIn(long j, long j2, long j3) {
        if (j2 <= j3) {
            return j < j2 ? j2 : j > j3 ? j3 : j;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j3 + " is less than minimum " + j2 + '.');
    }

    public static final float coerceIn(float f, float f2, float f3) {
        if (f2 <= f3) {
            return f < f2 ? f2 : f > f3 ? f3 : f;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f3 + " is less than minimum " + f2 + '.');
    }

    public static final double coerceIn(double d, double d2, double d3) {
        if (d2 <= d3) {
            return d < d2 ? d2 : d > d3 ? d3 : d;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + d3 + " is less than minimum " + d2 + '.');
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T extends Comparable<? super T>> T coerceIn(@NotNull T t, @NotNull ClosedFloatingPointRange<T> range) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(range, "range");
        if (!range.isEmpty()) {
            return (!range.lessThanOrEquals(t, range.getStart()) || range.lessThanOrEquals(range.getStart(), t)) ? (!range.lessThanOrEquals(range.getEndInclusive(), t) || range.lessThanOrEquals(t, range.getEndInclusive())) ? t : range.getEndInclusive() : range.getStart();
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
    }

    @NotNull
    public static final <T extends Comparable<? super T>> T coerceIn(@NotNull T t, @NotNull ClosedRange<T> range) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return (T) coerceIn((Comparable) t, (ClosedFloatingPointRange) range);
        }
        if (!range.isEmpty()) {
            return t.compareTo(range.getStart()) < 0 ? (T) range.getStart() : t.compareTo(range.getEndInclusive()) > 0 ? (T) range.getEndInclusive() : t;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
    }

    public static final int coerceIn(int i, @NotNull ClosedRange<Integer> range) {
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((Number) coerceIn(Integer.valueOf(i), (ClosedFloatingPointRange<Integer>) range)).intValue();
        }
        if (!range.isEmpty()) {
            return i < ((Number) range.getStart()).intValue() ? ((Number) range.getStart()).intValue() : i > ((Number) range.getEndInclusive()).intValue() ? ((Number) range.getEndInclusive()).intValue() : i;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
    }

    public static long coerceIn(long j, @NotNull ClosedRange<Long> range) {
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((Number) coerceIn(Long.valueOf(j), (ClosedFloatingPointRange<Long>) range)).longValue();
        }
        if (!range.isEmpty()) {
            return j < ((Number) range.getStart()).longValue() ? ((Number) range.getStart()).longValue() : j > ((Number) range.getEndInclusive()).longValue() ? ((Number) range.getEndInclusive()).longValue() : j;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
    }
}
