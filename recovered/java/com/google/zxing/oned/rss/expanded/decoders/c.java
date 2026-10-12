package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;

/* loaded from: classes2.dex */
final class c extends h {
    @Override // com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder
    public String parseInformation() throws NotFoundException {
        if (getInformation().getSize() < 48) {
            throw NotFoundException.getNotFoundInstance();
        }
        StringBuilder sb = new StringBuilder();
        encodeCompressedGtin(sb, 8);
        int iC = r.c(48, 2, getGeneralDecoder().f5276a);
        sb.append("(392");
        sb.append(iC);
        sb.append(')');
        sb.append(getGeneralDecoder().b(50, null).f5271b);
        return sb.toString();
    }
}
