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
import gnu.mapping.Procedure2;
import gnu.mapping.Values;

/* loaded from: classes2.dex */
public class SetFieldProc extends Procedure2 implements Inlineable {
    ClassType ctype;
    Field field;

    public SetFieldProc(Class cls, String str) {
        this((ClassType) Type.make(cls), str);
    }

    public SetFieldProc(ClassType classType, String str) {
        this.ctype = classType;
        this.field = Field.searchField(classType.getFields(), str);
    }

    public SetFieldProc(ClassType classType, String str, Type type, int i) {
        this.ctype = classType;
        Field field = classType.getField(str);
        this.field = field;
        if (field == null) {
            this.field = classType.addField(str, type, i);
        }
    }

    @Override // gnu.mapping.Procedure2, gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) throws IllegalAccessException, IllegalArgumentException {
        try {
            this.field.getReflectField().set(obj, this.field.getType().coerceFromObject(obj2));
            return Values.empty;
        } catch (IllegalAccessException unused) {
            throw new RuntimeException("illegal access for field " + this.field.getSourceName());
        } catch (NoSuchFieldException unused2) {
            throw new RuntimeException("no such field " + this.field.getSourceName() + " in " + this.ctype.getName());
        }
    }

    @Override // gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        if (this.ctype.getReflectClass().getClassLoader() instanceof ArrayClassLoader) {
            ApplyExp.compile(applyExp, compilation, target);
            return;
        }
        Expression[] args = applyExp.getArgs();
        args[0].compile(compilation, this.ctype);
        args[1].compile(compilation, this.field.getType());
        compilation.getCode().emitPutField(this.field);
        compilation.compileConstant(Values.empty, target);
    }

    @Override // gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        return Type.voidType;
    }
}
