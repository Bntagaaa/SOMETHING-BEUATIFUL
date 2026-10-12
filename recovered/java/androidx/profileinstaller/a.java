package androidx.profileinstaller;

import androidx.annotation.RequiresApi;
import java.io.File;

/* loaded from: classes.dex */
class a {
    private a() {
    }

    public static boolean a(File file) {
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                return false;
            }
            boolean z = true;
            for (File file2 : fileArrListFiles) {
                z = a(file2) && z;
            }
            return z;
        }
        file.delete();
        return true;
    }

    @RequiresApi(api = 21)
    /* renamed from: androidx.profileinstaller.a$a, reason: collision with other inner class name */
    public static class C0028a {
        private C0028a() {
        }
    }

    @RequiresApi(api = 24)
    public static class b {
        private b() {
        }
    }
}
