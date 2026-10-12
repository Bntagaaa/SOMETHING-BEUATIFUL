package gnu.kawa.reflect;

import _COROUTINE.a;
import gnu.bytecode.ArrayType;
import gnu.bytecode.ClassType;
import gnu.bytecode.Field;
import gnu.bytecode.Member;
import gnu.bytecode.Method;
import gnu.bytecode.ObjectType;
import gnu.bytecode.PrimType;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.ClassExp;
import gnu.expr.Compilation;
import gnu.expr.ErrorExp;
import gnu.expr.Expression;
import gnu.expr.InlineCalls;
import gnu.expr.LambdaExp;
import gnu.expr.Language;
import gnu.expr.QuoteExp;
import gnu.lists.FString;
import gnu.mapping.Procedure;
import gnu.mapping.Symbol;

/* loaded from: classes2.dex */
public class CompileReflect {
    public static int checkKnownClass(Type type, Compilation compilation) {
        if (!(type instanceof ClassType) || !type.isExisting()) {
            return 0;
        }
        try {
            type.getReflectClass();
            return 1;
        } catch (Exception unused) {
            compilation.error('e', "unknown class: " + type.getName());
            return -1;
        }
    }

    public static ApplyExp inlineClassName(ApplyExp applyExp, int i, InlineCalls inlineCalls) {
        Type typeFor;
        Compilation compilation = inlineCalls.getCompilation();
        Language language = compilation.getLanguage();
        Expression[] args = applyExp.getArgs();
        if (args.length <= i || (typeFor = language.getTypeFor(args[i])) == null) {
            return applyExp;
        }
        checkKnownClass(typeFor, compilation);
        Expression[] expressionArr = new Expression[args.length];
        System.arraycopy(args, 0, expressionArr, 0, args.length);
        expressionArr[i] = new QuoteExp(typeFor);
        ApplyExp applyExp2 = new ApplyExp(applyExp.getFunction(), expressionArr);
        applyExp2.setLine(applyExp);
        return applyExp2;
    }

    public static Expression validateApplyInstanceOf(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        applyExp.visitArgs(inlineCalls);
        ApplyExp applyExpInlineClassName = inlineClassName(applyExp, 1, inlineCalls);
        Expression[] args = applyExpInlineClassName.getArgs();
        if (args.length != 2) {
            return applyExpInlineClassName;
        }
        Expression expression = args[0];
        Expression expression2 = args[1];
        if (!(expression2 instanceof QuoteExp)) {
            return applyExpInlineClassName;
        }
        Object value = ((QuoteExp) expression2).getValue();
        if (!(value instanceof Type)) {
            return applyExpInlineClassName;
        }
        Type typeBoxedType = (Type) value;
        if (typeBoxedType instanceof PrimType) {
            typeBoxedType = ((PrimType) typeBoxedType).boxedType();
        }
        if (expression instanceof QuoteExp) {
            return typeBoxedType.isInstance(((QuoteExp) expression).getValue()) ? QuoteExp.trueExp : QuoteExp.falseExp;
        }
        if (expression.side_effects()) {
            return applyExpInlineClassName;
        }
        int iCompare = typeBoxedType.compare(expression.getType());
        if (iCompare == 1 || iCompare == 0) {
            return QuoteExp.trueExp;
        }
        return iCompare == -3 ? QuoteExp.falseExp : applyExpInlineClassName;
    }

