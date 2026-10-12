package gnu.mapping;

/* loaded from: classes2.dex */
public class InheritingEnvironment extends SimpleEnvironment {
    int baseTimestamp;
    Environment[] inherited;
    Namespace[] namespaceMap;
    int numInherited;
    Object[] propertyMap;

    public InheritingEnvironment(String str, Environment environment) {
        super(str);
        addParent(environment);
        if (environment instanceof SimpleEnvironment) {
            SimpleEnvironment simpleEnvironment = (SimpleEnvironment) environment;
            int i = simpleEnvironment.currentTimestamp + 1;
            simpleEnvironment.currentTimestamp = i;
            this.baseTimestamp = i;
            this.currentTimestamp = i;
        }
    }

    public final int getNumParents() {
        return this.numInherited;
    }

    public final Environment getParent(int i) {
        return this.inherited[i];
    }

    public void addParent(Environment environment) {
        int i = this.numInherited;
        if (i == 0) {
            this.inherited = new Environment[4];
        } else {
            Environment[] environmentArr = this.inherited;
            if (i <= environmentArr.length) {
                Environment[] environmentArr2 = new Environment[i * 2];
                System.arraycopy(environmentArr, 0, environmentArr2, 0, i);
                this.inherited = environmentArr2;
            }
        }
        Environment[] environmentArr3 = this.inherited;
        int i2 = this.numInherited;
        environmentArr3[i2] = environment;
        this.numInherited = i2 + 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x005e A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public gnu.mapping.NamedLocation lookupInherited(gnu.mapping.Symbol r6, java.lang.Object r7, int r8) {
        /*
            r5 = this;
            r0 = 0
        L1:
            int r1 = r5.numInherited
            if (r0 >= r1) goto L61
            gnu.mapping.Namespace[] r1 = r5.namespaceMap
            if (r1 == 0) goto L28
            int r2 = r1.length
            int r3 = r0 * 2
            if (r2 <= r3) goto L28
            r2 = r1[r3]
            int r3 = r3 + 1
            r1 = r1[r3]
            if (r2 != 0) goto L18
            if (r1 == 0) goto L28
        L18:
            gnu.mapping.Namespace r3 = r6.getNamespace()
            if (r3 == r1) goto L1f
            goto L5e
        L1f:
            java.lang.String r1 = r6.getName()
            gnu.mapping.Symbol r1 = gnu.mapping.Symbol.make(r2, r1)
            goto L29
        L28:
            r1 = r6
        L29:
            java.lang.Object[] r2 = r5.propertyMap
            if (r2 == 0) goto L3f
            int r3 = r2.length
            int r4 = r0 * 2
            if (r3 <= r4) goto L3f
            r3 = r2[r4]
            int r4 = r4 + 1
            r2 = r2[r4]
            if (r3 != 0) goto L3c
            if (r2 == 0) goto L3f
        L3c:
            if (r7 == r2) goto L40
            goto L5e
        L3f:
            r3 = r7
        L40:
            gnu.mapping.Environment[] r2 = r5.inherited
            r2 = r2[r0]
            gnu.mapping.NamedLocation r1 = r2.lookup(r1, r3, r8)
            if (r1 == 0) goto L5e
            boolean r2 = r1.isBound()
            if (r2 == 0) goto L5e
            boolean r2 = r1 instanceof gnu.mapping.SharedLocation
            if (r2 == 0) goto L5d
            r2 = r1
            gnu.mapping.SharedLocation r2 = (gnu.mapping.SharedLocation) r2
            int r2 = r2.timestamp
            int r3 = r5.baseTimestamp
            if (r2 >= r3) goto L5e
        L5d:
            return r1
        L5e:
            int r0 = r0 + 1
            goto L1
        L61:
            r6 = 0
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.mapping.InheritingEnvironment.lookupInherited(gnu.mapping.Symbol, java.lang.Object, int):gnu.mapping.NamedLocation");
    }

    @Override // gnu.mapping.SimpleEnvironment, gnu.mapping.Environment
    public NamedLocation lookup(Symbol symbol, Object obj, int i) {
        NamedLocation namedLocationLookup = super.lookup(symbol, obj, i);
        return (namedLocationLookup == null || !namedLocationLookup.isBound()) ? lookupInherited(symbol, obj, i) : namedLocationLookup;
    }

    @Override // gnu.mapping.SimpleEnvironment, gnu.mapping.Environment
    public synchronized NamedLocation getLocation(Symbol symbol, Object obj, int i, boolean z) {
        NamedLocation namedLocationLookupInherited;
        NamedLocation namedLocationLookupDirect = lookupDirect(symbol, obj, i);
        if (namedLocationLookupDirect != null && (z || namedLocationLookupDirect.isBound())) {
            return namedLocationLookupDirect;
        }
        if ((this.flags & 32) != 0 && z) {
            namedLocationLookupInherited = this.inherited[0].getLocation(symbol, obj, i, true);
        } else {
            namedLocationLookupInherited = lookupInherited(symbol, obj, i);
        }
        if (namedLocationLookupInherited == null) {
            return z ? addUnboundLocation(symbol, obj, i) : null;
        }
        if (!z) {
            return namedLocationLookupInherited;
        }
        NamedLocation namedLocationAddUnboundLocation = addUnboundLocation(symbol, obj, i);
        if ((this.flags & 1) == 0 && namedLocationLookupInherited.isBound()) {
            redefineError(symbol, obj, namedLocationAddUnboundLocation);
        }
        namedLocationAddUnboundLocation.base = namedLocationLookupInherited;
        Object obj2 = namedLocationLookupInherited.value;
        if (obj2 == IndirectableLocation.INDIRECT_FLUIDS) {
            namedLocationAddUnboundLocation.value = obj2;
        } else if ((this.flags & 16) != 0) {
            namedLocationAddUnboundLocation.value = IndirectableLocation.DIRECT_ON_SET;
        } else {
            namedLocationAddUnboundLocation.value = null;
        }
        if (namedLocationAddUnboundLocation instanceof SharedLocation) {
            ((SharedLocation) namedLocationAddUnboundLocation).timestamp = this.baseTimestamp;
        }
        return namedLocationAddUnboundLocation;
    }

    @Override // gnu.mapping.SimpleEnvironment, gnu.mapping.Environment
    public LocationEnumeration enumerateAllLocations() {
        LocationEnumeration locationEnumeration = new LocationEnumeration(this.table, 1 << this.log2Size);
        locationEnumeration.env = this;
        Environment[] environmentArr = this.inherited;
        if (environmentArr != null && environmentArr.length > 0) {
            locationEnumeration.inherited = environmentArr[0].enumerateAllLocations();
            locationEnumeration.index = 0;
        }
        return locationEnumeration;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
    
        r5.prevLoc = null;
        r5.nextLoc = r5.inherited.nextLoc;
        r2 = r5.index + 1;
        r5.index = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
    
        if (r2 != r4.numInherited) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
    
        r5.inherited = null;
        r5.bindings = r4.table;
        r5.index = 1 << r4.log2Size;
     */
    @Override // gnu.mapping.SimpleEnvironment, gnu.mapping.Environment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean hasMoreElements(gnu.mapping.LocationEnumeration r5) {
        /*
            r4 = this;
            gnu.mapping.LocationEnumeration r0 = r5.inherited
            if (r0 == 0) goto L4f
        L4:
            gnu.mapping.NamedLocation r0 = r5.nextLoc
        L6:
            gnu.mapping.LocationEnumeration r1 = r5.inherited
            r1.nextLoc = r0
            boolean r0 = r1.hasMoreElements()
            r1 = 1
            if (r0 != 0) goto L3b
            r0 = 0
            r5.prevLoc = r0
            gnu.mapping.LocationEnumeration r2 = r5.inherited
            gnu.mapping.NamedLocation r2 = r2.nextLoc
            r5.nextLoc = r2
            int r2 = r5.index
            int r2 = r2 + r1
            r5.index = r2
            int r3 = r4.numInherited
            if (r2 != r3) goto L30
            r5.inherited = r0
            gnu.mapping.NamedLocation[] r0 = r4.table
            r5.bindings = r0
            int r0 = r4.log2Size
            int r0 = r1 << r0
            r5.index = r0
            goto L4f
        L30:
            gnu.mapping.Environment[] r0 = r4.inherited
            r0 = r0[r2]
            gnu.mapping.LocationEnumeration r0 = r0.enumerateAllLocations()
            r5.inherited = r0
            goto L4
        L3b:
            gnu.mapping.LocationEnumeration r0 = r5.inherited
            gnu.mapping.NamedLocation r0 = r0.nextLoc
            gnu.mapping.Symbol r2 = r0.name
            java.lang.Object r3 = r0.property
            gnu.mapping.Location r2 = r4.lookup(r2, r3)
            if (r2 != r0) goto L4c
            r5.nextLoc = r0
            return r1
        L4c:
            gnu.mapping.NamedLocation r0 = r0.next
            goto L6
        L4f:
            boolean r5 = super.hasMoreElements(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.mapping.InheritingEnvironment.hasMoreElements(gnu.mapping.LocationEnumeration):boolean");
    }

    @Override // gnu.mapping.SimpleEnvironment
    public void toStringBase(StringBuffer stringBuffer) {
        stringBuffer.append(" baseTs:");
        stringBuffer.append(this.baseTimestamp);
        for (int i = 0; i < this.numInherited; i++) {
            stringBuffer.append(" base:");
            stringBuffer.append(this.inherited[i].toStringVerbose());
        }
    }
}
