package kawa.standard;

import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.ModuleExp;
import gnu.expr.ScopeExp;
import gnu.lists.Pair;
import java.util.Vector;
import kawa.lang.Syntax;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class define_member_alias extends Syntax {
    public static final define_member_alias define_member_alias;

    static {
        define_member_alias define_member_aliasVar = new define_member_alias();
        define_member_alias = define_member_aliasVar;
        define_member_aliasVar.setName("define-member-alias");
    }

    @Override // kawa.lang.Syntax
    public boolean scanForDefinitions(Pair pair, Vector vector, ScopeExp scopeExp, Translator translator) {
        if ((pair.getCdr() instanceof Pair) && !(translator.currentScope() instanceof ModuleExp)) {
            Pair pair2 = (Pair) pair.getCdr();
            if (pair2.getCar() instanceof String) {
                Declaration declarationAddDeclaration = scopeExp.addDeclaration((String) pair2.getCar(), Compilation.typeSymbol);
                declarationAddDeclaration.setIndirectBinding(true);
                vector.addElement(Translator.makePair(pair, this, Translator.makePair(pair2, declarationAddDeclaration, pair2.getCdr())));
                return true;
            }
        }
        return super.scanForDefinitions(pair, vector, scopeExp, translator);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x006a  */
    @Override // kawa.lang.Syntax
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public gnu.expr.Expression rewriteForm(gnu.lists.Pair r5, kawa.lang.Translator r6) {
        /*
            r4 = this;
            java.lang.Object r5 = r5.getCdr()
            boolean r0 = r5 instanceof gnu.lists.Pair
            if (r0 == 0) goto La2
            gnu.lists.Pair r5 = (gnu.lists.Pair) r5
            java.lang.Object r0 = r5.getCar()
            boolean r0 = r0 instanceof java.lang.String
            if (r0 != 0) goto L1c
            java.lang.Object r0 = r5.getCar()
            boolean r0 = r0 instanceof gnu.expr.Declaration
            if (r0 != 0) goto L1c
            goto La2
        L1c:
            java.lang.Object r0 = r5.getCdr()
            boolean r0 = r0 instanceof gnu.lists.Pair
            if (r0 == 0) goto L8b
            java.lang.Object r0 = r5.getCar()
            boolean r1 = r0 instanceof gnu.expr.Declaration
            if (r1 == 0) goto L33
            gnu.expr.Declaration r0 = (gnu.expr.Declaration) r0
            java.lang.String r0 = r0.getName()
            goto L35
        L33:
            java.lang.String r0 = (java.lang.String) r0
        L35:
            java.lang.Object r5 = r5.getCdr()
            gnu.lists.Pair r5 = (gnu.lists.Pair) r5
            java.lang.Object r1 = r5.getCar()
            gnu.expr.Expression r1 = r6.rewrite(r1)
            java.lang.Object r5 = r5.getCdr()
            gnu.lists.LList r2 = gnu.lists.LList.Empty
            if (r5 != r2) goto L55
            gnu.expr.QuoteExp r5 = new gnu.expr.QuoteExp
            java.lang.String r2 = gnu.expr.Compilation.mangleName(r0)
            r5.<init>(r2)
            goto L6b
        L55:
            boolean r3 = r5 instanceof gnu.lists.Pair
            if (r3 == 0) goto L6a
            gnu.lists.Pair r5 = (gnu.lists.Pair) r5
            java.lang.Object r3 = r5.getCdr()
            if (r3 != r2) goto L6a
            java.lang.Object r5 = r5.getCar()
            gnu.expr.Expression r5 = r6.rewrite(r5)
            goto L6b
        L6a:
            r5 = 0
        L6b:
            if (r5 == 0) goto L8b
            java.lang.String r6 = "gnu.kawa.reflect.ClassMemberConstraint"
            gnu.bytecode.ClassType r6 = gnu.bytecode.ClassType.make(r6)
            gnu.expr.QuoteExp r2 = new gnu.expr.QuoteExp
            r2.<init>(r0)
            r0 = 3
            gnu.expr.Expression[] r0 = new gnu.expr.Expression[r0]
            r3 = 0
            r0[r3] = r2
            r2 = 1
            r0[r2] = r1
            r1 = 2
            r0[r1] = r5
            java.lang.String r5 = "define"
            gnu.expr.ApplyExp r5 = gnu.kawa.reflect.Invoke.makeInvokeStatic(r6, r5, r0)
            return r5
        L8b:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r0 = "invalid syntax for "
            r5.<init>(r0)
            java.lang.String r0 = r4.getName()
            r5.append(r0)
            java.lang.String r5 = r5.toString()
            gnu.expr.Expression r5 = r6.syntaxError(r5)
            return r5
        La2:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r0 = "missing name in "
            r5.<init>(r0)
            java.lang.String r0 = r4.getName()
            r5.append(r0)
            java.lang.String r5 = r5.toString()
            gnu.expr.Expression r5 = r6.syntaxError(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.standard.define_member_alias.rewriteForm(gnu.lists.Pair, kawa.lang.Translator):gnu.expr.Expression");
    }
}
