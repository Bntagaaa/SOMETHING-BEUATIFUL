package com.google.zxing.oned.rss.expanded.decoders;

/* loaded from: classes2.dex */
final class b extends f {
    @Override // com.google.zxing.oned.rss.expanded.decoders.i
    public int checkWeight(int i) {
        return i < 10000 ? i : i - 10000;
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.i
    public void addWeightCode(StringBuilder sb, int i) {
        if (i < 10000) {
            sb.append("(3202)");
        } else {
            sb.append("(3203)");
        }
    }
}
