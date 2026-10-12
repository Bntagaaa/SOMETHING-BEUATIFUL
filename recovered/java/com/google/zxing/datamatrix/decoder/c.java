package com.google.zxing.datamatrix.decoder;

import com.google.common.base.Ascii;
import gnu.bytecode.Access;
import kotlin.text.Typography;

/* loaded from: classes.dex */
final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f5207a = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', Access.CLASS_CONTEXT, 'D', 'E', Access.FIELD_CONTEXT, 'G', 'H', Access.INNERCLASS_CONTEXT, 'J', 'K', 'L', Access.METHOD_CONTEXT, 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};

    /* renamed from: b, reason: collision with root package name */
    public static final char[] f5208b = {'!', Typography.quote, '#', Typography.dollar, '%', Typography.amp, '\'', '(', ')', '*', '+', ',', '-', '.', '/', ':', ';', Typography.less, '=', Typography.greater, '?', '@', '[', '\\', ']', '^', '_'};
    public static final char[] c = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
    public static final char[] d = {'\'', 'A', 'B', Access.CLASS_CONTEXT, 'D', 'E', Access.FIELD_CONTEXT, 'G', 'H', Access.INNERCLASS_CONTEXT, 'J', 'K', 'L', Access.METHOD_CONTEXT, 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '{', '|', '}', '~', Ascii.MAX};

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public static final b f5210a;

        /* renamed from: b, reason: collision with root package name */
        public static final b f5211b;
        public static final b c;
        public static final b d;
        public static final b e;
        public static final b f;

        /* renamed from: g, reason: collision with root package name */
        public static final b f5212g;
        public static final /* synthetic */ b[] h;

        public static b[] values() {
            return (b[]) h.clone();
        }

        static {
            b bVar = new b("PAD_ENCODE", 0);
            f5210a = bVar;
            b bVar2 = new b("ASCII_ENCODE", 1);
            f5211b = bVar2;
            b bVar3 = new b("C40_ENCODE", 2);
            c = bVar3;
            b bVar4 = new b("TEXT_ENCODE", 3);
            d = bVar4;
            b bVar5 = new b("ANSIX12_ENCODE", 4);
            e = bVar5;
            b bVar6 = new b("EDIFACT_ENCODE", 5);
            f = bVar6;
            b bVar7 = new b("BASE256_ENCODE", 6);
            f5212g = bVar7;
            h = new b[]{bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7};
        }
    }

    private c() {
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5209a;

        static {
            int[] iArr = new int[b.values().length];
            f5209a = iArr;
            try {
                iArr[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5209a[3] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5209a[4] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f5209a[5] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f5209a[6] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static void a(int i, int i2, int[] iArr) {
        int i3 = ((i << 8) + i2) - 1;
        int i4 = i3 / 1600;
        iArr[0] = i4;
        int i5 = i3 - (i4 * 1600);
        int i6 = i5 / 40;
        iArr[1] = i6;
        iArr[2] = i5 - (i6 * 40);
    }

    public static int b(int i, int i2) {
        int i3 = i - (((i2 * 149) % 255) + 1);
        return i3 >= 0 ? i3 : i3 + 256;
    }
}
