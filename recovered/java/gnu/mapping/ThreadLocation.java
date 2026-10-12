package gnu.mapping;

/* loaded from: classes2.dex */
public class ThreadLocation extends NamedLocation implements Named {
    public static final String ANONYMOUS = new String("(dynamic)");
    static int counter;
    static SimpleEnvironment env;
    SharedLocation global;
    private int hash;
    private ThreadLocal<NamedLocation> thLocal;

    private static synchronized int nextCounter() {
        int i;
        i = counter + 1;
        counter = i;
        return i;
    }

    public ThreadLocation() {
        this("param#" + nextCounter());
    }

    public ThreadLocation(String str) {
        super(Symbol.makeUninterned(str), ANONYMOUS);
        this.thLocal = new InheritingLocation();
        this.global = new SharedLocation(this.name, null, 0);
    }

    private ThreadLocation(Symbol symbol) {
        super(symbol, ANONYMOUS);
        this.thLocal = new InheritingLocation();
        this.global = new SharedLocation(Symbol.makeUninterned(symbol == null ? null : symbol.toString()), null, 0);
    }

    public ThreadLocation(Symbol symbol, Object obj, SharedLocation sharedLocation) {
        super(symbol, obj);
        this.hash = symbol.hashCode() ^ System.identityHashCode(obj);
        this.global = sharedLocation;
    }

    public static ThreadLocation makeAnonymous(String str) {
        return new ThreadLocation(str);
    }

    public static ThreadLocation makeAnonymous(Symbol symbol) {
        return new ThreadLocation(symbol);
    }

    public void setGlobal(Object obj) {
        synchronized (this) {
            try {
                if (this.global == null) {
                    this.global = new SharedLocation(this.name, null, 0);
                }
                this.global.set(obj);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public NamedLocation getLocation() {
        if (this.property != ANONYMOUS) {
            return Environment.getCurrent().getLocation(this.name, this.property, this.hash, true);
        }
        NamedLocation sharedLocation = this.thLocal.get();
        if (sharedLocation == null) {
            sharedLocation = new SharedLocation(this.name, this.property, 0);
            SharedLocation sharedLocation2 = this.global;
            if (sharedLocation2 != null) {
                sharedLocation.setBase(sharedLocation2);
            }
            this.thLocal.set(sharedLocation);
        }
        return sharedLocation;
    }

    @Override // gnu.mapping.Location
    public Object get(Object obj) {
        return getLocation().get(obj);
    }

    @Override // gnu.mapping.Location
    public void set(Object obj) {
        getLocation().set(obj);
    }

    @Override // gnu.mapping.NamedLocation, gnu.mapping.Location
    public Object setWithSave(Object obj) {
        return getLocation().setWithSave(obj);
    }

    @Override // gnu.mapping.NamedLocation, gnu.mapping.Location
    public void setRestore(Object obj) {
        getLocation().setRestore(obj);
    }

    @Override // gnu.mapping.Named
    public String getName() {
        Symbol symbol = this.name;
        if (symbol == null) {
            return null;
        }
        return symbol.toString();
    }

    @Override // gnu.mapping.Named
    public Object getSymbol() {
        if (this.name != null && this.property == ANONYMOUS) {
            Symbol keySymbol = this.global.getKeySymbol();
            Symbol symbol = this.name;
            if (keySymbol == symbol) {
                return symbol.toString();
            }
        }
        return this.name;
    }

    @Override // gnu.mapping.Named
    public void setName(String str) {
        throw new RuntimeException("setName not allowed");
    }

    public static synchronized ThreadLocation getInstance(Symbol symbol, Object obj) {
        try {
            if (env == null) {
                env = new SimpleEnvironment("[thread-locations]");
            }
            IndirectableLocation indirectableLocation = (IndirectableLocation) env.getLocation(symbol, obj);
            Location location = indirectableLocation.base;
            if (location != null) {
                return (ThreadLocation) location;
            }
            ThreadLocation threadLocation = new ThreadLocation(symbol, obj, null);
            indirectableLocation.base = threadLocation;
            return threadLocation;
        } catch (Throwable th) {
            throw th;
        }
    }

    public class InheritingLocation extends InheritableThreadLocal<NamedLocation> {
        public InheritingLocation() {
        }

        @Override // java.lang.InheritableThreadLocal
        public SharedLocation childValue(NamedLocation namedLocation) {
            ThreadLocation threadLocation = ThreadLocation.this;
            if (threadLocation.property != ThreadLocation.ANONYMOUS) {
                throw new Error();
            }
            if (namedLocation == null) {
                namedLocation = (SharedLocation) threadLocation.getLocation();
            }
            if (namedLocation.base == null) {
                ThreadLocation threadLocation2 = ThreadLocation.this;
                SharedLocation sharedLocation = new SharedLocation(threadLocation2.name, threadLocation2.property, 0);
                sharedLocation.value = namedLocation.value;
                namedLocation.base = sharedLocation;
                namedLocation.value = null;
                namedLocation = sharedLocation;
            }
            ThreadLocation threadLocation3 = ThreadLocation.this;
            SharedLocation sharedLocation2 = new SharedLocation(threadLocation3.name, threadLocation3.property, 0);
            sharedLocation2.value = null;
            sharedLocation2.base = namedLocation;
            return sharedLocation2;
        }
    }
}
