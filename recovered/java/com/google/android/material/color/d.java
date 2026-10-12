package com.google.android.material.color;

import android.content.Context;
import android.content.res.Resources;
import android.util.Pair;
import com.google.appinventor.components.common.PropertyTypeConstants;
import gnu.bytecode.Access;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* loaded from: classes.dex */
final class d {

    /* renamed from: a, reason: collision with root package name */
    public static byte f2898a;

    /* renamed from: b, reason: collision with root package name */
    public static final C0037d f2899b = new C0037d(1, "android");
    public static final Comparator c = new a();

    public static class e {

        /* renamed from: a, reason: collision with root package name */
        public final short f2906a;

        /* renamed from: b, reason: collision with root package name */
        public final short f2907b;
        public final int c;

        public final void a(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            byteArrayOutputStream.write(d.d(this.f2906a));
            byteArrayOutputStream.write(d.d(this.f2907b));
            byteArrayOutputStream.write(d.a(this.c));
        }

        public e(short s, short s2, int i) {
            this.f2906a = s;
            this.f2907b = s2;
            this.c = i;
        }
    }

    private d() {
    }

    public static byte[] c(Context context, HashMap map) throws Resources.NotFoundException, IOException {
        C0037d c0037d;
        if (map.entrySet().isEmpty()) {
            throw new IllegalArgumentException("No color resources provided for harmonization.");
        }
        C0037d c0037d2 = new C0037d(WorkQueueKt.MASK, context.getPackageName());
        HashMap map2 = new HashMap();
        b bVar = null;
        for (Map.Entry entry : map.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            String resourceName = context.getResources().getResourceName(((Integer) entry.getKey()).intValue());
            b bVar2 = new b(iIntValue, ((Integer) entry.getValue()).intValue(), resourceName);
            if (!context.getResources().getResourceTypeName(((Integer) entry.getKey()).intValue()).equals(PropertyTypeConstants.PROPERTY_TYPE_COLOR)) {
                StringBuilder sbR = _COROUTINE.a.r("Non color resource found: name=", resourceName, ", typeId=");
                sbR.append(Integer.toHexString(bVar2.f2901b & 255));
                throw new IllegalArgumentException(sbR.toString());
            }
            byte b2 = bVar2.f2900a;
            if (b2 == 1) {
                c0037d = f2899b;
            } else {
                if (b2 != 127) {
                    throw new IllegalArgumentException(_COROUTINE.a.d(b2, "Not supported with unknown package id: "));
                }
                c0037d = c0037d2;
            }
            if (!map2.containsKey(c0037d)) {
                map2.put(c0037d, new ArrayList());
            }
            ((List) map2.get(c0037d)).add(bVar2);
            bVar = bVar2;
        }
        byte b3 = bVar.f2901b;
        f2898a = b3;
        if (b3 == 0) {
            throw new IllegalArgumentException("No color resources found for harmonization.");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        g gVar = new g(map2);
        gVar.f2910a.a(byteArrayOutputStream);
        byteArrayOutputStream.write(a(gVar.f2911b));
        gVar.c.a(byteArrayOutputStream);
        Iterator it = gVar.d.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            cVar.f2902a.a(byteArrayOutputStream);
            C0037d c0037d3 = cVar.f2903b;
            byteArrayOutputStream.write(a(c0037d3.f2904a));
            char[] charArray = c0037d3.f2905b.toCharArray();
            for (int i2 = 0; i2 < 128; i2++) {
                if (i2 < charArray.length) {
                    byteArrayOutputStream.write(b(charArray[i2]));
                } else {
                    byteArrayOutputStream.write(b((char) 0));
                }
            }
            byteArrayOutputStream.write(a(288));
            byteArrayOutputStream.write(a(0));
            h hVar = cVar.c;
            byteArrayOutputStream.write(a(hVar.l + 288));
            byteArrayOutputStream.write(a(0));
            byteArrayOutputStream.write(a(0));
            hVar.a(byteArrayOutputStream);
            cVar.d.a(byteArrayOutputStream);
            k kVar = cVar.e;
            kVar.f2917a.a(byteArrayOutputStream);
            byteArrayOutputStream.write(new byte[]{f2898a, 0, 0, 0});
            byteArrayOutputStream.write(a(kVar.f2918b));
            for (int i3 : kVar.c) {
                byteArrayOutputStream.write(a(i3));
            }
            j jVar = kVar.d;
            jVar.f2915a.a(byteArrayOutputStream);
            byteArrayOutputStream.write(new byte[]{f2898a, 0, 0, 0});
            byteArrayOutputStream.write(a(jVar.f2916b));
            int[] iArr = jVar.d;
            byteArrayOutputStream.write(a((iArr.length * 4) + 84));
            byteArrayOutputStream.write(jVar.c);
            for (int i4 : iArr) {
                byteArrayOutputStream.write(a(i4));
            }
            for (f fVar : jVar.e) {
                fVar.getClass();
                byteArrayOutputStream.write(d((short) 8));
                byteArrayOutputStream.write(d((short) 2));
                byteArrayOutputStream.write(a(fVar.f2908a));
                byteArrayOutputStream.write(d((short) 8));
                byteArrayOutputStream.write(new byte[]{0, 28});
                byteArrayOutputStream.write(a(fVar.f2909b));
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static class g {

        /* renamed from: a, reason: collision with root package name */
        public final e f2910a;

        /* renamed from: b, reason: collision with root package name */
        public final int f2911b;
        public final ArrayList d = new ArrayList();
        public final h c = new h(false, new String[0]);

        public g(HashMap map) {
            this.f2911b = map.size();
            int iA = 0;
            for (Map.Entry entry : map.entrySet()) {
                List list = (List) entry.getValue();
                Collections.sort(list, d.c);
                this.d.add(new c((C0037d) entry.getKey(), list));
            }
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                iA += ((c) it.next()).a();
            }
            this.f2910a = new e((short) 2, (short) 12, this.c.l + 12 + iA);
        }
    }

    public static class h {

        /* renamed from: a, reason: collision with root package name */
        public final e f2912a;

        /* renamed from: b, reason: collision with root package name */
        public final int f2913b;
        public final int c;
        public final int d;
        public final int e;
        public final ArrayList f = new ArrayList();

        /* renamed from: g, reason: collision with root package name */
        public final ArrayList f2914g = new ArrayList();
        public final ArrayList h = new ArrayList();
        public final ArrayList i = new ArrayList();
        public final boolean j;
        public final int k;
        public final int l;

        public h(boolean z, String... strArr) {
            byte[] bArr;
            this.j = z;
            int length = 0;
            for (String str : strArr) {
                if (!this.j) {
                    byte b2 = d.f2898a;
                    char[] charArray = str.toCharArray();
                    int length2 = charArray.length * 2;
                    bArr = new byte[length2 + 4];
                    byte[] bArrD = d.d((short) charArray.length);
                    bArr[0] = bArrD[0];
                    bArr[1] = bArrD[1];
                    for (int i = 0; i < charArray.length; i++) {
                        byte[] bArrB = d.b(charArray[i]);
                        int i2 = i * 2;
                        bArr[i2 + 2] = bArrB[0];
                        bArr[i2 + 3] = bArrB[1];
                    }
                    bArr[length2 + 2] = 0;
                    bArr[length2 + 3] = 0;
                } else {
                    byte b3 = d.f2898a;
                    byte[] bytes = str.getBytes(Charset.forName("UTF-8"));
                    byte length3 = (byte) bytes.length;
                    int length4 = bytes.length;
                    bArr = new byte[length4 + 3];
                    System.arraycopy(bytes, 0, bArr, 2, length3);
                    bArr[1] = length3;
                    bArr[0] = length3;
                    bArr[length4 + 2] = 0;
                }
                Pair pair = new Pair(bArr, Collections.EMPTY_LIST);
                this.f.add(Integer.valueOf(length));
                Object obj = pair.first;
                length += ((byte[]) obj).length;
                this.h.add(obj);
                this.i.add(pair.second);
            }
            Iterator it = this.i.iterator();
            int size = 0;
            while (it.hasNext()) {
                List list = (List) it.next();
                Iterator it2 = list.iterator();
                if (it2.hasNext()) {
                    i iVar = (i) it2.next();
                    this.f.add(Integer.valueOf(length));
                    iVar.getClass();
                    throw null;
                }
                this.f2914g.add(Integer.valueOf(size));
                size += (list.size() * 12) + 4;
            }
            int i3 = length % 4;
            int i4 = i3 == 0 ? 0 : 4 - i3;
            this.k = i4;
            int size2 = this.h.size();
            this.f2913b = size2;
            this.c = this.h.size() - strArr.length;
            boolean z2 = this.h.size() - strArr.length > 0;
            if (!z2) {
                this.f2914g.clear();
                this.i.clear();
            }
            int size3 = (this.f2914g.size() * 4) + (size2 * 4) + 28;
            this.d = size3;
            int i5 = length + i4;
            this.e = z2 ? size3 + i5 : 0;
            int i6 = size3 + i5 + (z2 ? size : 0);
            this.l = i6;
            this.f2912a = new e((short) 1, (short) 28, i6);
        }

        public final void a(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.f2912a.a(byteArrayOutputStream);
            byteArrayOutputStream.write(d.a(this.f2913b));
            byteArrayOutputStream.write(d.a(this.c));
            byteArrayOutputStream.write(d.a(this.j ? 256 : 0));
            byteArrayOutputStream.write(d.a(this.d));
            byteArrayOutputStream.write(d.a(this.e));
            Iterator it = this.f.iterator();
            while (it.hasNext()) {
                byteArrayOutputStream.write(d.a(((Integer) it.next()).intValue()));
            }
            Iterator it2 = this.f2914g.iterator();
            while (it2.hasNext()) {
                byteArrayOutputStream.write(d.a(((Integer) it2.next()).intValue()));
            }
            Iterator it3 = this.h.iterator();
            while (it3.hasNext()) {
                byteArrayOutputStream.write((byte[]) it3.next());
            }
            int i = this.k;
            if (i > 0) {
                byteArrayOutputStream.write(new byte[i]);
            }
            Iterator it4 = this.i.iterator();
            while (it4.hasNext()) {
                Iterator it5 = ((List) it4.next()).iterator();
                while (it5.hasNext()) {
                    ((i) it5.next()).getClass();
                    byteArrayOutputStream.write(d.a(0));
                    byteArrayOutputStream.write(d.a(0));
                    byteArrayOutputStream.write(d.a(0));
                }
                byteArrayOutputStream.write(d.a(-1));
            }
        }
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public final e f2902a;

        /* renamed from: b, reason: collision with root package name */
        public final C0037d f2903b;
        public final h c = new h(false, "?1", "?2", "?3", "?4", "?5", PropertyTypeConstants.PROPERTY_TYPE_COLOR);
        public final h d;
        public final k e;

        public final int a() {
            int i = this.c.l + 288 + this.d.l;
            k kVar = this.e;
            int i2 = (kVar.f2918b * 4) + 16;
            j jVar = kVar.d;
            return (jVar.e.length * 16) + (jVar.d.length * 4) + 84 + i2 + i;
        }

        public c(C0037d c0037d, List list) {
            this.f2903b = c0037d;
            String[] strArr = new String[list.size()];
            for (int i = 0; i < list.size(); i++) {
                strArr[i] = ((b) list.get(i)).d;
            }
            this.d = new h(true, strArr);
            this.e = new k(list);
            this.f2902a = new e(Access.INTERFACE, (short) 288, a());
        }
    }

    public static class i {
        private i() {
        }
    }

    public static class k {

        /* renamed from: a, reason: collision with root package name */
        public final e f2917a;

        /* renamed from: b, reason: collision with root package name */
        public final int f2918b;
        public final int[] c;
        public final j d;

        public k(List list) {
            this.f2918b = ((b) list.get(list.size() - 1)).c + 1;
            HashSet hashSet = new HashSet();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                hashSet.add(Short.valueOf(((b) it.next()).c));
            }
            this.c = new int[this.f2918b];
            short s = 0;
            while (true) {
                int i = this.f2918b;
                if (s < i) {
                    if (hashSet.contains(Short.valueOf(s))) {
                        this.c[s] = 1073741824;
                    }
                    s = (short) (s + 1);
                } else {
                    this.f2917a = new e((short) 514, (short) 16, (i * 4) + 16);
                    this.d = new j(list, hashSet, i);
                    return;
                }
            }
        }
    }

    public static class j {

        /* renamed from: a, reason: collision with root package name */
        public final e f2915a;

        /* renamed from: b, reason: collision with root package name */
        public final int f2916b;
        public final byte[] c;
        public final int[] d;
        public final f[] e;

        public j(List list, HashSet hashSet, int i) {
            byte[] bArr = new byte[64];
            this.c = bArr;
            this.f2916b = i;
            bArr[0] = 64;
            this.e = new f[list.size()];
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.e[i2] = new f(i2, ((b) list.get(i2)).e);
            }
            this.d = new int[i];
            int i3 = 0;
            for (short s = 0; s < i; s = (short) (s + 1)) {
                if (hashSet.contains(Short.valueOf(s))) {
                    this.d[s] = i3;
                    i3 += 16;
                } else {
                    this.d[s] = -1;
                }
            }
            this.f2915a = new e((short) 513, (short) 84, (this.e.length * 16) + (this.d.length * 4) + 84);
        }
    }

