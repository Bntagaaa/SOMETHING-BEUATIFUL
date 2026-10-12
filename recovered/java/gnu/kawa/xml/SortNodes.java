package gnu.kawa.xml;

import gnu.bytecode.ClassType;
import gnu.bytecode.Method;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.ConsumerTarget;
import gnu.expr.Expression;
import gnu.expr.Inlineable;
import gnu.expr.StackTarget;
import gnu.expr.Target;
import gnu.mapping.Procedure1;
import gnu.mapping.Values;

/* loaded from: classes2.dex */
public class SortNodes extends Procedure1 implements Inlineable {
    public static final Method canonicalizeMethod;
    public static final Method makeSortedNodesMethod;
    public static final SortNodes sortNodes = new SortNodes();
    public static final ClassType typeSortedNodes;

    static {
        ClassType classTypeMake = ClassType.make("gnu.kawa.xml.SortedNodes");
        typeSortedNodes = classTypeMake;
        makeSortedNodesMethod = classTypeMake.getDeclaredMethod("<init>", 0);
        canonicalizeMethod = Compilation.typeValues.getDeclaredMethod("canonicalize", 0);
    }

    @Override // gnu.mapping.Procedure1, gnu.mapping.Procedure
    public Object apply1(Object obj) {
        SortedNodes sortedNodes = new SortedNodes();
        Values.writeValues(obj, sortedNodes);
        int i = sortedNodes.count;
        if (i > 1) {
            return sortedNodes;
        }
        if (i == 0) {
            return Values.empty;
        }
        return sortedNodes.get(0);
    }

    @Override // gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        Expression[] args = applyExp.getArgs();
        if (args.length != 1 || !compilation.mustCompile) {
            ApplyExp.compile(applyExp, compilation, target);
        } else {
            ConsumerTarget.compileUsingConsumer(args[0], compilation, target, makeSortedNodesMethod, ((target instanceof ConsumerTarget) || ((target instanceof StackTarget) && target.getType().isSubtype(Compilation.typeValues))) ? null : canonicalizeMethod);
        }
    }

    @Override // gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        return Compilation.typeObject;
    }
}
