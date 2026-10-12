package gnu.kawa.xml;

import gnu.bytecode.ClassType;
import gnu.bytecode.Method;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.ConsumerTarget;
import gnu.expr.Expression;
import gnu.expr.Inlineable;
import gnu.expr.Target;
import gnu.mapping.Procedure1;
import gnu.mapping.Values;

/* loaded from: classes2.dex */
public class CoerceNodes extends Procedure1 implements Inlineable {
    public static final CoerceNodes coerceNodes = new CoerceNodes();
    public static final Method makeNodesMethod;
    public static final ClassType typeNodes;

    static {
        ClassType classTypeMake = ClassType.make("gnu.kawa.xml.Nodes");
        typeNodes = classTypeMake;
        makeNodesMethod = classTypeMake.getDeclaredMethod("<init>", 0);
    }

    @Override // gnu.mapping.Procedure1, gnu.mapping.Procedure
    public Object apply1(Object obj) {
        Nodes nodes = new Nodes();
        Values.writeValues(obj, nodes);
        return nodes;
    }

    @Override // gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        Expression[] args = applyExp.getArgs();
        if (args.length != 1) {
            ApplyExp.compile(applyExp, compilation, target);
        } else {
            ConsumerTarget.compileUsingConsumer(args[0], compilation, target, makeNodesMethod, null);
        }
    }

    @Override // gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        return typeNodes;
    }
}
