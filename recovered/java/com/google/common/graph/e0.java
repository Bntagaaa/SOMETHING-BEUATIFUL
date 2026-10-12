package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.UnmodifiableIterator;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
abstract class e0<E> extends AbstractSet<E> {

    /* renamed from: a, reason: collision with root package name */
    public final Map f4510a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f4511b;

    public e0(Map map, Object obj) {
        this.f4510a = (Map) Preconditions.checkNotNull(map);
        this.f4511b = Preconditions.checkNotNull(obj);
    }

    public class a extends AbstractIterator<E> {
        public final /* synthetic */ Iterator c;

        public a(Iterator it) {
            this.c = it;
        }

        @Override // com.google.common.collect.AbstractIterator
        public E computeNext() {
            Map.Entry entry;
            do {
                Iterator it = this.c;
                if (it.hasNext()) {
                    entry = (Map.Entry) it.next();
                } else {
                    return endOfData();
                }
            } while (!e0.this.f4511b.equals(entry.getValue()));
            return (E) entry.getKey();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public UnmodifiableIterator<E> iterator() {
        return new a(this.f4510a.entrySet().iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@NullableDecl Object obj) {
        return this.f4511b.equals(this.f4510a.get(obj));
    }
}
