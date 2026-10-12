package com.google.common.collect;

import com.google.common.base.Predicates;
import com.google.common.collect.Maps;
import com.google.common.collect.n1;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
class m1 extends Maps.c0<Object, Collection<Object>> {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n1.a f4269b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m1(n1.a aVar) {
        super(aVar);
        this.f4269b = aVar;
    }

    @Override // com.google.common.collect.Maps.c0, java.util.AbstractCollection, java.util.Collection
    public boolean remove(@NullableDecl Object obj) {
        if (!(obj instanceof Collection)) {
            return false;
        }
        Collection collection = (Collection) obj;
        n1.a aVar = this.f4269b;
        Iterator it = n1.this.f.asMap().entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Collection collectionG = n1.g((Collection) entry.getValue(), new n1.c(entry.getKey()));
            if (!collectionG.isEmpty() && collection.equals(collectionG)) {
                if (collectionG.size() == ((Collection) entry.getValue()).size()) {
                    it.remove();
                    return true;
                }
                collectionG.clear();
                return true;
            }
        }
        return false;
    }

    @Override // com.google.common.collect.Maps.c0, java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        return n1.this.h(Predicates.compose(Predicates.in(collection), Maps.e.f4010b));
    }

    @Override // com.google.common.collect.Maps.c0, java.util.AbstractCollection, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        return n1.this.h(Predicates.compose(Predicates.not(Predicates.in(collection)), Maps.e.f4010b));
    }
}
