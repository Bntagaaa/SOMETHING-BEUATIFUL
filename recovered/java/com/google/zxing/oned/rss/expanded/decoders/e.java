package com.google.zxing.oned.rss.expanded.decoders;

import com.google.appinventor.components.runtime.Form;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

/* loaded from: classes2.dex */
final class e extends i {
    public final String c;
    public final String d;

    public e(BitArray bitArray, String str, String str2) {
        super(bitArray);
        this.c = str2;
        this.d = str;
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder
    public String parseInformation() throws NotFoundException {
        if (getInformation().getSize() != 84) {
            throw NotFoundException.getNotFoundInstance();
        }
        StringBuilder sb = new StringBuilder();
        encodeCompressedGtin(sb, 8);
        encodeCompressedWeight(sb, 48, 20);
        int iC = r.c(68, 16, getGeneralDecoder().f5276a);
        if (iC != 38400) {
            sb.append('(');
            sb.append(this.c);
            sb.append(')');
            int i = iC % 32;
            int i2 = iC / 32;
            int i3 = (i2 % 12) + 1;
            int i4 = i2 / 12;
            if (i4 / 10 == 0) {
                sb.append('0');
            }
            sb.append(i4);
            if (i3 / 10 == 0) {
                sb.append('0');
            }
            sb.append(i3);
            if (i / 10 == 0) {
                sb.append('0');
            }
            sb.append(i);
        }
        return sb.toString();
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.i
    public void addWeightCode(StringBuilder sb, int i) {
        int i2 = i / Form.MAX_PERMISSION_NONCE;
        sb.append('(');
        sb.append(this.d);
        sb.append(i2);
        sb.append(')');
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.i
    public int checkWeight(int i) {
        return i % Form.MAX_PERMISSION_NONCE;
    }
}
