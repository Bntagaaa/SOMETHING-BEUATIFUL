package com.google.common.hash;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import java.io.OutputStream;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Beta
/* loaded from: classes.dex */
public final class Funnels {
    private Funnels() {
    }

    public static Funnel<byte[]> byteArrayFunnel() {
        return a.f4543a;
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a implements Funnel<byte[]> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4543a = new a("INSTANCE", 0);

        @Override // com.google.common.hash.Funnel
        public void funnel(byte[] bArr, PrimitiveSink primitiveSink) {
            primitiveSink.putBytes(bArr);
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Funnels.byteArrayFunnel()";
        }
    }

    public static Funnel<CharSequence> unencodedCharsFunnel() {
        return g.f4549a;
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class g implements Funnel<CharSequence> {

        /* renamed from: a, reason: collision with root package name */
        public static final g f4549a = new g("INSTANCE", 0);

        @Override // com.google.common.hash.Funnel
        public void funnel(CharSequence charSequence, PrimitiveSink primitiveSink) {
            primitiveSink.putUnencodedChars(charSequence);
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Funnels.unencodedCharsFunnel()";
        }
    }

    public static Funnel<CharSequence> stringFunnel(Charset charset) {
        return new f(charset);
    }

    public static class f implements Funnel<CharSequence>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Charset f4548a;

        public static class a implements Serializable {
        }

        public f(Charset charset) {
            this.f4548a = (Charset) Preconditions.checkNotNull(charset);
        }

        @Override // com.google.common.hash.Funnel
        public void funnel(CharSequence charSequence, PrimitiveSink primitiveSink) {
            primitiveSink.putString(charSequence, this.f4548a);
        }

        public String toString() {
            return "Funnels.stringFunnel(" + this.f4548a.name() + ")";
        }

        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof f) {
                return this.f4548a.equals(((f) obj).f4548a);
            }
            return false;
        }

        public int hashCode() {
            return f.class.hashCode() ^ this.f4548a.hashCode();
        }
    }

    public static Funnel<Integer> integerFunnel() {
        return b.f4544a;
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class b implements Funnel<Integer> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f4544a = new b("INSTANCE", 0);

        @Override // com.google.common.hash.Funnel
        public void funnel(Integer num, PrimitiveSink primitiveSink) {
            primitiveSink.putInt(num.intValue());
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Funnels.integerFunnel()";
        }
    }

    public static <E> Funnel<Iterable<? extends E>> sequentialFunnel(Funnel<E> funnel) {
        return new d(funnel);
    }

    public static class d<E> implements Funnel<Iterable<? extends E>>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Funnel f4546a;

        public d(Funnel funnel) {
            this.f4546a = (Funnel) Preconditions.checkNotNull(funnel);
        }

        @Override // com.google.common.hash.Funnel
        public void funnel(Iterable<? extends E> iterable, PrimitiveSink primitiveSink) {
            Iterator<? extends E> it = iterable.iterator();
            while (it.hasNext()) {
                this.f4546a.funnel(it.next(), primitiveSink);
            }
        }

        public String toString() {
            return "Funnels.sequentialFunnel(" + this.f4546a + ")";
        }

        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof d) {
                return this.f4546a.equals(((d) obj).f4546a);
            }
            return false;
        }

        public int hashCode() {
            return d.class.hashCode() ^ this.f4546a.hashCode();
        }
    }

    public static Funnel<Long> longFunnel() {
        return c.f4545a;
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class c implements Funnel<Long> {

        /* renamed from: a, reason: collision with root package name */
        public static final c f4545a = new c("INSTANCE", 0);

        @Override // com.google.common.hash.Funnel
        public void funnel(Long l, PrimitiveSink primitiveSink) {
            primitiveSink.putLong(l.longValue());
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Funnels.longFunnel()";
        }
    }

    public static OutputStream asOutputStream(PrimitiveSink primitiveSink) {
        return new e(primitiveSink);
    }

    public static class e extends OutputStream {

        /* renamed from: a, reason: collision with root package name */
        public final PrimitiveSink f4547a;

        public e(PrimitiveSink primitiveSink) {
            this.f4547a = (PrimitiveSink) Preconditions.checkNotNull(primitiveSink);
        }

        @Override // java.io.OutputStream
        public void write(int i) {
            this.f4547a.putByte((byte) i);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            this.f4547a.putBytes(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            this.f4547a.putBytes(bArr, i, i2);
        }

        public String toString() {
            return "Funnels.asOutputStream(" + this.f4547a + ")";
        }
    }
}
