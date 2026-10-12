package gnu.kawa.functions;

import java.io.File;
import java.io.IOException;

/* loaded from: classes2.dex */
public class FileUtils {
    public static File createTempFile(String str) throws IOException {
        String strSubstring;
        File file;
        if (str == null) {
            str = "kawa~d.tmp";
        }
        int iIndexOf = str.indexOf(126);
        if (iIndexOf < 0) {
            strSubstring = ".tmp";
        } else {
            String strSubstring2 = str.substring(0, iIndexOf);
            strSubstring = str.substring(iIndexOf + 2);
            str = strSubstring2;
        }
        int iIndexOf2 = str.indexOf(File.separatorChar);
        if (iIndexOf2 >= 0) {
            file = new File(str.substring(0, iIndexOf2));
            str = str.substring(iIndexOf2 + 1);
        } else {
            file = null;
        }
        return File.createTempFile(str, strSubstring, file);
    }
}
