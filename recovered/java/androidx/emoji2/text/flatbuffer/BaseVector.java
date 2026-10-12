package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class BaseVector {

    /* renamed from: a, reason: collision with root package name */
    public int f1533a;

    /* renamed from: b, reason: collision with root package name */
    public int f1534b;
    protected ByteBuffer bb;
    public int c;

    public int __vector() {
        return this.f1533a;
    }

    public int __element(int i) {
        return (i * this.c) + this.f1533a;
    }

    public void __reset(int i, int i2, ByteBuffer byteBuffer) {
        this.bb = byteBuffer;
        if (byteBuffer != null) {
            this.f1533a = i;
            this.f1534b = byteBuffer.getInt(i - 4);
            this.c = i2;
        } else {
            this.f1533a = 0;
            this.f1534b = 0;
            this.c = 0;
        }
    }

    public void reset() {
        __reset(0, 0, null);
    }

    public int length() {
        return this.f1534b;
    }
}
