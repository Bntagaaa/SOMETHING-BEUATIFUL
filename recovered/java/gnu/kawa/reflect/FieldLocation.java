package gnu.kawa.reflect;

import gnu.bytecode.ClassType;
import gnu.bytecode.Field;
import gnu.bytecode.Type;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.ModuleInfo;
import gnu.mapping.Location;
import gnu.mapping.Procedure;
import gnu.mapping.WrappedException;
import kawa.lang.Syntax;

/* loaded from: classes2.dex */
public class FieldLocation extends ClassMemberLocation {
    static final int CONSTANT = 4;
    static final int INDIRECT_LOCATION = 2;
    public static final int KIND_FLAGS_SET = 64;
    public static final int PROCEDURE = 16;
    static final int SETUP_DONE = 1;
    public static final int SYNTAX = 32;
    static final int VALUE_SET = 8;
    Declaration decl;
    private int flags;
    Object value;

    public boolean isIndirectLocation() {
        return (this.flags & 2) != 0;
    }

    public void setProcedure() {
        this.flags |= 84;
    }

    public void setSyntax() {
        this.flags |= 100;
    }

    public void setKindFlags() {
        Field declaredField = getDeclaringClass().getDeclaredField(getMemberName());
        int modifiers = declaredField.getModifiers();
        Type type = declaredField.getType();
        if (type.isSubtype(Compilation.typeLocation)) {
            this.flags |= 2;
        }
        if ((modifiers & 16) != 0) {
            int i = this.flags;
            if ((i & 2) == 0) {
                this.flags = i | 4;
                if (type.isSubtype(Compilation.typeProcedure)) {
                    this.flags |= 16;
                }
                if ((type instanceof ClassType) && ((ClassType) type).isSubclass("kawa.lang.Syntax")) {
                    this.flags |= 32;
                }
            } else {
                Location location = (Location) getFieldValue();
                if (location instanceof FieldLocation) {
                    FieldLocation fieldLocation = (FieldLocation) location;
                    if ((fieldLocation.flags & 64) == 0) {
                        fieldLocation.setKindFlags();
                    }
                    int i2 = this.flags | (fieldLocation.flags & 52);
                    this.flags = i2;
                    int i3 = fieldLocation.flags;
                    if ((i3 & 4) == 0) {
                        this.value = fieldLocation;
                        this.flags = i2 | 8;
                    } else if ((i3 & 8) != 0) {
                        this.value = fieldLocation.value;
                        this.flags = i2 | 8;
                    }
                } else if (location.isConstant()) {
                    Object obj = location.get(null);
                    if (obj instanceof Procedure) {
                        this.flags |= 16;
                    }
                    if (obj instanceof Syntax) {
                        this.flags |= 32;
                    }
                    this.flags |= 12;
                    this.value = obj;
                }
            }
        }
        this.flags |= 64;
    }

    public boolean isProcedureOrSyntax() {
        if ((this.flags & 64) == 0) {
            setKindFlags();
        }
        return (this.flags & 48) != 0;
    }

    public FieldLocation(Object obj, String str, String str2) {
        super(obj, ClassType.make(str), str2);
    }

    public FieldLocation(Object obj, ClassType classType, String str) {
        super(obj, classType, str);
    }

    public FieldLocation(Object obj, java.lang.reflect.Field field) {
        super(obj, field);
        this.type = (ClassType) Type.make(field.getDeclaringClass());
    }

    public void setDeclaration(Declaration declaration) {
        this.decl = declaration;
    }

    public Field getField() {
        return this.type.getDeclaredField(this.mname);
    }

    public Type getFType() {
        return this.type.getDeclaredField(this.mname).getType();
    }

    public synchronized Declaration getDeclaration() {
        try {
            if ((this.flags & 64) == 0) {
                setKindFlags();
            }
            Declaration declaration = this.decl;
            if (declaration == null) {
                String memberName = getMemberName();
                ClassType declaringClass = getDeclaringClass();
                if (declaringClass.getDeclaredField(memberName) == null) {
                    return null;
                }
                Declaration declarationFirstDecl = ModuleInfo.find(declaringClass).getModuleExp().firstDecl();
                while (declarationFirstDecl != null) {
                    Field field = declarationFirstDecl.field;
                    if (field == null || !field.getName().equals(memberName)) {
                        declarationFirstDecl = declarationFirstDecl.nextDecl();
                    }
                }
                if (declarationFirstDecl == null) {
                    throw new RuntimeException("no field found for " + this);
                }
                this.decl = declarationFirstDecl;
                declaration = declarationFirstDecl;
            }
            return declaration;
        } finally {
        }
    }

