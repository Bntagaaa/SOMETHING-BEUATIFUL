package kawa.lang;

import gnu.bytecode.ArrayClassLoader;
import gnu.bytecode.ClassType;
import gnu.bytecode.Field;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.Expression;
import gnu.expr.Inlineable;
import gnu.expr.Target;
import gnu.mapping.Procedure1;

/* loaded from: classes2.dex */
public class GetFieldProc extends Procedure1 implements Inlineable {
    ClassType ctype;
    Field field;

    public GetFieldProc(Class cls, String str) {
        this((ClassType) Type.make(cls), str);
    }

    public GetFieldProc(ClassType classType, String str) {
        this.ctype = classType;
        this.field = Field.searchField(classType.getFields(), str);
    }

    public GetFieldProc(ClassType classType, String str, Type type, int i) {
        this.ctype = classType;
        Field field = classType.getField(str);
        this.field = field;
        if (field == null) {
            this.field = classType.addField(str, type, i);
        }
    }

    @Override // gnu.mapping.Procedure1, gnu.mapping.Procedure
    public Object apply1(Object obj) {
        try {
            return this.field.getReflectField().get(obj);
        } catch (IllegalAccessException unused) {
            throw new RuntimeException("illegal access for field " + this.field.getSourceName());
        } catch (NoSuchFieldException unused2) {
            throw new RuntimeException("no such field " + this.field.getSourceName() + " in " + this.ctype.getName());
        }
    }

    private Field getField() {
        return this.field;
    }

    @Override // gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        if (this.ctype.getReflectClass().getClassLoader() instanceof ArrayClassLoader) {
            ApplyExp.compile(applyExp, compilation, target);
            return;
        }
        applyExp.getArgs()[0].compile(compilation, this.ctype);
        compilation.getCode().emitGetField(this.field);
        target.compileFromStack(compilation, this.field.getType());
    }

    @Override // gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        return getField().getType();
    }
}
