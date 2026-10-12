package gnu.mapping;

import _COROUTINE.a;

/* loaded from: classes2.dex */
public class KeyPair implements EnvironmentKey {
    Symbol name;
    Object property;

    public KeyPair(Symbol symbol, Object obj) {
        this.name = symbol;
        this.property = obj;
    }

    @Override // gnu.mapping.EnvironmentKey
    public Symbol getKeySymbol() {
        return this.name;
    }

    @Override // gnu.mapping.EnvironmentKey
    public Object getKeyProperty() {
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

    public boolean equals(Object obj) {
        if (!(obj instanceof KeyPair)) {
            return false;
        }
        KeyPair keyPair = (KeyPair) obj;
        if (this.property == keyPair.property) {
            Symbol symbol = this.name;
            Symbol symbol2 = keyPair.name;
            if (symbol == null) {
                if (symbol2 == null) {
                    return true;
                }
            } else if (symbol.equals(symbol2)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.name.hashCode() ^ System.identityHashCode(this.property);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("KeyPair[sym:");
        sb.append(this.name);
        sb.append(" prop:");
        return a.l(sb, this.property, "]");
    }
}
