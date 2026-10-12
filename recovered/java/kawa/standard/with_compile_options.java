package kawa.standard;

import gnu.expr.ScopeExp;
import gnu.lists.LList;
import gnu.lists.Pair;
import java.util.Stack;
import kawa.lang.Syntax;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class with_compile_options extends Syntax {
    public static final with_compile_options with_compile_options;

    static {
        with_compile_options with_compile_optionsVar = new with_compile_options();
        with_compile_options = with_compile_optionsVar;
        with_compile_optionsVar.setName("with-compile-options");
    }

    @Override // kawa.lang.Syntax
    public void scanForm(Pair pair, ScopeExp scopeExp, Translator translator) {
        Stack stack = new Stack();
        Object options = getOptions(pair.getCdr(), stack, this, translator);
        if (options == LList.Empty) {
            return;
        }
        if (options == pair.getCdr()) {
            translator.scanBody(options, scopeExp, false);
            return;
        }
        Pair pair2 = new Pair(stack, translator.scanBody(options, scopeExp, true));
        translator.currentOptions.popOptionValues(stack);
        translator.formStack.add(Translator.makePair(pair, pair.getCar(), pair2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0027, code lost:
    
        if (r1 != false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0029, code lost:
    
        r12.error('e', "no option keyword in " + r11.getName());
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0042, code lost:
    
        return kawa.lang.Translator.wrapSyntax(r9, r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object getOptions(java.lang.Object r9, java.util.Stack r10, kawa.lang.Syntax r11, kawa.lang.Translator r12) {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.standard.with_compile_options.getOptions(java.lang.Object, java.util.Stack, kawa.lang.Syntax, kawa.lang.Translator):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0023  */
    @Override // kawa.lang.Syntax
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public gnu.expr.Expression rewriteForm(gnu.lists.Pair r6, kawa.lang.Translator r7) {
        /*
            r5 = this;
            java.lang.Object r6 = r6.getCdr()
            boolean r0 = r6 instanceof gnu.lists.Pair
            if (r0 == 0) goto L23
            r0 = r6
            gnu.lists.Pair r0 = (gnu.lists.Pair) r0
            java.lang.Object r1 = r0.getCar()
            boolean r1 = r1 instanceof java.util.Stack
            if (r1 == 0) goto L23
            java.lang.Object r6 = r0.getCar()
            java.util.Stack r6 = (java.util.Stack) r6
            java.lang.Object r0 = r0.getCdr()
            gnu.text.Options r1 = r7.currentOptions
            r1.pushOptionValues(r6)
            goto L2f
        L23:
            java.util.Stack r0 = new java.util.Stack
            r0.<init>()
            java.lang.Object r6 = getOptions(r6, r0, r5, r7)
            r4 = r0
            r0 = r6
            r6 = r4
        L2f:
            gnu.expr.Expression r0 = r7.rewrite_body(r0)     // Catch: java.lang.Throwable -> L3a
            boolean r1 = r0 instanceof gnu.expr.BeginExp     // Catch: java.lang.Throwable -> L3a
            if (r1 == 0) goto L3c
            gnu.expr.BeginExp r0 = (gnu.expr.BeginExp) r0     // Catch: java.lang.Throwable -> L3a
            goto L48
        L3a:
            r0 = move-exception
            goto L51
        L3c:
            gnu.expr.BeginExp r1 = new gnu.expr.BeginExp     // Catch: java.lang.Throwable -> L3a
            r2 = 1
            gnu.expr.Expression[] r2 = new gnu.expr.Expression[r2]     // Catch: java.lang.Throwable -> L3a
            r3 = 0
            r2[r3] = r0     // Catch: java.lang.Throwable -> L3a
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L3a
            r0 = r1
        L48:
            r0.setCompileOptions(r6)     // Catch: java.lang.Throwable -> L3a
            gnu.text.Options r7 = r7.currentOptions
            r7.popOptionValues(r6)
            return r0
        L51:
            gnu.text.Options r7 = r7.currentOptions
            r7.popOptionValues(r6)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.standard.with_compile_options.rewriteForm(gnu.lists.Pair, kawa.lang.Translator):gnu.expr.Expression");
    }
}
