package com.google.zxing.oned.rss.expanded.decoders;

/* loaded from: classes2.dex */
abstract class h extends AbstractExpandedDecoder {
    public final void encodeCompressedGtin(StringBuilder sb, int i) {
        sb.append("(01)");
        int length = sb.length();
        sb.append('9');
        encodeCompressedGtinWithoutAI(sb, i, length);
    }

    public final void encodeCompressedGtinWithoutAI(StringBuilder sb, int i, int i2) {
        for (int i3 = 0; i3 < 4; i3++) {
            int iC = r.c((i3 * 10) + i, 10, getGeneralDecoder().f5276a);
            if (iC / 100 == 0) {
                sb.append('0');
            }
            if (iC / 10 == 0) {
                sb.append('0');
            }
            sb.append(iC);
        }
        int i4 = 0;
        for (int i5 = 0; i5 < 13; i5++) {
            int iCharAt = sb.charAt(i5 + i2) - '0';
            if ((i5 & 1) == 0) {
                iCharAt *= 3;
            }
            i4 += iCharAt;
        }
        int i6 = 10 - (i4 % 10);
        sb.append(i6 != 10 ? i6 : 0);
    }
}
