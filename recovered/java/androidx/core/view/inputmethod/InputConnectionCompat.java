package androidx.core.view.inputmethod;

import android.annotation.SuppressLint;
import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;

@SuppressLint({"PrivateConstructorForUtilityClass"})
/* loaded from: classes.dex */
public final class InputConnectionCompat {
    public static final int INPUT_CONTENT_GRANT_READ_URI_PERMISSION = 1;

    public interface OnCommitContentListener {
        boolean onCommitContent(@NonNull InputContentInfoCompat inputContentInfoCompat, int i, @Nullable Bundle bundle);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean commitContent(@androidx.annotation.NonNull android.view.inputmethod.InputConnection r7, @androidx.annotation.NonNull android.view.inputmethod.EditorInfo r8, @androidx.annotation.NonNull androidx.core.view.inputmethod.InputContentInfoCompat r9, int r10, @androidx.annotation.Nullable android.os.Bundle r11) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 25
            if (r0 < r1) goto L13
            java.lang.Object r8 = r9.unwrap()
            android.view.inputmethod.InputContentInfo r8 = androidx.core.content.pm.b.c(r8)
            boolean r7 = androidx.core.view.inputmethod.InputConnectionCompat.c.a(r7, r8, r10, r11)
            return r7
        L13:
            r2 = 2
            r3 = 3
            r4 = 4
            r5 = 1
            r6 = 0
            if (r0 < r1) goto L1c
            r8 = 1
            goto L3d
        L1c:
            android.os.Bundle r0 = r8.extras
            if (r0 != 0) goto L22
        L20:
            r8 = 0
            goto L3d
        L22:
            java.lang.String r1 = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"
            boolean r0 = r0.containsKey(r1)
            android.os.Bundle r8 = r8.extras
            java.lang.String r1 = "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"
            boolean r8 = r8.containsKey(r1)
            if (r0 == 0) goto L36
            if (r8 == 0) goto L36
            r8 = 4
            goto L3d
        L36:
            if (r0 == 0) goto L3a
            r8 = 3
            goto L3d
        L3a:
            if (r8 == 0) goto L20
            r8 = 2
        L3d:
            if (r8 == r2) goto L45
            if (r8 == r3) goto L44
            if (r8 == r4) goto L44
            return r6
        L44:
            r5 = 0
        L45:
            android.os.Bundle r8 = new android.os.Bundle
            r8.<init>()
            if (r5 == 0) goto L4f
            java.lang.String r0 = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"
            goto L51
        L4f:
            java.lang.String r0 = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"
        L51:
            android.net.Uri r1 = r9.getContentUri()
            r8.putParcelable(r0, r1)
            if (r5 == 0) goto L5d
            java.lang.String r0 = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"
            goto L5f
        L5d:
            java.lang.String r0 = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"
        L5f:
            android.content.ClipDescription r1 = r9.getDescription()
            r8.putParcelable(r0, r1)
            if (r5 == 0) goto L6b
            java.lang.String r0 = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"
            goto L6d
        L6b:
            java.lang.String r0 = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"
        L6d:
            android.net.Uri r9 = r9.getLinkUri()
            r8.putParcelable(r0, r9)
            if (r5 == 0) goto L79
            java.lang.String r9 = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"
            goto L7b
        L79:
            java.lang.String r9 = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"
        L7b:
            r8.putInt(r9, r10)
            if (r5 == 0) goto L83
            java.lang.String r9 = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"
            goto L85
        L83:
            java.lang.String r9 = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"
        L85:
            r8.putParcelable(r9, r11)
            if (r5 == 0) goto L8d
            java.lang.String r9 = "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"
            goto L8f
        L8d:
            java.lang.String r9 = "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"
        L8f:
            boolean r7 = r7.performPrivateCommand(r9, r8)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.view.inputmethod.InputConnectionCompat.commitContent(android.view.inputmethod.InputConnection, android.view.inputmethod.EditorInfo, androidx.core.view.inputmethod.InputContentInfoCompat, int, android.os.Bundle):boolean");
    }

