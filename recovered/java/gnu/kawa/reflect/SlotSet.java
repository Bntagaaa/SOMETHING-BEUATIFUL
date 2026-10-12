package gnu.kawa.reflect;

import _COROUTINE.a;
import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Field;
import gnu.bytecode.Member;
import gnu.bytecode.Method;
import gnu.bytecode.ObjectType;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.CheckedTarget;
import gnu.expr.ClassExp;
import gnu.expr.Compilation;
import gnu.expr.Expression;
import gnu.expr.Inlineable;
import gnu.expr.Language;
import gnu.expr.QuoteExp;
import gnu.expr.Target;
import gnu.lists.FString;
import gnu.mapping.Procedure;
import gnu.mapping.Procedure3;
import gnu.mapping.Symbol;
import gnu.mapping.Values;
import kawa.standard.Scheme;

/* loaded from: classes2.dex */
public class SlotSet extends Procedure3 implements Inlineable {
    public static final SlotSet set$Mnfield$Ex = new SlotSet("set-field!", false);
    public static final SlotSet set$Mnstatic$Mnfield$Ex = new SlotSet("set-static-field!", true);
    public static final SlotSet setFieldReturnObject;
    static final Type[] type1Array;
    boolean isStatic;
    boolean returnSelf;

    static {
        SlotSet slotSet = new SlotSet("set-field-return-object!", false);
        setFieldReturnObject = slotSet;
        slotSet.returnSelf = true;
        type1Array = new Type[1];
    }

    public SlotSet(String str, boolean z) {
        super(str);
        this.isStatic = z;
        setProperty(Procedure.validateApplyKey, "gnu.kawa.reflect.CompileReflect:validateApplySlotSet");
    }

    public static void setField(Object obj, String str, Object obj2) {
        apply(false, obj, str, obj2);
    }

