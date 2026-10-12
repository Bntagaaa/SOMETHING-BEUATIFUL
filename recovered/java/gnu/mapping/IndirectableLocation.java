package gnu.mapping;

/* loaded from: classes2.dex */
public abstract class IndirectableLocation extends Location {
    protected static final Object DIRECT_ON_SET = new String("(direct-on-set)");
    protected static final Object INDIRECT_FLUIDS = new String("(indirect-fluids)");
    protected Location base;
    protected Object value;

    @Override // gnu.mapping.Location
    public Symbol getKeySymbol() {
        Location location = this.base;
        if (location != null) {
            return location.getKeySymbol();
        }
        return null;
    }

    @Override // gnu.mapping.Location
    public Object getKeyProperty() {
        Location location = this.base;
        if (location != null) {
            return location.getKeyProperty();
        }
        return null;
    }

    @Override // gnu.mapping.Location
    public boolean isConstant() {
        Location location = this.base;
        return location != null && location.isConstant();
    }

    @Override // gnu.mapping.Location
    public Location getBase() {
        Location location = this.base;
        return location == null ? this : location.getBase();
    }

    public Location getBaseForce() {
        Location location = this.base;
        return location == null ? new PlainLocation(getKeySymbol(), getKeyProperty(), this.value) : location;
    }

    public void setBase(Location location) {
        this.base = location;
        this.value = null;
    }

    public void setAlias(Location location) {
        this.base = location;
        this.value = INDIRECT_FLUIDS;
    }

    @Override // gnu.mapping.Location
    public void undefine() {
        this.base = null;
        this.value = Location.UNBOUND;
    }

    public Environment getEnvironment() {
        Location location = this.base;
        if (location instanceof NamedLocation) {
            return ((NamedLocation) location).getEnvironment();
        }
        return null;
    }
}
