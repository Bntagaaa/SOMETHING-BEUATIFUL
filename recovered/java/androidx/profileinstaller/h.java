package androidx.profileinstaller;

import androidx.annotation.RequiresApi;
import com.google.appinventor.components.runtime.util.Ev3Constants;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

@RequiresApi(19)
/* loaded from: classes.dex */
class h {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f1973a = {Ev3Constants.Opcode.JR_NEQ8, Ev3Constants.Opcode.JR_NEQ32, Ev3Constants.Opcode.JR_EQF, 0};

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f1974b = {Ev3Constants.Opcode.JR_NEQ8, Ev3Constants.Opcode.JR_NEQ32, Ev3Constants.Opcode.JR_EQ16, 0};

    public static String b(String str, String str2, byte[] bArr) {
        byte[] bArr2 = ProfileVersion.e;
        boolean zEquals = Arrays.equals(bArr, bArr2);
        byte[] bArr3 = ProfileVersion.d;
        String str3 = (zEquals || Arrays.equals(bArr, bArr3)) ? ":" : "!";
        if (str.length() <= 0) {
            if ("!".equals(str3)) {
                return str2.replace(":", "!");
            }
            if (":".equals(str3)) {
                return str2.replace("!", ":");
            }
        } else {
            if (str2.equals("classes.dex")) {
                return str;
            }
            if (str2.contains("!") || str2.contains(":")) {
                if ("!".equals(str3)) {
                    return str2.replace(":", "!");
                }
                if (":".equals(str3)) {
                    return str2.replace("!", ":");
                }
            } else if (!str2.endsWith(".apk")) {
                return _COROUTINE.a.m(_COROUTINE.a.p(str), (Arrays.equals(bArr, bArr2) || Arrays.equals(bArr, bArr3)) ? ":" : "!", str2);
            }
        }
        return str2;
    }

    public static void j(ByteArrayOutputStream byteArrayOutputStream, c cVar, String str) throws IOException {
        Charset charset = StandardCharsets.UTF_8;
        d.f(byteArrayOutputStream, str.getBytes(charset).length);
        d.f(byteArrayOutputStream, cVar.e);
        d.e(byteArrayOutputStream, cVar.f, 4);
        d.e(byteArrayOutputStream, cVar.c, 4);
        d.e(byteArrayOutputStream, cVar.f1967g, 4);
        byteArrayOutputStream.write(str.getBytes(charset));
    }

    private h() {
    }

