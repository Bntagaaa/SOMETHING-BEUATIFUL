package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
public class Joiner {

    /* renamed from: a, reason: collision with root package name */
    public final String f3678a;

    public static Joiner on(String str) {
        return new Joiner(str);
    }

    public static Joiner on(char c) {
        return new Joiner(String.valueOf(c));
    }

    public Joiner(String str) {
        this.f3678a = (String) Preconditions.checkNotNull(str);
    }

    public Joiner(Joiner joiner) {
        this.f3678a = joiner.f3678a;
    }

    @CanIgnoreReturnValue
    public <A extends Appendable> A appendTo(A a2, Iterable<?> iterable) throws IOException {
        return (A) appendTo((Joiner) a2, iterable.iterator());
    }

    @CanIgnoreReturnValue
    public <A extends Appendable> A appendTo(A a2, Iterator<?> it) throws IOException {
        Preconditions.checkNotNull(a2);
        if (it.hasNext()) {
            a2.append(a(it.next()));
            while (it.hasNext()) {
                a2.append(this.f3678a);
                a2.append(a(it.next()));
            }
        }
        return a2;
    }

    @CanIgnoreReturnValue
    public final <A extends Appendable> A appendTo(A a2, Object[] objArr) throws IOException {
        return (A) appendTo((Joiner) a2, (Iterable<?>) Arrays.asList(objArr));
    }

    @CanIgnoreReturnValue
    public final StringBuilder appendTo(StringBuilder sb, Iterable<?> iterable) {
        return appendTo(sb, iterable.iterator());
    }

