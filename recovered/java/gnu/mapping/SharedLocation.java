package gnu.mapping;

/* loaded from: classes2.dex */
public class SharedLocation extends NamedLocation {
    int timestamp;

    public SharedLocation(Symbol symbol, Object obj, int i) {
        super(symbol, obj);
        this.timestamp = i;
    }

    @Override // gnu.mapping.Location
    public final synchronized Object get(Object obj) {
        try {
            Location location = this.base;
            if (location != null) {
                obj = location.get(obj);
            } else {
                Object obj2 = this.value;
                if (obj2 != Location.UNBOUND) {
                    obj = obj2;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return obj;
    }

    @Override // gnu.mapping.Location
    public synchronized boolean isBound() {
        Location location;
        try {
            location = this.base;
        } catch (Throwable th) {
            throw th;
        }
        return location != null ? location.isBound() : this.value != Location.UNBOUND;
    }

    @Override // gnu.mapping.Location
    public final synchronized void set(Object obj) {
        try {
            Location location = this.base;
            if (location == null) {
                this.value = obj;
            } else if (this.value == IndirectableLocation.DIRECT_ON_SET) {
                this.base = null;
                this.value = obj;
            } else if (location.isConstant()) {
                getEnvironment().put(getKeySymbol(), getKeyProperty(), obj);
            } else {
                this.base.set(obj);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
