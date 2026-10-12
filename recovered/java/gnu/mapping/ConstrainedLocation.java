package gnu.mapping;

/* loaded from: classes2.dex */
public class ConstrainedLocation extends Location {
    protected Location base;
    protected Procedure converter;

    public static ConstrainedLocation make(Location location, Procedure procedure) {
        ConstrainedLocation constrainedLocation = new ConstrainedLocation();
        constrainedLocation.base = location;
        constrainedLocation.converter = procedure;
        return constrainedLocation;
    }

    @Override // gnu.mapping.Location
    public Symbol getKeySymbol() {
        return this.base.getKeySymbol();
    }

    @Override // gnu.mapping.Location
    public Object getKeyProperty() {
        return this.base.getKeyProperty();
    }

    @Override // gnu.mapping.Location
    public boolean isConstant() {
        return this.base.isConstant();
    }

    @Override // gnu.mapping.Location
    public final Object get(Object obj) {
        return this.base.get(obj);
    }

    @Override // gnu.mapping.Location
    public boolean isBound() {
        return this.base.isBound();
    }

    public Object coerce(Object obj) {
        try {
            return this.converter.apply1(obj);
        } catch (Throwable th) {
            throw WrappedException.wrapIfNeeded(th);
        }
    }

    @Override // gnu.mapping.Location
    public final void set(Object obj) {
        this.base.set(coerce(obj));
    }

    @Override // gnu.mapping.Location
    public Object setWithSave(Object obj) {
        return this.base.setWithSave(coerce(obj));
    }

    @Override // gnu.mapping.Location
    public void setRestore(Object obj) {
        this.base.setRestore(obj);
    }
}