    @CanIgnoreReturnValue
    public final StringBuilder appendTo(StringBuilder sb, Iterator<?> it) {
        try {
            appendTo((Joiner) sb, it);
            return sb;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    @CanIgnoreReturnValue
    public final StringBuilder appendTo(StringBuilder sb, Object[] objArr) {
        return appendTo(sb, (Iterable<?>) Arrays.asList(objArr));
    }

    public final String join(Iterable<?> iterable) {
        return join(iterable.iterator());
    }

    public final String join(Iterator<?> it) {
        return appendTo(new StringBuilder(), it).toString();
    }

    public final String join(Object[] objArr) {
        return join(Arrays.asList(objArr));
    }

    public class a extends Joiner {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f3681b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Joiner joiner, String str) {
            super(joiner);
            this.f3681b = str;
        }

        @Override // com.google.common.base.Joiner
        public final CharSequence a(Object obj) {
            return obj == null ? this.f3681b : Joiner.this.a(obj);
        }

        @Override // com.google.common.base.Joiner
        public Joiner useForNull(String str) {
            throw new UnsupportedOperationException("already specified useForNull");
        }

        @Override // com.google.common.base.Joiner
        public Joiner skipNulls() {
            throw new UnsupportedOperationException("already specified useForNull");
        }
    }

    public Joiner useForNull(String str) {
        Preconditions.checkNotNull(str);
        return new a(this, str);
    }

    public class b extends Joiner {
        public b(Joiner joiner) {
            super(joiner);
        }

        @Override // com.google.common.base.Joiner
        public <A extends Appendable> A appendTo(A a2, Iterator<?> it) throws IOException {
            Joiner joiner;
            Preconditions.checkNotNull(a2, "appendable");
            Preconditions.checkNotNull(it, "parts");
            while (true) {
                boolean zHasNext = it.hasNext();
                joiner = Joiner.this;
                if (!zHasNext) {
                    break;
                }
                Object next = it.next();
                if (next != null) {
                    a2.append(joiner.a(next));
                    break;
                }
            }
            while (it.hasNext()) {
                Object next2 = it.next();
                if (next2 != null) {
                    a2.append(joiner.f3678a);
                    a2.append(joiner.a(next2));
                }
            }
            return a2;
        }

        @Override // com.google.common.base.Joiner
        public Joiner useForNull(String str) {
            throw new UnsupportedOperationException("already specified skipNulls");
        }

        @Override // com.google.common.base.Joiner
        public MapJoiner withKeyValueSeparator(String str) {
            throw new UnsupportedOperationException("can't use .skipNulls() with maps");
        }
    }

    public Joiner skipNulls() {
        return new b(this);
    }

    public MapJoiner withKeyValueSeparator(char c) {
        return withKeyValueSeparator(String.valueOf(c));
    }

    public MapJoiner withKeyValueSeparator(String str) {
        return new MapJoiner(this, str);
    }

    public static final class MapJoiner {

        /* renamed from: a, reason: collision with root package name */
        public final Joiner f3679a;

        /* renamed from: b, reason: collision with root package name */
        public final String f3680b;

        public MapJoiner(Joiner joiner, String str) {
            this.f3679a = joiner;
            this.f3680b = (String) Preconditions.checkNotNull(str);
        }

        @CanIgnoreReturnValue
        public <A extends Appendable> A appendTo(A a2, Map<?, ?> map) throws IOException {
            return (A) appendTo((MapJoiner) a2, (Iterable<? extends Map.Entry<?, ?>>) map.entrySet());
        }

        @CanIgnoreReturnValue
        public StringBuilder appendTo(StringBuilder sb, Map<?, ?> map) {
            return appendTo(sb, (Iterable<? extends Map.Entry<?, ?>>) map.entrySet());
        }

        @CanIgnoreReturnValue
        @Beta
        public <A extends Appendable> A appendTo(A a2, Iterable<? extends Map.Entry<?, ?>> iterable) throws IOException {
            return (A) appendTo((MapJoiner) a2, iterable.iterator());
        }

        @CanIgnoreReturnValue
        @Beta
        public <A extends Appendable> A appendTo(A a2, Iterator<? extends Map.Entry<?, ?>> it) throws IOException {
            Preconditions.checkNotNull(a2);
            if (it.hasNext()) {
                Map.Entry<?, ?> next = it.next();
                Object key = next.getKey();
                Joiner joiner = this.f3679a;
                a2.append(joiner.a(key));
                String str = this.f3680b;
                a2.append(str);
                a2.append(joiner.a(next.getValue()));
                while (it.hasNext()) {
                    a2.append(joiner.f3678a);
                    Map.Entry<?, ?> next2 = it.next();
                    a2.append(joiner.a(next2.getKey()));
                    a2.append(str);
                    a2.append(joiner.a(next2.getValue()));
                }
            }
            return a2;
        }

        @CanIgnoreReturnValue
        @Beta
        public StringBuilder appendTo(StringBuilder sb, Iterable<? extends Map.Entry<?, ?>> iterable) {
            return appendTo(sb, iterable.iterator());
        }

        @CanIgnoreReturnValue
        @Beta
        public StringBuilder appendTo(StringBuilder sb, Iterator<? extends Map.Entry<?, ?>> it) {
            try {
                appendTo((MapJoiner) sb, it);
                return sb;
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        public String join(Map<?, ?> map) {
            return join(map.entrySet());
        }

        @Beta
        public String join(Iterable<? extends Map.Entry<?, ?>> iterable) {
            return join(iterable.iterator());
        }

        @Beta
        public String join(Iterator<? extends Map.Entry<?, ?>> it) {
            return appendTo(new StringBuilder(), it).toString();
        }

        public MapJoiner useForNull(String str) {
            return new MapJoiner(this.f3679a.useForNull(str), this.f3680b);
        }
    }

    public CharSequence a(Object obj) {
        Preconditions.checkNotNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    @CanIgnoreReturnValue
    public final <A extends Appendable> A appendTo(A a2, @NullableDecl Object obj, @NullableDecl Object obj2, Object... objArr) throws IOException {
        Preconditions.checkNotNull(objArr);
        return (A) appendTo((Joiner) a2, (Iterable<?>) new i(obj, obj2, objArr));
    }

    @CanIgnoreReturnValue
    public final StringBuilder appendTo(StringBuilder sb, @NullableDecl Object obj, @NullableDecl Object obj2, Object... objArr) {
        Preconditions.checkNotNull(objArr);
        return appendTo(sb, (Iterable<?>) new i(obj, obj2, objArr));
    }

    public final String join(@NullableDecl Object obj, @NullableDecl Object obj2, Object... objArr) {
        Preconditions.checkNotNull(objArr);
        return join(new i(obj, obj2, objArr));
    }
}
