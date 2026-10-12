package gnu.mapping;

/* loaded from: classes2.dex */
public class PlainLocation extends NamedLocation {
    public PlainLocation(Symbol symbol, Object obj) {
        super(symbol, obj);
    }

    public PlainLocation(Symbol symbol, Object obj, Object obj2) {
        super(symbol, obj);
        this.value = obj2;
    }

    @Override // gnu.mapping.Location
    public final Object get(Object obj) {
        Location location = this.base;
        if (location != null) {
            return location.get(obj);
        }
        Object obj2 = this.value;
        return obj2 == Location.UNBOUND ? obj : obj2;
    }

    @Override // gnu.mapping.Location
    public boolean isBound() {
        Location location = this.base;
        return location != null ? location.isBound() : this.value != Location.UNBOUND;
    }

    @Override // gnu.mapping.Location
    public final void set(Object obj) {
        Location location = this.base;
        if (location == null) {
            this.value = obj;
            return;
        }
        if (this.value == IndirectableLocation.DIRECT_ON_SET) {
            this.base = null;
            this.value = obj;
        } else if (location.isConstant()) {
            getEnvironment().put(getKeySymbol(), getKeyProperty(), obj);
        } else {
            this.base.set(obj);
        }
    }
}
