package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;

/* loaded from: classes2.dex */
final class d extends h {
    @Override // com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder
    public String parseInformation() throws NotFoundException {
        if (getInformation().getSize() < 48) {
            throw NotFoundException.getNotFoundInstance();
        }
        StringBuilder sb = new StringBuilder();
        encodeCompressedGtin(sb, 8);
        int iC = r.c(48, 2, getGeneralDecoder().f5276a);
        sb.append("(393");
        sb.append(iC);
        sb.append(')');
        int iC2 = r.c(50, 10, getGeneralDecoder().f5276a);
        if (iC2 / 100 == 0) {
            sb.append('0');
        }
        if (iC2 / 10 == 0) {
            sb.append('0');
        }
        sb.append(iC2);
        sb.append(getGeneralDecoder().b(60, null).f5271b);
        return sb.toString();
    }
}
