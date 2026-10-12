package com.google.common.io;

import com.google.common.collect.AbstractIterator;
import com.google.common.io.CharSource;
import java.util.Iterator;

/* loaded from: classes.dex */
class f extends AbstractIterator<String> {
    public final Iterator c;

    public f(CharSource.b bVar) {
        this.c = CharSource.b.f4641b.split(bVar.f4642a).iterator();
    }

    @Override // com.google.common.collect.AbstractIterator
    public String computeNext() {
        Iterator it = this.c;
        if (it.hasNext()) {
            String str = (String) it.next();
            if (it.hasNext() || !str.isEmpty()) {
                return str;
            }
        }
        return endOfData();
    }
}
