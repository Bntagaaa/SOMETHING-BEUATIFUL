package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.util.Base64;
import android.widget.Toast;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.common.net.HttpHeaders;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;

@UsesPermissions(permissionNames = "android.permission.INTERNET")
@DesignerComponent(category = ComponentCategory.EXPERIMENTAL, description = "A non-visible component that provide assess to the GoogleDrive storage. You can upload your files like Image,  Videos, Audios & Docs etc to your google drive", iconName = "images/niotronGoogleDrive.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronGoogleDrive extends AndroidNonvisibleComponent {
    private static String mfileName = null;
    private static String mfolderId = null;
    private static String mformat = null;
    private static String mimage = null;
    private static String response = "debug";
    private static String url = null;
    private static String urlParameters = "";
    private Activity activity;
    private Context context;
    private Handler mainHandler;
    private int responseCode;

    public NiotronGoogleDrive(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.mainHandler = new Handler();
        this.context = componentContainer.$context();
        this.activity = componentContainer.$context();
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set Google Drive Folder ID")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXT)
    public void FolderID(String str) {
        mfolderId = str;
    }

    @SimpleProperty(description = "Returns the folder ID")
    public String FolderID() {
        return mfolderId;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set Google Drive Server Url")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXT)
    public void ServerURL(String str) {
        url = str;
    }

    @SimpleProperty(description = "Returns Google Drive Server Url")
    public String ServerURL() {
        return url;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set File Name/Title")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXT)
    public void FileName(String str) {
        if (str.contains(" ")) {
            mfileName = str.replace(' ', '_');
        } else {
            mfileName = str;
        }
    }

    @SimpleProperty(description = "Returns File Name/Title")
    public String FileName() {
        return mfileName;
    }

    @SimpleFunction(description = "Upload the specified media to your Google Drive Storage.")
    public void UploadMedia(String str) {
        mimage = str;
        mformat = FileMIMETYpe(str);
        new Thread() { // from class: com.google.appinventor.components.runtime.NiotronGoogleDrive.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws IOException {
                String strFileToBase64 = NiotronGoogleDrive.this.FileToBase64(NiotronGoogleDrive.mimage);
                try {
                    if (!NiotronGoogleDrive.mimage.isEmpty() && !NiotronGoogleDrive.mfileName.isEmpty() && !NiotronGoogleDrive.mformat.isEmpty() && strFileToBase64 != null && !NiotronGoogleDrive.mfolderId.isEmpty()) {
                        NiotronGoogleDrive.urlParameters = "filename=" + NiotronGoogleDrive.mfileName + "&folderid=" + NiotronGoogleDrive.mfolderId + "&mimetype=" + NiotronGoogleDrive.mformat + "&data=" + strFileToBase64;
                        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(NiotronGoogleDrive.url).openConnection();
                        httpsURLConnection.setRequestMethod("POST");
                        httpsURLConnection.setRequestProperty(HttpHeaders.USER_AGENT, "Mozilla/5.0");
                        httpsURLConnection.setRequestProperty(HttpHeaders.ACCEPT_LANGUAGE, "en-US,en;q=0.5");
                        httpsURLConnection.setDoOutput(true);
                        DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
                        dataOutputStream.writeBytes(NiotronGoogleDrive.urlParameters);
                        dataOutputStream.flush();
                        dataOutputStream.close();
                        int responseCode = httpsURLConnection.getResponseCode();
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpsURLConnection.getInputStream()));
                        StringBuffer stringBuffer = new StringBuffer();
                        while (true) {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            } else {
                                stringBuffer.append(line);
                            }
                        }
                        bufferedReader.close();
                        NiotronGoogleDrive.response = stringBuffer.toString();
                        if (responseCode == 200) {
                            if (stringBuffer.toString() == "Error") {
                                NiotronGoogleDrive.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronGoogleDrive.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        NiotronGoogleDrive.this.ErrorOccurred("Failed to upload media. Try again");
                                    }
                                });
                                return;
                            } else {
                                NiotronGoogleDrive.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronGoogleDrive.1.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        NiotronGoogleDrive.this.MediaUploaded(NiotronGoogleDrive.response, "null");
                                    }
                                });
                                return;
                            }
                        }
                        NiotronGoogleDrive.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronGoogleDrive.1.3
                            @Override // java.lang.Runnable
                            public void run() {
                                NiotronGoogleDrive.this.ErrorOccurred("Server error occured. Try again");
                            }
                        });
                        return;
                    }
                    Toast.makeText(NiotronGoogleDrive.this.context, "Required fields not filled", 0).show();
                } catch (Exception e) {
                    NiotronGoogleDrive.response = e.toString();
                    NiotronGoogleDrive.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronGoogleDrive.1.4
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronGoogleDrive.this.ErrorOccurred("Invalid request. Try again");
                        }
                    });
                }
            }
        }.start();
    }

    @SimpleEvent(description = "Triggered after upload failed")
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }

    @SimpleEvent(description = "Triggered after media upload successfully")
    public void MediaUploaded(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "MediaUploaded", str, _COROUTINE.a.i("https://drive.google.com/uc?export=view&id=", str));
    }

    @SimpleFunction(description = "Get all files of a folder.")
    public void GetFolder() {
        final String strJ = _COROUTINE.a.j(url, "?folderid=", mfolderId);
        new Thread() { // from class: com.google.appinventor.components.runtime.NiotronGoogleDrive.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws IOException {
                try {
                    InputStream inputStream = new URL(strJ).openConnection().getInputStream();
                    final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i = inputStream.read(bArr);
                        if (i > 0) {
                            byteArrayOutputStream.write(bArr, 0, i);
                        } else {
                            byteArrayOutputStream.close();
                            NiotronGoogleDrive.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronGoogleDrive.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    try {
                                        String str = new String(byteArrayOutputStream.toByteArray(), "UTF-8");
                                        if (str.equals("ERROR")) {
                                            NiotronGoogleDrive.this.ErrorOccurred("Failed to get files. Invalid Folder ID");
                                        } else {
                                            NiotronGoogleDrive.this.GotFolder(str);
                                        }
                                    } catch (Exception unused) {
                                        NiotronGoogleDrive.this.ErrorOccurred("Server error occured. Try again");
                                    }
                                }
                            });
                            return;
                        }
                    }
                } catch (Exception unused) {
                    NiotronGoogleDrive.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronGoogleDrive.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronGoogleDrive.this.ErrorOccurred("Internal error occured. Invalid Folder ID");
                        }
                    });
                }
            }
        }.start();
    }

    @SimpleEvent(description = "Triggered after got folder data")
    public void GotFolder(String str) {
        EventDispatcher.dispatchEvent(this, "GotFolder", str);
    }

    @SimpleFunction(description = "Return total number of files from response data")
    public int TotalFiles(String str) {
        return str.split(",").length;
    }

    @SimpleFunction(description = "Return file name from response data")
    public String FileName(String str, int i) {
        int i2 = i - 1;
        if (i2 < 0) {
            i2 = 0;
        }
        String str2 = "";
        try {
            str2 = str.split(",")[i2];
            String str3 = new String(Base64.decode(str2, 0));
            try {
                return str3.split("::")[0];
            } catch (Exception unused) {
                return str3;
            }
        } catch (Exception unused2) {
            return str2;
        }
    }

    @SimpleFunction(description = "Return file ID from response data")
    public String FileID(String str, int i) {
        int i2 = i - 1;
        if (i2 < 0) {
            i2 = 0;
        }
        String str2 = "";
        try {
            str2 = str.split(",")[i2];
            String str3 = new String(Base64.decode(str2, 0));
            try {
                return str3.split("::")[1];
            } catch (Exception unused) {
                return str3;
            }
        } catch (Exception unused2) {
            return str2;
        }
    }

    @SimpleFunction(description = "Return file Size from response data")
    public String FileSize(String str, int i) {
        int i2 = i - 1;
        if (i2 < 0) {
            i2 = 0;
        }
        String str2 = "";
        try {
            str2 = str.split(",")[i2];
            String str3 = new String(Base64.decode(str2, 0));
            try {
                return str3.split("::")[2];
            } catch (Exception unused) {
                return str3;
            }
        } catch (Exception unused2) {
            return str2;
        }
    }

    @SimpleFunction(description = "Return date when file created from response data")
    public String FileCreatedOn(String str, int i) {
        int i2 = i - 1;
        if (i2 < 0) {
            i2 = 0;
        }
        String str2 = "";
        try {
            str2 = str.split(",")[i2];
            String str3 = new String(Base64.decode(str2, 0));
            try {
                return str3.split("::")[3];
            } catch (Exception unused) {
                return str3;
            }
        } catch (Exception unused2) {
            return str2;
        }
    }

    @SimpleFunction(description = "Return date when file created from response data")
    public String DownloadURL(String str) {
        return str.equals("") ? "" : _COROUTINE.a.i("https://drive.google.com/uc?export=view&id=", str);
    }

    private String FileMIMETYpe(String str) {
        String strGuessContentTypeFromName = URLConnection.guessContentTypeFromName(new java.io.File(str.replaceAll("/storage/emulated/0", "")).getName());
        return strGuessContentTypeFromName.contains("comma-separated-values") ? "text/csv" : strGuessContentTypeFromName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String FileToBase64(java.lang.String r7) throws java.io.IOException {
        /*
            r6 = this;
            java.lang.String r0 = "/storage/emulated/0"
            java.lang.String r1 = ""
            java.lang.String r7 = r7.replaceAll(r0, r1)
            java.lang.String r0 = "//"
            boolean r0 = r7.startsWith(r0)
            r1 = 0
            java.lang.String r2 = "null"
            if (r0 == 0) goto L7b
            java.io.File r0 = android.os.Environment.getExternalStorageDirectory()     // Catch: java.lang.Exception -> L74
            java.lang.String r0 = r0.getPath()     // Catch: java.lang.Exception -> L74
            r3 = 1
            java.lang.String r7 = r7.substring(r3)     // Catch: java.lang.Exception -> L74
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L74
            r3.<init>()     // Catch: java.lang.Exception -> L74
            r3.append(r0)     // Catch: java.lang.Exception -> L74
            java.lang.String r0 = "/AppInventor/assets"
            r3.append(r0)     // Catch: java.lang.Exception -> L74
            r3.append(r7)     // Catch: java.lang.Exception -> L74
            java.lang.String r7 = r3.toString()     // Catch: java.lang.Exception -> L74
            java.io.File r0 = new java.io.File     // Catch: java.lang.Exception -> L74
            r0.<init>(r7)     // Catch: java.lang.Exception -> L74
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Exception -> L74
            r3.<init>(r0)     // Catch: java.lang.Exception -> L74
            long r4 = r0.length()     // Catch: java.lang.Exception -> L74
            int r0 = (int) r4     // Catch: java.lang.Exception -> L74
            byte[] r0 = new byte[r0]     // Catch: java.lang.Exception -> L74
            r3.read(r0)     // Catch: java.lang.Exception -> L74
            android.util.Base64.encodeToString(r0, r1)     // Catch: java.lang.Exception -> L74
            r3.close()     // Catch: java.lang.Exception -> L74
            java.io.File r0 = new java.io.File
            r0.<init>(r7)
            long r3 = r0.length()
            int r7 = (int) r3
            byte[] r7 = new byte[r7]
            java.io.FileInputStream r7 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L72
            r7.<init>(r0)     // Catch: java.lang.Throwable -> L72
            long r3 = r0.length()     // Catch: java.lang.Throwable -> L72
            int r0 = (int) r3     // Catch: java.lang.Throwable -> L72
            byte[] r0 = new byte[r0]     // Catch: java.lang.Throwable -> L72
            r7.read(r0)     // Catch: java.lang.Throwable -> L72
            java.lang.String r0 = android.util.Base64.encodeToString(r0, r1)     // Catch: java.lang.Throwable -> L72
            r7.close()     // Catch: java.lang.Throwable -> L72
        L70:
            r2 = r0
            goto La5
        L72:
            goto La5
        L74:
            r7 = move-exception
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>(r7)
            throw r0
        L7b:
            java.lang.String r0 = "/"
            boolean r0 = r7.startsWith(r0)
            if (r0 == 0) goto La5
            java.io.File r0 = new java.io.File
            java.lang.String r3 = "/mnt/sdcard"
            java.lang.String r7 = r3.concat(r7)
            r0.<init>(r7)
            java.io.FileInputStream r7 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L72 java.lang.Throwable -> L72
            r7.<init>(r0)     // Catch: java.lang.Throwable -> L72 java.lang.Throwable -> L72
            long r3 = r0.length()     // Catch: java.lang.Throwable -> L72 java.lang.Throwable -> L72
            int r0 = (int) r3     // Catch: java.lang.Throwable -> L72 java.lang.Throwable -> L72
            byte[] r0 = new byte[r0]     // Catch: java.lang.Throwable -> L72 java.lang.Throwable -> L72
            r7.read(r0)     // Catch: java.lang.Throwable -> L72 java.lang.Throwable -> L72
            java.lang.String r0 = android.util.Base64.encodeToString(r0, r1)     // Catch: java.lang.Throwable -> L72 java.lang.Throwable -> L72
            r7.close()     // Catch: java.lang.Throwable -> L72 java.lang.Throwable -> L72
            goto L70
        La5:
            r7 = 0
            if (r2 == 0) goto Lb4
            java.lang.String r0 = "UTF-8"
            java.lang.String r7 = java.net.URLEncoder.encode(r2, r0)     // Catch: java.lang.Exception -> Laf
            return r7
        Laf:
            java.lang.String r0 = "Unable to parse media. Try again"
            r6.ErrorOccurred(r0)
        Lb4:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.NiotronGoogleDrive.FileToBase64(java.lang.String):java.lang.String");
    }
}
