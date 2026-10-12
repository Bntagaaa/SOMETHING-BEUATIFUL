package gnu.mapping;

/* loaded from: classes2.dex */
public class LocationProc extends Procedure0or1 implements HasSetter {
    Location loc;

    public LocationProc(Location location) {
        this.loc = location;
    }

    public static LocationProc makeNamed(Symbol symbol, Location location) {
        LocationProc locationProc = new LocationProc(location);
        locationProc.setSymbol(symbol);
        return locationProc;
    }

    public LocationProc(Location location, Procedure procedure) {
        this.loc = location;
        if (procedure != null) {
            pushConverter(procedure);
        }
    }

    public void pushConverter(Procedure procedure) {
        this.loc = ConstrainedLocation.make(this.loc, procedure);
    }

    @Override // gnu.mapping.Procedure0or1, gnu.mapping.Procedure
    public Object apply0() throws Throwable {
        return this.loc.get();
    }

    @Override // gnu.mapping.Procedure0or1, gnu.mapping.Procedure
    public Object apply1(Object obj) throws Throwable {
        set0(obj);
        return Values.empty;
    }

    @Override // gnu.mapping.Procedure
    public void set0(Object obj) throws Throwable {
        this.loc.set(obj);
    }

    @Override // gnu.mapping.Procedure, gnu.mapping.HasSetter
    public Procedure getSetter() {
        return new Setter0(this);
    }

    public final Location getLocation() {
        return this.loc;
    }

    @Override // gnu.mapping.Procedure
    public String toString() {
        if (getSymbol() != null) {
            return super.toString();
        }
        return "#<location-proc " + this.loc + ">";
    }
}
