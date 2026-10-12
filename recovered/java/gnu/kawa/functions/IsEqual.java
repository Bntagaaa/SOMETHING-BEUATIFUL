package gnu.kawa.functions;

import gnu.expr.Language;
import gnu.lists.FVector;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.Procedure2;

/* loaded from: classes2.dex */
public class IsEqual extends Procedure2 {
    Language language;

    public IsEqual(Language language, String str) {
        this.language = language;
        setName(str);
    }

    public static boolean numberEquals(Number number, Number number2) {
        boolean zIsExact = Arithmetic.isExact(number);
        boolean zIsExact2 = Arithmetic.isExact(number2);
        if (zIsExact && zIsExact2) {
            return NumberCompare.$Eq(number, number2);
        }
        return zIsExact == zIsExact2 && number.equals(number2);
    }

    public static boolean apply(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        if ((obj instanceof Number) && (obj2 instanceof Number)) {
            return numberEquals((Number) obj, (Number) obj2);
        }
        if (obj instanceof CharSequence) {
            if (!(obj2 instanceof CharSequence)) {
                return false;
            }
            CharSequence charSequence = (CharSequence) obj;
            CharSequence charSequence2 = (CharSequence) obj2;
            int length = charSequence.length();
            if (length != charSequence2.length()) {
                return false;
            }
            do {
                length--;
                if (length < 0) {
                    return true;
                }
            } while (charSequence.charAt(length) == charSequence2.charAt(length));
            return false;
        }
        if (obj instanceof FVector) {
            if (!(obj2 instanceof FVector)) {
                return false;
            }
            FVector fVector = (FVector) obj;
            FVector fVector2 = (FVector) obj2;
            int i = fVector.size;
            Object[] objArr = fVector2.data;
            if (objArr == null || fVector2.size != i) {
                return false;
            }
            Object[] objArr2 = fVector.data;
            do {
                i--;
                if (i < 0) {
                    return true;
                }
            } while (apply(objArr2[i], objArr[i]));
            return false;
        }
        if (obj instanceof LList) {
            if ((obj instanceof Pair) && (obj2 instanceof Pair)) {
                do {
                    Pair pair = (Pair) obj;
                    Pair pair2 = (Pair) obj2;
                    if (!apply(pair.getCar(), pair2.getCar())) {
                        return false;
                    }
                    obj = pair.getCdr();
                    obj2 = pair2.getCdr();
                    if (obj != obj2) {
                        if (obj != null && obj2 != null) {
                            if (!(obj instanceof Pair)) {
                                break;
                            }
                        }
                    } else {
                        return true;
                    }
                } while (obj2 instanceof Pair);
                return apply(obj, obj2);
            }
            return false;
        }
        return obj.equals(obj2);
    }

    @Override // gnu.mapping.Procedure2, gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) {
        return this.language.booleanObject(apply(obj, obj2));
    }
}