    @NonNull
    @Deprecated
    public static InputConnection createWrapper(@NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo, @NonNull OnCommitContentListener onCommitContentListener) {
        ObjectsCompat.requireNonNull(inputConnection, "inputConnection must be non-null");
        ObjectsCompat.requireNonNull(editorInfo, "editorInfo must be non-null");
        ObjectsCompat.requireNonNull(onCommitContentListener, "onCommitContentListener must be non-null");
        if (Build.VERSION.SDK_INT >= 25) {
            return new a(inputConnection, onCommitContentListener);
        }
        return EditorInfoCompat.getContentMimeTypes(editorInfo).length == 0 ? inputConnection : new b(inputConnection, onCommitContentListener);
    }

    public class a extends InputConnectionWrapper {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ OnCommitContentListener f1401a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(InputConnection inputConnection, OnCommitContentListener onCommitContentListener) {
            super(inputConnection, false);
            this.f1401a = onCommitContentListener;
        }

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
            if (this.f1401a.onCommitContent(InputContentInfoCompat.wrap(inputContentInfo), i, bundle)) {
                return true;
            }
            return super.commitContent(inputContentInfo, i, bundle);
        }
    }

    public class b extends InputConnectionWrapper {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ OnCommitContentListener f1402a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(InputConnection inputConnection, OnCommitContentListener onCommitContentListener) {
            super(inputConnection, false);
            this.f1402a = onCommitContentListener;
        }

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public boolean performPrivateCommand(String str, Bundle bundle) throws Throwable {
            boolean z;
            String str2;
            ResultReceiver resultReceiver;
            String str3;
            String str4;
            String str5;
            String str6;
            String str7;
            OnCommitContentListener onCommitContentListener = this.f1402a;
            boolean zOnCommitContent = false;
            zOnCommitContent = false;
            zOnCommitContent = false;
            zOnCommitContent = false;
            if (bundle != null) {
                if (!TextUtils.equals("androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT", str)) {
                    z = TextUtils.equals("android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT", str);
                }
                if (z) {
                    str2 = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER";
                } else {
                    str2 = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER";
                }
                try {
                    resultReceiver = (ResultReceiver) bundle.getParcelable(str2);
                    if (z) {
                        str3 = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI";
                    } else {
                        str3 = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI";
                    }
                    try {
                        Uri uri = (Uri) bundle.getParcelable(str3);
                        if (z) {
                            str4 = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION";
                        } else {
                            str4 = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION";
                        }
                        ClipDescription clipDescription = (ClipDescription) bundle.getParcelable(str4);
                        if (z) {
                            str5 = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI";
                        } else {
                            str5 = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI";
                        }
                        Uri uri2 = (Uri) bundle.getParcelable(str5);
                        if (z) {
                            str6 = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS";
                        } else {
                            str6 = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS";
                        }
                        int i = bundle.getInt(str6);
                        if (z) {
                            str7 = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS";
                        } else {
                            str7 = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS";
                        }
                        Bundle bundle2 = (Bundle) bundle.getParcelable(str7);
                        if (uri != null && clipDescription != null) {
                            zOnCommitContent = onCommitContentListener.onCommitContent(new InputContentInfoCompat(uri, clipDescription, uri2), i, bundle2);
                        }
                        if (resultReceiver != null) {
                            resultReceiver.send(zOnCommitContent ? 1 : 0, null);
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (resultReceiver != null) {
                            resultReceiver.send(0, null);
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    resultReceiver = null;
                }
            }
            if (zOnCommitContent) {
                return true;
            }
            return super.performPrivateCommand(str, bundle);
        }
    }

    @NonNull
    public static InputConnection createWrapper(@NonNull View view, @NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
        Preconditions.checkNotNull(view);
        return createWrapper(inputConnection, editorInfo, new androidx.core.view.inputmethod.a(view));
    }

    @Deprecated
    public InputConnectionCompat() {
    }

    @RequiresApi(25)
    public static class c {
        private c() {
        }

        @DoNotInline
        public static boolean a(InputConnection inputConnection, InputContentInfo inputContentInfo, int i, Bundle bundle) {
            return inputConnection.commitContent(inputContentInfo, i, bundle);
        }
    }
}
