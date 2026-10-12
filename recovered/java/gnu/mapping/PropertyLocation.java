package gnu.mapping;

import gnu.lists.LList;
import gnu.lists.Pair;

/* loaded from: classes2.dex */
public class PropertyLocation extends Location {
    Pair pair;

    @Override // gnu.mapping.Location
    public boolean isBound() {
        return true;
    }

    @Override // gnu.mapping.Location
    public final Object get(Object obj) {
        return this.pair.getCar();
    }

    @Override // gnu.mapping.Location
    public final void set(Object obj) {
        this.pair.setCar(obj);
    }

    public static Object getPropertyList(Object obj, Environment environment) {
        return environment.get(Symbol.PLIST, obj, LList.Empty);
    }

    public static Object getPropertyList(Object obj) {
        return Environment.getCurrent().get(Symbol.PLIST, obj, LList.Empty);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0036 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:3:0x0001, B:5:0x000b, B:6:0x0013, B:9:0x0018, B:12:0x001d, B:14:0x0029, B:16:0x0031, B:20:0x003e, B:19:0x0036, B:21:0x004b, B:23:0x0058, B:24:0x005b, B:25:0x0066, B:26:0x0069), top: B:30:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void setPropertyList(java.lang.Object r5, java.lang.Object r6, gnu.mapping.Environment r7) {
        /*
            monitor-enter(r7)
            gnu.mapping.Symbol r0 = gnu.mapping.Symbol.PLIST     // Catch: java.lang.Throwable -> L34
            gnu.mapping.Location r0 = r7.lookup(r0, r5)     // Catch: java.lang.Throwable -> L34
            boolean r1 = r5 instanceof gnu.mapping.Symbol     // Catch: java.lang.Throwable -> L34
            if (r1 == 0) goto L66
            gnu.mapping.Symbol r5 = (gnu.mapping.Symbol) r5     // Catch: java.lang.Throwable -> L34
            gnu.lists.LList r1 = gnu.lists.LList.Empty     // Catch: java.lang.Throwable -> L34
            java.lang.Object r1 = r0.get(r1)     // Catch: java.lang.Throwable -> L34
        L13:
            boolean r2 = r1 instanceof gnu.lists.Pair     // Catch: java.lang.Throwable -> L34
            if (r2 != 0) goto L4b
            r1 = r6
        L18:
            boolean r2 = r1 instanceof gnu.lists.Pair     // Catch: java.lang.Throwable -> L34
            if (r2 != 0) goto L1d
            goto L66
        L1d:
            gnu.lists.Pair r1 = (gnu.lists.Pair) r1     // Catch: java.lang.Throwable -> L34
            java.lang.Object r2 = r1.getCar()     // Catch: java.lang.Throwable -> L34
            gnu.mapping.Location r3 = r7.lookup(r5, r2)     // Catch: java.lang.Throwable -> L34
            if (r3 == 0) goto L36
            gnu.mapping.Location r3 = r3.getBase()     // Catch: java.lang.Throwable -> L34
            boolean r4 = r3 instanceof gnu.mapping.PropertyLocation     // Catch: java.lang.Throwable -> L34
            if (r4 == 0) goto L36
            gnu.mapping.PropertyLocation r3 = (gnu.mapping.PropertyLocation) r3     // Catch: java.lang.Throwable -> L34
            goto L3e
        L34:
            r5 = move-exception
            goto L6b
        L36:
            gnu.mapping.PropertyLocation r3 = new gnu.mapping.PropertyLocation     // Catch: java.lang.Throwable -> L34
            r3.<init>()     // Catch: java.lang.Throwable -> L34
            r7.addLocation(r5, r2, r3)     // Catch: java.lang.Throwable -> L34
        L3e:
            java.lang.Object r1 = r1.getCdr()     // Catch: java.lang.Throwable -> L34
            gnu.lists.Pair r1 = (gnu.lists.Pair) r1     // Catch: java.lang.Throwable -> L34
            r3.pair = r1     // Catch: java.lang.Throwable -> L34
            java.lang.Object r1 = r1.getCdr()     // Catch: java.lang.Throwable -> L34
            goto L18
        L4b:
            gnu.lists.Pair r1 = (gnu.lists.Pair) r1     // Catch: java.lang.Throwable -> L34
            java.lang.Object r2 = r1.getCar()     // Catch: java.lang.Throwable -> L34
            r3 = 0
            java.lang.Object r3 = plistGet(r6, r2, r3)     // Catch: java.lang.Throwable -> L34
            if (r3 == 0) goto L5b
            r7.remove(r5, r2)     // Catch: java.lang.Throwable -> L34
        L5b:
            java.lang.Object r1 = r1.getCdr()     // Catch: java.lang.Throwable -> L34
            gnu.lists.Pair r1 = (gnu.lists.Pair) r1     // Catch: java.lang.Throwable -> L34
            java.lang.Object r1 = r1.getCdr()     // Catch: java.lang.Throwable -> L34
            goto L13
        L66:
            r0.set(r6)     // Catch: java.lang.Throwable -> L34
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L34
            return
        L6b:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L34
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.mapping.PropertyLocation.setPropertyList(java.lang.Object, java.lang.Object, gnu.mapping.Environment):void");
    }

    public static void setPropertyList(Object obj, Object obj2) {
        setPropertyList(obj, obj2, Environment.getCurrent());
    }

    public static Object getProperty(Object obj, Object obj2, Object obj3, Environment environment) {
        if (!(obj instanceof Symbol)) {
            if (obj instanceof String) {
                obj = Namespace.getDefaultSymbol((String) obj);
            } else {
                return plistGet(environment.get(Symbol.PLIST, obj, LList.Empty), obj2, obj3);
            }
        }
        return environment.get((Symbol) obj, obj2, obj3);
    }

    public static Object getProperty(Object obj, Object obj2, Object obj3) {
        return getProperty(obj, obj2, obj3, Environment.getCurrent());
    }

    public static void putProperty(Object obj, Object obj2, Object obj3, Environment environment) {
        if (!(obj instanceof Symbol)) {
            if (obj instanceof String) {
                obj = Namespace.getDefaultSymbol((String) obj);
            } else {
                Location location = environment.getLocation(Symbol.PLIST, obj);
                location.set(plistPut(location.get(LList.Empty), obj2, obj3));
                return;
            }
        }
        Symbol symbol = (Symbol) obj;
        Location locationLookup = environment.lookup(symbol, obj2);
        if (locationLookup != null) {
            Location base = locationLookup.getBase();
            if (base instanceof PropertyLocation) {
                ((PropertyLocation) base).set(obj3);
                return;
            }
        }
        Location location2 = environment.getLocation(Symbol.PLIST, obj);
        Pair pair = new Pair(obj3, location2.get(LList.Empty));
        location2.set(new Pair(obj2, pair));
        PropertyLocation propertyLocation = new PropertyLocation();
        propertyLocation.pair = pair;
        environment.addLocation(symbol, obj2, propertyLocation);
    }

    public static void putProperty(Object obj, Object obj2, Object obj3) {
        putProperty(obj, obj2, obj3, Environment.getCurrent());
    }

    public static boolean removeProperty(Object obj, Object obj2, Environment environment) {
        Location locationLookup = environment.lookup(Symbol.PLIST, obj);
        if (locationLookup == null) {
            return false;
        }
        Object obj3 = locationLookup.get(LList.Empty);
        if (!(obj3 instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj3;
        Pair pair2 = null;
        while (pair.getCar() != obj2) {
            Object cdr = pair.getCdr();
            if (!(cdr instanceof Pair)) {
                return false;
            }
            Pair pair3 = (Pair) cdr;
            pair2 = pair;
            pair = pair3;
        }
        Object cdr2 = ((Pair) pair.getCdr()).getCdr();
        if (pair2 == null) {
            locationLookup.set(cdr2);
        } else {
            pair2.setCdr(cdr2);
        }
        if (!(obj instanceof Symbol)) {
            return true;
        }
        environment.remove((Symbol) obj, obj2);
        return true;
    }

    public static boolean removeProperty(Object obj, Object obj2) {
        return removeProperty(obj, obj2, Environment.getCurrent());
    }

    public static Object plistGet(Object obj, Object obj2, Object obj3) {
        while (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            if (pair.getCar() == obj2) {
                return ((Pair) pair.getCdr()).getCar();
            }
        }
        return obj3;
    }

    public static Object plistPut(Object obj, Object obj2, Object obj3) {
        Object cdr = obj;
        while (cdr instanceof Pair) {
            Pair pair = (Pair) cdr;
            Pair pair2 = (Pair) pair.getCdr();
            if (pair.getCar() == obj2) {
                pair2.setCar(obj3);
                return obj;
            }
            cdr = pair2.getCdr();
        }
        return new Pair(obj2, new Pair(obj3, obj));
    }

    public static Object plistRemove(Object obj, Object obj2) {
        Pair pair = null;
        Object obj3 = obj;
        while (obj3 instanceof Pair) {
            Pair pair2 = (Pair) obj3;
            Pair pair3 = (Pair) pair2.getCdr();
            Object cdr = pair3.getCdr();
            if (pair2.getCar() == obj2) {
                if (pair == null) {
                    return cdr;
                }
                pair.setCdr(cdr);
                return obj;
            }
            pair = pair3;
            obj3 = cdr;
        }
        return obj;
    }
}
