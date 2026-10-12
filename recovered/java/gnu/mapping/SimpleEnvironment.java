package gnu.mapping;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.ObjectStreamException;
import java.util.Hashtable;
import java.util.Set;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class SimpleEnvironment extends Environment {
    int currentTimestamp;
    int log2Size;
    private int mask;
    int num_bindings;
    NamedLocation sharedTail;
    NamedLocation[] table;

    public void toStringBase(StringBuffer stringBuffer) {
    }

    public int size() {
        return this.num_bindings;
    }

    public static Location getCurrentLocation(String str) {
        return Environment.getCurrent().getLocation((Object) str, true);
    }

    public static Object lookup_global(Symbol symbol) throws UnboundLocationException {
        Location locationLookup = Environment.getCurrent().lookup(symbol);
        if (locationLookup == null) {
            throw new UnboundLocationException(symbol);
        }
        return locationLookup.get();
    }

    public SimpleEnvironment() {
        this(64);
    }

    public SimpleEnvironment(String str) {
        this();
        setName(str);
    }

    public SimpleEnvironment(int i) {
        this.log2Size = 4;
        while (true) {
            int i2 = this.log2Size;
            if (i > (1 << i2)) {
                this.log2Size = i2 + 1;
            } else {
                int i3 = 1 << i2;
                this.table = new NamedLocation[i3];
                this.mask = i3 - 1;
                this.sharedTail = new PlainLocation(null, null, this);
                return;
            }
        }
    }

    @Override // gnu.mapping.Environment
    public NamedLocation lookup(Symbol symbol, Object obj, int i) {
        return lookupDirect(symbol, obj, i);
    }

    public NamedLocation lookupDirect(Symbol symbol, Object obj, int i) {
        for (NamedLocation namedLocation = this.table[i & this.mask]; namedLocation != null; namedLocation = namedLocation.next) {
            if (namedLocation.matches(symbol, obj)) {
                return namedLocation;
            }
        }
        return null;
    }

    @Override // gnu.mapping.Environment
    public synchronized NamedLocation getLocation(Symbol symbol, Object obj, int i, boolean z) {
        NamedLocation namedLocationLookup = lookup(symbol, obj, i);
        if (namedLocationLookup != null) {
            return namedLocationLookup;
        }
        if (!z) {
            return null;
        }
        return addUnboundLocation(symbol, obj, i);
    }

    public NamedLocation addUnboundLocation(Symbol symbol, Object obj, int i) {
        NamedLocation namedLocationNewEntry = newEntry(symbol, obj, i & this.mask);
        namedLocationNewEntry.base = null;
        namedLocationNewEntry.value = Location.UNBOUND;
        return namedLocationNewEntry;
    }

    @Override // gnu.mapping.Environment
    public void put(Symbol symbol, Object obj, Object obj2) {
        NamedLocation location = getLocation(symbol, obj, (this.flags & 4) != 0);
        if (location == null) {
            throw new UnboundLocationException(symbol);
        }
        if (location.isConstant()) {
            throw new IllegalStateException("attempt to modify read-only location: " + symbol + " in " + this + " loc:" + location);
        }
        location.set(obj2);
    }

    public NamedLocation newLocation(Symbol symbol, Object obj) {
        if ((this.flags & 8) != 0) {
            return new SharedLocation(symbol, obj, this.currentTimestamp);
        }
        return new PlainLocation(symbol, obj);
    }

    public NamedLocation newEntry(Symbol symbol, Object obj, int i) {
        NamedLocation namedLocationNewLocation = newLocation(symbol, obj);
        NamedLocation[] namedLocationArr = this.table;
        NamedLocation namedLocation = namedLocationArr[i];
        if (namedLocation == null) {
            namedLocation = this.sharedTail;
        }
        namedLocationNewLocation.next = namedLocation;
        namedLocationArr[i] = namedLocationNewLocation;
        int i2 = this.num_bindings + 1;
        this.num_bindings = i2;
        if (i2 >= namedLocationArr.length) {
            rehash();
        }
        return namedLocationNewLocation;
    }

    public NamedLocation define(Symbol symbol, Object obj, int i, Object obj2) {
        int i2 = i & this.mask;
        for (NamedLocation namedLocation = this.table[i2]; namedLocation != null; namedLocation = namedLocation.next) {
            if (namedLocation.matches(symbol, obj)) {
                if (!namedLocation.isBound() ? !getCanRedefine() : !getCanDefine()) {
                    redefineError(symbol, obj, namedLocation);
                }
                namedLocation.base = null;
                namedLocation.value = obj2;
                return namedLocation;
            }
        }
        NamedLocation namedLocationNewEntry = newEntry(symbol, obj, i2);
        namedLocationNewEntry.set(obj2);
        return namedLocationNewEntry;
    }

    @Override // gnu.mapping.Environment
    public void define(Symbol symbol, Object obj, Object obj2) {
        define(symbol, obj, symbol.hashCode() ^ System.identityHashCode(obj), obj2);
    }

    public void redefineError(Symbol symbol, Object obj, Location location) {
        throw new IllegalStateException("prohibited define/redefine of " + symbol + " in " + this);
    }

    @Override // gnu.mapping.Environment
    public NamedLocation addLocation(Symbol symbol, Object obj, Location location) {
        return addLocation(symbol, obj, symbol.hashCode() ^ System.identityHashCode(obj), location);
    }

    public NamedLocation addLocation(Symbol symbol, Object obj, int i, Location location) {
        if (location instanceof ThreadLocation) {
            ThreadLocation threadLocation = (ThreadLocation) location;
            if (threadLocation.property == obj) {
                location = threadLocation.getLocation();
            }
        }
        NamedLocation namedLocationLookupDirect = lookupDirect(symbol, obj, i);
        if (location == namedLocationLookupDirect) {
            return namedLocationLookupDirect;
        }
        boolean zIsBound = namedLocationLookupDirect != null;
        if (!zIsBound) {
            namedLocationLookupDirect = addUnboundLocation(symbol, obj, i);
        }
        if ((this.flags & 3) != 3) {
            if (zIsBound) {
                zIsBound = namedLocationLookupDirect.isBound();
            }
            if (!zIsBound ? !((1 & this.flags) != 0 || !location.isBound()) : (this.flags & 2) == 0) {
                redefineError(symbol, obj, namedLocationLookupDirect);
            }
        }
        if ((this.flags & 32) != 0) {
            namedLocationLookupDirect.base = ((SimpleEnvironment) ((InheritingEnvironment) this).getParent(0)).addLocation(symbol, obj, i, location);
        } else {
            namedLocationLookupDirect.base = location;
        }
        namedLocationLookupDirect.value = IndirectableLocation.INDIRECT_FLUIDS;
        return namedLocationLookupDirect;
    }

    public void rehash() {
        NamedLocation[] namedLocationArr = this.table;
        int length = namedLocationArr.length;
        int i = length * 2;
        NamedLocation[] namedLocationArr2 = new NamedLocation[i];
        int i2 = i - 1;
        while (true) {
            length--;
            if (length >= 0) {
                NamedLocation namedLocation = namedLocationArr[length];
                while (namedLocation != null && namedLocation != this.sharedTail) {
                    NamedLocation namedLocation2 = namedLocation.next;
                    int iHashCode = (namedLocation.name.hashCode() ^ System.identityHashCode(namedLocation.property)) & i2;
                    NamedLocation namedLocation3 = namedLocationArr2[iHashCode];
                    if (namedLocation3 == null) {
                        namedLocation3 = this.sharedTail;
                    }
                    namedLocation.next = namedLocation3;
                    namedLocationArr2[iHashCode] = namedLocation;
                    namedLocation = namedLocation2;
                }
            } else {
                this.table = namedLocationArr2;
                this.log2Size++;
                this.mask = i2;
                return;
            }
        }
    }

    @Override // gnu.mapping.Environment
    public Location unlink(Symbol symbol, Object obj, int i) {
        int i2 = i & this.mask;
        NamedLocation namedLocation = this.table[i2];
        NamedLocation namedLocation2 = null;
        while (namedLocation != null) {
            NamedLocation namedLocation3 = namedLocation.next;
            if (namedLocation.matches(symbol, obj)) {
                if (!getCanRedefine()) {
                    redefineError(symbol, obj, namedLocation);
                }
                if (namedLocation2 == null) {
                    this.table[i2] = namedLocation3;
                } else {
                    namedLocation2.next = namedLocation;
                }
                this.num_bindings--;
                return namedLocation;
            }
            namedLocation2 = namedLocation;
            namedLocation = namedLocation3;
        }
        return null;
    }

    @Override // gnu.mapping.Environment
    public LocationEnumeration enumerateLocations() {
        LocationEnumeration locationEnumeration = new LocationEnumeration(this.table, 1 << this.log2Size);
        locationEnumeration.env = this;
        return locationEnumeration;
    }

    @Override // gnu.mapping.Environment
    public LocationEnumeration enumerateAllLocations() {
        return enumerateLocations();
    }

    @Override // gnu.mapping.Environment
    public boolean hasMoreElements(LocationEnumeration locationEnumeration) {
        while (true) {
            if (locationEnumeration.nextLoc == null) {
                locationEnumeration.prevLoc = null;
                int i = locationEnumeration.index - 1;
                locationEnumeration.index = i;
                if (i < 0) {
                    return false;
                }
                NamedLocation namedLocation = locationEnumeration.bindings[i];
                locationEnumeration.nextLoc = namedLocation;
                if (namedLocation == null) {
                    continue;
                }
            }
            NamedLocation namedLocation2 = locationEnumeration.nextLoc;
            if (namedLocation2.name != null) {
                return true;
            }
            locationEnumeration.nextLoc = namedLocation2.next;
        }
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(getSymbol());
    }

    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        setSymbol(objectInput.readObject());
    }

    public Object readResolve() throws ObjectStreamException {
        String name = getName();
        Hashtable hashtable = Environment.envTable;
        Environment environment = (Environment) hashtable.get(name);
        if (environment != null) {
            return environment;
        }
        hashtable.put(name, this);
        return this;
    }

    public Set entrySet() {
        return new EnvironmentMappings(this);
    }

    @Override // gnu.mapping.Environment
    public String toStringVerbose() {
        StringBuffer stringBuffer = new StringBuffer();
        toStringBase(stringBuffer);
        return "#<environment " + getName() + " num:" + this.num_bindings + " ts:" + this.currentTimestamp + ((Object) stringBuffer) + Typography.greater;
    }
}
