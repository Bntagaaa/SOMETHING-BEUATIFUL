package gnu.mapping;

/* loaded from: classes2.dex */
public class PropertyKey<T> {
    String name;

    public PropertyKey(String str) {
        this.name = str;
    }

    public T get(PropertySet propertySet, T t) {
        return (T) propertySet.getProperty(this, t);
    }

    public final T get(PropertySet propertySet) {
        return get(propertySet, null);
    }

    public void set(PropertySet propertySet, T t) {
        propertySet.setProperty(this, t);
    }
}
