package kotlin.text;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.ranges.IntRange;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\b\u0003\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B[\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012:\u0010\u000e\u001a6\u0012\u0004\u0012\u00020\u0003\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\f0\b¢\u0006\u0002\b\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\u0011H\u0096\u0002¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lkotlin/text/DelimitedRangesSequence;", "Lkotlin/sequences/Sequence;", "Lkotlin/ranges/IntRange;", "", "input", "", "startIndex", "limit", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "currentIndex", "Lkotlin/Pair;", "Lkotlin/ExtensionFunctionType;", "getNextMatch", "<init>", "(Ljava/lang/CharSequence;IILkotlin/jvm/functions/Function2;)V", "", "iterator", "()Ljava/util/Iterator;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
final class DelimitedRangesSequence implements Sequence<IntRange> {

    /* renamed from: a, reason: collision with root package name */
    public final CharSequence f6024a;

    /* renamed from: b, reason: collision with root package name */
    public final int f6025b;
    public final int c;
    public final Function2 d;

    public DelimitedRangesSequence(@NotNull CharSequence input, int i, int i2, @NotNull Function2<? super CharSequence, ? super Integer, Pair<Integer, Integer>> getNextMatch) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(getNextMatch, "getNextMatch");
        this.f6024a = input;
        this.f6025b = i;
        this.c = i2;
        this.d = getNextMatch;
    }

    @Metadata(d1 = {"\u0000!\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u001a*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007R\"\u0010\u000f\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0013\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\n\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000eR\"\u0010\u0017\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\n\u001a\u0004\b\u0015\u0010\f\"\u0004\b\u0016\u0010\u000eR$\u0010\u001d\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u0004\"\u0004\b\u001b\u0010\u001cR\"\u0010!\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\n\u001a\u0004\b\u001f\u0010\f\"\u0004\b \u0010\u000e¨\u0006\""}, d2 = {"kotlin/text/DelimitedRangesSequence$iterator$1", "", "Lkotlin/ranges/IntRange;", "next", "()Lkotlin/ranges/IntRange;", "", "hasNext", "()Z", "", "a", "I", "getNextState", "()I", "setNextState", "(I)V", "nextState", "b", "getCurrentStartIndex", "setCurrentStartIndex", "currentStartIndex", "c", "getNextSearchIndex", "setNextSearchIndex", "nextSearchIndex", "d", "Lkotlin/ranges/IntRange;", "getNextItem", "setNextItem", "(Lkotlin/ranges/IntRange;)V", "nextItem", "e", "getCounter", "setCounter", "counter", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* renamed from: kotlin.text.DelimitedRangesSequence$iterator$1, reason: invalid class name */
    public static final class AnonymousClass1 implements Iterator<IntRange>, KMappedMarker {

        /* renamed from: a, reason: collision with root package name and from kotlin metadata */
        public int nextState = -1;

        /* renamed from: b, reason: collision with root package name and from kotlin metadata */
        public int currentStartIndex;

        /* renamed from: c, reason: from kotlin metadata */
        public int nextSearchIndex;

        /* renamed from: d, reason: from kotlin metadata */
        public IntRange nextItem;

        /* renamed from: e, reason: from kotlin metadata */
        public int counter;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public AnonymousClass1() {
            int iCoerceIn = kotlin.ranges.h.coerceIn(DelimitedRangesSequence.this.f6025b, 0, DelimitedRangesSequence.this.f6024a.length());
            this.currentStartIndex = iCoerceIn;
            this.nextSearchIndex = iCoerceIn;
        }

        public final int getNextState() {
            return this.nextState;
        }

        public final void setNextState(int i) {
            this.nextState = i;
        }

        public final int getCurrentStartIndex() {
            return this.currentStartIndex;
        }

        public final void setCurrentStartIndex(int i) {
            this.currentStartIndex = i;
        }

        public final int getNextSearchIndex() {
            return this.nextSearchIndex;
        }

        public final void setNextSearchIndex(int i) {
            this.nextSearchIndex = i;
        }

        public final IntRange getNextItem() {
            return this.nextItem;
        }

        public final void setNextItem(IntRange intRange) {
            this.nextItem = intRange;
        }

        public final int getCounter() {
            return this.counter;
        }

        public final void setCounter(int i) {
            this.counter = i;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0020  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                r7 = this;
                int r0 = r7.nextSearchIndex
                r1 = 0
                if (r0 >= 0) goto Lb
                r7.nextState = r1
                r0 = 0
                r7.nextItem = r0
                return
            Lb:
                kotlin.text.DelimitedRangesSequence r0 = kotlin.text.DelimitedRangesSequence.this
                int r2 = kotlin.text.DelimitedRangesSequence.access$getLimit$p(r0)
                r3 = -1
                r4 = 1
                if (r2 <= 0) goto L20
                int r2 = r7.counter
                int r2 = r2 + r4
                r7.counter = r2
                int r5 = kotlin.text.DelimitedRangesSequence.access$getLimit$p(r0)
                if (r2 >= r5) goto L2c
            L20:
                int r2 = r7.nextSearchIndex
                java.lang.CharSequence r5 = kotlin.text.DelimitedRangesSequence.access$getInput$p(r0)
                int r5 = r5.length()
                if (r2 <= r5) goto L40
            L2c:
                kotlin.ranges.IntRange r1 = new kotlin.ranges.IntRange
                int r2 = r7.currentStartIndex
                java.lang.CharSequence r0 = kotlin.text.DelimitedRangesSequence.access$getInput$p(r0)
                int r0 = kotlin.text.StringsKt__StringsKt.getLastIndex(r0)
                r1.<init>(r2, r0)
                r7.nextItem = r1
                r7.nextSearchIndex = r3
                goto L8f
            L40:
                kotlin.jvm.functions.Function2 r2 = kotlin.text.DelimitedRangesSequence.access$getGetNextMatch$p(r0)
                java.lang.CharSequence r5 = kotlin.text.DelimitedRangesSequence.access$getInput$p(r0)
                int r6 = r7.nextSearchIndex
                java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
                java.lang.Object r2 = r2.invoke(r5, r6)
                kotlin.Pair r2 = (kotlin.Pair) r2
                if (r2 != 0) goto L6a
                kotlin.ranges.IntRange r1 = new kotlin.ranges.IntRange
                int r2 = r7.currentStartIndex
                java.lang.CharSequence r0 = kotlin.text.DelimitedRangesSequence.access$getInput$p(r0)
                int r0 = kotlin.text.StringsKt__StringsKt.getLastIndex(r0)
                r1.<init>(r2, r0)
                r7.nextItem = r1
                r7.nextSearchIndex = r3
                goto L8f
            L6a:
                java.lang.Object r0 = r2.component1()
                java.lang.Number r0 = (java.lang.Number) r0
                int r0 = r0.intValue()
                java.lang.Object r2 = r2.component2()
                java.lang.Number r2 = (java.lang.Number) r2
                int r2 = r2.intValue()
                int r3 = r7.currentStartIndex
                kotlin.ranges.IntRange r3 = kotlin.ranges.RangesKt.until(r3, r0)
                r7.nextItem = r3
                int r0 = r0 + r2
                r7.currentStartIndex = r0
                if (r2 != 0) goto L8c
                r1 = 1
            L8c:
                int r0 = r0 + r1
                r7.nextSearchIndex = r0
            L8f:
                r7.nextState = r4
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.text.DelimitedRangesSequence.AnonymousClass1.a():void");
        }

        @Override // java.util.Iterator
        public IntRange next() {
            if (this.nextState == -1) {
                a();
            }
            if (this.nextState == 0) {
                throw new NoSuchElementException();
            }
            IntRange intRange = this.nextItem;
            Intrinsics.checkNotNull(intRange, "null cannot be cast to non-null type kotlin.ranges.IntRange");
            this.nextItem = null;
            this.nextState = -1;
            return intRange;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.nextState == -1) {
                a();
            }
            return this.nextState == 1;
        }
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<IntRange> iterator() {
        return new AnonymousClass1();
    }
}
