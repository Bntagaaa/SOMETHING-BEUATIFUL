package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;

/* loaded from: classes2.dex */
final class j extends AbstractExpandedDecoder {
    @Override // com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder
    public String parseInformation() throws NotFoundException {
        return getGeneralDecoder().a(new StringBuilder(), 5);
    }
}