    public static Expression validateApplySlotGet(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        Type type2;
        char c;
        char c2;
        char c3;
        ApplyExp applyExp2 = applyExp;
        applyExp.visitArgs(inlineCalls);
        Compilation compilation = inlineCalls.getCompilation();
        Language language = compilation.getLanguage();
        boolean z = ((SlotGet) procedure).isStatic;
        Expression[] args = applyExp2.getArgs();
        Expression expression = args[0];
        Expression expression2 = args[1];
        Object objValueIfConstant = expression2.valueIfConstant();
        if ((objValueIfConstant instanceof String) || (objValueIfConstant instanceof FString) || (objValueIfConstant instanceof Symbol)) {
            String string = objValueIfConstant.toString();
            if (z) {
                type2 = language.getTypeFor(expression);
                int iCheckKnownClass = checkKnownClass(type2, compilation);
                if (iCheckKnownClass >= 0) {
                    if ("class".equals(string)) {
                        return iCheckKnownClass > 0 ? QuoteExp.getInstance(type2.getReflectClass()) : new ApplyExp(Compilation.typeType.getDeclaredMethod("getReflectClass", 0), expression);
                    }
                    if (type2 != null) {
                        ApplyExp applyExp3 = new ApplyExp(applyExp2.getFunction(), new QuoteExp(type2), expression2);
                        applyExp3.setLine(applyExp2);
                        applyExp2 = applyExp3;
                    }
                }
            } else {
                type2 = expression.getType();
            }
            if (type2 instanceof ArrayType) {
                return applyExp2;
            }
            if (type2 instanceof ObjectType) {
                ObjectType objectType = (ObjectType) type2;
                ClassType classType = compilation.curClass;
                if (classType == null) {
                    classType = compilation.mainClass;
                }
                Member memberLookupMember = SlotGet.lookupMember(objectType, string, classType);
                c = '\b';
                c2 = 0;
                c3 = 1;
                if (memberLookupMember instanceof Field) {
                    Field field = (Field) memberLookupMember;
                    boolean z2 = (field.getModifiers() & 8) != 0;
                    if (z && !z2) {
                        StringBuilder sbR = a.r("cannot access non-static field `", string, "' using `");
                        sbR.append(procedure.getName());
                        sbR.append('\'');
                        return new ErrorExp(sbR.toString(), compilation);
                    }
                    if (classType != null && !classType.isAccessible(field, objectType)) {
                        return new ErrorExp("field " + field.getDeclaringClass().getName() + '.' + string + " is not accessible here", compilation);
                    }
                } else if (memberLookupMember instanceof Method) {
                    Method method = (Method) memberLookupMember;
                    ClassType declaringClass = method.getDeclaringClass();
                    int modifiers = method.getModifiers();
                    boolean staticFlag = method.getStaticFlag();
                    if (z && !staticFlag) {
                        StringBuilder sbR2 = a.r("cannot call non-static getter method `", string, "' using `");
                        sbR2.append(procedure.getName());
                        sbR2.append('\'');
                        return new ErrorExp(sbR2.toString(), compilation);
                    }
                    if (classType != null && !classType.isAccessible(declaringClass, objectType, modifiers)) {
                        return new ErrorExp("method " + method + " is not accessible here", compilation);
                    }
                }
                if (memberLookupMember != null) {
                    ApplyExp applyExp4 = new ApplyExp(applyExp2.getFunction(), expression, new QuoteExp(memberLookupMember));
                    applyExp4.setLine(applyExp2);
                    return applyExp4;
                }
                if (type2 != Type.pointer_type && compilation.warnUnknownMember()) {
                    StringBuilder sbR3 = a.r("no slot `", string, "' in ");
                    sbR3.append(objectType.getName());
                    compilation.error('e', sbR3.toString());
                }
            } else {
                c = '\b';
                c2 = 0;
                c3 = 1;
            }
            String strIntern = Compilation.mangleNameIfNeeded(string).intern();
            String strSlotToMethodName = ClassExp.slotToMethodName("get", string);
            String strSlotToMethodName2 = ClassExp.slotToMethodName("is", string);
            Invoke invoke = Invoke.invokeStatic;
            QuoteExp quoteExp = QuoteExp.getInstance("gnu.kawa.reflect.SlotGet");
            QuoteExp quoteExp2 = QuoteExp.getInstance("getSlotValue");
            QuoteExp quoteExp3 = z ? QuoteExp.trueExp : QuoteExp.falseExp;
            Expression expression3 = args[c2];
            QuoteExp quoteExp4 = QuoteExp.getInstance(string);
            QuoteExp quoteExp5 = QuoteExp.getInstance(strIntern);
            QuoteExp quoteExp6 = QuoteExp.getInstance(strSlotToMethodName);
            QuoteExp quoteExp7 = QuoteExp.getInstance(strSlotToMethodName2);
            QuoteExp quoteExp8 = QuoteExp.getInstance(language);
            Expression[] expressionArr = new Expression[9];
            expressionArr[c2] = quoteExp;
            expressionArr[c3] = quoteExp2;
            expressionArr[2] = quoteExp3;
            expressionArr[3] = expression3;
            expressionArr[4] = quoteExp4;
            expressionArr[5] = quoteExp5;
            expressionArr[6] = quoteExp6;
            expressionArr[7] = quoteExp7;
            expressionArr[c] = quoteExp8;
            ApplyExp applyExp5 = new ApplyExp(invoke, expressionArr);
            applyExp5.setLine(applyExp2);
            return inlineCalls.visitApplyOnly(applyExp5, null);
        }
        return applyExp2;
    }

    public static Expression validateApplySlotSet(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        applyExp.visitArgs(inlineCalls);
        SlotSet slotSet = (SlotSet) procedure;
        if (slotSet.isStatic && inlineCalls.getCompilation().mustCompile) {
            applyExp = inlineClassName(applyExp, 0, inlineCalls);
        }
        applyExp.setType((slotSet.returnSelf && applyExp.getArgCount() == 3) ? applyExp.getArg(0).getType() : Type.voidType);
        return applyExp;
    }

    public static Expression validateApplyTypeSwitch(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        applyExp.visitArgs(inlineCalls);
        Expression[] args = applyExp.getArgs();
        for (int i = 1; i < args.length; i++) {
            Expression expression = args[i];
            if (expression instanceof LambdaExp) {
                LambdaExp lambdaExp = (LambdaExp) expression;
                lambdaExp.setInlineOnly(true);
                lambdaExp.returnContinuation = applyExp;
                lambdaExp.inlineHome = inlineCalls.getCurrentLambda();
            }
        }
        return applyExp;
    }
}
