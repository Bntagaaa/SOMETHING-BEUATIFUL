package androidx.collection;

import androidx.annotation.NonNull;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class ArrayMap<K, V> extends SimpleArrayMap<K, V> implements Map<K, V> {
    public a h;

    public ArrayMap() {
    }

    public ArrayMap(int i) {
        super(i);
    }

    public ArrayMap(SimpleArrayMap simpleArrayMap) {
        super(simpleArrayMap);
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.h == null) {
            this.h = new a(this);
        }
        return (Set<Map.Entry<K, V>>) this.h.getEntrySet();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        if (this.h == null) {
            this.h = new a(this);
        }
        return (Set<K>) this.h.getKeySet();
    }

    @Override // java.util.Map
    public Collection<V> values() {
        if (this.h == null) {
            this.h = new a(this);
        }
        return (Collection<V>) this.h.getValues();
    }

    public boolean containsAll(@NonNull Collection<?> collection) {
        return d.containsAllHelper(this, collection);
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        ensureCapacity(map.size() + this.c);
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public boolean removeAll(@NonNull Collection<?> collection) {
        return d.removeAllHelper(this, collection);
    }

    public boolean retainAll(@NonNull Collection<?> collection) {
        return d.retainAllHelper(this, collection);
    }
}
