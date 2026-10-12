package com.google.common.collect;

import com.google.common.collect.x0;
import java.util.Map;

/* loaded from: classes.dex */
class y0 extends AbstractIterator<Map.Entry<Object, Object>> {
    public int c = -1;
    public final int d;
    public final /* synthetic */ x0.d e;

    public y0(x0.d dVar) {
        this.e = dVar;
        this.d = dVar.j().size();
    }

    @Override // com.google.common.collect.AbstractIterator
    public Map.Entry<Object, Object> computeNext() {
        int i = this.c;
        while (true) {
            this.c = i + 1;
            int i2 = this.c;
            if (i2 < this.d) {
                x0.d dVar = this.e;
                Object objI = dVar.i(i2);
                if (objI == null) {
                    i = this.c;
                } else {
                    return Maps.immutableEntry(dVar.j().keySet().asList().get(this.c), objI);
                }
            } else {
                return endOfData();
            }
        }
    }
}
