package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;

/* loaded from: classes2.dex */
final class g extends h {
    @Override // com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder
    public String parseInformation() throws NotFoundException {
        StringBuilder sbP = _COROUTINE.a.p("(01)");
        int length = sbP.length();
        sbP.append(r.c(4, 4, getGeneralDecoder().f5276a));
        encodeCompressedGtinWithoutAI(sbP, 8, length);
        return getGeneralDecoder().a(sbP, 48);
    }
}
