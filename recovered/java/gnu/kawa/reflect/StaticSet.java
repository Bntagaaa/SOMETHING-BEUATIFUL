package gnu.kawa.reflect;

import gnu.bytecode.ClassType;
import gnu.bytecode.Field;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.Expression;
import gnu.expr.Inlineable;
import gnu.expr.Target;
import gnu.mapping.Procedure1;
import gnu.mapping.Values;

/* loaded from: classes2.dex */
public class StaticSet extends Procedure1 implements Inlineable {
    ClassType ctype;
    Field field;
    String fname;
    java.lang.reflect.Field reflectField;

    public StaticSet(Class cls, String str) {
        this.ctype = (ClassType) Type.make(cls);
        this.fname = str;
    }

    public StaticSet(ClassType classType, String str, Type type, int i) {
        this.ctype = classType;
        this.fname = str;
        Field field = classType.getField(str);
        this.field = field;
        if (field == null) {
            this.field = classType.addField(str, type, i);
        }
    }

    @Override // gnu.mapping.Procedure1, gnu.mapping.Procedure
    public Object apply1(Object obj) throws IllegalAccessException, IllegalArgumentException {
        if (this.reflectField == null) {
            Class reflectClass = this.ctype.getReflectClass();
            try {
                this.reflectField = reflectClass.getField(this.fname);
            } catch (NoSuchFieldException unused) {
                throw new RuntimeException("no such field " + this.fname + " in " + reflectClass.getName());
            }
        }
        try {
            this.reflectField.set(null, obj);
            return Values.empty;
        } catch (IllegalAccessException unused2) {
            throw new RuntimeException("illegal access for field " + this.fname);
        }
    }

    @Override // gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        if (this.field == null) {
            Field field = this.ctype.getField(this.fname);
            this.field = field;
            if (field == null) {
                this.field = this.ctype.addField(this.fname, Type.make(this.reflectField.getType()), this.reflectField.getModifiers());
            }
        }
        applyExp.getArgs()[0].compile(compilation, this.field.getType());
        compilation.getCode().emitPutStatic(this.field);
        compilation.compileConstant(Values.empty, target);
    }

    @Override // gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        return Type.voidType;
    }
}
