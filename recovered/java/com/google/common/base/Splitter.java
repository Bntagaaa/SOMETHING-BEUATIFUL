package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.l;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class Splitter {

    /* renamed from: a, reason: collision with root package name */
    public final CharMatcher f3700a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f3701b;
    public final f c;
    public final int d;

    public interface f {
        Iterator<String> iterator(Splitter splitter, CharSequence charSequence);
    }

    public Splitter(f fVar) {
        this(fVar, false, CharMatcher.none(), Integer.MAX_VALUE);
    }

    public Splitter(f fVar, boolean z, CharMatcher charMatcher, int i) {
        this.c = fVar;
        this.f3701b = z;
        this.f3700a = charMatcher;
        this.d = i;
    }

    public static Splitter on(char c2) {
        return on(CharMatcher.is(c2));
    }

    public static Splitter on(CharMatcher charMatcher) {
        Preconditions.checkNotNull(charMatcher);
        return new Splitter(new a(charMatcher));
    }

    public static class a implements f {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ CharMatcher f3704a;

        public a(CharMatcher charMatcher) {
            this.f3704a = charMatcher;
        }

        /* renamed from: com.google.common.base.Splitter$a$a, reason: collision with other inner class name */
        public class C0090a extends e {
            @Override // com.google.common.base.Splitter.e
            public final int separatorEnd(int i) {
                return i + 1;
            }

            public C0090a(Splitter splitter, CharSequence charSequence) {
                super(splitter, charSequence);
            }

            @Override // com.google.common.base.Splitter.e
            public final int separatorStart(int i) {
                return a.this.f3704a.indexIn(this.c, i);
            }
        }

        @Override // com.google.common.base.Splitter.f
        public e iterator(Splitter splitter, CharSequence charSequence) {
            return new C0090a(splitter, charSequence);
        }
    }

    public static Splitter on(String str) {
        Preconditions.checkArgument(str.length() != 0, "The separator may not be the empty string.");
        if (str.length() == 1) {
            return on(str.charAt(0));
        }
        return new Splitter(new b(str));
    }

    public static class b implements f {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f3705a;

        public b(String str) {
            this.f3705a = str;
        }

        public class a extends e {
            public a(Splitter splitter, CharSequence charSequence) {
                super(splitter, charSequence);
            }

            /* JADX WARN: Code restructure failed: missing block: B:8:0x0022, code lost:
            
                r8 = r8 + 1;
             */
            @Override // com.google.common.base.Splitter.e
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public int separatorStart(int r8) {
                /*
                    r7 = this;
                    com.google.common.base.Splitter$b r0 = com.google.common.base.Splitter.b.this
                    java.lang.String r1 = r0.f3705a
                    int r1 = r1.length()
                    java.lang.CharSequence r2 = r7.c
                    int r3 = r2.length()
                    int r3 = r3 - r1
                Lf:
                    if (r8 > r3) goto L29
                    r4 = 0
                L12:
                    if (r4 >= r1) goto L28
                    int r5 = r4 + r8
                    char r5 = r2.charAt(r5)
                    java.lang.String r6 = r0.f3705a
                    char r6 = r6.charAt(r4)
                    if (r5 == r6) goto L25
                    int r8 = r8 + 1
                    goto Lf
                L25:
                    int r4 = r4 + 1
                    goto L12
                L28:
                    return r8
                L29:
                    r8 = -1
                    return r8
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.common.base.Splitter.b.a.separatorStart(int):int");
            }

            @Override // com.google.common.base.Splitter.e
            public int separatorEnd(int i) {
                return b.this.f3705a.length() + i;
            }
        }

        @Override // com.google.common.base.Splitter.f
        public e iterator(Splitter splitter, CharSequence charSequence) {
            return new a(splitter, charSequence);
        }
    }

    @GwtIncompatible
    public static Splitter on(Pattern pattern) {
        h hVar = new h(pattern);
        Preconditions.checkArgument(!hVar.matcher("").matches(), "The pattern may not match the empty string: %s", hVar);
        return new Splitter(new o(hVar));
    }

    @GwtIncompatible
    public static Splitter onPattern(String str) {
        l.b bVar = l.f3745a;
        Preconditions.checkNotNull(str);
        com.google.common.base.e eVarCompile = l.f3745a.compile(str);
        Preconditions.checkArgument(!eVarCompile.matcher("").matches(), "The pattern may not match the empty string: %s", eVarCompile);
        return new Splitter(new o(eVarCompile));
    }

    public static Splitter fixedLength(int i) {
        Preconditions.checkArgument(i > 0, "The length may not be less than 1");
        return new Splitter(new c(i));
    }

    public static class c implements f {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f3706a;

        public c(int i) {
            this.f3706a = i;
        }

        public class a extends e {
            @Override // com.google.common.base.Splitter.e
            public int separatorEnd(int i) {
                return i;
            }

            public a(Splitter splitter, CharSequence charSequence) {
                super(splitter, charSequence);
            }

            @Override // com.google.common.base.Splitter.e
            public int separatorStart(int i) {
                int i2 = i + c.this.f3706a;
                if (i2 < this.c.length()) {
                    return i2;
                }
                return -1;
            }
        }

        @Override // com.google.common.base.Splitter.f
        public e iterator(Splitter splitter, CharSequence charSequence) {
            return new a(splitter, charSequence);
        }
    }

    public Splitter omitEmptyStrings() {
        return new Splitter(this.c, true, this.f3700a, this.d);
    }

    public Splitter limit(int i) {
        Preconditions.checkArgument(i > 0, "must be greater than zero: %s", i);
        return new Splitter(this.c, this.f3701b, this.f3700a, i);
    }

    public Splitter trimResults() {
        return trimResults(CharMatcher.whitespace());
    }

    public Splitter trimResults(CharMatcher charMatcher) {
        Preconditions.checkNotNull(charMatcher);
        return new Splitter(this.c, this.f3701b, charMatcher, this.d);
    }

    public Iterable<String> split(CharSequence charSequence) {
        Preconditions.checkNotNull(charSequence);
        return new d(charSequence);
    }

    public class d implements Iterable<String> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ CharSequence f3707a;

        public d(CharSequence charSequence) {
            this.f3707a = charSequence;
        }

        public String toString() {
            Joiner joinerOn = Joiner.on(", ");
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            StringBuilder sbAppendTo = joinerOn.appendTo(sb, (Iterable<?>) this);
            sbAppendTo.append(']');
            return sbAppendTo.toString();
        }

        @Override // java.lang.Iterable
        public Iterator<String> iterator() {
            Splitter splitter = Splitter.this;
            return splitter.c.iterator(splitter, this.f3707a);
        }
    }

    public List<String> splitToList(CharSequence charSequence) {
        Preconditions.checkNotNull(charSequence);
        Iterator<String> it = this.c.iterator(this, charSequence);
        ArrayList arrayList = new ArrayList();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Beta
    public MapSplitter withKeyValueSeparator(String str) {
        return withKeyValueSeparator(on(str));
    }

    @Beta
    public MapSplitter withKeyValueSeparator(char c2) {
        return withKeyValueSeparator(on(c2));
    }

    @Beta
    public MapSplitter withKeyValueSeparator(Splitter splitter) {
        return new MapSplitter(this, splitter);
    }

    @Beta
    public static final class MapSplitter {

        /* renamed from: a, reason: collision with root package name */
        public final Splitter f3702a;

        /* renamed from: b, reason: collision with root package name */
        public final Splitter f3703b;

        public MapSplitter(Splitter splitter, Splitter splitter2) {
            this.f3702a = splitter;
            this.f3703b = (Splitter) Preconditions.checkNotNull(splitter2);
        }

        public Map<String, String> split(CharSequence charSequence) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (String str : this.f3702a.split(charSequence)) {
                Splitter splitter = this.f3703b;
                Iterator<String> it = splitter.c.iterator(splitter, str);
                Preconditions.checkArgument(it.hasNext(), "Chunk [%s] is not a valid entry", str);
                String next = it.next();
                Preconditions.checkArgument(!linkedHashMap.containsKey(next), "Duplicate key [%s] found.", next);
                Preconditions.checkArgument(it.hasNext(), "Chunk [%s] is not a valid entry", str);
                linkedHashMap.put(next, it.next());
                Preconditions.checkArgument(!it.hasNext(), "Chunk [%s] is not a valid entry", str);
            }
            return Collections.unmodifiableMap(linkedHashMap);
        }
    }

    public static abstract class e extends com.google.common.base.b<String> {
        public final CharSequence c;
        public final CharMatcher d;
        public final boolean e;
        public int f = 0;

        /* renamed from: g, reason: collision with root package name */
        public int f3709g;

        public abstract int separatorEnd(int i);

        public abstract int separatorStart(int i);

        public e(Splitter splitter, CharSequence charSequence) {
            this.d = splitter.f3700a;
            this.e = splitter.f3701b;
            this.f3709g = splitter.d;
            this.c = charSequence;
        }

        @Override // com.google.common.base.b
        public String computeNext() {
            int iSeparatorStart;
            CharSequence charSequence;
            CharMatcher charMatcher;
            int i = this.f;
            while (true) {
                int i2 = this.f;
                if (i2 != -1) {
                    iSeparatorStart = separatorStart(i2);
                    charSequence = this.c;
                    if (iSeparatorStart == -1) {
                        iSeparatorStart = charSequence.length();
                        this.f = -1;
                    } else {
                        this.f = separatorEnd(iSeparatorStart);
                    }
                    int i3 = this.f;
                    if (i3 == i) {
                        int i4 = i3 + 1;
                        this.f = i4;
                        if (i4 > charSequence.length()) {
                            this.f = -1;
                        }
                    } else {
                        while (true) {
                            charMatcher = this.d;
                            if (i >= iSeparatorStart || !charMatcher.matches(charSequence.charAt(i))) {
                                break;
                            }
                            i++;
                        }
                        while (iSeparatorStart > i && charMatcher.matches(charSequence.charAt(iSeparatorStart - 1))) {
                            iSeparatorStart--;
                        }
                        if (!this.e || i != iSeparatorStart) {
                            break;
                        }
                        i = this.f;
                    }
                } else {
                    return endOfData();
                }
            }
            int i5 = this.f3709g;
            if (i5 == 1) {
                iSeparatorStart = charSequence.length();
                this.f = -1;
                while (iSeparatorStart > i && charMatcher.matches(charSequence.charAt(iSeparatorStart - 1))) {
                    iSeparatorStart--;
                }
            } else {
                this.f3709g = i5 - 1;
            }
            return charSequence.subSequence(i, iSeparatorStart).toString();
        }
    }
}
