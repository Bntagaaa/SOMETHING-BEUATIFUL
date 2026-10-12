package kotlin;

import androidx.core.internal.view.SupportMenu;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0010\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\n\n\u0002\b\u0002\u001a\u001b\u0010\u0003\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u001b\u0010\u0005\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0005\u0010\u0004\u001a\u001b\u0010\u0003\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0003\u0010\u0007\u001a\u001b\u0010\u0005\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0005\u0010\u0007¨\u0006\b"}, d2 = {"", "", "bitCount", "rotateLeft", "(BI)B", "rotateRight", "", "(SI)S", "kotlin-stdlib"}, k = 5, mv = {2, 1, 0}, xi = 49, xs = "kotlin/NumbersKt")
/* loaded from: classes2.dex */
class i extends h {
    @SinceKotlin(version = "1.6")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final byte rotateLeft(byte b2, int i) {
        int i2 = i & 7;
        return (byte) (((b2 & 255) >>> (8 - i2)) | (b2 << i2));
    }

    @SinceKotlin(version = "1.6")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final short rotateLeft(short s, int i) {
        int i2 = i & 15;
        return (short) (((s & SupportMenu.USER_MASK) >>> (16 - i2)) | (s << i2));
    }

    @SinceKotlin(version = "1.6")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final byte rotateRight(byte b2, int i) {
        int i2 = i & 7;
        return (byte) (((b2 & 255) >>> i2) | (b2 << (8 - i2)));
    }

    @SinceKotlin(version = "1.6")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final short rotateRight(short s, int i) {
        int i2 = i & 15;
        return (short) (((s & SupportMenu.USER_MASK) >>> i2) | (s << (16 - i2)));
    }
}
