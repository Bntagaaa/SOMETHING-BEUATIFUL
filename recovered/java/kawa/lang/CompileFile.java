package kawa.lang;

import _COROUTINE.a;
import gnu.expr.Compilation;
import gnu.expr.Language;
import gnu.mapping.InPort;
import gnu.mapping.WrappedException;
import gnu.text.SourceMessages;
import gnu.text.SyntaxException;
import java.io.FileNotFoundException;
import java.io.IOException;

/* loaded from: classes2.dex */
public class CompileFile {
    public static final Compilation read(String str, SourceMessages sourceMessages) throws SyntaxException, IOException {
        try {
            InPort inPortOpenFile = InPort.openFile(str);
            Compilation compilation = read(inPortOpenFile, sourceMessages);
            inPortOpenFile.close();
            return compilation;
        } catch (FileNotFoundException e) {
            throw new WrappedException(a.i("compile-file: file not found: ", str), e);
        } catch (IOException e2) {
            throw new WrappedException(a.i("compile-file: read-error: ", str), e2);
        }
    }

    public static final Compilation read(InPort inPort, SourceMessages sourceMessages) throws SyntaxException, IOException {
        return Language.getDefaultLanguage().parse(inPort, sourceMessages, 0);
    }
}
