package kotlin.text;

import com.google.appinventor.components.common.PropertyTypeConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.SinceKotlin;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CharIterator;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000h\n\u0002\u0010\r\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0019\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b7\n\u0002\u0010\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0016\u001a+\u0010\u0005\u001a\u00020\u0000*\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a+\u0010\u0005\u001a\u00020\u0007*\u00020\u00072\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\b\u001a+\u0010\t\u001a\u00020\u0000*\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0086\bø\u0001\u0000¢\u0006\u0004\b\t\u0010\u0006\u001a+\u0010\t\u001a\u00020\u0007*\u00020\u00072\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0086\bø\u0001\u0000¢\u0006\u0004\b\t\u0010\b\u001a+\u0010\n\u001a\u00020\u0000*\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0086\bø\u0001\u0000¢\u0006\u0004\b\n\u0010\u0006\u001a+\u0010\n\u001a\u00020\u0007*\u00020\u00072\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0086\bø\u0001\u0000¢\u0006\u0004\b\n\u0010\b\u001a\u001d\u0010\u0005\u001a\u00020\u0000*\u00020\u00002\n\u0010\f\u001a\u00020\u000b\"\u00020\u0002¢\u0006\u0004\b\u0005\u0010\r\u001a\u001d\u0010\u0005\u001a\u00020\u0007*\u00020\u00072\n\u0010\f\u001a\u00020\u000b\"\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u000e\u001a\u001d\u0010\t\u001a\u00020\u0000*\u00020\u00002\n\u0010\f\u001a\u00020\u000b\"\u00020\u0002¢\u0006\u0004\b\t\u0010\r\u001a\u001d\u0010\t\u001a\u00020\u0007*\u00020\u00072\n\u0010\f\u001a\u00020\u000b\"\u00020\u0002¢\u0006\u0004\b\t\u0010\u000e\u001a\u001d\u0010\n\u001a\u00020\u0000*\u00020\u00002\n\u0010\f\u001a\u00020\u000b\"\u00020\u0002¢\u0006\u0004\b\n\u0010\r\u001a\u001d\u0010\n\u001a\u00020\u0007*\u00020\u00072\n\u0010\f\u001a\u00020\u000b\"\u00020\u0002¢\u0006\u0004\b\n\u0010\u000e\u001a\u0011\u0010\u0005\u001a\u00020\u0000*\u00020\u0000¢\u0006\u0004\b\u0005\u0010\u000f\u001a\u0011\u0010\t\u001a\u00020\u0000*\u00020\u0000¢\u0006\u0004\b\t\u0010\u000f\u001a\u0011\u0010\n\u001a\u00020\u0000*\u00020\u0000¢\u0006\u0004\b\n\u0010\u000f\u001a#\u0010\u0013\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0002¢\u0006\u0004\b\u0013\u0010\u0014\u001a#\u0010\u0013\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0002¢\u0006\u0004\b\u0013\u0010\u0015\u001a#\u0010\u0016\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0002¢\u0006\u0004\b\u0016\u0010\u0014\u001a#\u0010\u0016\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0002¢\u0006\u0004\b\u0016\u0010\u0015\u001a\u0011\u0010\u0017\u001a\u00020\u0003*\u00020\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a\u0014\u0010\u001a\u001a\u00020\u0019*\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u001a\u0010\u001b\u001a\u0019\u0010\u001d\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0010¢\u0006\u0004\b\u001d\u0010\u001e\u001a\u0019\u0010!\u001a\u00020\u0007*\u00020\u00072\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b!\u0010\"\u001a\u0019\u0010#\u001a\u00020\u0000*\u00020\u00002\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b#\u0010$\u001a\u0019\u0010!\u001a\u00020\u0007*\u00020\u00002\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b!\u0010%\u001a#\u0010(\u001a\u00020\u0007*\u00020\u00072\u0006\u0010&\u001a\u00020\u00022\b\b\u0002\u0010'\u001a\u00020\u0007¢\u0006\u0004\b(\u0010)\u001a#\u0010(\u001a\u00020\u0007*\u00020\u00072\u0006\u0010&\u001a\u00020\u00072\b\b\u0002\u0010'\u001a\u00020\u0007¢\u0006\u0004\b(\u0010*\u001a#\u0010+\u001a\u00020\u0007*\u00020\u00072\u0006\u0010&\u001a\u00020\u00022\b\b\u0002\u0010'\u001a\u00020\u0007¢\u0006\u0004\b+\u0010)\u001a#\u0010+\u001a\u00020\u0007*\u00020\u00072\u0006\u0010&\u001a\u00020\u00072\b\b\u0002\u0010'\u001a\u00020\u0007¢\u0006\u0004\b+\u0010*\u001a#\u0010,\u001a\u00020\u0007*\u00020\u00072\u0006\u0010&\u001a\u00020\u00022\b\b\u0002\u0010'\u001a\u00020\u0007¢\u0006\u0004\b,\u0010)\u001a#\u0010,\u001a\u00020\u0007*\u00020\u00072\u0006\u0010&\u001a\u00020\u00072\b\b\u0002\u0010'\u001a\u00020\u0007¢\u0006\u0004\b,\u0010*\u001a#\u0010-\u001a\u00020\u0007*\u00020\u00072\u0006\u0010&\u001a\u00020\u00022\b\b\u0002\u0010'\u001a\u00020\u0007¢\u0006\u0004\b-\u0010)\u001a#\u0010-\u001a\u00020\u0007*\u00020\u00072\u0006\u0010&\u001a\u00020\u00072\b\b\u0002\u0010'\u001a\u00020\u0007¢\u0006\u0004\b-\u0010*\u001a)\u00101\u001a\u00020\u0000*\u00020\u00002\u0006\u0010.\u001a\u00020\u00102\u0006\u0010/\u001a\u00020\u00102\u0006\u00100\u001a\u00020\u0000¢\u0006\u0004\b1\u00102\u001a!\u00101\u001a\u00020\u0000*\u00020\u00002\u0006\u0010 \u001a\u00020\u001f2\u0006\u00100\u001a\u00020\u0000¢\u0006\u0004\b1\u00103\u001a!\u00104\u001a\u00020\u0000*\u00020\u00002\u0006\u0010.\u001a\u00020\u00102\u0006\u0010/\u001a\u00020\u0010¢\u0006\u0004\b4\u00105\u001a\u0019\u00104\u001a\u00020\u0000*\u00020\u00002\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b4\u0010$\u001a\u0019\u00107\u001a\u00020\u0000*\u00020\u00002\u0006\u00106\u001a\u00020\u0000¢\u0006\u0004\b7\u00108\u001a\u0019\u00107\u001a\u00020\u0007*\u00020\u00072\u0006\u00106\u001a\u00020\u0000¢\u0006\u0004\b7\u00109\u001a\u0019\u0010;\u001a\u00020\u0000*\u00020\u00002\u0006\u0010:\u001a\u00020\u0000¢\u0006\u0004\b;\u00108\u001a\u0019\u0010;\u001a\u00020\u0007*\u00020\u00072\u0006\u0010:\u001a\u00020\u0000¢\u0006\u0004\b;\u00109\u001a!\u0010<\u001a\u00020\u0000*\u00020\u00002\u0006\u00106\u001a\u00020\u00002\u0006\u0010:\u001a\u00020\u0000¢\u0006\u0004\b<\u0010=\u001a!\u0010<\u001a\u00020\u0007*\u00020\u00072\u0006\u00106\u001a\u00020\u00002\u0006\u0010:\u001a\u00020\u0000¢\u0006\u0004\b<\u0010>\u001a\u0019\u0010<\u001a\u00020\u0000*\u00020\u00002\u0006\u0010&\u001a\u00020\u0000¢\u0006\u0004\b<\u00108\u001a\u0019\u0010<\u001a\u00020\u0007*\u00020\u00072\u0006\u0010&\u001a\u00020\u0000¢\u0006\u0004\b<\u00109\u001a+\u0010?\u001a\u00020\u0007*\u00020\u00072\u0006\u0010&\u001a\u00020\u00022\u0006\u00100\u001a\u00020\u00072\b\b\u0002\u0010'\u001a\u00020\u0007¢\u0006\u0004\b?\u0010@\u001a+\u0010?\u001a\u00020\u0007*\u00020\u00072\u0006\u0010&\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u00072\b\b\u0002\u0010'\u001a\u00020\u0007¢\u0006\u0004\b?\u0010A\u001a+\u0010B\u001a\u00020\u0007*\u00020\u00072\u0006\u0010&\u001a\u00020\u00022\u0006\u00100\u001a\u00020\u00072\b\b\u0002\u0010'\u001a\u00020\u0007¢\u0006\u0004\bB\u0010@\u001a+\u0010B\u001a\u00020\u0007*\u00020\u00072\u0006\u0010&\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u00072\b\b\u0002\u0010'\u001a\u00020\u0007¢\u0006\u0004\bB\u0010A\u001a+\u0010C\u001a\u00020\u0007*\u00020\u00072\u0006\u0010&\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u00072\b\b\u0002\u0010'\u001a\u00020\u0007¢\u0006\u0004\bC\u0010A\u001a+\u0010C\u001a\u00020\u0007*\u00020\u00072\u0006\u0010&\u001a\u00020\u00022\u0006\u00100\u001a\u00020\u00072\b\b\u0002\u0010'\u001a\u00020\u0007¢\u0006\u0004\bC\u0010@\u001a+\u0010D\u001a\u00020\u0007*\u00020\u00072\u0006\u0010&\u001a\u00020\u00022\u0006\u00100\u001a\u00020\u00072\b\b\u0002\u0010'\u001a\u00020\u0007¢\u0006\u0004\bD\u0010@\u001a+\u0010D\u001a\u00020\u0007*\u00020\u00072\u0006\u0010&\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u00072\b\b\u0002\u0010'\u001a\u00020\u0007¢\u0006\u0004\bD\u0010A\u001a;\u0010I\u001a\u00020\u0003*\u00020\u00002\u0006\u0010E\u001a\u00020\u00102\u0006\u0010F\u001a\u00020\u00002\u0006\u0010G\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010H\u001a\u00020\u0003H\u0000¢\u0006\u0004\bI\u0010J\u001a#\u0010L\u001a\u00020\u0003*\u00020\u00002\u0006\u0010K\u001a\u00020\u00022\b\b\u0002\u0010H\u001a\u00020\u0003¢\u0006\u0004\bL\u0010M\u001a#\u0010N\u001a\u00020\u0003*\u00020\u00002\u0006\u0010K\u001a\u00020\u00022\b\b\u0002\u0010H\u001a\u00020\u0003¢\u0006\u0004\bN\u0010M\u001a#\u0010L\u001a\u00020\u0003*\u00020\u00002\u0006\u00106\u001a\u00020\u00002\b\b\u0002\u0010H\u001a\u00020\u0003¢\u0006\u0004\bL\u0010O\u001a+\u0010L\u001a\u00020\u0003*\u00020\u00002\u0006\u00106\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u00102\b\b\u0002\u0010H\u001a\u00020\u0003¢\u0006\u0004\bL\u0010P\u001a#\u0010N\u001a\u00020\u0003*\u00020\u00002\u0006\u0010:\u001a\u00020\u00002\b\b\u0002\u0010H\u001a\u00020\u0003¢\u0006\u0004\bN\u0010O\u001a#\u0010Q\u001a\u00020\u0007*\u00020\u00002\u0006\u0010F\u001a\u00020\u00002\b\b\u0002\u0010H\u001a\u00020\u0003¢\u0006\u0004\bQ\u0010R\u001a#\u0010S\u001a\u00020\u0007*\u00020\u00002\u0006\u0010F\u001a\u00020\u00002\b\b\u0002\u0010H\u001a\u00020\u0003¢\u0006\u0004\bS\u0010R\u001a-\u0010T\u001a\u00020\u0010*\u00020\u00002\u0006\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010.\u001a\u00020\u00102\b\b\u0002\u0010H\u001a\u00020\u0003¢\u0006\u0004\bT\u0010U\u001a-\u0010V\u001a\u00020\u0010*\u00020\u00002\u0006\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010.\u001a\u00020\u00102\b\b\u0002\u0010H\u001a\u00020\u0003¢\u0006\u0004\bV\u0010U\u001aA\u0010Z\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0007\u0018\u00010Y*\u00020\u00002\f\u0010X\u001a\b\u0012\u0004\u0012\u00020\u00070W2\b\b\u0002\u0010.\u001a\u00020\u00102\b\b\u0002\u0010H\u001a\u00020\u0003¢\u0006\u0004\bZ\u0010[\u001aA\u0010\\\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0007\u0018\u00010Y*\u00020\u00002\f\u0010X\u001a\b\u0012\u0004\u0012\u00020\u00070W2\b\b\u0002\u0010.\u001a\u00020\u00102\b\b\u0002\u0010H\u001a\u00020\u0003¢\u0006\u0004\b\\\u0010[\u001a3\u0010T\u001a\u00020\u0010*\u00020\u00002\f\u0010X\u001a\b\u0012\u0004\u0012\u00020\u00070W2\b\b\u0002\u0010.\u001a\u00020\u00102\b\b\u0002\u0010H\u001a\u00020\u0003¢\u0006\u0004\bT\u0010]\u001a3\u0010V\u001a\u00020\u0010*\u00020\u00002\f\u0010X\u001a\b\u0012\u0004\u0012\u00020\u00070W2\b\b\u0002\u0010.\u001a\u00020\u00102\b\b\u0002\u0010H\u001a\u00020\u0003¢\u0006\u0004\bV\u0010]\u001a-\u0010^\u001a\u00020\u0010*\u00020\u00002\u0006\u0010K\u001a\u00020\u00022\b\b\u0002\u0010.\u001a\u00020\u00102\b\b\u0002\u0010H\u001a\u00020\u0003¢\u0006\u0004\b^\u0010_\u001a-\u0010^\u001a\u00020\u0010*\u00020\u00002\u0006\u0010`\u001a\u00020\u00072\b\b\u0002\u0010.\u001a\u00020\u00102\b\b\u0002\u0010H\u001a\u00020\u0003¢\u0006\u0004\b^\u0010a\u001a-\u0010b\u001a\u00020\u0010*\u00020\u00002\u0006\u0010K\u001a\u00020\u00022\b\b\u0002\u0010.\u001a\u00020\u00102\b\b\u0002\u0010H\u001a\u00020\u0003¢\u0006\u0004\bb\u0010_\u001a-\u0010b\u001a\u00020\u0010*\u00020\u00002\u0006\u0010`\u001a\u00020\u00072\b\b\u0002\u0010.\u001a\u00020\u00102\b\b\u0002\u0010H\u001a\u00020\u0003¢\u0006\u0004\bb\u0010a\u001a&\u0010c\u001a\u00020\u0003*\u00020\u00002\u0006\u0010F\u001a\u00020\u00002\b\b\u0002\u0010H\u001a\u00020\u0003H\u0086\u0002¢\u0006\u0004\bc\u0010O\u001a&\u0010c\u001a\u00020\u0003*\u00020\u00002\u0006\u0010K\u001a\u00020\u00022\b\b\u0002\u0010H\u001a\u00020\u0003H\u0086\u0002¢\u0006\u0004\bc\u0010M\u001a\u0017\u0010f\u001a\u00020e2\u0006\u0010d\u001a\u00020\u0010H\u0000¢\u0006\u0004\bf\u0010g\u001a?\u0010k\u001a\b\u0012\u0004\u0012\u00020\u00070j*\u00020\u00002\u0012\u0010i\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070h\"\u00020\u00072\b\b\u0002\u0010H\u001a\u00020\u00032\b\b\u0002\u0010d\u001a\u00020\u0010¢\u0006\u0004\bk\u0010l\u001a?\u0010n\u001a\b\u0012\u0004\u0012\u00020\u00070m*\u00020\u00002\u0012\u0010i\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070h\"\u00020\u00072\b\b\u0002\u0010H\u001a\u00020\u00032\b\b\u0002\u0010d\u001a\u00020\u0010¢\u0006\u0004\bn\u0010o\u001a7\u0010k\u001a\b\u0012\u0004\u0012\u00020\u00070j*\u00020\u00002\n\u0010i\u001a\u00020\u000b\"\u00020\u00022\b\b\u0002\u0010H\u001a\u00020\u00032\b\b\u0002\u0010d\u001a\u00020\u0010¢\u0006\u0004\bk\u0010p\u001a7\u0010n\u001a\b\u0012\u0004\u0012\u00020\u00070m*\u00020\u00002\n\u0010i\u001a\u00020\u000b\"\u00020\u00022\b\b\u0002\u0010H\u001a\u00020\u00032\b\b\u0002\u0010d\u001a\u00020\u0010¢\u0006\u0004\bn\u0010q\u001a\u0017\u0010r\u001a\b\u0012\u0004\u0012\u00020\u00070j*\u00020\u0000¢\u0006\u0004\br\u0010s\u001a\u0017\u0010t\u001a\b\u0012\u0004\u0012\u00020\u00070m*\u00020\u0000¢\u0006\u0004\bt\u0010u\u001a\u001f\u0010v\u001a\u00020\u0003*\u0004\u0018\u00010\u00002\b\u0010F\u001a\u0004\u0018\u00010\u0000H\u0000¢\u0006\u0004\bv\u0010w\u001a\u001f\u0010x\u001a\u00020\u0003*\u0004\u0018\u00010\u00002\b\u0010F\u001a\u0004\u0018\u00010\u0000H\u0000¢\u0006\u0004\bx\u0010w\u001a\u0013\u0010y\u001a\u00020\u0003*\u00020\u0007H\u0007¢\u0006\u0004\by\u0010z\u001a\u0015\u0010{\u001a\u0004\u0018\u00010\u0003*\u00020\u0007H\u0007¢\u0006\u0004\b{\u0010|\"\u0015\u0010\u007f\u001a\u00020\u001f*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b}\u0010~\"\u0018\u0010\u0082\u0001\u001a\u00020\u0010*\u00020\u00008F¢\u0006\b\u001a\u0006\b\u0080\u0001\u0010\u0081\u0001\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0083\u0001"}, d2 = {"", "Lkotlin/Function1;", "", "", "predicate", "trim", "(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/CharSequence;", "", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;", "trimStart", "trimEnd", "", "chars", "(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;", "(Ljava/lang/String;[C)Ljava/lang/String;", "(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;", "", PropertyTypeConstants.PROPERTY_TYPE_LENGTH, "padChar", "padStart", "(Ljava/lang/CharSequence;IC)Ljava/lang/CharSequence;", "(Ljava/lang/String;IC)Ljava/lang/String;", "padEnd", "isBlank", "(Ljava/lang/CharSequence;)Z", "Lkotlin/collections/CharIterator;", "iterator", "(Ljava/lang/CharSequence;)Lkotlin/collections/CharIterator;", "index", "hasSurrogatePairAt", "(Ljava/lang/CharSequence;I)Z", "Lkotlin/ranges/IntRange;", "range", "substring", "(Ljava/lang/String;Lkotlin/ranges/IntRange;)Ljava/lang/String;", "subSequence", "(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;)Ljava/lang/CharSequence;", "(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;)Ljava/lang/String;", "delimiter", "missingDelimiterValue", "substringBefore", "(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "substringAfter", "substringBeforeLast", "substringAfterLast", "startIndex", "endIndex", "replacement", "replaceRange", "(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;", "(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;", "removeRange", "(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;", "prefix", "removePrefix", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;", "(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;", "suffix", "removeSuffix", "removeSurrounding", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;", "(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;", "replaceBefore", "(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "replaceAfter", "replaceAfterLast", "replaceBeforeLast", "thisOffset", "other", "otherOffset", "ignoreCase", "regionMatchesImpl", "(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z", "char", "startsWith", "(Ljava/lang/CharSequence;CZ)Z", "endsWith", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Z", "commonPrefixWith", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Ljava/lang/String;", "commonSuffixWith", "indexOfAny", "(Ljava/lang/CharSequence;[CIZ)I", "lastIndexOfAny", "", "strings", "Lkotlin/Pair;", "findAnyOf", "(Ljava/lang/CharSequence;Ljava/util/Collection;IZ)Lkotlin/Pair;", "findLastAnyOf", "(Ljava/lang/CharSequence;Ljava/util/Collection;IZ)I", "indexOf", "(Ljava/lang/CharSequence;CIZ)I", PropertyTypeConstants.PROPERTY_TYPE_STRING, "(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I", "lastIndexOf", "contains", "limit", "", "requireNonNegativeLimit", "(I)V", "", "delimiters", "Lkotlin/sequences/Sequence;", "splitToSequence", "(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lkotlin/sequences/Sequence;", "", "split", "(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;", "(Ljava/lang/CharSequence;[CZI)Lkotlin/sequences/Sequence;", "(Ljava/lang/CharSequence;[CZI)Ljava/util/List;", "lineSequence", "(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;", "lines", "(Ljava/lang/CharSequence;)Ljava/util/List;", "contentEqualsIgnoreCaseImpl", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z", "contentEqualsImpl", "toBooleanStrict", "(Ljava/lang/String;)Z", "toBooleanStrictOrNull", "(Ljava/lang/String;)Ljava/lang/Boolean;", "getIndices", "(Ljava/lang/CharSequence;)Lkotlin/ranges/IntRange;", "indices", "getLastIndex", "(Ljava/lang/CharSequence;)I", "lastIndex", "kotlin-stdlib"}, k = 5, mv = {2, 1, 0}, xi = 49, xs = "kotlin/text/StringsKt")
@SourceDebugExtension({"SMAP\nStrings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1560:1\n80#1,22:1561\n114#1,5:1583\n131#1,5:1588\n80#1,22:1593\n108#1:1615\n80#1,22:1616\n114#1,5:1638\n125#1:1643\n114#1,5:1644\n131#1,5:1649\n142#1:1654\n131#1,5:1655\n80#1,22:1660\n114#1,5:1682\n131#1,5:1687\n1069#2,2:1692\n12647#3,2:1694\n12647#3,2:1696\n295#4,2:1698\n295#4,2:1700\n1557#4:1703\n1628#4,3:1704\n1557#4:1707\n1628#4,3:1708\n1#5:1702\n*S KotlinDebug\n*F\n+ 1 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n108#1:1561,22\n125#1:1583,5\n142#1:1588,5\n147#1:1593,22\n152#1:1615\n152#1:1616,22\n157#1:1638,5\n162#1:1643\n162#1:1644,5\n167#1:1649,5\n172#1:1654\n172#1:1655,5\n177#1:1660,22\n188#1:1682,5\n199#1:1687,5\n312#1:1692,2\n952#1:1694,2\n976#1:1696,2\n1015#1:1698,2\n1021#1:1700,2\n1382#1:1703\n1382#1:1704,3\n1407#1:1707\n1407#1:1708,3\n*E\n"})
/* loaded from: classes2.dex */
public class StringsKt__StringsKt extends q {
    @NotNull
    public static final CharSequence trim(@NotNull CharSequence charSequence, @NotNull Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        int length = charSequence.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zBooleanValue = ((Boolean) com.google.youngandroid.a.d(charSequence, !z ? i : length, predicate)).booleanValue();
            if (z) {
                if (!zBooleanValue) {
                    break;
                }
                length--;
            } else if (zBooleanValue) {
                i++;
            } else {
                z = true;
            }
        }
        return charSequence.subSequence(i, length + 1);
    }

    @NotNull
    public static final CharSequence trimStart(@NotNull CharSequence charSequence, @NotNull Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!((Boolean) com.google.youngandroid.a.d(charSequence, i, predicate)).booleanValue()) {
                return charSequence.subSequence(i, charSequence.length());
            }
        }
        return "";
    }

    @NotNull
    public static final CharSequence trimEnd(@NotNull CharSequence charSequence, @NotNull Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        int length = charSequence.length() - 1;
        if (length < 0) {
            return "";
        }
        while (true) {
            int i = length - 1;
            if (!((Boolean) com.google.youngandroid.a.d(charSequence, length, predicate)).booleanValue()) {
                return charSequence.subSequence(0, length + 1);
            }
            if (i < 0) {
                return "";
            }
            length = i;
        }
    }

    public static /* synthetic */ CharSequence padStart$default(CharSequence charSequence, int i, char c, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            c = ' ';
        }
        return padStart(charSequence, i, c);
    }

    @NotNull
    public static final CharSequence padStart(@NotNull CharSequence charSequence, int i, char c) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (i < 0) {
            throw new IllegalArgumentException(_COROUTINE.a.e(i, "Desired length ", " is less than zero."));
        }
        if (i <= charSequence.length()) {
            return charSequence.subSequence(0, charSequence.length());
        }
        StringBuilder sb = new StringBuilder(i);
        int length = i - charSequence.length();
        int i2 = 1;
        if (1 <= length) {
            while (true) {
                sb.append(c);
                if (i2 == length) {
                    break;
                }
                i2++;
            }
        }
        sb.append(charSequence);
        return sb;
    }

    public static /* synthetic */ String padStart$default(String str, int i, char c, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            c = ' ';
        }
        return padStart(str, i, c);
    }

    @NotNull
    public static String padStart(@NotNull String str, int i, char c) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return padStart((CharSequence) str, i, c).toString();
    }

    public static /* synthetic */ CharSequence padEnd$default(CharSequence charSequence, int i, char c, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            c = ' ';
        }
        return padEnd(charSequence, i, c);
    }

    @NotNull
    public static final CharSequence padEnd(@NotNull CharSequence charSequence, int i, char c) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (i < 0) {
            throw new IllegalArgumentException(_COROUTINE.a.e(i, "Desired length ", " is less than zero."));
        }
        if (i <= charSequence.length()) {
            return charSequence.subSequence(0, charSequence.length());
        }
        StringBuilder sb = new StringBuilder(i);
        sb.append(charSequence);
        int length = i - charSequence.length();
        int i2 = 1;
        if (1 <= length) {
            while (true) {
                sb.append(c);
                if (i2 == length) {
                    break;
                }
                i2++;
            }
        }
        return sb;
    }

    public static /* synthetic */ String padEnd$default(String str, int i, char c, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            c = ' ';
        }
        return padEnd(str, i, c);
    }

    @NotNull
    public static final String padEnd(@NotNull String str, int i, char c) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return padEnd((CharSequence) str, i, c).toString();
    }

    @NotNull
    public static final CharIterator iterator(@NotNull final CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return new CharIterator() { // from class: kotlin.text.StringsKt__StringsKt.iterator.1

            /* renamed from: a, reason: collision with root package name */
            public int f6059a;

            @Override // kotlin.collections.CharIterator
            public char nextChar() {
                int i = this.f6059a;
                this.f6059a = i + 1;
                return charSequence.charAt(i);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f6059a < charSequence.length();
            }
        };
    }

    @NotNull
    public static final IntRange getIndices(@NotNull CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return new IntRange(0, charSequence.length() - 1);
    }

    public static int getLastIndex(@NotNull CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    public static final boolean hasSurrogatePairAt(@NotNull CharSequence charSequence, int i) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return i >= 0 && i <= charSequence.length() + (-2) && Character.isHighSurrogate(charSequence.charAt(i)) && Character.isLowSurrogate(charSequence.charAt(i + 1));
    }

    @NotNull
    public static final String substring(@NotNull String str, @NotNull IntRange range) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(range, "range");
        String strSubstring = str.substring(range.getStart().intValue(), range.getEndInclusive().intValue() + 1);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    @NotNull
    public static final CharSequence subSequence(@NotNull CharSequence charSequence, @NotNull IntRange range) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(range, "range");
        return charSequence.subSequence(range.getStart().intValue(), range.getEndInclusive().intValue() + 1);
    }

    @NotNull
    public static final String substring(@NotNull CharSequence charSequence, @NotNull IntRange range) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(range, "range");
        return charSequence.subSequence(range.getStart().intValue(), range.getEndInclusive().intValue() + 1).toString();
    }

    public static /* synthetic */ String substringBefore$default(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return substringBefore(str, c, str2);
    }

    @NotNull
    public static final String substringBefore(@NotNull String str, char c, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int iIndexOf$default = indexOf$default((CharSequence) str, c, 0, false, 6, (Object) null);
        if (iIndexOf$default == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(0, iIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static /* synthetic */ String substringBefore$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return substringBefore(str, str2, str3);
    }

    @NotNull
    public static final String substringBefore(@NotNull String str, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int iIndexOf$default = indexOf$default((CharSequence) str, delimiter, 0, false, 6, (Object) null);
        if (iIndexOf$default == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(0, iIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static /* synthetic */ String substringAfter$default(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return substringAfter(str, c, str2);
    }

    @NotNull
    public static final String substringAfter(@NotNull String str, char c, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int iIndexOf$default = indexOf$default((CharSequence) str, c, 0, false, 6, (Object) null);
        if (iIndexOf$default == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(iIndexOf$default + 1, str.length());
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static /* synthetic */ String substringAfter$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return substringAfter(str, str2, str3);
    }

    @NotNull
    public static final String substringAfter(@NotNull String str, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int iIndexOf$default = indexOf$default((CharSequence) str, delimiter, 0, false, 6, (Object) null);
        if (iIndexOf$default == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(delimiter.length() + iIndexOf$default, str.length());
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static /* synthetic */ String substringBeforeLast$default(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return substringBeforeLast(str, c, str2);
    }

    @NotNull
    public static final String substringBeforeLast(@NotNull String str, char c, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int iLastIndexOf$default = lastIndexOf$default((CharSequence) str, c, 0, false, 6, (Object) null);
        if (iLastIndexOf$default == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(0, iLastIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static /* synthetic */ String substringBeforeLast$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return substringBeforeLast(str, str2, str3);
    }

    @NotNull
    public static final String substringBeforeLast(@NotNull String str, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int iLastIndexOf$default = lastIndexOf$default((CharSequence) str, delimiter, 0, false, 6, (Object) null);
        if (iLastIndexOf$default == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(0, iLastIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static /* synthetic */ String substringAfterLast$default(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return substringAfterLast(str, c, str2);
    }

    @NotNull
    public static String substringAfterLast(@NotNull String str, char c, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int iLastIndexOf$default = lastIndexOf$default((CharSequence) str, c, 0, false, 6, (Object) null);
        if (iLastIndexOf$default == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(iLastIndexOf$default + 1, str.length());
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static /* synthetic */ String substringAfterLast$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return substringAfterLast(str, str2, str3);
    }

    @NotNull
    public static final String substringAfterLast(@NotNull String str, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int iLastIndexOf$default = lastIndexOf$default((CharSequence) str, delimiter, 0, false, 6, (Object) null);
        if (iLastIndexOf$default == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(delimiter.length() + iLastIndexOf$default, str.length());
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    @NotNull
    public static final CharSequence replaceRange(@NotNull CharSequence charSequence, int i, int i2, @NotNull CharSequence replacement) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        if (i2 < i) {
            throw new IndexOutOfBoundsException("End index (" + i2 + ") is less than start index (" + i + ").");
        }
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence, 0, i);
        Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
        sb.append(replacement);
        sb.append(charSequence, i2, charSequence.length());
        Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
        return sb;
    }

    @NotNull
    public static final CharSequence replaceRange(@NotNull CharSequence charSequence, @NotNull IntRange range, @NotNull CharSequence replacement) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(range, "range");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        return replaceRange(charSequence, range.getStart().intValue(), com.google.youngandroid.a.a(range, 1), replacement);
    }

    @NotNull
    public static final CharSequence removeRange(@NotNull CharSequence charSequence, int i, int i2) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (i2 < i) {
            throw new IndexOutOfBoundsException("End index (" + i2 + ") is less than start index (" + i + ").");
        }
        if (i2 == i) {
            return charSequence.subSequence(0, charSequence.length());
        }
        StringBuilder sb = new StringBuilder(charSequence.length() - (i2 - i));
        sb.append(charSequence, 0, i);
        Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
        sb.append(charSequence, i2, charSequence.length());
        Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
        return sb;
    }

    @NotNull
    public static final CharSequence removeRange(@NotNull CharSequence charSequence, @NotNull IntRange range) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(range, "range");
        return removeRange(charSequence, range.getStart().intValue(), com.google.youngandroid.a.a(range, 1));
    }

    @NotNull
    public static final CharSequence removePrefix(@NotNull CharSequence charSequence, @NotNull CharSequence prefix) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        if (startsWith$default(charSequence, prefix, false, 2, (Object) null)) {
            return charSequence.subSequence(prefix.length(), charSequence.length());
        }
        return charSequence.subSequence(0, charSequence.length());
    }

    @NotNull
    public static String removePrefix(@NotNull String str, @NotNull CharSequence prefix) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        if (!startsWith$default((CharSequence) str, prefix, false, 2, (Object) null)) {
            return str;
        }
        String strSubstring = str.substring(prefix.length());
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    @NotNull
    public static final CharSequence removeSuffix(@NotNull CharSequence charSequence, @NotNull CharSequence suffix) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        if (endsWith$default(charSequence, suffix, false, 2, (Object) null)) {
            return charSequence.subSequence(0, charSequence.length() - suffix.length());
        }
        return charSequence.subSequence(0, charSequence.length());
    }

    @NotNull
    public static final String removeSuffix(@NotNull String str, @NotNull CharSequence suffix) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        if (!endsWith$default((CharSequence) str, suffix, false, 2, (Object) null)) {
            return str;
        }
        String strSubstring = str.substring(0, str.length() - suffix.length());
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    @NotNull
    public static final CharSequence removeSurrounding(@NotNull CharSequence charSequence, @NotNull CharSequence prefix, @NotNull CharSequence suffix) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        if (charSequence.length() >= suffix.length() + prefix.length() && startsWith$default(charSequence, prefix, false, 2, (Object) null) && endsWith$default(charSequence, suffix, false, 2, (Object) null)) {
            return charSequence.subSequence(prefix.length(), charSequence.length() - suffix.length());
        }
        return charSequence.subSequence(0, charSequence.length());
    }

    @NotNull
    public static final String removeSurrounding(@NotNull String str, @NotNull CharSequence prefix, @NotNull CharSequence suffix) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        if (str.length() < suffix.length() + prefix.length() || !startsWith$default((CharSequence) str, prefix, false, 2, (Object) null) || !endsWith$default((CharSequence) str, suffix, false, 2, (Object) null)) {
            return str;
        }
        String strSubstring = str.substring(prefix.length(), str.length() - suffix.length());
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    @NotNull
    public static final CharSequence removeSurrounding(@NotNull CharSequence charSequence, @NotNull CharSequence delimiter) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        return removeSurrounding(charSequence, delimiter, delimiter);
    }

    @NotNull
    public static final String removeSurrounding(@NotNull String str, @NotNull CharSequence delimiter) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        return removeSurrounding(str, delimiter, delimiter);
    }

    public static /* synthetic */ String replaceBefore$default(String str, char c, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = str;
        }
        return replaceBefore(str, c, str2, str3);
    }

    @NotNull
    public static final String replaceBefore(@NotNull String str, char c, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int iIndexOf$default = indexOf$default((CharSequence) str, c, 0, false, 6, (Object) null);
        return iIndexOf$default == -1 ? missingDelimiterValue : replaceRange(str, 0, iIndexOf$default, replacement).toString();
    }

    public static /* synthetic */ String replaceBefore$default(String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 4) != 0) {
            str4 = str;
        }
        return replaceBefore(str, str2, str3, str4);
    }

    @NotNull
    public static final String replaceBefore(@NotNull String str, @NotNull String delimiter, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int iIndexOf$default = indexOf$default((CharSequence) str, delimiter, 0, false, 6, (Object) null);
        return iIndexOf$default == -1 ? missingDelimiterValue : replaceRange(str, 0, iIndexOf$default, replacement).toString();
    }

    public static /* synthetic */ String replaceAfter$default(String str, char c, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = str;
        }
        return replaceAfter(str, c, str2, str3);
    }

    @NotNull
    public static final String replaceAfter(@NotNull String str, char c, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int iIndexOf$default = indexOf$default((CharSequence) str, c, 0, false, 6, (Object) null);
        return iIndexOf$default == -1 ? missingDelimiterValue : replaceRange(str, iIndexOf$default + 1, str.length(), replacement).toString();
    }

    public static /* synthetic */ String replaceAfter$default(String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 4) != 0) {
            str4 = str;
        }
        return replaceAfter(str, str2, str3, str4);
    }

    @NotNull
    public static final String replaceAfter(@NotNull String str, @NotNull String delimiter, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int iIndexOf$default = indexOf$default((CharSequence) str, delimiter, 0, false, 6, (Object) null);
        return iIndexOf$default == -1 ? missingDelimiterValue : replaceRange(str, delimiter.length() + iIndexOf$default, str.length(), replacement).toString();
    }

    public static /* synthetic */ String replaceAfterLast$default(String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 4) != 0) {
            str4 = str;
        }
        return replaceAfterLast(str, str2, str3, str4);
    }

    @NotNull
    public static final String replaceAfterLast(@NotNull String str, @NotNull String delimiter, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int iLastIndexOf$default = lastIndexOf$default((CharSequence) str, delimiter, 0, false, 6, (Object) null);
        return iLastIndexOf$default == -1 ? missingDelimiterValue : replaceRange(str, delimiter.length() + iLastIndexOf$default, str.length(), replacement).toString();
    }

    public static /* synthetic */ String replaceAfterLast$default(String str, char c, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = str;
        }
        return replaceAfterLast(str, c, str2, str3);
    }

    @NotNull
    public static final String replaceAfterLast(@NotNull String str, char c, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int iLastIndexOf$default = lastIndexOf$default((CharSequence) str, c, 0, false, 6, (Object) null);
        return iLastIndexOf$default == -1 ? missingDelimiterValue : replaceRange(str, iLastIndexOf$default + 1, str.length(), replacement).toString();
    }

    public static /* synthetic */ String replaceBeforeLast$default(String str, char c, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = str;
        }
        return replaceBeforeLast(str, c, str2, str3);
    }

    @NotNull
    public static final String replaceBeforeLast(@NotNull String str, char c, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int iLastIndexOf$default = lastIndexOf$default((CharSequence) str, c, 0, false, 6, (Object) null);
        return iLastIndexOf$default == -1 ? missingDelimiterValue : replaceRange(str, 0, iLastIndexOf$default, replacement).toString();
    }

    public static /* synthetic */ String replaceBeforeLast$default(String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 4) != 0) {
            str4 = str;
        }
        return replaceBeforeLast(str, str2, str3, str4);
    }

    @NotNull
    public static final String replaceBeforeLast(@NotNull String str, @NotNull String delimiter, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int iLastIndexOf$default = lastIndexOf$default((CharSequence) str, delimiter, 0, false, 6, (Object) null);
        return iLastIndexOf$default == -1 ? missingDelimiterValue : replaceRange(str, 0, iLastIndexOf$default, replacement).toString();
    }

    public static final boolean regionMatchesImpl(@NotNull CharSequence charSequence, int i, @NotNull CharSequence other, int i2, int i3, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (i2 < 0 || i < 0 || i > charSequence.length() - i3 || i2 > other.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!c.equals(charSequence.charAt(i + i4), other.charAt(i2 + i4), z)) {
                return false;
            }
        }
        return true;
    }

    public static /* synthetic */ boolean startsWith$default(CharSequence charSequence, char c, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return startsWith(charSequence, c, z);
    }

    public static final boolean startsWith(@NotNull CharSequence charSequence, char c, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return charSequence.length() > 0 && c.equals(charSequence.charAt(0), c, z);
    }

    public static /* synthetic */ boolean endsWith$default(CharSequence charSequence, char c, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return endsWith(charSequence, c, z);
    }

    public static final boolean endsWith(@NotNull CharSequence charSequence, char c, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return charSequence.length() > 0 && c.equals(charSequence.charAt(getLastIndex(charSequence)), c, z);
    }

    public static /* synthetic */ boolean startsWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return startsWith(charSequence, charSequence2, z);
    }

    public static final boolean startsWith(@NotNull CharSequence charSequence, @NotNull CharSequence prefix, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        if (!z && (charSequence instanceof String) && (prefix instanceof String)) {
            return q.startsWith$default((String) charSequence, (String) prefix, false, 2, null);
        }
        return regionMatchesImpl(charSequence, 0, prefix, 0, prefix.length(), z);
    }

    public static /* synthetic */ boolean startsWith$default(CharSequence charSequence, CharSequence charSequence2, int i, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        return startsWith(charSequence, charSequence2, i, z);
    }

    public static final boolean startsWith(@NotNull CharSequence charSequence, @NotNull CharSequence prefix, int i, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        if (!z && (charSequence instanceof String) && (prefix instanceof String)) {
            return q.startsWith$default((String) charSequence, (String) prefix, i, false, 4, null);
        }
        return regionMatchesImpl(charSequence, i, prefix, 0, prefix.length(), z);
    }

    public static /* synthetic */ boolean endsWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return endsWith(charSequence, charSequence2, z);
    }

    public static final boolean endsWith(@NotNull CharSequence charSequence, @NotNull CharSequence suffix, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        if (!z && (charSequence instanceof String) && (suffix instanceof String)) {
            return q.endsWith$default((String) charSequence, (String) suffix, false, 2, null);
        }
        return regionMatchesImpl(charSequence, charSequence.length() - suffix.length(), suffix, 0, suffix.length(), z);
    }

    public static /* synthetic */ String commonPrefixWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return commonPrefixWith(charSequence, charSequence2, z);
    }

    @NotNull
    public static final String commonPrefixWith(@NotNull CharSequence charSequence, @NotNull CharSequence other, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        int iMin = Math.min(charSequence.length(), other.length());
        int i = 0;
        while (i < iMin && c.equals(charSequence.charAt(i), other.charAt(i), z)) {
            i++;
        }
        int i2 = i - 1;
        if (hasSurrogatePairAt(charSequence, i2) || hasSurrogatePairAt(other, i2)) {
            i--;
        }
        return charSequence.subSequence(0, i).toString();
    }

    public static /* synthetic */ String commonSuffixWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return commonSuffixWith(charSequence, charSequence2, z);
    }

    @NotNull
    public static final String commonSuffixWith(@NotNull CharSequence charSequence, @NotNull CharSequence other, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        int length = charSequence.length();
        int iMin = Math.min(length, other.length());
        int i = 0;
        while (i < iMin && c.equals(charSequence.charAt((length - i) - 1), other.charAt((r1 - i) - 1), z)) {
            i++;
        }
        if (hasSurrogatePairAt(charSequence, (length - i) - 1) || hasSurrogatePairAt(other, (r1 - i) - 1)) {
            i--;
        }
        return charSequence.subSequence(length - i, length).toString();
    }

    public static /* synthetic */ int indexOfAny$default(CharSequence charSequence, char[] cArr, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return indexOfAny(charSequence, cArr, i, z);
    }

    public static final int indexOfAny(@NotNull CharSequence charSequence, @NotNull char[] chars, int i, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(chars, "chars");
        if (!z && chars.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(ArraysKt.single(chars), i);
        }
        int iCoerceAtLeast = RangesKt.coerceAtLeast(i, 0);
        int lastIndex = getLastIndex(charSequence);
        if (iCoerceAtLeast > lastIndex) {
            return -1;
        }
        while (true) {
            char cCharAt = charSequence.charAt(iCoerceAtLeast);
            for (char c : chars) {
                if (c.equals(c, cCharAt, z)) {
                    return iCoerceAtLeast;
                }
            }
            if (iCoerceAtLeast == lastIndex) {
                return -1;
            }
            iCoerceAtLeast++;
        }
    }

    public static /* synthetic */ int lastIndexOfAny$default(CharSequence charSequence, char[] cArr, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return lastIndexOfAny(charSequence, cArr, i, z);
    }

    public static final int lastIndexOfAny(@NotNull CharSequence charSequence, @NotNull char[] chars, int i, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(chars, "chars");
        if (!z && chars.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).lastIndexOf(ArraysKt.single(chars), i);
        }
        for (int iCoerceAtMost = RangesKt.coerceAtMost(i, getLastIndex(charSequence)); -1 < iCoerceAtMost; iCoerceAtMost--) {
            char cCharAt = charSequence.charAt(iCoerceAtMost);
            for (char c : chars) {
                if (c.equals(c, cCharAt, z)) {
                    return iCoerceAtMost;
                }
            }
        }
        return -1;
    }

    public static final int b(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2) {
        IntProgression intProgressionDownTo;
        if (!z2) {
            intProgressionDownTo = new IntRange(RangesKt.coerceAtLeast(i, 0), RangesKt.coerceAtMost(i2, charSequence.length()));
        } else {
            intProgressionDownTo = RangesKt.downTo(RangesKt.coerceAtMost(i, getLastIndex(charSequence)), RangesKt.coerceAtLeast(i2, 0));
        }
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            int first = intProgressionDownTo.getFirst();
            int last = intProgressionDownTo.getLast();
            int step = intProgressionDownTo.getStep();
            if ((step <= 0 || first > last) && (step >= 0 || last > first)) {
                return -1;
            }
            int i3 = first;
            while (true) {
                String str = (String) charSequence2;
                boolean z3 = z;
                if (q.regionMatches(str, 0, (String) charSequence, i3, str.length(), z3)) {
                    return i3;
                }
                if (i3 == last) {
                    return -1;
                }
                i3 += step;
                z = z3;
            }
        } else {
            boolean z4 = z;
            int first2 = intProgressionDownTo.getFirst();
            int last2 = intProgressionDownTo.getLast();
            int step2 = intProgressionDownTo.getStep();
            if ((step2 <= 0 || first2 > last2) && (step2 >= 0 || last2 > first2)) {
                return -1;
            }
            int i4 = first2;
            while (true) {
                boolean z5 = z4;
                CharSequence charSequence3 = charSequence;
                CharSequence charSequence4 = charSequence2;
                z4 = z5;
                if (regionMatchesImpl(charSequence4, 0, charSequence3, i4, charSequence2.length(), z5)) {
                    return i4;
                }
                if (i4 == last2) {
                    return -1;
                }
                i4 += step2;
                charSequence2 = charSequence4;
                charSequence = charSequence3;
            }
        }
    }

    public static final Pair a(CharSequence charSequence, Collection collection, int i, boolean z, boolean z2) {
        CharSequence charSequence2;
        Object next;
        boolean z3;
        Object next2;
        if (!z && collection.size() == 1) {
            String str = (String) CollectionsKt___CollectionsKt.single(collection);
            int iIndexOf$default = !z2 ? indexOf$default(charSequence, str, i, false, 4, (Object) null) : lastIndexOf$default(charSequence, str, i, false, 4, (Object) null);
            if (iIndexOf$default >= 0) {
                return TuplesKt.to(Integer.valueOf(iIndexOf$default), str);
            }
        } else {
            CharSequence charSequence3 = charSequence;
            IntProgression intRange = !z2 ? new IntRange(RangesKt.coerceAtLeast(i, 0), charSequence3.length()) : RangesKt.downTo(RangesKt.coerceAtMost(i, getLastIndex(charSequence3)), 0);
            if (charSequence3 instanceof String) {
                int first = intRange.getFirst();
                int last = intRange.getLast();
                int step = intRange.getStep();
                if ((step > 0 && first <= last) || (step < 0 && last <= first)) {
                    int i2 = first;
                    while (true) {
                        Iterator it = collection.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z3 = z;
                                next2 = null;
                                break;
                            }
                            next2 = it.next();
                            String str2 = (String) next2;
                            z3 = z;
                            if (q.regionMatches(str2, 0, (String) charSequence3, i2, str2.length(), z3)) {
                                break;
                            }
                            z = z3;
                        }
                        String str3 = (String) next2;
                        if (str3 == null) {
                            if (i2 == last) {
                                break;
                            }
                            i2 += step;
                            z = z3;
                        } else {
                            return TuplesKt.to(Integer.valueOf(i2), str3);
                        }
                    }
                }
            } else {
                boolean z4 = z;
                int first2 = intRange.getFirst();
                int last2 = intRange.getLast();
                int step2 = intRange.getStep();
                if ((step2 > 0 && first2 <= last2) || (step2 < 0 && last2 <= first2)) {
                    int i3 = first2;
                    while (true) {
                        Iterator it2 = collection.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                charSequence2 = charSequence3;
                                next = null;
                                break;
                            }
                            next = it2.next();
                            String str4 = (String) next;
                            boolean z5 = z4;
                            charSequence2 = charSequence3;
                            z4 = z5;
                            if (regionMatchesImpl(str4, 0, charSequence2, i3, str4.length(), z5)) {
                                break;
                            }
                            charSequence3 = charSequence2;
                        }
                        String str5 = (String) next;
                        if (str5 == null) {
                            if (i3 == last2) {
                                break;
                            }
                            i3 += step2;
                            charSequence3 = charSequence2;
                        } else {
                            return TuplesKt.to(Integer.valueOf(i3), str5);
                        }
                    }
                }
            }
        }
        return null;
    }

    public static /* synthetic */ Pair findAnyOf$default(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return findAnyOf(charSequence, collection, i, z);
    }

    @Nullable
    public static final Pair<Integer, String> findAnyOf(@NotNull CharSequence charSequence, @NotNull Collection<String> strings, int i, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(strings, "strings");
        return a(charSequence, strings, i, z, false);
    }

    public static /* synthetic */ Pair findLastAnyOf$default(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return findLastAnyOf(charSequence, collection, i, z);
    }

    @Nullable
    public static final Pair<Integer, String> findLastAnyOf(@NotNull CharSequence charSequence, @NotNull Collection<String> strings, int i, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(strings, "strings");
        return a(charSequence, strings, i, z, true);
    }

    public static /* synthetic */ int indexOfAny$default(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return indexOfAny(charSequence, (Collection<String>) collection, i, z);
    }

    public static final int indexOfAny(@NotNull CharSequence charSequence, @NotNull Collection<String> strings, int i, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(strings, "strings");
        Pair pairA = a(charSequence, strings, i, z, false);
        if (pairA != null) {
            return ((Number) pairA.getFirst()).intValue();
        }
        return -1;
    }

    public static /* synthetic */ int lastIndexOfAny$default(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return lastIndexOfAny(charSequence, (Collection<String>) collection, i, z);
    }

    public static final int lastIndexOfAny(@NotNull CharSequence charSequence, @NotNull Collection<String> strings, int i, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(strings, "strings");
        Pair pairA = a(charSequence, strings, i, z, true);
        if (pairA != null) {
            return ((Number) pairA.getFirst()).intValue();
        }
        return -1;
    }

    public static /* synthetic */ int indexOf$default(CharSequence charSequence, char c, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return indexOf(charSequence, c, i, z);
    }

    public static final int indexOf(@NotNull CharSequence charSequence, char c, int i, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return (z || !(charSequence instanceof String)) ? indexOfAny(charSequence, new char[]{c}, i, z) : ((String) charSequence).indexOf(c, i);
    }

    public static /* synthetic */ int indexOf$default(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return indexOf(charSequence, str, i, z);
    }

    public static final int indexOf(@NotNull CharSequence charSequence, @NotNull String string, int i, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(string, "string");
        if (z || !(charSequence instanceof String)) {
            return b(charSequence, string, i, charSequence.length(), z, false);
        }
        return ((String) charSequence).indexOf(string, i);
    }

    public static /* synthetic */ int lastIndexOf$default(CharSequence charSequence, char c, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return lastIndexOf(charSequence, c, i, z);
    }

    public static final int lastIndexOf(@NotNull CharSequence charSequence, char c, int i, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return (z || !(charSequence instanceof String)) ? lastIndexOfAny(charSequence, new char[]{c}, i, z) : ((String) charSequence).lastIndexOf(c, i);
    }

    public static /* synthetic */ int lastIndexOf$default(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return lastIndexOf(charSequence, str, i, z);
    }

    public static final int lastIndexOf(@NotNull CharSequence charSequence, @NotNull String string, int i, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(string, "string");
        if (z || !(charSequence instanceof String)) {
            return b(charSequence, string, i, 0, z, true);
        }
        return ((String) charSequence).lastIndexOf(string, i);
    }

    public static /* synthetic */ boolean contains$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return contains(charSequence, charSequence2, z);
    }

    public static final boolean contains(@NotNull CharSequence charSequence, @NotNull CharSequence other, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return other instanceof String ? indexOf$default(charSequence, (String) other, 0, z, 2, (Object) null) >= 0 : b(charSequence, other, 0, charSequence.length(), z, false) >= 0;
    }

    public static /* synthetic */ boolean contains$default(CharSequence charSequence, char c, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return contains(charSequence, c, z);
    }

    public static final boolean contains(@NotNull CharSequence charSequence, char c, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return indexOf$default(charSequence, c, 0, z, 2, (Object) null) >= 0;
    }

    public static Sequence c(CharSequence charSequence, char[] cArr, boolean z, int i) {
        requireNonNegativeLimit(i);
        return new DelimitedRangesSequence(charSequence, 0, i, new s(cArr, 0, z));
    }

    public static Sequence d(CharSequence charSequence, String[] strArr, boolean z, int i) {
        requireNonNegativeLimit(i);
        return new DelimitedRangesSequence(charSequence, 0, i, new s(ArraysKt.asList(strArr), 1, z));
    }

    public static final void requireNonNegativeLimit(int i) {
        if (i < 0) {
            throw new IllegalArgumentException(_COROUTINE.a.d(i, "Limit must be non-negative, but was ").toString());
        }
    }

    public static /* synthetic */ Sequence splitToSequence$default(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return splitToSequence(charSequence, strArr, z, i);
    }

    @NotNull
    public static final Sequence<String> splitToSequence(@NotNull CharSequence charSequence, @NotNull String[] delimiters, boolean z, int i) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(delimiters, "delimiters");
        return SequencesKt.map(d(charSequence, delimiters, z, i), new r(charSequence, 1));
    }

    public static /* synthetic */ List split$default(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return split(charSequence, strArr, z, i);
    }

    @NotNull
    public static final List<String> split(@NotNull CharSequence charSequence, @NotNull String[] delimiters, boolean z, int i) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(delimiters, "delimiters");
        if (delimiters.length == 1) {
            String str = delimiters[0];
            if (str.length() != 0) {
                return e(charSequence, str, i, z);
            }
        }
        Iterable iterableAsIterable = SequencesKt.asIterable(d(charSequence, delimiters, z, i));
        ArrayList arrayList = new ArrayList(kotlin.collections.l.collectionSizeOrDefault(iterableAsIterable, 10));
        Iterator it = iterableAsIterable.iterator();
        while (it.hasNext()) {
            arrayList.add(substring(charSequence, (IntRange) it.next()));
        }
        return arrayList;
    }

    public static /* synthetic */ Sequence splitToSequence$default(CharSequence charSequence, char[] cArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return splitToSequence(charSequence, cArr, z, i);
    }

    @NotNull
    public static final Sequence<String> splitToSequence(@NotNull CharSequence charSequence, @NotNull char[] delimiters, boolean z, int i) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(delimiters, "delimiters");
        return SequencesKt.map(c(charSequence, delimiters, z, i), new r(charSequence, 0));
    }

    public static /* synthetic */ List split$default(CharSequence charSequence, char[] cArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return split(charSequence, cArr, z, i);
    }

    @NotNull
    public static final List<String> split(@NotNull CharSequence charSequence, @NotNull char[] delimiters, boolean z, int i) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(delimiters, "delimiters");
        if (delimiters.length == 1) {
            return e(charSequence, String.valueOf(delimiters[0]), i, z);
        }
        Iterable iterableAsIterable = SequencesKt.asIterable(c(charSequence, delimiters, z, i));
        ArrayList arrayList = new ArrayList(kotlin.collections.l.collectionSizeOrDefault(iterableAsIterable, 10));
        Iterator it = iterableAsIterable.iterator();
        while (it.hasNext()) {
            arrayList.add(substring(charSequence, (IntRange) it.next()));
        }
        return arrayList;
    }

    public static final List e(CharSequence charSequence, String str, int i, boolean z) {
        requireNonNegativeLimit(i);
        int length = 0;
        int iIndexOf = indexOf(charSequence, str, 0, z);
        if (iIndexOf == -1 || i == 1) {
            return CollectionsKt.listOf(charSequence.toString());
        }
        boolean z2 = i > 0;
        ArrayList arrayList = new ArrayList(z2 ? RangesKt.coerceAtMost(i, 10) : 10);
        do {
            arrayList.add(charSequence.subSequence(length, iIndexOf).toString());
            length = str.length() + iIndexOf;
            if (z2 && arrayList.size() == i - 1) {
                break;
            }
            iIndexOf = indexOf(charSequence, str, length, z);
        } while (iIndexOf != -1);
        arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList;
    }

    @NotNull
    public static final Sequence<String> lineSequence(@NotNull final CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return new Sequence<String>() { // from class: kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1
            @Override // kotlin.sequences.Sequence
            public Iterator<String> iterator() {
                return new e(charSequence);
            }
        };
    }

    @NotNull
    public static final List<String> lines(@NotNull CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return SequencesKt.toList(lineSequence(charSequence));
    }

    public static final boolean contentEqualsIgnoreCaseImpl(@Nullable CharSequence charSequence, @Nullable CharSequence charSequence2) {
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return q.equals((String) charSequence, (String) charSequence2, true);
        }
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || charSequence.length() != charSequence2.length()) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!c.equals(charSequence.charAt(i), charSequence2.charAt(i), true)) {
                return false;
            }
        }
        return true;
    }

    public static final boolean contentEqualsImpl(@Nullable CharSequence charSequence, @Nullable CharSequence charSequence2) {
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return Intrinsics.areEqual(charSequence, charSequence2);
        }
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || charSequence.length() != charSequence2.length()) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (charSequence.charAt(i) != charSequence2.charAt(i)) {
                return false;
            }
        }
        return true;
    }

    @SinceKotlin(version = "1.5")
    public static final boolean toBooleanStrict(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (Intrinsics.areEqual(str, "true")) {
            return true;
        }
        if (Intrinsics.areEqual(str, "false")) {
            return false;
        }
        throw new IllegalArgumentException(_COROUTINE.a.i("The string doesn't represent a boolean value: ", str));
    }

    @SinceKotlin(version = "1.5")
    @Nullable
    public static final Boolean toBooleanStrictOrNull(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (Intrinsics.areEqual(str, "true")) {
            return Boolean.TRUE;
        }
        if (Intrinsics.areEqual(str, "false")) {
            return Boolean.FALSE;
        }
        return null;
    }

    @NotNull
    public static final String trim(@NotNull String str, @NotNull Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        int length = str.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zBooleanValue = predicate.invoke(Character.valueOf(str.charAt(!z ? i : length))).booleanValue();
            if (z) {
                if (!zBooleanValue) {
                    break;
                }
                length--;
            } else if (zBooleanValue) {
                i++;
            } else {
                z = true;
            }
        }
        return str.subSequence(i, length + 1).toString();
    }

    @NotNull
    public static final String trimStart(@NotNull String str, @NotNull Function1<? super Character, Boolean> predicate) {
        CharSequence charSequenceSubSequence;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        int length = str.length();
        int i = 0;
        while (true) {
            if (i < length) {
                if (!predicate.invoke(Character.valueOf(str.charAt(i))).booleanValue()) {
                    charSequenceSubSequence = str.subSequence(i, str.length());
                    break;
                }
                i++;
            } else {
                charSequenceSubSequence = "";
                break;
            }
        }
        return charSequenceSubSequence.toString();
    }

    @NotNull
    public static final String trimEnd(@NotNull String str, @NotNull Function1<? super Character, Boolean> predicate) {
        CharSequence charSequenceSubSequence;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        int length = str.length() - 1;
        if (length >= 0) {
            while (true) {
                int i = length - 1;
                if (!predicate.invoke(Character.valueOf(str.charAt(length))).booleanValue()) {
                    charSequenceSubSequence = str.subSequence(0, length + 1);
                    break;
                }
                if (i < 0) {
                    break;
                }
                length = i;
            }
            charSequenceSubSequence = "";
        } else {
            charSequenceSubSequence = "";
        }
        return charSequenceSubSequence.toString();
    }

    @NotNull
    public static final CharSequence trim(@NotNull CharSequence charSequence, @NotNull char... chars) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(chars, "chars");
        int length = charSequence.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zContains = ArraysKt.contains(chars, charSequence.charAt(!z ? i : length));
            if (z) {
                if (!zContains) {
                    break;
                }
                length--;
            } else if (zContains) {
                i++;
            } else {
                z = true;
            }
        }
        return charSequence.subSequence(i, length + 1);
    }

    @NotNull
    public static final String trim(@NotNull String str, @NotNull char... chars) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(chars, "chars");
        int length = str.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zContains = ArraysKt.contains(chars, str.charAt(!z ? i : length));
            if (z) {
                if (!zContains) {
                    break;
                }
                length--;
            } else if (zContains) {
                i++;
            } else {
                z = true;
            }
        }
        return str.subSequence(i, length + 1).toString();
    }

    @NotNull
    public static final CharSequence trimStart(@NotNull CharSequence charSequence, @NotNull char... chars) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(chars, "chars");
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!ArraysKt.contains(chars, charSequence.charAt(i))) {
                return charSequence.subSequence(i, charSequence.length());
            }
        }
        return "";
    }

    @NotNull
    public static final String trimStart(@NotNull String str, @NotNull char... chars) {
        CharSequence charSequenceSubSequence;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(chars, "chars");
        int length = str.length();
        int i = 0;
        while (true) {
            if (i < length) {
                if (!ArraysKt.contains(chars, str.charAt(i))) {
                    charSequenceSubSequence = str.subSequence(i, str.length());
                    break;
                }
                i++;
            } else {
                charSequenceSubSequence = "";
                break;
            }
        }
        return charSequenceSubSequence.toString();
    }

    @NotNull
    public static final CharSequence trimEnd(@NotNull CharSequence charSequence, @NotNull char... chars) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(chars, "chars");
        int length = charSequence.length() - 1;
        if (length < 0) {
            return "";
        }
        while (true) {
            int i = length - 1;
            if (!ArraysKt.contains(chars, charSequence.charAt(length))) {
                return charSequence.subSequence(0, length + 1);
            }
            if (i < 0) {
                return "";
            }
            length = i;
        }
    }

    @NotNull
    public static final String trimEnd(@NotNull String str, @NotNull char... chars) {
        CharSequence charSequenceSubSequence;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(chars, "chars");
        int length = str.length() - 1;
        if (length >= 0) {
            while (true) {
                int i = length - 1;
                if (!ArraysKt.contains(chars, str.charAt(length))) {
                    charSequenceSubSequence = str.subSequence(0, length + 1);
                    break;
                }
                if (i < 0) {
                    break;
                }
                length = i;
            }
            charSequenceSubSequence = "";
        } else {
            charSequenceSubSequence = "";
        }
        return charSequenceSubSequence.toString();
    }

    @NotNull
    public static CharSequence trim(@NotNull CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        int length = charSequence.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zIsWhitespace = b.isWhitespace(charSequence.charAt(!z ? i : length));
            if (z) {
                if (!zIsWhitespace) {
                    break;
                }
                length--;
            } else if (zIsWhitespace) {
                i++;
            } else {
                z = true;
            }
        }
        return charSequence.subSequence(i, length + 1);
    }

    @NotNull
    public static final CharSequence trimStart(@NotNull CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!b.isWhitespace(charSequence.charAt(i))) {
                return charSequence.subSequence(i, charSequence.length());
            }
        }
        return "";
    }

    @NotNull
    public static final CharSequence trimEnd(@NotNull CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        int length = charSequence.length() - 1;
        if (length < 0) {
            return "";
        }
        while (true) {
            int i = length - 1;
            if (!b.isWhitespace(charSequence.charAt(length))) {
                return charSequence.subSequence(0, length + 1);
            }
            if (i < 0) {
                return "";
            }
            length = i;
        }
    }

    public static final boolean isBlank(@NotNull CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        for (int i = 0; i < charSequence.length(); i++) {
            if (!b.isWhitespace(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }
}
