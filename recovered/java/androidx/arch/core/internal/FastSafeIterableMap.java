package androidx.arch.core.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.arch.core.internal.SafeIterableMap;
import java.util.HashMap;
import java.util.Map;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class FastSafeIterableMap<K, V> extends SafeIterableMap<K, V> {
    public final HashMap e = new HashMap();

    @Override // androidx.arch.core.internal.SafeIterableMap
    @Nullable
    public SafeIterableMap.c<K, V> get(K k) {
        return (SafeIterableMap.c) this.e.get(k);
    }

    @Override // androidx.arch.core.internal.SafeIterableMap
    public V putIfAbsent(@NonNull K k, @NonNull V v) {
        SafeIterableMap.c<K, V> cVar = get(k);
        if (cVar != null) {
            return (V) cVar.f529b;
        }
        HashMap map = this.e;
        SafeIterableMap.c cVar2 = new SafeIterableMap.c(k, v);
        this.d++;
        SafeIterableMap.c cVar3 = this.f525b;
        if (cVar3 == null) {
            this.f524a = cVar2;
            this.f525b = cVar2;
        } else {
            cVar3.c = cVar2;
            cVar2.d = cVar3;
            this.f525b = cVar2;
        }
        map.put(k, cVar2);
        return null;
    }

    @Override // androidx.arch.core.internal.SafeIterableMap
    public V remove(@NonNull K k) {
        V v = (V) super.remove(k);
        this.e.remove(k);
        return v;
    }

    public boolean contains(K k) {
        return this.e.containsKey(k);
    }

    @Nullable
    public Map.Entry<K, V> ceil(K k) {
        if (contains(k)) {
            return ((SafeIterableMap.c) this.e.get(k)).d;
        }
        return null;
    }
}
