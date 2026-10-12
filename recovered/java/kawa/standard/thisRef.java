package kawa.standard;

import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.LambdaExp;
import gnu.expr.ThisExp;
import gnu.lists.LList;
import gnu.lists.Pair;
import kawa.lang.Syntax;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class thisRef extends Syntax {
    public static final thisRef thisSyntax;

    static {
        thisRef thisref = new thisRef();
        thisSyntax = thisref;
        thisref.setName("this");
    }

    @Override // kawa.lang.Syntax
    public Expression rewriteForm(Pair pair, Translator translator) {
        Declaration declaration;
        if (pair.getCdr() == LList.Empty) {
            LambdaExp lambdaExp = translator.curMethodLambda;
            Declaration declaration2 = null;
            Declaration declarationFirstDecl = lambdaExp == null ? null : lambdaExp.firstDecl();
            if (declarationFirstDecl != null && declarationFirstDecl.isThisParameter()) {
                declaration2 = declarationFirstDecl;
            } else if (lambdaExp == null || (declaration = lambdaExp.nameDecl) == null) {
                translator.error('e', "use of 'this' not in a named method");
            } else if (declaration.isStatic()) {
                translator.error('e', "use of 'this' in a static method");
            } else {
                Declaration declaration3 = new Declaration(ThisExp.THIS_NAME);
                lambdaExp.add(null, declaration3);
                lambdaExp.nameDecl.setFlag(4096L);
                declaration2 = declaration3;
            }
            return new ThisExp(declaration2);
        }
        return translator.syntaxError("this with parameter not implemented");
    }
}
