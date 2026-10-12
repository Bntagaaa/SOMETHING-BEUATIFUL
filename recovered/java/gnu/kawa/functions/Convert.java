package gnu.kawa.functions;

import gnu.bytecode.Type;
import gnu.mapping.Procedure;
import gnu.mapping.Procedure2;
import gnu.mapping.PropertySet;

/* loaded from: classes2.dex */
public class Convert extends Procedure2 {
    public static final Convert as;

    static {
        Convert convert = new Convert();
        as = convert;
        convert.setName("as");
        convert.setProperty(Procedure.validateApplyKey, "gnu.kawa.functions.CompileMisc:validateApplyConvert");
        Procedure.compilerKey.set((PropertySet) convert, "*gnu.kawa.functions.CompileMisc:forConvert");
    }

    public static Convert getInstance() {
        return as;
    }

    @Override // gnu.mapping.Procedure2, gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) {
        Type typeMake;
        if (obj instanceof Class) {
            typeMake = Type.make((Class) obj);
        } else {
            typeMake = (Type) obj;
        }
        return typeMake.coerceFromObject(obj2);
    }
}
