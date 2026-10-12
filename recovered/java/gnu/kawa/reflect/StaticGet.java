package gnu.kawa.reflect;

import gnu.bytecode.ClassType;
import gnu.bytecode.Field;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.Expression;
import gnu.expr.Inlineable;
import gnu.expr.Target;
import gnu.mapping.Procedure0;

/* loaded from: classes2.dex */
public class StaticGet extends Procedure0 implements Inlineable {
    ClassType ctype;
    Field field;
    String fname;
    java.lang.reflect.Field reflectField;

    public StaticGet(Class cls, String str) {
        this.ctype = (ClassType) Type.make(cls);
        this.fname = str;
    }

    public StaticGet(ClassType classType, String str, Type type, int i) {
        this.ctype = classType;
        this.fname = str;
        Field field = classType.getField(str);
        this.field = field;
        if (field == null) {
            this.field = classType.addField(str, type, i);
        }
    }

    @Override // gnu.mapping.Procedure0, gnu.mapping.Procedure
    public Object apply0() {
        if (this.reflectField == null) {
            Class reflectClass = this.ctype.getReflectClass();
            try {
                this.reflectField = reflectClass.getField(this.fname);
            } catch (NoSuchFieldException unused) {
                throw new RuntimeException("no such field " + this.fname + " in " + reflectClass.getName());
            }
        }
        try {
            return this.reflectField.get(null);
        } catch (IllegalAccessException unused2) {
            throw new RuntimeException("illegal access for field " + this.fname);
        }
    }

    private Field getField() {
        if (this.field == null) {
            Field field = this.ctype.getField(this.fname);
            this.field = field;
            if (field == null) {
                this.field = this.ctype.addField(this.fname, Type.make(this.reflectField.getType()), this.reflectField.getModifiers());
            }
        }
        return this.field;
    }

    @Override // gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        getField();
        compilation.getCode().emitGetStatic(this.field);
        target.compileFromStack(compilation, this.field.getType());
    }

    @Override // gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        return getField().getType();
    }
}
