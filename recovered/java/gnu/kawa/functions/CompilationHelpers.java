package gnu.kawa.functions;

import gnu.bytecode.ArrayType;
import gnu.bytecode.ClassType;
import gnu.bytecode.Field;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.InlineCalls;
import gnu.expr.LambdaExp;
import gnu.expr.Language;
import gnu.expr.QuoteExp;
import gnu.expr.ReferenceExp;
import gnu.kawa.reflect.ArrayGet;
import gnu.kawa.reflect.CompileReflect;
import gnu.kawa.reflect.Invoke;
import gnu.mapping.Procedure;
import gnu.mapping.Symbol;
import gnu.math.Numeric;
import gnu.text.Char;
import java.io.Externalizable;

/* loaded from: classes2.dex */
public class CompilationHelpers {
    public static final Declaration setterDecl;
    static final Field setterField;
    static final ClassType setterType;
    static final ClassType typeList = ClassType.make("java.util.List");

    private static boolean nonNumeric(Expression expression) {
        if (expression instanceof QuoteExp) {
            Object value = ((QuoteExp) expression).getValue();
            if (!(value instanceof Numeric) && !(value instanceof Char) && !(value instanceof Symbol)) {
                return true;
            }
        }
        return false;
    }

    static {
        ClassType classTypeMake = ClassType.make("gnu.kawa.functions.Setter");
        setterType = classTypeMake;
        Field declaredField = classTypeMake.getDeclaredField("setter");
        setterField = declaredField;
        Declaration declaration = new Declaration("setter", declaredField);
        setterDecl = declaration;
        declaration.noteValue(new QuoteExp(Setter.setter));
    }

    public static Expression validateApplyToArgs(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        Expression[] args = applyExp.getArgs();
        int length = args.length - 1;
        if (length >= 0) {
            Expression expressionVisit = args[0];
            ApplyExp applyExp2 = null;
            if (!expressionVisit.getFlag(1)) {
                if (expressionVisit instanceof LambdaExp) {
                    Expression[] expressionArr = new Expression[length];
                    System.arraycopy(args, 1, expressionArr, 0, length);
                    return inlineCalls.visit(new ApplyExp(expressionVisit, expressionArr).setLine(applyExp), type);
                }
                expressionVisit = inlineCalls.visit(expressionVisit, (Type) null);
                args[0] = expressionVisit;
            }
            Type realType = expressionVisit.getType().getRealType();
            Compilation compilation = inlineCalls.getCompilation();
            Language language = compilation.getLanguage();
            if (realType.isSubtype(Compilation.typeProcedure)) {
                Expression[] expressionArr2 = new Expression[length];
                System.arraycopy(args, 1, expressionArr2, 0, length);
                ApplyExp applyExp3 = new ApplyExp(expressionVisit, expressionArr2);
                applyExp3.setLine(applyExp);
                return expressionVisit.validateApply(applyExp3, inlineCalls, type, null);
            }
            if (CompileReflect.checkKnownClass(realType, compilation) >= 0) {
                if (realType.isSubtype(Compilation.typeType) || language.getTypeFor(expressionVisit, false) != null) {
                    applyExp2 = new ApplyExp(Invoke.make, args);
                } else if (realType instanceof ArrayType) {
                    applyExp2 = new ApplyExp(new ArrayGet(((ArrayType) realType).getComponentType()), args);
                } else if (realType instanceof ClassType) {
                    ClassType classType = (ClassType) realType;
                    if (classType.isSubclass(typeList) && length == 1) {
                        applyExp2 = new ApplyExp(classType.getMethod("get", new Type[]{Type.intType}), args);
                    }
                }
            }
            if (applyExp2 != null) {
                applyExp2.setLine(applyExp);
                return inlineCalls.visitApplyOnly(applyExp2, type);
            }
        }
        applyExp.visitArgs(inlineCalls);
        return applyExp;
    }

    public static Expression validateSetter(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        Procedure setter;
        Declaration binding;
        applyExp.visitArgs(inlineCalls);
        Expression[] args = applyExp.getArgs();
        if (args.length != 1) {
            return applyExp;
        }
        Expression value = args[0];
        Type type2 = value.getType();
        if (type2 instanceof ArrayType) {
            return new SetArrayExp(value, (ArrayType) type2);
        }
        if ((type2 instanceof ClassType) && ((ClassType) type2).isSubclass(typeList)) {
            return applyExp instanceof SetListExp ? applyExp : new SetListExp(applyExp.getFunction(), args);
        }
        if ((value instanceof ReferenceExp) && (binding = ((ReferenceExp) value).getBinding()) != null) {
            value = binding.getValue();
        }
        if (!(value instanceof QuoteExp)) {
            return applyExp;
        }
        Object value2 = ((QuoteExp) value).getValue();
        if (!(value2 instanceof Procedure) || (setter = ((Procedure) value2).getSetter()) == null) {
            return applyExp;
        }
        if (setter instanceof Externalizable) {
            return new QuoteExp(setter);
        }
        Declaration declaration = Declaration.getDeclaration(setter);
        return declaration != null ? new ReferenceExp(declaration) : applyExp;
    }

    public static Expression validateIsEqv(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        applyExp.visitArgs(inlineCalls);
        Expression[] args = applyExp.getArgs();
        return (nonNumeric(args[0]) || nonNumeric(args[1])) ? new ApplyExp(((IsEqv) procedure).isEq, args) : applyExp;
    }
}
