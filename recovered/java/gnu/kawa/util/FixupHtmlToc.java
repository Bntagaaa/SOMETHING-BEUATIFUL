package gnu.kawa.util;

import java.io.File;

/* loaded from: classes2.dex */
public class FixupHtmlToc {
    static FileInfo[] argFiles;

    public static void main(String[] strArr) {
        try {
            argFiles = new FileInfo[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                FileInfo fileInfoFind = FileInfo.find(new File(strArr[i]));
                fileInfoFind.writeNeeded = true;
                argFiles[i] = fileInfoFind;
            }
            for (int i2 = 0; i2 < strArr.length; i2++) {
                argFiles[i2].scan();
                argFiles[i2].write();
            }
        } catch (Throwable th) {
            System.err.println("caught " + th);
            th.printStackTrace();
        }
    }
}