    public static class f {

        /* renamed from: a, reason: collision with root package name */
        public final int f2908a;

        /* renamed from: b, reason: collision with root package name */
        public final int f2909b;

        public f(int i, int i2) {
            this.f2908a = i;
            this.f2909b = i2;
        }
    }

    /* renamed from: com.google.android.material.color.d$d, reason: collision with other inner class name */
    public static class C0037d {

        /* renamed from: a, reason: collision with root package name */
        public final int f2904a;

        /* renamed from: b, reason: collision with root package name */
        public final String f2905b;

        public C0037d(int i, String str) {
            this.f2904a = i;
            this.f2905b = str;
        }
    }

    public class a implements Comparator<b> {
        @Override // java.util.Comparator
        public int compare(b bVar, b bVar2) {
            return bVar.c - bVar2.c;
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final byte f2900a;

        /* renamed from: b, reason: collision with root package name */
        public final byte f2901b;
        public final short c;
        public final String d;
        public final int e;

        public b(int i, int i2, String str) {
            this.d = str;
            this.e = i2;
            this.c = (short) (65535 & i);
            this.f2901b = (byte) ((i >> 16) & 255);
            this.f2900a = (byte) ((i >> 24) & 255);
        }
    }

    public static byte[] d(short s) {
        return new byte[]{(byte) (s & 255), (byte) ((s >> 8) & 255)};
    }

    public static byte[] b(char c2) {
        return new byte[]{(byte) (c2 & 255), (byte) ((c2 >> '\b') & 255)};
    }

    public static byte[] a(int i2) {
        return new byte[]{(byte) (i2 & 255), (byte) ((i2 >> 8) & 255), (byte) ((i2 >> 16) & 255), (byte) ((i2 >> 24) & 255)};
    }
}
