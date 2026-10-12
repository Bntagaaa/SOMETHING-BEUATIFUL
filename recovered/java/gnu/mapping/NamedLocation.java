package gnu.mapping;

import java.util.Map;

/* loaded from: classes2.dex */
public abstract class NamedLocation extends IndirectableLocation implements Map.Entry, EnvironmentKey {
    final Symbol name;
    NamedLocation next;
    final Object property;

    @Override // gnu.mapping.Location
    public boolean entered() {
        return this.next != null;
    }

    @Override // gnu.mapping.IndirectableLocation
    public Environment getEnvironment() {
        Environment environment;
        for (NamedLocation namedLocation = this; namedLocation != null; namedLocation = namedLocation.next) {
            if (namedLocation.name == null && (environment = (Environment) namedLocation.value) != null) {
                return environment;
            }
        }
        return super.getEnvironment();
    }

    public NamedLocation(NamedLocation namedLocation) {
        this.name = namedLocation.name;
        this.property = namedLocation.property;
    }

    public NamedLocation(Symbol symbol, Object obj) {
        this.name = symbol;
        this.property = obj;
    }

    @Override // gnu.mapping.IndirectableLocation, gnu.mapping.Location
    public final Symbol getKeySymbol() {
        return this.name;
    }

    @Override // gnu.mapping.IndirectableLocation, gnu.mapping.Location
    public final Object getKeyProperty() {
        return this.property;
    }

    @Override // gnu.mapping.EnvironmentKey
    public final boolean matches(EnvironmentKey environmentKey) {
        return Symbol.equals(environmentKey.getKeySymbol(), this.name) && environmentKey.getKeyProperty() == this.property;
    }

    @Override // gnu.mapping.EnvironmentKey
    public final boolean matches(Symbol symbol, Object obj) {
        return Symbol.equals(symbol, this.name) && obj == this.property;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.property == null ? this.name : this;
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (!(obj instanceof NamedLocation)) {
            return false;
        }
        NamedLocation namedLocation = (NamedLocation) obj;
        Symbol symbol = this.name;
        if (symbol != null ? !symbol.equals(namedLocation.name) : namedLocation.name != null) {
            return false;
        }
        if (this.property != namedLocation.property) {
            return false;
        }
        Object value = getValue();
        Object value2 = namedLocation.getValue();
        if (value == value2) {
            return true;
        }
        if (value == null || value2 == null) {
            return false;
        }
        return value.equals(value2);
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        int iHashCode = this.name.hashCode() ^ System.identityHashCode(this.property);
        Object value = getValue();
        return value != null ? iHashCode ^ value.hashCode() : iHashCode;
    }

    @Override // gnu.mapping.Location
    public synchronized Object setWithSave(Object obj) {
        if (this.value == IndirectableLocation.INDIRECT_FLUIDS) {
            return this.base.setWithSave(obj);
        }
        ThreadLocation threadLocationMakeAnonymous = ThreadLocation.makeAnonymous(this.name);
        SharedLocation sharedLocation = threadLocationMakeAnonymous.global;
        sharedLocation.base = this.base;
        sharedLocation.value = this.value;
        setAlias(threadLocationMakeAnonymous);
        NamedLocation location = threadLocationMakeAnonymous.getLocation();
        location.value = obj;
        location.base = null;
        return threadLocationMakeAnonymous.global;
    }

    @Override // gnu.mapping.Location
    public synchronized void setRestore(Object obj) {
        try {
            if (this.value == IndirectableLocation.INDIRECT_FLUIDS) {
                this.base.setRestore(obj);
            } else if (obj instanceof Location) {
                this.value = null;
                this.base = (Location) obj;
            } else {
                this.value = obj;
                this.base = null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
