package gnu.expr;

import gnu.lists.Convert;
import gnu.math.DFloNum;
import gnu.math.IntNum;
import gnu.text.Char;
import kotlin.UShort;

/* loaded from: classes2.dex */
public class KawaConvert extends Convert {
    public static Convert instance = new KawaConvert();

    public static Convert getInstance() {
        return instance;
    }

    public static void setInstance(Convert convert) {
        instance = convert;
    }

    @Override // gnu.lists.Convert
    public Object charToObject(char c) {
        return Char.make(c);
    }

    @Override // gnu.lists.Convert
    public char objectToChar(Object obj) {
        return ((Char) obj).charValue();
    }

    @Override // gnu.lists.Convert
    public Object byteToObject(byte b2) {
        return IntNum.make((int) b2);
    }

    @Override // gnu.lists.Convert
    public Object shortToObject(short s) {
        return IntNum.make((int) s);
    }

    @Override // gnu.lists.Convert
    public Object intToObject(int i) {
        return IntNum.make(i);
    }

    @Override // gnu.lists.Convert
    public Object longToObject(long j) {
        return IntNum.make(j);
    }

    @Override // gnu.lists.Convert
    public Object byteToObjectUnsigned(byte b2) {
        return IntNum.make(b2 & 255);
    }

    @Override // gnu.lists.Convert
    public Object shortToObjectUnsigned(short s) {
        return IntNum.make(s & UShort.MAX_VALUE);
    }

    @Override // gnu.lists.Convert
    public Object intToObjectUnsigned(int i) {
        return IntNum.make(i & 4294967295L);
    }

    @Override // gnu.lists.Convert
    public Object longToObjectUnsigned(long j) {
        return IntNum.makeU(j);
    }

    @Override // gnu.lists.Convert
    public Object floatToObject(float f) {
        return DFloNum.make(f);
    }

    @Override // gnu.lists.Convert
    public Object doubleToObject(double d) {
        return DFloNum.make(d);
    }
}
