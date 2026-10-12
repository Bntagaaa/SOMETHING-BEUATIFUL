package kawa.standard;

import gnu.expr.Expression;
import kawa.lang.Syntax;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class define_alias extends Syntax {
    public static final define_alias define_alias;

    static {
        define_alias define_aliasVar = new define_alias();
        define_alias = define_aliasVar;
        define_aliasVar.setName("define-alias");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0084  */
    @Override // kawa.lang.Syntax
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanForDefinitions(gnu.lists.Pair r8, java.util.Vector r9, gnu.expr.ScopeExp r10, kawa.lang.Translator r11) {
        /*
            r7 = this;
            java.lang.Object r8 = r8.getCdr()
            r0 = 0
        L5:
            boolean r1 = r8 instanceof kawa.lang.SyntaxForm
            if (r1 == 0) goto L11
            r0 = r8
            kawa.lang.SyntaxForm r0 = (kawa.lang.SyntaxForm) r0
            java.lang.Object r8 = r0.getDatum()
            goto L5
        L11:
            boolean r1 = r8 instanceof gnu.lists.Pair
            r2 = 0
            if (r1 == 0) goto Lb8
            gnu.lists.Pair r8 = (gnu.lists.Pair) r8
            java.lang.Object r1 = r8.getCar()
            r3 = r0
        L1d:
            boolean r4 = r1 instanceof kawa.lang.SyntaxForm
            if (r4 == 0) goto L29
            r3 = r1
            kawa.lang.SyntaxForm r3 = (kawa.lang.SyntaxForm) r3
            java.lang.Object r1 = r3.getDatum()
            goto L1d
        L29:
            java.lang.Object r8 = r8.getCdr()
        L2d:
            boolean r4 = r8 instanceof kawa.lang.SyntaxForm
            if (r4 == 0) goto L39
            r0 = r8
            kawa.lang.SyntaxForm r0 = (kawa.lang.SyntaxForm) r0
            java.lang.Object r8 = r0.getDatum()
            goto L2d
        L39:
            boolean r4 = r1 instanceof java.lang.String
            if (r4 != 0) goto L41
            boolean r4 = r1 instanceof gnu.mapping.Symbol
            if (r4 == 0) goto Lb8
        L41:
            boolean r4 = r8 instanceof gnu.lists.Pair
            if (r4 == 0) goto Lb8
            gnu.lists.Pair r8 = (gnu.lists.Pair) r8
            java.lang.Object r4 = r8.getCdr()
            gnu.lists.LList r5 = gnu.lists.LList.Empty
            if (r4 != r5) goto Lb8
            gnu.expr.Declaration r10 = r11.define(r1, r3, r10)
            r1 = 1
            r10.setIndirectBinding(r1)
            r10.setAlias(r1)
            gnu.expr.Expression r8 = r11.rewrite_car(r8, r0)
            boolean r0 = r8 instanceof gnu.expr.ReferenceExp
            r3 = 16384(0x4000, double:8.095E-320)
            if (r0 == 0) goto L88
            r0 = r8
            gnu.expr.ReferenceExp r0 = (gnu.expr.ReferenceExp) r0
            gnu.expr.Declaration r5 = r0.getBinding()
            gnu.expr.Declaration r5 = gnu.expr.Declaration.followAliases(r5)
            if (r5 == 0) goto L84
            gnu.expr.Expression r5 = r5.getValue()
            boolean r6 = r5 instanceof gnu.expr.ClassExp
            if (r6 != 0) goto L7d
            boolean r5 = r5 instanceof gnu.expr.ModuleExp
            if (r5 == 0) goto L84
        L7d:
            r10.setIndirectBinding(r2)
            r10.setFlag(r3)
            goto La0
        L84:
            r0.setDontDereference(r1)
            goto La0
        L88:
            boolean r0 = r8 instanceof gnu.expr.QuoteExp
            if (r0 == 0) goto L93
            r10.setIndirectBinding(r2)
            r10.setFlag(r3)
            goto La0
        L93:
            gnu.expr.Expression r8 = kawa.standard.location.rewrite(r8, r11)
            java.lang.String r0 = "gnu.mapping.Location"
            gnu.bytecode.ClassType r0 = gnu.bytecode.ClassType.make(r0)
            r10.setType(r0)
        La0:
            r11.mustCompileHere()
            r11.push(r10)
            gnu.expr.SetExp r0 = new gnu.expr.SetExp
            r0.<init>(r10, r8)
            r11.setLineOf(r0)
            r10.noteValue(r8)
            r0.setDefining(r1)
            r9.addElement(r0)
            return r1
        Lb8:
            r8 = 101(0x65, float:1.42E-43)
            java.lang.String r9 = "invalid syntax for define-alias"
            r11.error(r8, r9)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.standard.define_alias.scanForDefinitions(gnu.lists.Pair, java.util.Vector, gnu.expr.ScopeExp, kawa.lang.Translator):boolean");
    }

    @Override // kawa.lang.Syntax
    public Expression rewrite(Object obj, Translator translator) {
        return translator.syntaxError("define-alias is only allowed in a <body>");
    }
}
