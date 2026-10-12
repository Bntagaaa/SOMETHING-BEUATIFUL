package gnu.kawa.functions;

import _COROUTINE.a;
import com.google.appinventor.components.common.PropertyTypeConstants;
import gnu.bytecode.Access;
import gnu.bytecode.ArrayType;
import gnu.bytecode.ClassType;
import gnu.bytecode.ObjectType;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.InlineCalls;
import gnu.expr.Language;
import gnu.expr.PrimProcedure;
import gnu.expr.QuoteExp;
import gnu.expr.ReferenceExp;
import gnu.kawa.reflect.ClassMethods;
import gnu.kawa.reflect.CompileReflect;
import gnu.kawa.reflect.Invoke;
import gnu.kawa.reflect.SlotGet;
import gnu.kawa.reflect.SlotSet;
import gnu.mapping.Environment;
import gnu.mapping.HasNamedParts;
import gnu.mapping.Namespace;
import gnu.mapping.Procedure;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class CompileNamedPart {
    static final ClassType typeHasNamedParts = ClassType.make("gnu.mapping.HasNamedParts");

    public static Expression validateGetNamedPart(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        Declaration binding;
        Object constantValue;
        applyExp.visitArgs(inlineCalls);
        Expression[] args = applyExp.getArgs();
        if (args.length == 2 && (args[1] instanceof QuoteExp) && (applyExp instanceof GetNamedExp)) {
            Expression expression = args[0];
            if (expression instanceof ReferenceExp) {
                ReferenceExp referenceExp = (ReferenceExp) expression;
                if ("*".equals(referenceExp.getName())) {
                    return makeGetNamedInstancePartExp(args[1]);
                }
                binding = referenceExp.getBinding();
            } else {
                binding = null;
            }
            String string = ((QuoteExp) args[1]).getValue().toString();
            Type type2 = expression.getType();
            int i = QuoteExp.EXPLICITLY_TYPED;
            Compilation compilation = inlineCalls.getCompilation();
            Language language = compilation.getLanguage();
            Type typeFor = language.getTypeFor(expression, false);
            ClassType classType = compilation.curClass;
            if (classType == null) {
                classType = compilation.mainClass;
            }
            GetNamedExp getNamedExp = (GetNamedExp) applyExp;
            if (typeFor != null) {
                if (string.equals(GetNamedPart.CLASSTYPE_FOR)) {
                    return new QuoteExp(typeFor);
                }
                if (typeFor instanceof ObjectType) {
                    if (string.equals("new")) {
                        return getNamedExp.setProcedureKind('N');
                    }
                    if (string.equals(GetNamedPart.INSTANCEOF_METHOD_NAME)) {
                        return getNamedExp.setProcedureKind(Access.INNERCLASS_CONTEXT);
                    }
                    if (string.equals(GetNamedPart.CAST_METHOD_NAME)) {
                        return getNamedExp.setProcedureKind(Access.CLASS_CONTEXT);
                    }
                }
            }
            if (typeFor instanceof ObjectType) {
                if (string.length() > 1 && string.charAt(0) == '.') {
                    return new QuoteExp(new NamedPart(typeFor, string, 'D'));
                }
                if (CompileReflect.checkKnownClass(typeFor, compilation) >= 0) {
                    PrimProcedure[] methods = ClassMethods.getMethods((ObjectType) typeFor, Compilation.mangleName(string), (char) 0, classType, language);
                    if (methods != null && methods.length > 0) {
                        getNamedExp.methods = methods;
                        return getNamedExp.setProcedureKind('S');
                    }
                    ApplyExp applyExp2 = new ApplyExp(SlotGet.staticField, args);
                    applyExp2.setLine(applyExp);
                    return inlineCalls.visitApplyOnly(applyExp2, type);
                }
            } else if (!type2.isSubtype(Compilation.typeClassType) && !type2.isSubtype(Type.javalangClassType)) {
                if (type2 instanceof ObjectType) {
                    ObjectType objectType = (ObjectType) type2;
                    PrimProcedure[] methods2 = ClassMethods.getMethods(objectType, Compilation.mangleName(string), 'V', classType, language);
                    if (methods2 != null && methods2.length > 0) {
                        getNamedExp.methods = methods2;
                        return getNamedExp.setProcedureKind(Access.METHOD_CONTEXT);
                    }
                    ClassType classType2 = typeHasNamedParts;
                    if (type2.isSubtype(classType2)) {
                        if (binding != null && (constantValue = Declaration.followAliases(binding).getConstantValue()) != null) {
                            HasNamedParts hasNamedParts = (HasNamedParts) constantValue;
                            if (hasNamedParts.isConstant(string)) {
                                return QuoteExp.getInstance(hasNamedParts.get(string));
                            }
                        }
                        return new ApplyExp(classType2.getDeclaredMethod("get", 1), args[0], QuoteExp.getInstance(string)).setLine(applyExp);
                    }
                    if (SlotGet.lookupMember(objectType, string, classType) != null || (string.equals(PropertyTypeConstants.PROPERTY_TYPE_LENGTH) && (type2 instanceof ArrayType))) {
                        ApplyExp applyExp3 = new ApplyExp(SlotGet.field, args);
                        applyExp3.setLine(applyExp);
                        return inlineCalls.visitApplyOnly(applyExp3, type);
                    }
                }
                if (compilation.warnUnknownMember()) {
                    StringBuilder sbR = a.r("no known slot '", string, "' in ");
                    sbR.append(type2.getName());
                    compilation.error('w', sbR.toString());
                }
            }
        }
        return applyExp;
    }

    public static Expression validateSetNamedPart(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        ApplyExp applyExp2;
        applyExp.visitArgs(inlineCalls);
        Expression[] args = applyExp.getArgs();
        if (args.length == 3) {
            Expression expression = args[1];
            if (expression instanceof QuoteExp) {
                Expression expression2 = args[0];
                String string = ((QuoteExp) expression).getValue().toString();
                Type type2 = expression2.getType();
                Compilation compilation = inlineCalls.getCompilation();
                Type typeFor = compilation.getLanguage().getTypeFor(expression2);
                ClassType classType = compilation.curClass;
                if (classType == null) {
                    classType = compilation.mainClass;
                }
                if (typeFor instanceof ClassType) {
                    applyExp2 = new ApplyExp(SlotSet.set$Mnstatic$Mnfield$Ex, args);
                } else {
                    applyExp2 = (!(type2 instanceof ClassType) || SlotSet.lookupMember((ClassType) type2, string, classType) == null) ? applyExp : new ApplyExp(SlotSet.set$Mnfield$Ex, args);
                }
                if (applyExp2 != applyExp) {
                    applyExp2.setLine(applyExp);
                }
                applyExp2.setType(Type.voidType);
                return applyExp2;
            }
        }
        return applyExp;
    }

    public static Expression makeExp(Expression expression, Expression expression2) {
        String strCombineName = combineName(expression, expression2);
        Environment current = Environment.getCurrent();
        if (strCombineName != null) {
            Translator translator = (Translator) Compilation.getCurrent();
            Symbol symbol = Namespace.EmptyNamespace.getSymbol(strCombineName);
            Declaration declarationLookup = translator.lexical.lookup((Object) symbol, false);
            if (!Declaration.isUnknown(declarationLookup)) {
                return new ReferenceExp(declarationLookup);
            }
            if (symbol != null && current.isBound(symbol, null)) {
                return new ReferenceExp(strCombineName);
            }
        }
        if (expression instanceof ReferenceExp) {
            ReferenceExp referenceExp = (ReferenceExp) expression;
            if (referenceExp.isUnknown()) {
                Object symbol2 = referenceExp.getSymbol();
                if (current.get(symbol2 instanceof Symbol ? (Symbol) symbol2 : current.getSymbol(symbol2.toString()), (Object) null) == null) {
                    try {
                        expression = QuoteExp.getInstance(Type.make(ObjectType.getContextClass(referenceExp.getName())));
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        GetNamedExp getNamedExp = new GetNamedExp(new Expression[]{expression, expression2});
        getNamedExp.combinedName = strCombineName;
        return getNamedExp;
    }

    public static String combineName(Expression expression, Expression expression2) {
        String simpleName;
        Object objValueIfConstant = expression2.valueIfConstant();
        if (!(objValueIfConstant instanceof SimpleSymbol)) {
            return null;
        }
        if ((!(expression instanceof ReferenceExp) || (simpleName = ((ReferenceExp) expression).getSimpleName()) == null) && (!(expression instanceof GetNamedExp) || (simpleName = ((GetNamedExp) expression).combinedName) == null)) {
            return null;
        }
        return (simpleName + ':' + objValueIfConstant).intern();
    }

    public static Expression makeExp(Expression expression, String str) {
        return makeExp(expression, new QuoteExp(str));
    }

    public static Expression makeExp(Type type, String str) {
        return makeExp(new QuoteExp(type), new QuoteExp(str));
    }

    public static Expression validateNamedPart(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        SlotGet slotGet;
        applyExp.visitArgs(inlineCalls);
        Expression[] args = applyExp.getArgs();
        NamedPart namedPart = (NamedPart) procedure;
        if (namedPart.kind != 'D') {
            return applyExp;
        }
        Expression[] expressionArr = new Expression[2];
        expressionArr[1] = QuoteExp.getInstance(namedPart.member.toString().substring(1));
        if (args.length > 0) {
            expressionArr[0] = Compilation.makeCoercion(args[0], new QuoteExp(namedPart.container));
            slotGet = SlotGet.field;
        } else {
            expressionArr[0] = QuoteExp.getInstance(namedPart.container);
            slotGet = SlotGet.staticField;
        }
        ApplyExp applyExp2 = new ApplyExp(slotGet, expressionArr);
        applyExp2.setLine(applyExp);
        return inlineCalls.visitApplyOnly(applyExp2, type);
    }

    public static Expression validateNamedPartSetter(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        SlotSet slotSet;
        applyExp.visitArgs(inlineCalls);
        NamedPart namedPart = (NamedPart) ((NamedPartSetter) procedure).getGetter();
        if (namedPart.kind != 'D') {
            return applyExp;
        }
        Expression[] expressionArr = new Expression[3];
        expressionArr[1] = QuoteExp.getInstance(namedPart.member.toString().substring(1));
        expressionArr[2] = applyExp.getArgs()[0];
        if (applyExp.getArgCount() == 1) {
            expressionArr[0] = QuoteExp.getInstance(namedPart.container);
            slotSet = SlotSet.set$Mnstatic$Mnfield$Ex;
        } else {
            if (applyExp.getArgCount() != 2) {
                return applyExp;
            }
            expressionArr[0] = Compilation.makeCoercion(applyExp.getArgs()[0], new QuoteExp(namedPart.container));
            slotSet = SlotSet.set$Mnfield$Ex;
        }
        ApplyExp applyExp2 = new ApplyExp(slotSet, expressionArr);
        applyExp2.setLine(applyExp);
        return inlineCalls.visitApplyOnly(applyExp2, type);
    }

    public static Expression makeGetNamedInstancePartExp(Expression expression) {
        if (expression instanceof QuoteExp) {
            Object value = ((QuoteExp) expression).getValue();
            if (value instanceof SimpleSymbol) {
                return QuoteExp.getInstance(new GetNamedInstancePart(value.toString()));
            }
        }
        return new ApplyExp(Invoke.make, new QuoteExp(ClassType.make("gnu.kawa.functions.GetNamedInstancePart")), expression);
    }

    public static Expression validateGetNamedInstancePart(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        Procedure procedure2;
        Expression[] expressionArr;
        applyExp.visitArgs(inlineCalls);
        Expression[] args = applyExp.getArgs();
        GetNamedInstancePart getNamedInstancePart = (GetNamedInstancePart) procedure;
        if (getNamedInstancePart.isField) {
            expressionArr = new Expression[]{args[0], new QuoteExp(getNamedInstancePart.pname)};
            procedure2 = SlotGet.field;
        } else {
            int length = args.length;
            Expression[] expressionArr2 = new Expression[length + 1];
            expressionArr2[0] = args[0];
            expressionArr2[1] = new QuoteExp(getNamedInstancePart.pname);
            System.arraycopy(args, 1, expressionArr2, 2, length - 1);
            procedure2 = Invoke.invoke;
            expressionArr = expressionArr2;
        }
        return inlineCalls.visitApplyOnly(new ApplyExp(procedure2, expressionArr), type);
    }

    public static Expression validateSetNamedInstancePart(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        applyExp.visitArgs(inlineCalls);
        Expression[] args = applyExp.getArgs();
        return inlineCalls.visitApplyOnly(new ApplyExp(SlotSet.set$Mnfield$Ex, args[0], new QuoteExp(((SetNamedInstancePart) procedure).pname), args[1]), type);
    }
}