    public static void setStaticField(Object obj, String str, Object obj2) {
        apply(true, obj, str, obj2);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x005a A[Catch: NoSuchMethodException -> 0x0068, IllegalAccessException -> 0x00c6, InvocationTargetException -> 0x00f0, TRY_ENTER, TryCatch #4 {IllegalAccessException -> 0x00c6, NoSuchMethodException -> 0x0068, InvocationTargetException -> 0x00f0, blocks: (B:23:0x0053, B:27:0x005a, B:29:0x0060, B:45:0x00ac, B:42:0x0091, B:44:0x00a6, B:43:0x00a2), top: B:61:0x0053 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x006f A[Catch: Exception -> 0x0080, TRY_ENTER, TryCatch #0 {Exception -> 0x0080, blocks: (B:35:0x006f, B:38:0x0086, B:37:0x0082), top: B:57:0x006d }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0082 A[Catch: Exception -> 0x0080, TryCatch #0 {Exception -> 0x0080, blocks: (B:35:0x006f, B:38:0x0086, B:37:0x0082), top: B:57:0x006d }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void apply(boolean r10, java.lang.Object r11, java.lang.Object r12, java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.reflect.SlotSet.apply(boolean, java.lang.Object, java.lang.Object, java.lang.Object):void");
    }

    @Override // gnu.mapping.Procedure3, gnu.mapping.Procedure
    public Object apply3(Object obj, Object obj2, Object obj3) {
        apply(this.isStatic, obj, obj2, obj3);
        return this.returnSelf ? obj : Values.empty;
    }

    public static Member lookupMember(ObjectType objectType, String str, ClassType classType) {
        Field field = objectType.getField(Compilation.mangleNameIfNeeded(str), -1);
        if (field != null) {
            if (classType == null) {
                classType = Type.pointer_type;
            }
            if (classType.isAccessible(field, objectType)) {
                return field;
            }
        }
        Method method = objectType.getMethod(ClassExp.slotToMethodName("set", str), type1Array);
        return method == null ? field : method;
    }

    public static void compileSet(Procedure procedure, ObjectType objectType, Expression expression, Object obj, Compilation compilation) {
        CodeAttr code = compilation.getCode();
        Language language = compilation.getLanguage();
        boolean z = (procedure instanceof SlotSet) && ((SlotSet) procedure).isStatic;
        if (obj instanceof Field) {
            Field field = (Field) obj;
            boolean staticFlag = field.getStaticFlag();
            Type langTypeFor = language.getLangTypeFor(field.getType());
            if (z && !staticFlag) {
                compilation.error('e', "cannot access non-static field `" + field.getName() + "' using `" + procedure.getName() + '\'');
            }
            expression.compile(compilation, CheckedTarget.getInstance(langTypeFor));
            if (staticFlag) {
                code.emitPutStatic(field);
                return;
            } else {
                code.emitPutField(field);
                return;
            }
        }
        if (obj instanceof Method) {
            Method method = (Method) obj;
            boolean staticFlag2 = method.getStaticFlag();
            if (z && !staticFlag2) {
                compilation.error('e', "cannot call non-static getter method `" + method.getName() + "' using `" + procedure.getName() + '\'');
            }
            expression.compile(compilation, CheckedTarget.getInstance(language.getLangTypeFor(method.getParameterTypes()[0])));
            if (staticFlag2) {
                code.emitInvokeStatic(method);
            } else {
                code.emitInvoke(method);
            }
            if (method.getReturnType().isVoid()) {
                return;
            }
            code.emitPop(1);
        }
    }

    @Override // gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        String name;
        Expression[] args = applyExp.getArgs();
        int length = args.length;
        Member member = null;
        if (length != 3) {
            StringBuilder sbQ = a.q(length < 3 ? "too few" : "too many", " arguments to `");
            sbQ.append(getName());
            sbQ.append('\'');
            compilation.error('e', sbQ.toString());
            compilation.compileConstant(null, target);
            return;
        }
        Expression expression = args[0];
        Expression expression2 = args[1];
        Expression expression3 = args[2];
        Type typeExp2Type = this.isStatic ? Scheme.exp2Type(expression) : expression.getType();
        if ((typeExp2Type instanceof ObjectType) && (expression2 instanceof QuoteExp)) {
            Object value = ((QuoteExp) expression2).getValue();
            ObjectType objectType = (ObjectType) typeExp2Type;
            ClassType classType = compilation.curClass;
            if (classType == null) {
                classType = compilation.mainClass;
            }
            if ((value instanceof String) || (value instanceof FString) || (value instanceof Symbol)) {
                String string = value.toString();
                Member memberLookupMember = lookupMember(objectType, string, classType);
                if (memberLookupMember == null && typeExp2Type != Type.pointer_type && compilation.warnUnknownMember()) {
                    StringBuilder sbR = a.r("no slot `", string, "' in ");
                    sbR.append(objectType.getName());
                    compilation.error('w', sbR.toString());
                }
                name = string;
                member = memberLookupMember;
            } else if (value instanceof Member) {
                member = (Member) value;
                name = member.getName();
            } else {
                name = null;
            }
            if (member != null) {
                boolean z = (member.getModifiers() & 8) != 0;
                if (classType != null && !classType.isAccessible(member, objectType)) {
                    StringBuilder sbR2 = a.r("slot '", name, "' in ");
                    sbR2.append(member.getDeclaringClass().getName());
                    sbR2.append(" not accessible here");
                    compilation.error('e', sbR2.toString());
                }
                args[0].compile(compilation, z ? Target.Ignore : Target.pushValue(objectType));
                if (this.returnSelf) {
                    compilation.getCode().emitDup(objectType.getImplementationType());
                }
                compileSet(this, objectType, args[2], member, compilation);
                if (this.returnSelf) {
                    target.compileFromStack(compilation, objectType);
                    return;
                } else {
                    compilation.compileConstant(Values.empty, target);
                    return;
                }
            }
        }
        ApplyExp.compile(applyExp, compilation, target);
    }
}
