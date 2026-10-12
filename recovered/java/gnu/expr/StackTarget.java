package gnu.expr;

import gnu.bytecode.ArrayType;
import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.PrimType;
import gnu.bytecode.Type;
import gnu.kawa.reflect.OccurrenceType;
import gnu.mapping.Values;

/* loaded from: classes2.dex */
public class StackTarget extends Target {
    Type type;

    public StackTarget(Type type) {
        this.type = type;
    }

    @Override // gnu.expr.Target
    public Type getType() {
        return this.type;
    }

    public static Target getInstance(Type type) {
        return type.isVoid() ? Target.Ignore : type == Type.pointer_type ? Target.pushObject : new StackTarget(type);
    }

    public boolean compileFromStack0(Compilation compilation, Type type) {
        return compileFromStack0(compilation, type, this.type);
    }

    public static boolean compileFromStack0(Compilation compilation, Type type, Type type2) {
        if (type2 == type) {
            return true;
        }
        CodeAttr code = compilation.getCode();
        if (type.isVoid()) {
            compilation.compileConstant(Values.empty);
            type = Type.pointer_type;
        } else if ((type instanceof PrimType) && (type2 instanceof PrimType)) {
            code.emitConvert(type, type2);
            return true;
        }
        if (type instanceof ArrayType) {
            if (type2 == Type.pointer_type || "java.lang.Cloneable".equals(type2.getName())) {
                return true;
            }
        } else {
            type2.emitConvertFromPrimitive(type, code);
            type = code.topType();
        }
        return !CodeAttr.castNeeded(type.getImplementationType(), type2.getImplementationType());
    }

    public static void convert(Compilation compilation, Type type, Type type2) {
        if (compileFromStack0(compilation, type, type2)) {
            return;
        }
        emitCoerceFromObject(type2, compilation);
    }

    public static void emitCoerceFromObject(Type type, Compilation compilation) {
        CodeAttr code = compilation.getCode();
        if (type instanceof OccurrenceType) {
            compilation.compileConstant(type, Target.pushObject);
            code.emitSwap();
            code.emitInvokeVirtual(ClassType.make("gnu.bytecode.Type").getDeclaredMethod("coerceFromObject", 1));
        } else {
            compilation.usedClass(type);
            type.emitCoerceFromObject(code);
        }
    }

    @Override // gnu.expr.Target
    public void compileFromStack(Compilation compilation, Type type) {
        if (compileFromStack0(compilation, type)) {
            return;
        }
        emitCoerceFromObject(this.type, compilation);
    }
}
