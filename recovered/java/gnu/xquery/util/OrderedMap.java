package gnu.xquery.util;

import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.Expression;
import gnu.expr.Inlineable;
import gnu.expr.Target;
import gnu.mapping.CallContext;
import gnu.mapping.MethodProc;
import gnu.mapping.Procedure;
import gnu.mapping.Values;

/* loaded from: classes2.dex */
public class OrderedMap extends MethodProc implements Inlineable {
    public static final OrderedMap orderedMap;

    public static Object[] makeTuple$V(Object[] objArr) {
        return objArr;
    }

    static {
        OrderedMap orderedMap2 = new OrderedMap();
        orderedMap = orderedMap2;
        orderedMap2.setProperty(Procedure.validateApplyKey, "gnu.xquery.util.CompileMisc:validateApplyOrderedMap");
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        OrderedTuples orderedTuplesMake$V;
        Object[] args = callContext.getArgs();
        Object obj = args[0];
        if (args.length == 2) {
            orderedTuplesMake$V = (OrderedTuples) args[1];
        } else {
            int length = args.length - 2;
            Object[] objArr = new Object[length];
            System.arraycopy(args, 2, objArr, 0, length);
            orderedTuplesMake$V = OrderedTuples.make$V((Procedure) args[1], objArr);
        }
        Values.writeValues(obj, orderedTuplesMake$V);
        orderedTuplesMake$V.run$X(callContext);
    }

    @Override // gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        CompileMisc.compileOrderedMap(applyExp, compilation, target, this);
    }

    @Override // gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        return Type.pointer_type;
    }
}
