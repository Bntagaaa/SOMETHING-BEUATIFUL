package androidx.coordinatorlayout.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class DirectedAcyclicGraph<T> {

    /* renamed from: a, reason: collision with root package name */
    public final Pools.SimplePool f829a = new Pools.SimplePool(10);

    /* renamed from: b, reason: collision with root package name */
    public final SimpleArrayMap f830b = new SimpleArrayMap();
    public final ArrayList c = new ArrayList();
    public final HashSet d = new HashSet();

    public void addNode(@NonNull T t) {
        SimpleArrayMap simpleArrayMap = this.f830b;
        if (simpleArrayMap.containsKey(t)) {
            return;
        }
        simpleArrayMap.put(t, null);
    }

    public boolean contains(@NonNull T t) {
        return this.f830b.containsKey(t);
    }

    public void addEdge(@NonNull T t, @NonNull T t2) {
        SimpleArrayMap simpleArrayMap = this.f830b;
        if (!simpleArrayMap.containsKey(t) || !simpleArrayMap.containsKey(t2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList arrayList = (ArrayList) simpleArrayMap.get(t);
        if (arrayList == null) {
            arrayList = (ArrayList) this.f829a.acquire();
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            simpleArrayMap.put(t, arrayList);
        }
        arrayList.add(t2);
    }

    @Nullable
    public List getIncomingEdges(@NonNull T t) {
        return (List) this.f830b.get(t);
    }

    @Nullable
    public List<T> getOutgoingEdges(@NonNull T t) {
        SimpleArrayMap simpleArrayMap = this.f830b;
        int size = simpleArrayMap.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            ArrayList arrayList2 = (ArrayList) simpleArrayMap.valueAt(i);
            if (arrayList2 != null && arrayList2.contains(t)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(simpleArrayMap.keyAt(i));
            }
        }
        return arrayList;
    }

    public boolean hasOutgoingEdges(@NonNull T t) {
        SimpleArrayMap simpleArrayMap = this.f830b;
        int size = simpleArrayMap.size();
        for (int i = 0; i < size; i++) {
            ArrayList arrayList = (ArrayList) simpleArrayMap.valueAt(i);
            if (arrayList != null && arrayList.contains(t)) {
                return true;
            }
        }
        return false;
    }

    public void clear() {
        SimpleArrayMap simpleArrayMap = this.f830b;
        int size = simpleArrayMap.size();
        for (int i = 0; i < size; i++) {
            ArrayList arrayList = (ArrayList) simpleArrayMap.valueAt(i);
            if (arrayList != null) {
                arrayList.clear();
                this.f829a.release(arrayList);
            }
        }
        simpleArrayMap.clear();
    }

    @NonNull
    public ArrayList<T> getSortedList() {
        ArrayList<T> arrayList = this.c;
        arrayList.clear();
        HashSet hashSet = this.d;
        hashSet.clear();
        SimpleArrayMap simpleArrayMap = this.f830b;
        int size = simpleArrayMap.size();
        for (int i = 0; i < size; i++) {
            a(simpleArrayMap.keyAt(i), arrayList, hashSet);
        }
        return arrayList;
    }

    public final void a(Object obj, ArrayList arrayList, HashSet hashSet) {
        if (arrayList.contains(obj)) {
            return;
        }
        if (hashSet.contains(obj)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(obj);
        ArrayList arrayList2 = (ArrayList) this.f830b.get(obj);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                a(arrayList2.get(i), arrayList, hashSet);
            }
        }
        hashSet.remove(obj);
        arrayList.add(obj);
    }
}
