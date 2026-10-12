package gnu.expr;

import gnu.mapping.Environment;
import gnu.mapping.Location;
import gnu.mapping.LocationEnumeration;
import gnu.mapping.NamedLocation;
import gnu.mapping.Symbol;
import gnu.mapping.ThreadLocation;

/* loaded from: classes2.dex */
public class BuiltinEnvironment extends Environment {
    static final BuiltinEnvironment instance;

    static {
        BuiltinEnvironment builtinEnvironment = new BuiltinEnvironment();
        instance = builtinEnvironment;
        builtinEnvironment.setName("language-builtins");
    }

    private BuiltinEnvironment() {
    }

    public static BuiltinEnvironment getInstance() {
        return instance;
    }

    public Environment getLangEnvironment() {
        Language defaultLanguage = Language.getDefaultLanguage();
        if (defaultLanguage == null) {
            return null;
        }
        return defaultLanguage.getLangEnvironment();
    }

    @Override // gnu.mapping.Environment
    public NamedLocation lookup(Symbol symbol, Object obj, int i) {
        Language defaultLanguage;
        if (obj == ThreadLocation.ANONYMOUS || (defaultLanguage = Language.getDefaultLanguage()) == null) {
            return null;
        }
        return defaultLanguage.lookupBuiltin(symbol, obj, i);
    }

    @Override // gnu.mapping.Environment
    public NamedLocation getLocation(Symbol symbol, Object obj, int i, boolean z) {
        throw new RuntimeException();
    }

    @Override // gnu.mapping.Environment
    public void define(Symbol symbol, Object obj, Object obj2) {
        throw new RuntimeException();
    }

    @Override // gnu.mapping.Environment
    public LocationEnumeration enumerateLocations() {
        return getLangEnvironment().enumerateLocations();
    }

    @Override // gnu.mapping.Environment
    public LocationEnumeration enumerateAllLocations() {
        return getLangEnvironment().enumerateAllLocations();
    }

    @Override // gnu.mapping.Environment
    public boolean hasMoreElements(LocationEnumeration locationEnumeration) {
        throw new RuntimeException();
    }

    @Override // gnu.mapping.Environment
    public NamedLocation addLocation(Symbol symbol, Object obj, Location location) {
        throw new RuntimeException();
    }
}
