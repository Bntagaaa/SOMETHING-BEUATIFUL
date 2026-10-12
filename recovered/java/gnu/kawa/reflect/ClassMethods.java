package gnu.kawa.reflect;

import _COROUTINE.a;
import gnu.bytecode.ClassType;
import gnu.bytecode.Filter;
import gnu.bytecode.Method;
import gnu.bytecode.ObjectType;
import gnu.bytecode.Type;
import gnu.expr.Compilation;
import gnu.expr.Expression;
import gnu.expr.GenericProc;
import gnu.expr.Language;
import gnu.expr.PrimProcedure;
import gnu.expr.QuoteExp;
import gnu.lists.FString;
import gnu.mapping.MethodProc;
import gnu.mapping.Procedure;
import gnu.mapping.Procedure2;
import gnu.mapping.Symbol;
import gnu.mapping.WrongType;
import java.util.Vector;

/* loaded from: classes2.dex */
public class ClassMethods extends Procedure2 {
    public static final ClassMethods classMethods;

    static {
        ClassMethods classMethods2 = new ClassMethods();
        classMethods = classMethods2;
        classMethods2.setName("class-methods");
    }

    @Override // gnu.mapping.Procedure2, gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) {
        return apply(this, obj, obj2);
    }

    public static MethodProc apply(Procedure procedure, Object obj, Object obj2) {
        ClassType classTypeMake;
        if (obj instanceof Class) {
            obj = Type.make((Class) obj);
        }
        if (obj instanceof ClassType) {
            classTypeMake = (ClassType) obj;
        } else {
            if (!(obj instanceof String) && !(obj instanceof FString) && !(obj instanceof Symbol)) {
                throw new WrongType(procedure, 0, (ClassCastException) null);
            }
            classTypeMake = ClassType.make(obj.toString());
        }
        if (!(obj2 instanceof String) && !(obj2 instanceof FString) && !(obj2 instanceof Symbol)) {
            throw new WrongType(procedure, 1, (ClassCastException) null);
        }
        String string = obj2.toString();
        if (!"<init>".equals(string)) {
            string = Compilation.mangleName(string);
        }
        MethodProc methodProcApply = apply(classTypeMake, string, (char) 0, Language.getDefaultLanguage());
        if (methodProcApply != null) {
            return methodProcApply;
        }
        StringBuilder sbR = a.r("no applicable method named `", string, "' in ");
        sbR.append(classTypeMake.getName());
        throw new RuntimeException(sbR.toString());
    }

    private static int removeRedundantMethods(Vector vector) {
        int size = vector.size();
        int i = 1;
        while (i < size) {
            Method method = (Method) vector.elementAt(i);
            ClassType declaringClass = method.getDeclaringClass();
            Type[] parameterTypes = method.getParameterTypes();
            int length = parameterTypes.length;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    i++;
                    break;
                }
                Method method2 = (Method) vector.elementAt(i2);
                Type[] parameterTypes2 = method2.getParameterTypes();
                if (length == parameterTypes2.length) {
                    int i3 = length;
                    do {
                        i3--;
                        if (i3 < 0) {
                            break;
                        }
                    } while (parameterTypes[i3] == parameterTypes2[i3]);
                    if (i3 < 0) {
                        if (declaringClass.isSubtype(method2.getDeclaringClass())) {
                            vector.setElementAt(method, i2);
                        }
                        vector.setElementAt(vector.elementAt(size - 1), i);
                        size--;
                    }
                }
                i2++;
            }
        }
        return size;
    }

    public static PrimProcedure[] getMethods(ObjectType objectType, String str, char c, ClassType classType, Language language) {
        if (objectType == Type.tostring_type) {
            objectType = Type.string_type;
        }
        Filter methodFilter = new MethodFilter(str, 0, 0, classType, c == 'P' ? null : objectType);
        int i = 0;
        boolean z = c == 'P' || "<init>".equals(str);
        Vector vector = new Vector();
        objectType.getMethods(methodFilter, z ? 0 : 2, vector);
        if (!z && (!(objectType instanceof ClassType) || ((ClassType) objectType).isInterface())) {
            Type.pointer_type.getMethods(methodFilter, 0, vector);
        }
        int size = z ? vector.size() : removeRedundantMethods(vector);
        PrimProcedure[] primProcedureArr = new PrimProcedure[size];
        while (true) {
            size--;
            if (size < 0) {
                return primProcedureArr;
            }
            Method method = (Method) vector.elementAt(size);
            if (!z && method.getDeclaringClass() != objectType) {
                Type implementationType = objectType.getImplementationType();
                if (implementationType instanceof ClassType) {
                    method = new Method(method, (ClassType) implementationType);
                }
            }
            primProcedureArr[i] = new PrimProcedure(method, c, language);
            i++;
        }
    }

    public static long selectApplicable(PrimProcedure[] primProcedureArr, Type[] typeArr) {
        int length = primProcedureArr.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int iIsApplicable = primProcedureArr[i].isApplicable(typeArr);
            if (iIsApplicable < 0) {
                int i4 = length - 1;
                PrimProcedure primProcedure = primProcedureArr[i4];
                primProcedureArr[i4] = primProcedureArr[i];
                primProcedureArr[i] = primProcedure;
                length--;
            } else {
                if (iIsApplicable > 0) {
                    PrimProcedure primProcedure2 = primProcedureArr[i2];
                    primProcedureArr[i2] = primProcedureArr[i];
                    primProcedureArr[i] = primProcedure2;
                    i2++;
                } else {
                    i3++;
                }
                i++;
            }
        }
        return (i2 << 32) + i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x002b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0026 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int selectApplicable(gnu.expr.PrimProcedure[] r9, int r10) {
        /*
            int r0 = r9.length
            r1 = 0
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
        L6:
            if (r2 >= r0) goto L38
            r6 = r9[r2]
            int r6 = r6.numArgs()
            int r7 = gnu.mapping.Procedure.minArgs(r6)
            int r6 = gnu.mapping.Procedure.maxArgs(r6)
            if (r10 >= r7) goto L1c
            int r4 = r4 + 1
        L1a:
            r6 = 0
            goto L24
        L1c:
            if (r10 <= r6) goto L23
            if (r6 < 0) goto L23
            int r5 = r5 + 1
            goto L1a
        L23:
            r6 = 1
        L24:
            if (r6 == 0) goto L2b
            int r3 = r3 + 1
            int r2 = r2 + 1
            goto L6
        L2b:
            int r6 = r0 + (-1)
            r7 = r9[r6]
            r8 = r9[r2]
            r9[r6] = r8
            r9[r2] = r7
            int r0 = r0 + (-1)
            goto L6
        L38:
            if (r3 <= 0) goto L3b
            return r3
        L3b:
            if (r4 <= 0) goto L40
            r9 = -983040(0xfffffffffff10000, float:NaN)
            return r9
        L40:
            if (r5 <= 0) goto L45
            r9 = -917504(0xfffffffffff20000, float:NaN)
            return r9
        L45:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.reflect.ClassMethods.selectApplicable(gnu.expr.PrimProcedure[], int):int");
    }

    public static MethodProc apply(ObjectType objectType, String str, char c, Language language) {
        GenericProc genericProc = null;
        PrimProcedure[] methods = getMethods(objectType, str, c, null, language);
        int i = 0;
        PrimProcedure primProcedure = null;
        while (i < methods.length) {
            PrimProcedure primProcedure2 = methods[i];
            if (primProcedure != null && genericProc == null) {
                genericProc = new GenericProc();
                genericProc.add(primProcedure);
            }
            if (genericProc != null) {
                genericProc.add(primProcedure2);
            }
            i++;
            primProcedure = primProcedure2;
        }
        if (genericProc == null) {
            return primProcedure;
        }
        genericProc.setName(objectType.getName() + "." + str);
        return genericProc;
    }

    public static String checkName(Expression expression, boolean z) {
        String string;
        if (!(expression instanceof QuoteExp)) {
            return null;
        }
        Object value = ((QuoteExp) expression).getValue();
        if ((value instanceof FString) || (value instanceof String)) {
            string = value.toString();
        } else {
            if (!(value instanceof Symbol)) {
                return null;
            }
            string = ((Symbol) value).getName();
        }
        return Compilation.isValidJavaName(string) ? string : Compilation.mangleName(string, z);
    }

    public static String checkName(Expression expression) {
        if (!(expression instanceof QuoteExp)) {
            return null;
        }
        Object value = ((QuoteExp) expression).getValue();
        if ((value instanceof FString) || (value instanceof String)) {
            return value.toString();
        }
        if (value instanceof Symbol) {
            return ((Symbol) value).getName();
        }
        return null;
    }
}
