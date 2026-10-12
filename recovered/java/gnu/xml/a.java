package gnu.xml;

import gnu.mapping.Symbol;

/* loaded from: classes2.dex */
final class a {

    /* renamed from: a, reason: collision with root package name */
    public a f5523a;

    /* renamed from: b, reason: collision with root package name */
    public int f5524b;
    public String c;
    public String d;
    public String e;
    public Symbol f;

    /* renamed from: g, reason: collision with root package name */
    public NamespaceBinding f5525g;
    public XName h;
    public int i = -1;

    public static boolean a(String str, char[] cArr, int i, int i2) {
        if (str.length() != i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (cArr[i + i3] != str.charAt(i3)) {
                return false;
            }
        }
        return true;
    }
}