    @Override // gnu.kawa.reflect.ClassMemberLocation
    public void setup() {
        synchronized (this) {
            try {
                if ((this.flags & 1) != 0) {
                    return;
                }
                super.setup();
                if ((this.flags & 64) == 0) {
                    setKindFlags();
                }
                this.flags |= 1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // gnu.kawa.reflect.ClassMemberLocation, gnu.mapping.Location
    public Object get(Object obj) {
        Object fieldValue;
        try {
            setup();
            int i = this.flags;
            if ((i & 8) != 0) {
                fieldValue = this.value;
                if ((i & 4) != 0) {
                    return fieldValue;
                }
            } else {
                fieldValue = getFieldValue();
                if ((this.type.getDeclaredField(this.mname).getModifiers() & 16) != 0) {
                    int i2 = this.flags;
                    int i3 = i2 | 8;
                    this.flags = i3;
                    if ((i3 & 2) == 0) {
                        this.flags = i2 | 12;
                    }
                    this.value = fieldValue;
                }
            }
        } catch (Throwable unused) {
        }
        if ((this.flags & 2) == 0) {
            return fieldValue;
        }
        String str = Location.UNBOUND;
        Location location = (Location) fieldValue;
        Object obj2 = location.get(str);
        if (obj2 != str) {
            if (location.isConstant()) {
                this.flags |= 4;
                this.value = obj2;
            }
            return obj2;
        }
        return obj;
    }

    private Object getFieldValue() {
        super.setup();
        try {
            return this.rfield.get(this.instance);
        } catch (Throwable th) {
            throw WrappedException.wrapIfNeeded(th);
        }
    }

    @Override // gnu.kawa.reflect.ClassMemberLocation, gnu.mapping.Location
    public void set(Object obj) {
        Object fieldValue;
        setup();
        int i = this.flags;
        if ((i & 2) == 0) {
            try {
                this.rfield.set(this.instance, obj);
            } catch (Throwable th) {
                throw WrappedException.wrapIfNeeded(th);
            }
        } else {
            if ((i & 8) != 0) {
                fieldValue = this.value;
            } else {
                this.flags = i | 8;
                fieldValue = getFieldValue();
                this.value = fieldValue;
            }
            ((Location) fieldValue).set(obj);
        }
    }

    @Override // gnu.mapping.Location
    public Object setWithSave(Object obj) {
        Object fieldValue;
        if ((this.flags & 64) == 0) {
            setKindFlags();
        }
        int i = this.flags;
        if ((i & 2) == 0) {
            return super.setWithSave(obj);
        }
        if ((i & 8) != 0) {
            fieldValue = this.value;
        } else {
            this.flags = i | 8;
            fieldValue = getFieldValue();
            this.value = fieldValue;
        }
        return ((Location) fieldValue).setWithSave(obj);
    }

    @Override // gnu.mapping.Location
    public void setRestore(Object obj) {
        if ((this.flags & 2) == 0) {
            super.setRestore(obj);
        } else {
            ((Location) this.value).setRestore(obj);
        }
    }

    @Override // gnu.kawa.reflect.ClassMemberLocation, gnu.mapping.Location
    public boolean isConstant() {
        Object fieldValue;
        if ((this.flags & 64) == 0) {
            setKindFlags();
        }
        if ((this.flags & 4) != 0) {
            return true;
        }
        if (isIndirectLocation()) {
            if ((this.flags & 8) != 0) {
                fieldValue = this.value;
            } else {
                try {
                    setup();
                    fieldValue = getFieldValue();
                    this.flags |= 8;
                    this.value = fieldValue;
                } catch (Throwable unused) {
                }
            }
            return ((Location) fieldValue).isConstant();
        }
        return false;
    }

    @Override // gnu.kawa.reflect.ClassMemberLocation, gnu.mapping.Location
    public boolean isBound() {
        Object fieldValue;
        if ((this.flags & 64) == 0) {
            setKindFlags();
        }
        int i = this.flags;
        if ((i & 4) != 0 || (i & 2) == 0) {
            return true;
        }
        if ((i & 8) != 0) {
            fieldValue = this.value;
        } else {
            try {
                setup();
                fieldValue = getFieldValue();
                this.flags |= 8;
                this.value = fieldValue;
            } catch (Throwable unused) {
                return false;
            }
        }
        return ((Location) fieldValue).isBound();
    }

    public static FieldLocation make(Object obj, Declaration declaration) {
        Field field = declaration.field;
        FieldLocation fieldLocation = new FieldLocation(obj, field.getDeclaringClass(), field.getName());
        fieldLocation.setDeclaration(declaration);
        return fieldLocation;
    }

    public static FieldLocation make(Object obj, String str, String str2) {
        return new FieldLocation(obj, ClassType.make(str), str2);
    }

    @Override // gnu.mapping.Location
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("FieldLocation[");
        Object obj = this.instance;
        if (obj != null) {
            stringBuffer.append(obj);
            stringBuffer.append(' ');
        }
        ClassType classType = this.type;
        stringBuffer.append(classType == null ? "(null)" : classType.getName());
        stringBuffer.append('.');
        stringBuffer.append(this.mname);
        stringBuffer.append(']');
        return stringBuffer.toString();
    }
}
