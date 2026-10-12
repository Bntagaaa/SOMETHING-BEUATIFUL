package gnu.xquery.util;

import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.Target;
import gnu.kawa.reflect.InstanceOf;
import gnu.kawa.xml.XDataType;
import gnu.mapping.Procedure;
import gnu.xquery.lang.XQuery;

/* loaded from: classes2.dex */
public class CastableAs extends InstanceOf {
    public static CastableAs castableAs = new CastableAs();

    public CastableAs() {
        super(XQuery.getInstance(), "castable as");
        setProperty(Procedure.validateApplyKey, "gnu.xquery.util.CompileMisc:validateApplyCastableAs");
    }

    @Override // gnu.kawa.reflect.InstanceOf, gnu.mapping.Procedure2, gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) {
        boolean zIsInstance;
        Type typeAsType = this.language.asType(obj2);
        if (typeAsType instanceof XDataType) {
            zIsInstance = ((XDataType) typeAsType).castable(obj);
        } else {
            zIsInstance = typeAsType.isInstance(obj);
        }
        return this.language.booleanObject(zIsInstance);
    }

    @Override // gnu.kawa.reflect.InstanceOf, gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        ApplyExp.compile(applyExp, compilation, target);
    }
}
