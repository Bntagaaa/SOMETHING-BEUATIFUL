package gnu.mapping;

/* loaded from: classes2.dex */
public class ReadOnlyLocation extends ConstrainedLocation {
    @Override // gnu.mapping.ConstrainedLocation, gnu.mapping.Location
    public boolean isConstant() {
        return true;
    }

    public static ReadOnlyLocation make(Location location) {
        ReadOnlyLocation readOnlyLocation = new ReadOnlyLocation();
        readOnlyLocation.base = location;
        return readOnlyLocation;
    }

    @Override // gnu.mapping.ConstrainedLocation
    public Object coerce(Object obj) {
        StringBuffer stringBuffer = new StringBuffer("attempt to modify read-only location");
        Symbol keySymbol = getKeySymbol();
        if (keySymbol != null) {
            stringBuffer.append(": ");
            stringBuffer.append(keySymbol);
        }
        throw new IllegalStateException(stringBuffer.toString());
    }
}