    /* JADX WARN: Finally extract failed */
    public static boolean i(ByteArrayOutputStream byteArrayOutputStream, byte[] bArr, c[] cVarArr) throws IOException {
        ArrayList arrayList;
        int length;
        byte[] bArr2 = ProfileVersion.f1960a;
        if (!Arrays.equals(bArr, bArr2)) {
            byte[] bArr3 = ProfileVersion.f1961b;
            if (Arrays.equals(bArr, bArr3)) {
                byte[] bArrA = a(cVarArr, bArr3);
                d.e(byteArrayOutputStream, cVarArr.length, 1);
                d.e(byteArrayOutputStream, bArrA.length, 4);
                byte[] bArrA2 = d.a(bArrA);
                d.e(byteArrayOutputStream, bArrA2.length, 4);
                byteArrayOutputStream.write(bArrA2);
                return true;
            }
            byte[] bArr4 = ProfileVersion.d;
            if (Arrays.equals(bArr, bArr4)) {
                d.e(byteArrayOutputStream, cVarArr.length, 1);
                for (c cVar : cVarArr) {
                    int size = cVar.i.size() * 4;
                    String strB = b(cVar.f1965a, cVar.f1966b, bArr4);
                    Charset charset = StandardCharsets.UTF_8;
                    d.f(byteArrayOutputStream, strB.getBytes(charset).length);
                    d.f(byteArrayOutputStream, cVar.h.length);
                    d.e(byteArrayOutputStream, size, 4);
                    d.e(byteArrayOutputStream, cVar.c, 4);
                    byteArrayOutputStream.write(strB.getBytes(charset));
                    Iterator it = cVar.i.keySet().iterator();
                    while (it.hasNext()) {
                        d.f(byteArrayOutputStream, ((Integer) it.next()).intValue());
                        d.f(byteArrayOutputStream, 0);
                    }
                    for (int i : cVar.h) {
                        d.f(byteArrayOutputStream, i);
                    }
                }
                return true;
            }
            byte[] bArr5 = ProfileVersion.c;
            if (Arrays.equals(bArr, bArr5)) {
                byte[] bArrA3 = a(cVarArr, bArr5);
                d.e(byteArrayOutputStream, cVarArr.length, 1);
                d.e(byteArrayOutputStream, bArrA3.length, 4);
                byte[] bArrA4 = d.a(bArrA3);
                d.e(byteArrayOutputStream, bArrA4.length, 4);
                byteArrayOutputStream.write(bArrA4);
                return true;
            }
            byte[] bArr6 = ProfileVersion.e;
            if (!Arrays.equals(bArr, bArr6)) {
                return false;
            }
            d.f(byteArrayOutputStream, cVarArr.length);
            for (c cVar2 : cVarArr) {
                String strB2 = b(cVar2.f1965a, cVar2.f1966b, bArr6);
                Charset charset2 = StandardCharsets.UTF_8;
                d.f(byteArrayOutputStream, strB2.getBytes(charset2).length);
                TreeMap treeMap = cVar2.i;
                d.f(byteArrayOutputStream, treeMap.size());
                d.f(byteArrayOutputStream, cVar2.h.length);
                d.e(byteArrayOutputStream, cVar2.c, 4);
                byteArrayOutputStream.write(strB2.getBytes(charset2));
                Iterator it2 = treeMap.keySet().iterator();
                while (it2.hasNext()) {
                    d.f(byteArrayOutputStream, ((Integer) it2.next()).intValue());
                }
                for (int i2 : cVar2.h) {
                    d.f(byteArrayOutputStream, i2);
                }
            }
            return true;
        }
        ArrayList arrayList2 = new ArrayList(3);
        ArrayList arrayList3 = new ArrayList(3);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        try {
            d.f(byteArrayOutputStream2, cVarArr.length);
            int i3 = 2;
            for (c cVar3 : cVarArr) {
                d.e(byteArrayOutputStream2, cVar3.c, 4);
                d.e(byteArrayOutputStream2, cVar3.d, 4);
                d.e(byteArrayOutputStream2, cVar3.f1967g, 4);
                String strB3 = b(cVar3.f1965a, cVar3.f1966b, bArr2);
                Charset charset3 = StandardCharsets.UTF_8;
                int length2 = strB3.getBytes(charset3).length;
                d.f(byteArrayOutputStream2, length2);
                i3 = i3 + 14 + length2;
                byteArrayOutputStream2.write(strB3.getBytes(charset3));
            }
            byte[] byteArray = byteArrayOutputStream2.toByteArray();
            if (i3 != byteArray.length) {
                throw new IllegalStateException("Expected size " + i3 + ", does not match actual size " + byteArray.length);
            }
            i iVar = new i(e.f1968b, byteArray, false);
            byteArrayOutputStream2.close();
            arrayList2.add(iVar);
            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
            int i4 = 0;
            for (int i5 = 0; i5 < cVarArr.length; i5++) {
                try {
                    c cVar4 = cVarArr[i5];
                    d.f(byteArrayOutputStream3, i5);
                    d.f(byteArrayOutputStream3, cVar4.e);
                    i4 = i4 + 4 + (cVar4.e * 2);
                    int[] iArr = cVar4.h;
                    int length3 = iArr.length;
                    int i6 = 0;
                    int i7 = 0;
                    while (i6 < length3) {
                        int i8 = iArr[i6];
                        d.f(byteArrayOutputStream3, i8 - i7);
                        i6++;
                        i7 = i8;
                    }
                } catch (Throwable th) {
                }
            }
            byte[] byteArray2 = byteArrayOutputStream3.toByteArray();
            if (i4 != byteArray2.length) {
                throw new IllegalStateException("Expected size " + i4 + ", does not match actual size " + byteArray2.length);
            }
            i iVar2 = new i(e.c, byteArray2, true);
            byteArrayOutputStream3.close();
            arrayList2.add(iVar2);
            byteArrayOutputStream3 = new ByteArrayOutputStream();
            int i9 = 0;
            int i10 = 0;
            while (i9 < cVarArr.length) {
                try {
                    c cVar5 = cVarArr[i9];
                    Iterator it3 = cVar5.i.entrySet().iterator();
                    int iIntValue = 0;
                    while (it3.hasNext()) {
                        iIntValue |= ((Integer) ((Map.Entry) it3.next()).getValue()).intValue();
                    }
                    ByteArrayOutputStream byteArrayOutputStream4 = new ByteArrayOutputStream();
                    try {
                        k(byteArrayOutputStream4, cVar5);
                        byte[] byteArray3 = byteArrayOutputStream4.toByteArray();
                        byteArrayOutputStream4.close();
                        byteArrayOutputStream4 = new ByteArrayOutputStream();
                        try {
                            l(byteArrayOutputStream4, cVar5);
                            byte[] byteArray4 = byteArrayOutputStream4.toByteArray();
                            byteArrayOutputStream4.close();
                            d.f(byteArrayOutputStream3, i9);
                            int length4 = byteArray3.length + 2 + byteArray4.length;
                            int i11 = i10 + 6;
                            ArrayList arrayList4 = arrayList3;
                            d.e(byteArrayOutputStream3, length4, 4);
                            d.f(byteArrayOutputStream3, iIntValue);
                            byteArrayOutputStream3.write(byteArray3);
                            byteArrayOutputStream3.write(byteArray4);
                            i10 = i11 + length4;
                            i9++;
                            arrayList3 = arrayList4;
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                    try {
                        byteArrayOutputStream3.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
            }
            ArrayList arrayList5 = arrayList3;
            byte[] byteArray5 = byteArrayOutputStream3.toByteArray();
            if (i10 != byteArray5.length) {
                throw new IllegalStateException("Expected size " + i10 + ", does not match actual size " + byteArray5.length);
            }
            i iVar3 = new i(e.d, byteArray5, true);
            byteArrayOutputStream3.close();
            arrayList2.add(iVar3);
            long j = 4;
            long size2 = j + j + 4 + (arrayList2.size() * 16);
            d.e(byteArrayOutputStream, arrayList2.size(), 4);
            int i12 = 0;
            while (i12 < arrayList2.size()) {
                i iVar4 = (i) arrayList2.get(i12);
                d.e(byteArrayOutputStream, iVar4.f1975a.getValue(), 4);
                d.e(byteArrayOutputStream, size2, 4);
                byte[] bArr7 = iVar4.f1976b;
                if (iVar4.c) {
                    long length5 = bArr7.length;
                    byte[] bArrA5 = d.a(bArr7);
                    arrayList = arrayList5;
                    arrayList.add(bArrA5);
                    d.e(byteArrayOutputStream, bArrA5.length, 4);
                    d.e(byteArrayOutputStream, length5, 4);
                    length = bArrA5.length;
                } else {
                    arrayList = arrayList5;
                    arrayList.add(bArr7);
                    d.e(byteArrayOutputStream, bArr7.length, 4);
                    d.e(byteArrayOutputStream, 0L, 4);
                    length = bArr7.length;
                }
                size2 += length;
                i12++;
                arrayList5 = arrayList;
            }
            ArrayList arrayList6 = arrayList5;
            for (int i13 = 0; i13 < arrayList6.size(); i13++) {
                byteArrayOutputStream.write((byte[]) arrayList6.get(i13));
            }
            return true;
        } catch (Throwable th3) {
            try {
                byteArrayOutputStream2.close();
                throw th3;
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
                throw th3;
            }
        }
    }

    public static byte[] a(c[] cVarArr, byte[] bArr) throws IOException {
        int length = 0;
        for (c cVar : cVarArr) {
            length += ((((cVar.f1967g * 2) + 7) & (-8)) / 8) + (cVar.e * 2) + b(cVar.f1965a, cVar.f1966b, bArr).getBytes(StandardCharsets.UTF_8).length + 16 + cVar.f;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(length);
        if (Arrays.equals(bArr, ProfileVersion.c)) {
            for (c cVar2 : cVarArr) {
                j(byteArrayOutputStream, cVar2, b(cVar2.f1965a, cVar2.f1966b, bArr));
                l(byteArrayOutputStream, cVar2);
                int[] iArr = cVar2.h;
                int length2 = iArr.length;
                int i = 0;
                int i2 = 0;
                while (i < length2) {
                    int i3 = iArr[i];
                    d.f(byteArrayOutputStream, i3 - i2);
                    i++;
                    i2 = i3;
                }
                k(byteArrayOutputStream, cVar2);
            }
        } else {
            for (c cVar3 : cVarArr) {
                j(byteArrayOutputStream, cVar3, b(cVar3.f1965a, cVar3.f1966b, bArr));
            }
            for (c cVar4 : cVarArr) {
                l(byteArrayOutputStream, cVar4);
                int[] iArr2 = cVar4.h;
                int length3 = iArr2.length;
                int i4 = 0;
                int i5 = 0;
                while (i4 < length3) {
                    int i6 = iArr2[i4];
                    d.f(byteArrayOutputStream, i6 - i5);
                    i4++;
                    i5 = i6;
                }
                k(byteArrayOutputStream, cVar4);
            }
        }
        if (byteArrayOutputStream.size() != length) {
            throw new IllegalStateException("The bytes saved do not match expectation. actual=" + byteArrayOutputStream.size() + " expected=" + length);
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static void l(ByteArrayOutputStream byteArrayOutputStream, c cVar) throws IOException {
        int i = 0;
        for (Map.Entry entry : cVar.i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            if ((((Integer) entry.getValue()).intValue() & 1) != 0) {
                d.f(byteArrayOutputStream, iIntValue - i);
                d.f(byteArrayOutputStream, 0);
                i = iIntValue;
            }
        }
    }

    public static void k(ByteArrayOutputStream byteArrayOutputStream, c cVar) throws IOException {
        byte[] bArr = new byte[(((cVar.f1967g * 2) + 7) & (-8)) / 8];
        for (Map.Entry entry : cVar.i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            int iIntValue2 = ((Integer) entry.getValue()).intValue();
            if ((iIntValue2 & 2) != 0) {
                int i = iIntValue / 8;
                bArr[i] = (byte) (bArr[i] | (1 << (iIntValue % 8)));
            }
            if ((iIntValue2 & 4) != 0) {
                int i2 = iIntValue + cVar.f1967g;
                int i3 = i2 / 8;
                bArr[i3] = (byte) ((1 << (i2 % 8)) | bArr[i3]);
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    public static c[] g(FileInputStream fileInputStream, byte[] bArr, String str) throws IOException {
        if (Arrays.equals(bArr, ProfileVersion.f1961b)) {
            int iD = (int) d.d(fileInputStream, 1);
            byte[] bArrC = d.c(fileInputStream, (int) d.d(fileInputStream, 4), (int) d.d(fileInputStream, 4));
            if (fileInputStream.read() > 0) {
                throw new IllegalStateException("Content found after the end of file");
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrC);
            try {
                c[] cVarArrH = h(byteArrayInputStream, str, iD);
                byteArrayInputStream.close();
                return cVarArrH;
            } catch (Throwable th) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        throw new IllegalStateException("Unsupported version");
    }

    public static c[] d(FileInputStream fileInputStream, byte[] bArr, byte[] bArr2, c[] cVarArr) throws IOException {
        byte[] bArr3 = ProfileVersion.f;
        if (!Arrays.equals(bArr, bArr3)) {
            if (!Arrays.equals(bArr, ProfileVersion.f1962g)) {
                throw new IllegalStateException("Unsupported meta version");
            }
            int iD = (int) d.d(fileInputStream, 2);
            byte[] bArrC = d.c(fileInputStream, (int) d.d(fileInputStream, 4), (int) d.d(fileInputStream, 4));
            if (fileInputStream.read() > 0) {
                throw new IllegalStateException("Content found after the end of file");
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrC);
            try {
                c[] cVarArrF = f(byteArrayInputStream, bArr2, iD, cVarArr);
                byteArrayInputStream.close();
                return cVarArrF;
            } catch (Throwable th) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (Arrays.equals(ProfileVersion.f1960a, bArr2)) {
            throw new IllegalStateException("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
        }
        if (!Arrays.equals(bArr, bArr3)) {
            throw new IllegalStateException("Unsupported meta version");
        }
        int iD2 = (int) d.d(fileInputStream, 1);
        byte[] bArrC2 = d.c(fileInputStream, (int) d.d(fileInputStream, 4), (int) d.d(fileInputStream, 4));
        if (fileInputStream.read() > 0) {
            throw new IllegalStateException("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bArrC2);
        try {
            c[] cVarArrE = e(byteArrayInputStream2, iD2, cVarArr);
            byteArrayInputStream2.close();
            return cVarArrE;
        } catch (Throwable th3) {
            try {
                byteArrayInputStream2.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public static c[] f(ByteArrayInputStream byteArrayInputStream, byte[] bArr, int i, c[] cVarArr) throws IOException {
        if (byteArrayInputStream.available() == 0) {
            return new c[0];
        }
        if (i != cVarArr.length) {
            throw new IllegalStateException("Mismatched number of dex files found in metadata");
        }
        for (int i2 = 0; i2 < i; i2++) {
            d.d(byteArrayInputStream, 2);
            String str = new String(d.b(byteArrayInputStream, (int) d.d(byteArrayInputStream, 2)), StandardCharsets.UTF_8);
            long jD = d.d(byteArrayInputStream, 4);
            int iD = (int) d.d(byteArrayInputStream, 2);
            c cVar = null;
            if (cVarArr.length > 0) {
                int iIndexOf = str.indexOf("!");
                if (iIndexOf < 0) {
                    iIndexOf = str.indexOf(":");
                }
                String strSubstring = iIndexOf > 0 ? str.substring(iIndexOf + 1) : str;
                int i3 = 0;
                while (true) {
                    if (i3 >= cVarArr.length) {
                        break;
                    }
                    if (cVarArr[i3].f1966b.equals(strSubstring)) {
                        cVar = cVarArr[i3];
                        break;
                    }
                    i3++;
                }
            }
            if (cVar == null) {
                throw new IllegalStateException("Missing profile key: ".concat(str));
            }
            cVar.d = jD;
            int[] iArrC = c(byteArrayInputStream, iD);
            if (Arrays.equals(bArr, ProfileVersion.e)) {
                cVar.e = iD;
                cVar.h = iArrC;
            }
        }
        return cVarArr;
    }

    public static c[] e(ByteArrayInputStream byteArrayInputStream, int i, c[] cVarArr) {
        if (byteArrayInputStream.available() == 0) {
            return new c[0];
        }
        if (i != cVarArr.length) {
            throw new IllegalStateException("Mismatched number of dex files found in metadata");
        }
        String[] strArr = new String[i];
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            int iD = (int) d.d(byteArrayInputStream, 2);
            iArr[i2] = (int) d.d(byteArrayInputStream, 2);
            strArr[i2] = new String(d.b(byteArrayInputStream, iD), StandardCharsets.UTF_8);
        }
        for (int i3 = 0; i3 < i; i3++) {
            c cVar = cVarArr[i3];
            if (!cVar.f1966b.equals(strArr[i3])) {
                throw new IllegalStateException("Order of dexfiles in metadata did not match baseline");
            }
            int i4 = iArr[i3];
            cVar.e = i4;
            cVar.h = c(byteArrayInputStream, i4);
        }
        return cVarArr;
    }

    public static c[] h(ByteArrayInputStream byteArrayInputStream, String str, int i) throws IOException {
        TreeMap treeMap;
        if (byteArrayInputStream.available() == 0) {
            return new c[0];
        }
        c[] cVarArr = new c[i];
        for (int i2 = 0; i2 < i; i2++) {
            int iD = (int) d.d(byteArrayInputStream, 2);
            int iD2 = (int) d.d(byteArrayInputStream, 2);
            cVarArr[i2] = new c(str, new String(d.b(byteArrayInputStream, iD), StandardCharsets.UTF_8), d.d(byteArrayInputStream, 4), iD2, (int) d.d(byteArrayInputStream, 4), (int) d.d(byteArrayInputStream, 4), new int[iD2], new TreeMap());
        }
        for (int i3 = 0; i3 < i; i3++) {
            c cVar = cVarArr[i3];
            int iAvailable = byteArrayInputStream.available() - cVar.f;
            int iD3 = 0;
            while (true) {
                int iAvailable2 = byteArrayInputStream.available();
                treeMap = cVar.i;
                if (iAvailable2 <= iAvailable) {
                    break;
                }
                iD3 += (int) d.d(byteArrayInputStream, 2);
                treeMap.put(Integer.valueOf(iD3), 1);
                for (int iD4 = (int) d.d(byteArrayInputStream, 2); iD4 > 0; iD4--) {
                    d.d(byteArrayInputStream, 2);
                    int iD5 = (int) d.d(byteArrayInputStream, 1);
                    if (iD5 != 6 && iD5 != 7) {
                        while (iD5 > 0) {
                            d.d(byteArrayInputStream, 1);
                            for (int iD6 = (int) d.d(byteArrayInputStream, 1); iD6 > 0; iD6--) {
                                d.d(byteArrayInputStream, 2);
                            }
                            iD5--;
                        }
                    }
                }
            }
            if (byteArrayInputStream.available() != iAvailable) {
                throw new IllegalStateException("Read too much data during profile line parse");
            }
            cVar.h = c(byteArrayInputStream, cVar.e);
            int i4 = cVar.f1967g;
            BitSet bitSetValueOf = BitSet.valueOf(d.b(byteArrayInputStream, (((i4 * 2) + 7) & (-8)) / 8));
            for (int i5 = 0; i5 < i4; i5++) {
                int i6 = bitSetValueOf.get(i5) ? 2 : 0;
                if (bitSetValueOf.get(i5 + i4)) {
                    i6 |= 4;
                }
                if (i6 != 0) {
                    Integer num = (Integer) treeMap.get(Integer.valueOf(i5));
                    if (num == null) {
                        num = 0;
                    }
                    treeMap.put(Integer.valueOf(i5), Integer.valueOf(i6 | num.intValue()));
                }
            }
        }
        return cVarArr;
    }

    public static int[] c(ByteArrayInputStream byteArrayInputStream, int i) {
        int[] iArr = new int[i];
        int iD = 0;
        for (int i2 = 0; i2 < i; i2++) {
            iD += (int) d.d(byteArrayInputStream, 2);
            iArr[i2] = iD;
        }
        return iArr;
    }
}
