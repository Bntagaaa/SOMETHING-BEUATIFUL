package gnu.kawa.lispexpr;

import gnu.mapping.Procedure;
import gnu.text.Char;
import gnu.text.Lexer;
import gnu.text.SyntaxException;
import java.io.IOException;

/* loaded from: classes2.dex */
public class ReaderMacro extends ReaderMisc {
    Procedure procedure;

    public ReaderMacro(Procedure procedure, boolean z) {
        super(z ? 6 : 5);
        this.procedure = procedure;
    }

    public ReaderMacro(Procedure procedure) {
        super(5);
        this.procedure = procedure;
    }

    public boolean isNonTerminating() {
        return this.kind == 6;
    }

    public Procedure getProcedure() {
        return this.procedure;
    }

    @Override // gnu.kawa.lispexpr.ReadTableEntry
    public Object read(Lexer lexer, int i, int i2) throws SyntaxException, IOException {
        try {
            return this.procedure.apply2(lexer.getPort(), Char.make(i));
        } catch (SyntaxException e) {
            throw e;
        } catch (IOException e2) {
            throw e2;
        } catch (Throwable th) {
            lexer.fatal("reader macro '" + this.procedure + "' threw: " + th);
            return null;
        }
    }
}
