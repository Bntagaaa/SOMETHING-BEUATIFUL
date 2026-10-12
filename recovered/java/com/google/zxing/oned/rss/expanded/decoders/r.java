package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

/* loaded from: classes2.dex */
final class r {

    /* renamed from: a, reason: collision with root package name */
    public final BitArray f5276a;

    /* renamed from: b, reason: collision with root package name */
    public final l f5277b = new l();
    public final StringBuilder c = new StringBuilder();

    public r(BitArray bitArray) {
        this.f5276a = bitArray;
    }

    public final String a(StringBuilder sb, int i) throws NotFoundException {
        String str = null;
        while (true) {
            n nVarB = b(i, str);
            String strA = q.a(nVarB.f5271b);
            if (strA != null) {
                sb.append(strA);
            }
            String strValueOf = nVarB.d ? String.valueOf(nVarB.c) : null;
            int i2 = nVarB.f5273a;
            if (i == i2) {
                return sb.toString();
            }
            i = i2;
            str = strValueOf;
        }
    }

    public static int c(int i, int i2, BitArray bitArray) {
        if (i2 > 32) {
            throw new IllegalArgumentException("extractNumberValueFromBitArray can't handle more than 32 bits");
        }
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            if (bitArray.get(i + i4)) {
                i3 |= 1 << ((i2 - i4) - 1);
            }
        }
        return i3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:130:0x0232, code lost:
    
        r3 = r1.f5266a;
        r5 = r3 + 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x023a, code lost:
    
        if (r5 <= r9.getSize()) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x023d, code lost:
    
        if (r3 >= r5) goto L231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0243, code lost:
    
        if (r9.get(r3) == false) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x024b, code lost:
    
        if (d(r1.f5266a) == false) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0254, code lost:
    
        if ((r1.f5266a + 5) >= r9.getSize()) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0256, code lost:
    
        r1.f5266a += 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x025c, code lost:
    
        r1.f5266a = r9.getSize();
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0262, code lost:
    
        r1.f5267b = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0265, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0268, code lost:
    
        r1.f5266a += 3;
        r1.f5267b = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0270, code lost:
    
        r3 = new com.google.zxing.oned.rss.expanded.decoders.k(null, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d7, code lost:
    
        r3 = r1.f5266a;
        r5 = r3 + 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00df, code lost:
    
        if (r5 <= r9.getSize()) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00e2, code lost:
    
        if (r3 >= r5) goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e8, code lost:
    
        if (r9.get(r3) == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00f0, code lost:
    
        if (d(r1.f5266a) == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00f9, code lost:
    
        if ((r1.f5266a + 5) >= r9.getSize()) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00fb, code lost:
    
        r1.f5266a += 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0101, code lost:
    
        r1.f5266a = r9.getSize();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0107, code lost:
    
        r1.f5267b = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x010a, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x010d, code lost:
    
        r1.f5266a += 3;
        r1.f5267b = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0115, code lost:
    
        r3 = new com.google.zxing.oned.rss.expanded.decoders.k(null, false);
     */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x035e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0361 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0367  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x00c0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0329 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d0 A[LOOP:1: B:8:0x0030->B:44:0x00d0, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.zxing.oned.rss.expanded.decoders.n b(int r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 960
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.rss.expanded.decoders.r.b(int, java.lang.String):com.google.zxing.oned.rss.expanded.decoders.n");
    }

    public final boolean d(int i) {
        int i2;
        int i3 = i + 1;
        BitArray bitArray = this.f5276a;
        if (i3 > bitArray.getSize()) {
            return false;
        }
        for (int i4 = 0; i4 < 5 && (i2 = i4 + i) < bitArray.getSize(); i4++) {
            if (i4 == 2) {
                if (!bitArray.get(i + 2)) {
                    return false;
                }
            } else if (bitArray.get(i2)) {
                return false;
            }
        }
        return true;
    }
}
