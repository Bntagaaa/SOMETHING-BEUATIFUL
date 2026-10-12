package kotlin.io.encoding;

import com.google.appinventor.components.runtime.util.Ev3Constants;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0001¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"", "symbol", "", "isInMimeAlphabet", "(I)Z", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBase64.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Base64.kt\nkotlin/io/encoding/Base64Kt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,826:1\n13477#2,3:827\n13477#2,3:830\n*S KotlinDebug\n*F\n+ 1 Base64.kt\nkotlin/io/encoding/Base64Kt\n*L\n762#1:827,3\n779#1:830,3\n*E\n"})
/* loaded from: classes2.dex */
public final class Base64Kt {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f5785a;

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f5786b;
    public static final byte[] c;
    public static final int[] d;

    static {
        byte[] bArr = {Ev3Constants.Opcode.JR_FALSE, Ev3Constants.Opcode.JR_TRUE, Ev3Constants.Opcode.JR_NAN, Ev3Constants.Opcode.CP_LT8, Ev3Constants.Opcode.CP_LT16, Ev3Constants.Opcode.CP_LT32, Ev3Constants.Opcode.CP_LTF, Ev3Constants.Opcode.CP_GT8, Ev3Constants.Opcode.CP_GT16, Ev3Constants.Opcode.CP_GT32, Ev3Constants.Opcode.CP_GTF, Ev3Constants.Opcode.CP_EQ8, Ev3Constants.Opcode.CP_EQ16, Ev3Constants.Opcode.CP_EQ32, Ev3Constants.Opcode.CP_EQF, Ev3Constants.Opcode.CP_NEQ8, Ev3Constants.Opcode.CP_NEQ16, Ev3Constants.Opcode.CP_NEQ32, Ev3Constants.Opcode.CP_NEQF, Ev3Constants.Opcode.CP_LTEQ8, Ev3Constants.Opcode.CP_LTEQ16, Ev3Constants.Opcode.CP_LTEQ32, Ev3Constants.Opcode.CP_LTEQF, Ev3Constants.Opcode.CP_GTEQ8, Ev3Constants.Opcode.CP_GTEQ16, Ev3Constants.Opcode.CP_GTEQ32, Ev3Constants.Opcode.PORT_CNV_OUTPUT, Ev3Constants.Opcode.PORT_CNV_INPUT, Ev3Constants.Opcode.NOTE_TO_FREQ, Ev3Constants.Opcode.JR_LT8, Ev3Constants.Opcode.JR_LT16, Ev3Constants.Opcode.JR_LT32, Ev3Constants.Opcode.JR_LTF, Ev3Constants.Opcode.JR_GT8, Ev3Constants.Opcode.JR_GT16, Ev3Constants.Opcode.JR_GT32, Ev3Constants.Opcode.JR_GTF, Ev3Constants.Opcode.JR_EQ8, Ev3Constants.Opcode.JR_EQ16, Ev3Constants.Opcode.JR_EQ32, Ev3Constants.Opcode.JR_EQF, Ev3Constants.Opcode.JR_NEQ8, Ev3Constants.Opcode.JR_NEQ16, Ev3Constants.Opcode.JR_NEQ32, Ev3Constants.Opcode.JR_NEQF, Ev3Constants.Opcode.JR_LTEQ8, Ev3Constants.Opcode.JR_LTEQ16, Ev3Constants.Opcode.JR_LTEQ32, Ev3Constants.Opcode.JR_LTEQF, Ev3Constants.Opcode.JR_GTEQ8, Ev3Constants.Opcode.JR_GTEQ16, Ev3Constants.Opcode.JR_GTEQ32, Ev3Constants.Opcode.MOVE8_8, Ev3Constants.Opcode.MOVE8_16, Ev3Constants.Opcode.MOVE8_32, Ev3Constants.Opcode.MOVE8_F, Ev3Constants.Opcode.MOVE16_8, Ev3Constants.Opcode.MOVE16_16, Ev3Constants.Opcode.MOVE16_32, Ev3Constants.Opcode.MOVE16_F, Ev3Constants.Opcode.MOVE32_8, Ev3Constants.Opcode.MOVE32_16, 43, Ev3Constants.Opcode.INIT_BYTES};
        f5785a = bArr;
        int[] iArr = new int[256];
        ArraysKt___ArraysJvmKt.fill$default(iArr, -1, 0, 0, 6, (Object) null);
        iArr[61] = -2;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i2 < 64) {
            iArr[bArr[i2]] = i3;
            i2++;
            i3++;
        }
        f5786b = iArr;
        byte[] bArr2 = {Ev3Constants.Opcode.JR_FALSE, Ev3Constants.Opcode.JR_TRUE, Ev3Constants.Opcode.JR_NAN, Ev3Constants.Opcode.CP_LT8, Ev3Constants.Opcode.CP_LT16, Ev3Constants.Opcode.CP_LT32, Ev3Constants.Opcode.CP_LTF, Ev3Constants.Opcode.CP_GT8, Ev3Constants.Opcode.CP_GT16, Ev3Constants.Opcode.CP_GT32, Ev3Constants.Opcode.CP_GTF, Ev3Constants.Opcode.CP_EQ8, Ev3Constants.Opcode.CP_EQ16, Ev3Constants.Opcode.CP_EQ32, Ev3Constants.Opcode.CP_EQF, Ev3Constants.Opcode.CP_NEQ8, Ev3Constants.Opcode.CP_NEQ16, Ev3Constants.Opcode.CP_NEQ32, Ev3Constants.Opcode.CP_NEQF, Ev3Constants.Opcode.CP_LTEQ8, Ev3Constants.Opcode.CP_LTEQ16, Ev3Constants.Opcode.CP_LTEQ32, Ev3Constants.Opcode.CP_LTEQF, Ev3Constants.Opcode.CP_GTEQ8, Ev3Constants.Opcode.CP_GTEQ16, Ev3Constants.Opcode.CP_GTEQ32, Ev3Constants.Opcode.PORT_CNV_OUTPUT, Ev3Constants.Opcode.PORT_CNV_INPUT, Ev3Constants.Opcode.NOTE_TO_FREQ, Ev3Constants.Opcode.JR_LT8, Ev3Constants.Opcode.JR_LT16, Ev3Constants.Opcode.JR_LT32, Ev3Constants.Opcode.JR_LTF, Ev3Constants.Opcode.JR_GT8, Ev3Constants.Opcode.JR_GT16, Ev3Constants.Opcode.JR_GT32, Ev3Constants.Opcode.JR_GTF, Ev3Constants.Opcode.JR_EQ8, Ev3Constants.Opcode.JR_EQ16, Ev3Constants.Opcode.JR_EQ32, Ev3Constants.Opcode.JR_EQF, Ev3Constants.Opcode.JR_NEQ8, Ev3Constants.Opcode.JR_NEQ16, Ev3Constants.Opcode.JR_NEQ32, Ev3Constants.Opcode.JR_NEQF, Ev3Constants.Opcode.JR_LTEQ8, Ev3Constants.Opcode.JR_LTEQ16, Ev3Constants.Opcode.JR_LTEQ32, Ev3Constants.Opcode.JR_LTEQF, Ev3Constants.Opcode.JR_GTEQ8, Ev3Constants.Opcode.JR_GTEQ16, Ev3Constants.Opcode.JR_GTEQ32, Ev3Constants.Opcode.MOVE8_8, Ev3Constants.Opcode.MOVE8_16, Ev3Constants.Opcode.MOVE8_32, Ev3Constants.Opcode.MOVE8_F, Ev3Constants.Opcode.MOVE16_8, Ev3Constants.Opcode.MOVE16_16, Ev3Constants.Opcode.MOVE16_32, Ev3Constants.Opcode.MOVE16_F, Ev3Constants.Opcode.MOVE32_8, Ev3Constants.Opcode.MOVE32_16, Ev3Constants.Opcode.RL16, Ev3Constants.Opcode.SELECTF};
        c = bArr2;
        int[] iArr2 = new int[256];
        ArraysKt___ArraysJvmKt.fill$default(iArr2, -1, 0, 0, 6, (Object) null);
        iArr2[61] = -2;
        int i4 = 0;
        while (i < 64) {
            iArr2[bArr2[i]] = i4;
            i++;
            i4++;
        }
        d = iArr2;
    }

    @ExperimentalEncodingApi
    @SinceKotlin(version = "1.8")
    public static final boolean isInMimeAlphabet(int i) {
        if (i < 0) {
            return false;
        }
        int[] iArr = f5786b;
        return i < iArr.length && iArr[i] != -1;
    }
}
