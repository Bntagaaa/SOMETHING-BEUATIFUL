package gnu.kawa.functions;

import gnu.expr.Language;
import gnu.mapping.Procedure;
import gnu.mapping.Procedure2;
import gnu.mapping.Symbol;
import gnu.text.Char;

/* loaded from: classes2.dex */
public class IsEqv extends Procedure2 {
    IsEq isEq;
    Language language;

    public IsEqv(Language language, String str, IsEq isEq) {
        this.language = language;
        this.isEq = isEq;
        setName(str);
        setProperty(Procedure.validateApplyKey, "gnu.kawa.functions.CompilationHelpers:validateIsEqv");
    }

    public static boolean apply(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if ((obj instanceof Number) && (obj2 instanceof Number)) {
            return IsEqual.numberEquals((Number) obj, (Number) obj2);
        }
        if ((obj instanceof Char) || (obj instanceof Symbol)) {
            return obj.equals(obj2);
        }
        return false;
    }

    @Override // gnu.mapping.Procedure2, gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) {
        return this.language.booleanObject(apply(obj, obj2));
    }
}
