package gnu.kawa.reflect;

import gnu.bytecode.ClassType;
import gnu.bytecode.Type;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.Language;
import gnu.mapping.Environment;
import gnu.mapping.Location;
import gnu.mapping.Named;
import gnu.mapping.Symbol;
import gnu.mapping.UnboundLocationException;
import gnu.mapping.WrappedException;
import java.lang.reflect.Field;

/* loaded from: classes2.dex */
public abstract class ClassMemberLocation extends Location {
    Object instance;
    String mname;
    Field rfield;
    ClassType type;

    public final Object getInstance() {
        return this.instance;
    }

    public final void setInstance(Object obj) {
        this.instance = obj;
    }

    public ClassMemberLocation(Object obj, ClassType classType, String str) {
        this.instance = obj;
        this.type = classType;
        this.mname = str;
    }

    public ClassMemberLocation(Object obj, Class cls, String str) {
        this.instance = obj;
        this.type = (ClassType) Type.make(cls);
        this.mname = str;
    }

    public ClassMemberLocation(Object obj, Field field) {
        this.instance = obj;
        this.rfield = field;
        this.mname = field.getName();
    }

    public String getMemberName() {
        return this.mname;
    }

    public ClassType getDeclaringClass() {
        return this.type;
    }

    public void setup() {
        if (this.rfield == null) {
            try {
                try {
                    this.rfield = this.type.getReflectClass().getField(this.mname);
                } catch (NoSuchFieldException e) {
                    UnboundLocationException unboundLocationException = new UnboundLocationException((Object) null, "Unbound location  - no field " + this.mname + " in " + this.type.getName());
                    unboundLocationException.initCause(e);
                    throw unboundLocationException;
                }
            } catch (RuntimeException e2) {
                UnboundLocationException unboundLocationException2 = new UnboundLocationException((Object) null, "Unbound location - " + e2.toString());
                unboundLocationException2.initCause(e2);
                throw unboundLocationException2;
            }
        }
    }

    public Field getRField() throws NoSuchFieldException {
        Field field = this.rfield;
        if (field != null) {
            return field;
        }
        try {
            Field field2 = this.type.getReflectClass().getField(this.mname);
            this.rfield = field2;
            return field2;
        } catch (Exception unused) {
            return null;
        }
    }

    public Class getRClass() {
        Field field = this.rfield;
        if (field != null) {
            return field.getDeclaringClass();
        }
        try {
            return this.type.getReflectClass();
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // gnu.mapping.Location
    public Object get(Object obj) throws NoSuchFieldException {
        Field rField = getRField();
        if (rField == null) {
            return obj;
        }
        try {
            return rField.get(this.instance);
        } catch (IllegalAccessException e) {
            throw WrappedException.wrapIfNeeded(e);
        }
    }

    @Override // gnu.mapping.Location
    public boolean isConstant() {
        return (getRField() == null || (this.rfield.getModifiers() & 16) == 0) ? false : true;
    }

    @Override // gnu.mapping.Location
    public boolean isBound() {
        return getRField() != null;
    }

    @Override // gnu.mapping.Location
    public void set(Object obj) throws IllegalAccessException, IllegalArgumentException {
        setup();
        try {
            this.rfield.set(this.instance, obj);
        } catch (IllegalAccessException e) {
            throw WrappedException.wrapIfNeeded(e);
        }
    }

    public static void define(Object obj, Field field, String str, Language language, Environment environment) throws IllegalAccessException, IllegalArgumentException {
        Symbol symbolMake;
        Location fieldLocation;
        Object obj2 = field.get(obj);
        Type typeMake = Type.make(field.getType());
        boolean zIsSubtype = typeMake.isSubtype(Compilation.typeLocation);
        typeMake.isSubtype(Compilation.typeProcedure);
        int modifiers = field.getModifiers();
        boolean z = (modifiers & 16) != 0;
        Object symbol = (z && (obj2 instanceof Named) && !zIsSubtype) ? ((Named) obj2).getSymbol() : Compilation.demangleName(field.getName(), true);
        if (symbol instanceof Symbol) {
            symbolMake = (Symbol) symbol;
        } else {
            if (str == null) {
                str = "";
            }
            symbolMake = Symbol.make(str, symbol.toString().intern());
        }
        if (zIsSubtype && z) {
            fieldLocation = (Location) obj2;
        } else {
            envPropertyFor = z ? language.getEnvPropertyFor(field, obj2) : null;
            if ((modifiers & 8) != 0) {
                fieldLocation = new StaticFieldLocation(field);
            } else {
                fieldLocation = new FieldLocation(obj, field);
            }
        }
        environment.addLocation(symbolMake, envPropertyFor, fieldLocation);
    }

    public static void defineAll(Object obj, Language language, Environment environment) throws IllegalAccessException {
        Field[] fields = obj.getClass().getFields();
        int length = fields.length;
        while (true) {
            length--;
            if (length < 0) {
                return;
            }
            Field field = fields[length];
            String name = field.getName();
            if (!name.startsWith(Declaration.PRIVATE_PREFIX) && !name.endsWith("$instance")) {
                define(obj, field, null, language, environment);
            }
        }
    }
}
