package com.google.zxing.oned.rss.expanded.decoders;

import com.google.appinventor.components.runtime.Form;

/* loaded from: classes2.dex */
abstract class i extends h {
    public abstract void addWeightCode(StringBuilder sb, int i);

    public abstract int checkWeight(int i);

    public final void encodeCompressedWeight(StringBuilder sb, int i, int i2) {
        int iC = r.c(i, i2, getGeneralDecoder().f5276a);
        addWeightCode(sb, iC);
        int iCheckWeight = checkWeight(iC);
        int i3 = Form.MAX_PERMISSION_NONCE;
        for (int i4 = 0; i4 < 5; i4++) {
            if (iCheckWeight / i3 == 0) {
                sb.append('0');
            }
            i3 /= 10;
        }
        sb.append(iCheckWeight);
    }
}
