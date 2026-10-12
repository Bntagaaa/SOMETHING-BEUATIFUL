package gnu.mapping;

import java.util.Hashtable;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public abstract class Environment extends PropertySet {
    static final int CAN_DEFINE = 1;
    static final int CAN_IMPLICITLY_DEFINE = 4;
    static final int CAN_REDEFINE = 2;
    static final int DIRECT_INHERITED_ON_SET = 16;
    public static final int INDIRECT_DEFINES = 32;
    static final int THREAD_SAFE = 8;
    static Environment global;
    int flags = 23;
    static final Hashtable envTable = new Hashtable(50);
    protected static final InheritedLocal curEnvironment = new InheritedLocal();

    public abstract NamedLocation addLocation(Symbol symbol, Object obj, Location location);

    public abstract void define(Symbol symbol, Object obj, Object obj2);

    public abstract LocationEnumeration enumerateAllLocations();

    public abstract LocationEnumeration enumerateLocations();

    public abstract NamedLocation getLocation(Symbol symbol, Object obj, int i, boolean z);

    public abstract boolean hasMoreElements(LocationEnumeration locationEnumeration);

    public abstract NamedLocation lookup(Symbol symbol, Object obj, int i);

    public static void setGlobal(Environment environment) {
        global = environment;
    }

    public static Environment getGlobal() {
        return global;
    }

    public int getFlags() {
        return this.flags;
    }

    public void setFlag(boolean z, int i) {
        if (z) {
            this.flags |= i;
        } else {
            this.flags &= ~i;
        }
    }

    public boolean getCanDefine() {
        return (this.flags & 1) != 0;
    }

    public void setCanDefine(boolean z) {
        this.flags = z ? this.flags | 1 : this.flags & (-2);
    }

    public boolean getCanRedefine() {
        return (this.flags & 2) != 0;
    }

    public void setCanRedefine(boolean z) {
        this.flags = z ? this.flags | 2 : this.flags & (-3);
    }

    public final boolean isLocked() {
        return (this.flags & 3) == 0;
    }

    public void setLocked() {
        this.flags &= -8;
    }

    public final void setIndirectDefines() {
        this.flags |= 32;
        ((InheritingEnvironment) this).baseTimestamp = Integer.MAX_VALUE;
    }

    public final Location getLocation(Symbol symbol, Object obj) {
        return getLocation(symbol, obj, true);
    }

    public final Location getLocation(Symbol symbol) {
        return getLocation(symbol, null, true);
    }

    public final Location lookup(Symbol symbol, Object obj) {
        return getLocation(symbol, obj, false);
    }

    public final Location lookup(Symbol symbol) {
        return getLocation(symbol, null, false);
    }

    public final NamedLocation getLocation(Symbol symbol, Object obj, boolean z) {
        return getLocation(symbol, obj, symbol.hashCode() ^ System.identityHashCode(obj), z);
    }

    public final Location getLocation(Object obj, boolean z) {
        Object keyProperty;
        if (obj instanceof EnvironmentKey) {
            EnvironmentKey environmentKey = (EnvironmentKey) obj;
            Symbol keySymbol = environmentKey.getKeySymbol();
            keyProperty = environmentKey.getKeyProperty();
            obj = keySymbol;
        } else {
            keyProperty = null;
        }
        return getLocation(obj instanceof Symbol ? (Symbol) obj : getSymbol((String) obj), keyProperty, z);
    }

    public boolean isBound(Symbol symbol, Object obj) {
        Location locationLookup = lookup(symbol, obj);
        if (locationLookup == null) {
            return false;
        }
        return locationLookup.isBound();
    }

    public final boolean isBound(Symbol symbol) {
        return isBound(symbol, null);
    }

    public final boolean containsKey(Object obj) {
        Object keyProperty;
        if (obj instanceof EnvironmentKey) {
            EnvironmentKey environmentKey = (EnvironmentKey) obj;
            Symbol keySymbol = environmentKey.getKeySymbol();
            keyProperty = environmentKey.getKeyProperty();
            obj = keySymbol;
        } else {
            keyProperty = null;
        }
        return isBound(obj instanceof Symbol ? (Symbol) obj : getSymbol((String) obj), keyProperty);
    }

    public final Object getChecked(String str) {
        String str2 = Location.UNBOUND;
        Object obj = get(str, str2);
        if (obj != str2) {
            return obj;
        }
        throw new UnboundLocationException(str + " in " + this);
    }

    public Object get(Symbol symbol, Object obj, Object obj2) {
        Location locationLookup = lookup(symbol, obj);
        return locationLookup == null ? obj2 : locationLookup.get(obj2);
    }

    public final Object get(EnvironmentKey environmentKey, Object obj) {
        return get(environmentKey.getKeySymbol(), environmentKey.getKeyProperty(), obj);
    }

    public final Object get(String str, Object obj) {
        return get(getSymbol(str), null, obj);
    }

    public Object get(Symbol symbol) {
        String str = Location.UNBOUND;
        Object obj = get(symbol, null, str);
        if (obj != str) {
            return obj;
        }
        throw new UnboundLocationException(symbol);
    }

    public final Object getFunction(Symbol symbol, Object obj) {
        return get(symbol, EnvironmentKey.FUNCTION, obj);
    }

    public final Object getFunction(Symbol symbol) {
        String str = Location.UNBOUND;
        Object obj = get(symbol, EnvironmentKey.FUNCTION, str);
        if (obj != str) {
            return obj;
        }
        throw new UnboundLocationException(symbol);
    }

    public final Object get(Object obj) {
        Object keyProperty;
        if (obj instanceof EnvironmentKey) {
            EnvironmentKey environmentKey = (EnvironmentKey) obj;
            Symbol keySymbol = environmentKey.getKeySymbol();
            keyProperty = environmentKey.getKeyProperty();
            obj = keySymbol;
        } else {
            keyProperty = null;
        }
        return get(obj instanceof Symbol ? (Symbol) obj : getSymbol((String) obj), keyProperty, null);
    }

    public void put(Symbol symbol, Object obj, Object obj2) {
        Location location = getLocation(symbol, obj);
        if (location.isConstant()) {
            define(symbol, obj, obj2);
        } else {
            location.set(obj2);
        }
    }

    public final void put(Symbol symbol, Object obj) {
        put(symbol, null, obj);
    }

    public final Object put(Object obj, Object obj2) {
        Location location = getLocation(obj, true);
        Object obj3 = location.get(null);
        location.set(obj2);
        return obj3;
    }

    public final void putFunction(Symbol symbol, Object obj) {
        put(symbol, EnvironmentKey.FUNCTION, obj);
    }

    public final Object put(String str, Object obj) {
        return put((Object) str, obj);
    }

    public Location unlink(Symbol symbol, Object obj, int i) {
        throw new RuntimeException("unsupported operation: unlink (aka undefine)");
    }

    public Object remove(Symbol symbol, Object obj, int i) {
        Location locationUnlink = unlink(symbol, obj, i);
        if (locationUnlink == null) {
            return null;
        }
        Object obj2 = locationUnlink.get(null);
        locationUnlink.undefine();
        return obj2;
    }

    public final Object remove(EnvironmentKey environmentKey) {
        Symbol keySymbol = environmentKey.getKeySymbol();
        Object keyProperty = environmentKey.getKeyProperty();
        return remove(keySymbol, keyProperty, keySymbol.hashCode() ^ System.identityHashCode(keyProperty));
    }

    public final Object remove(Symbol symbol, Object obj) {
        return remove(symbol, obj, symbol.hashCode() ^ System.identityHashCode(obj));
    }

    public final void remove(Symbol symbol) {
        remove(symbol, null, symbol.hashCode());
    }

    public final void removeFunction(Symbol symbol) {
        remove(symbol, EnvironmentKey.FUNCTION);
    }

    public final Object remove(Object obj) {
        if (obj instanceof EnvironmentKey) {
            EnvironmentKey environmentKey = (EnvironmentKey) obj;
            return remove(environmentKey.getKeySymbol(), environmentKey.getKeyProperty());
        }
        Symbol symbol = obj instanceof Symbol ? (Symbol) obj : getSymbol((String) obj);
        return remove(symbol, null, symbol.hashCode() ^ System.identityHashCode(null));
    }

    public Namespace defaultNamespace() {
        return Namespace.getDefault();
    }

    public Symbol getSymbol(String str) {
        return defaultNamespace().getSymbol(str);
    }

    public static Environment getInstance(String str) {
        if (str == null) {
            str = "";
        }
        Hashtable hashtable = envTable;
        synchronized (hashtable) {
            try {
                Environment environment = (Environment) hashtable.get(str);
                if (environment != null) {
                    return environment;
                }
                SimpleEnvironment simpleEnvironment = new SimpleEnvironment();
                simpleEnvironment.setName(str);
                hashtable.put(str, simpleEnvironment);
                return simpleEnvironment;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static Environment current() {
        return getCurrent();
    }

    public static Environment getCurrent() {
        InheritedLocal inheritedLocal = curEnvironment;
        Environment environment = inheritedLocal.get();
        if (environment != null) {
            return environment;
        }
        InheritingEnvironment inheritingEnvironmentMake = make(Thread.currentThread().getName(), global);
        inheritingEnvironmentMake.flags |= 8;
        inheritedLocal.set(inheritingEnvironmentMake);
        return inheritingEnvironmentMake;
    }

    public static void setCurrent(Environment environment) {
        curEnvironment.set(environment);
    }

    public static Environment setSaveCurrent(Environment environment) {
        InheritedLocal inheritedLocal = curEnvironment;
        Environment environment2 = inheritedLocal.get();
        inheritedLocal.set(environment);
        return environment2;
    }

    public static void restoreCurrent(Environment environment) {
        curEnvironment.set(environment);
    }

    public static Environment user() {
        return getCurrent();
    }

    public final void addLocation(NamedLocation namedLocation) {
        addLocation(namedLocation.getKeySymbol(), namedLocation.getKeyProperty(), namedLocation);
    }

    public final void addLocation(EnvironmentKey environmentKey, Location location) {
        addLocation(environmentKey.getKeySymbol(), environmentKey.getKeyProperty(), location);
    }

    public static SimpleEnvironment make() {
        return new SimpleEnvironment();
    }

    public static SimpleEnvironment make(String str) {
        return new SimpleEnvironment(str);
    }

    public static InheritingEnvironment make(String str, Environment environment) {
        return new InheritingEnvironment(str, environment);
    }

    public String toString() {
        return "#<environment " + getName() + Typography.greater;
    }

    public String toStringVerbose() {
        return toString();
    }

    public SimpleEnvironment cloneForThread() {
        InheritingEnvironment inheritingEnvironment = new InheritingEnvironment(null, this);
        if (this instanceof InheritingEnvironment) {
            InheritingEnvironment inheritingEnvironment2 = (InheritingEnvironment) this;
            int i = inheritingEnvironment2.numInherited;
            inheritingEnvironment.numInherited = i;
            inheritingEnvironment.inherited = new Environment[i];
            for (int i2 = 0; i2 < i; i2++) {
                inheritingEnvironment.inherited[i2] = inheritingEnvironment2.inherited[i2];
            }
        }
        LocationEnumeration locationEnumerationEnumerateLocations = enumerateLocations();
        while (locationEnumerationEnumerateLocations.hasMoreElements()) {
            Location locationNextLocation = locationEnumerationEnumerateLocations.nextLocation();
            Symbol keySymbol = locationNextLocation.getKeySymbol();
            Object keyProperty = locationNextLocation.getKeyProperty();
            if (keySymbol != null && (locationNextLocation instanceof NamedLocation)) {
                NamedLocation namedLocation = (NamedLocation) locationNextLocation;
                if (namedLocation.base == null) {
                    SharedLocation sharedLocation = new SharedLocation(keySymbol, keyProperty, 0);
                    sharedLocation.value = namedLocation.value;
                    namedLocation.base = sharedLocation;
                    namedLocation.value = null;
                    namedLocation = sharedLocation;
                }
                inheritingEnvironment.addUnboundLocation(keySymbol, keyProperty, keySymbol.hashCode() ^ System.identityHashCode(keyProperty)).base = namedLocation;
            }
        }
        return inheritingEnvironment;
    }

    public static class InheritedLocal extends InheritableThreadLocal<Environment> {
        @Override // java.lang.InheritableThreadLocal
        public Environment childValue(Environment environment) {
            if (environment == null) {
                environment = Environment.getCurrent();
            }
            SimpleEnvironment simpleEnvironmentCloneForThread = environment.cloneForThread();
            simpleEnvironmentCloneForThread.flags = (simpleEnvironmentCloneForThread.flags | 8) & (-17);
            return simpleEnvironmentCloneForThread;
        }
    }
}
