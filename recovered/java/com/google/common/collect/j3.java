package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.LinkedListMultimap;
import java.util.AbstractSequentialList;
import java.util.ListIterator;
import java.util.Map;

/* loaded from: classes.dex */
class j3 extends AbstractSequentialList<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LinkedListMultimap f4240a;

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f4240a.i;
    }

    public class a extends d6<Map.Entry<Object, Object>, Object> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ LinkedListMultimap.e f4241b;

        @Override // com.google.common.collect.d6, java.util.ListIterator
        public void set(Object obj) {
            LinkedListMultimap.e eVar = this.f4241b;
            Preconditions.checkState(eVar.c != null);
            eVar.c.f3972b = obj;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ListIterator listIterator, LinkedListMultimap.e eVar) {
            super(listIterator);
            this.f4241b = eVar;
        }

        @Override // com.google.common.collect.c6
        public final Object a(Object obj) {
            return ((Map.Entry) obj).getValue();
        }
    }

    public j3(LinkedListMultimap linkedListMultimap) {
        this.f4240a = linkedListMultimap;
    }

    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    public ListIterator<Object> listIterator(int i) {
        LinkedListMultimap.e eVar = new LinkedListMultimap.e(i);
        return new a(eVar, eVar);
    }
}
