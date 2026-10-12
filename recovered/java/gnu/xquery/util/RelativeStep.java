package gnu.xquery.util;

import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Expression;
import gnu.expr.Inlineable;
import gnu.expr.QuoteExp;
import gnu.kawa.xml.Nodes;
import gnu.kawa.xml.TreeScanner;
import gnu.lists.Consumer;
import gnu.mapping.CallContext;
import gnu.mapping.MethodProc;
import gnu.mapping.Procedure;
import gnu.mapping.Values;
import gnu.math.IntNum;

/* loaded from: classes2.dex */
public class RelativeStep extends MethodProc implements Inlineable {
    public static final RelativeStep relativeStep = new RelativeStep();

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return 8194;
    }

    public RelativeStep() {
        setProperty(Procedure.validateApplyKey, "gnu.xquery.util.CompileMisc:validateApplyRelativeStep");
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        Nodes nodes;
        Object nextArg = callContext.getNextArg();
        Procedure procedure = (Procedure) callContext.getNextArg();
        Consumer consumer = callContext.consumer;
        if (nextArg instanceof Nodes) {
            nodes = (Nodes) nextArg;
        } else {
            Nodes nodes2 = new Nodes();
            Values.writeValues(nextArg, nodes2);
            nodes = nodes2;
        }
        int size = nodes.size();
        IntNum intNumMake = IntNum.make(size);
        RelativeStepFilter relativeStepFilter = new RelativeStepFilter(consumer);
        int iNextPos = 0;
        for (int i = 1; i <= size; i++) {
            iNextPos = nodes.nextPos(iNextPos);
            procedure.check3(nodes.getPosPrevious(iNextPos), IntNum.make(i), intNumMake, callContext);
            Values.writeValues(callContext.runUntilValue(), relativeStepFilter);
        }
        relativeStepFilter.finish();
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x006a  */
    @Override // gnu.expr.Inlineable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void compile(gnu.expr.ApplyExp r15, gnu.expr.Compilation r16, gnu.expr.Target r17) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.util.RelativeStep.compile(gnu.expr.ApplyExp, gnu.expr.Compilation, gnu.expr.Target):void");
    }

    @Override // gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        return Type.pointer_type;
    }

    public static TreeScanner extractStep(Expression expression) {
        while (expression instanceof ApplyExp) {
            ApplyExp applyExp = (ApplyExp) expression;
            Expression function = applyExp.getFunction();
            if (function instanceof QuoteExp) {
                Object value = ((QuoteExp) function).getValue();
                if (value instanceof TreeScanner) {
                    return (TreeScanner) value;
                }
                if (value instanceof ValuesFilter) {
                    expression = applyExp.getArgs()[0];
                }
            }
            return null;
        }
        return null;
    }
}
