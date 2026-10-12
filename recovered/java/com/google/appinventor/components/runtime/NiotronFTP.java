package com.google.appinventor.components.runtime;

import android.os.Handler;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.YailList;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.apache.commons.net.ftp.FTPClient;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.WRITE_EXTERNAL_STORAGE, android.permission.READ_EXTERNAL_STORAGE")
@DesignerComponent(category = ComponentCategory.CONNECTIVITY, description = "A new component ", iconName = "images/fTP.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "commons-net.jar")
/* loaded from: classes.dex */
public final class NiotronFTP extends AndroidNonvisibleComponent {
    private String LOG_TAG;
    private FTPClient client;
    private ComponentContainer container;
    private String directory;
    private Handler handler;
    private String host;
    private String password;
    private String port;
    private String username;

    public NiotronFTP(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.host = "";
        this.port = "";
        this.username = "";
        this.password = "";
        this.directory = "";
        this.LOG_TAG = "NiotronFTP";
        this.container = componentContainer;
        this.client = new FTPClient();
        this.handler = new Handler();
    }

    @SimpleFunction(description = "Connects to the FTP Server")
    public void Connect() {
        new Thread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (NiotronFTP.this.port == "") {
                        NiotronFTP.this.client.connect(NiotronFTP.this.host);
                        NiotronFTP.this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                NiotronFTP.this.Connected();
                            }
                        });
                        return;
                    }
                    NiotronFTP.this.client.connect(NiotronFTP.this.host + ":" + NiotronFTP.this.port);
                } catch (IOException e) {
                    NiotronFTP.this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronFTP.this.ConnectError();
                        }
                    });
                    Log.d(NiotronFTP.this.LOG_TAG, e.toString());
                }
            }
        }).start();
    }

    @SimpleFunction(description = "Disconnects the FTP Server")
    public void Disconnect() {
        new Thread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    NiotronFTP.this.client.disconnect();
                    NiotronFTP.this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronFTP.this.Disconnected();
                        }
                    });
                } catch (IOException e) {
                    NiotronFTP.this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronFTP.this.DisconnectError();
                        }
                    });
                    Log.d(NiotronFTP.this.LOG_TAG, e.toString());
                }
            }
        }).start();
    }

    @SimpleFunction(description = "Logs in the user")
    public void Login() {
        new Thread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (NiotronFTP.this.client.login(NiotronFTP.this.username, NiotronFTP.this.password)) {
                        if (!NiotronFTP.this.directory.isEmpty()) {
                            NiotronFTP.this.client.changeWorkingDirectory(NiotronFTP.this.directory);
                        }
                        NiotronFTP.this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                NiotronFTP.this.LoginResult(true);
                            }
                        });
                        return;
                    }
                    NiotronFTP.this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronFTP.this.LoginResult(false);
                        }
                    });
                } catch (IOException e) {
                    Log.d(NiotronFTP.this.LOG_TAG, e.toString());
                    NiotronFTP.this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.3.3
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronFTP.this.LoginResult(false);
                        }
                    });
                }
            }
        }).start();
    }

    @SimpleFunction(description = "Logs out the user")
    public void Logout() {
        new Thread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    NiotronFTP.this.client.logout();
                } catch (IOException e) {
                    Log.d(NiotronFTP.this.LOG_TAG, e.toString());
                }
            }
        }).start();
    }

    @SimpleFunction(description = "Makes a new directory")
    public void MakeDirectory(final String str) {
        new Thread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    NiotronFTP.this.client.makeDirectory(str);
                } catch (IOException e) {
                    Log.d(NiotronFTP.this.LOG_TAG, e.toString());
                }
            }
        }).start();
    }

    @SimpleFunction(description = "Deletes the specified directory")
    public void DeleteDirectory(final String str) {
        new Thread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    NiotronFTP.this.client.removeDirectory(str);
                } catch (IOException e) {
                    Log.d(NiotronFTP.this.LOG_TAG, e.toString());
                }
            }
        }).start();
    }

    @SimpleFunction(description = "Downloads the file specified")
    public void DownloadFile(final String str, final String str2) {
        new Thread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.7
            @Override // java.lang.Runnable
            public void run() throws IOException {
                try {
                    NiotronFTP.this.client.enterLocalPassiveMode();
                    NiotronFTP.this.client.setFileType(2);
                    FileOutputStream fileOutputStream = new FileOutputStream(new java.io.File(str));
                    boolean zRetrieveFile = NiotronFTP.this.client.retrieveFile(str2, fileOutputStream);
                    fileOutputStream.close();
                    if (zRetrieveFile) {
                        NiotronFTP.this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.7.1
                            @Override // java.lang.Runnable
                            public void run() {
                                NiotronFTP.this.DownloadSuccessful();
                            }
                        });
                    } else {
                        NiotronFTP.this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.7.2
                            @Override // java.lang.Runnable
                            public void run() {
                                NiotronFTP.this.DownloadFailed();
                            }
                        });
                    }
                } catch (Exception e) {
                    Log.d(NiotronFTP.this.LOG_TAG, e.toString());
                    NiotronFTP.this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.7.3
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronFTP.this.DownloadFailed();
                        }
                    });
                }
            }
        }).start();
    }

    @SimpleFunction(description = "Uploads the file specified")
    public void UploadFile(final String str, final String str2) {
        new Thread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.8
            @Override // java.lang.Runnable
            public void run() throws IOException {
                try {
                    NiotronFTP.this.client.enterLocalPassiveMode();
                    NiotronFTP.this.client.setFileType(2);
                    FileInputStream fileInputStream = new FileInputStream(new java.io.File(str));
                    boolean zStoreFile = NiotronFTP.this.client.storeFile("/" + str2, fileInputStream);
                    fileInputStream.close();
                    if (zStoreFile) {
                        NiotronFTP.this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.8.1
                            @Override // java.lang.Runnable
                            public void run() {
                                NiotronFTP.this.UploadSuccessful();
                            }
                        });
                    } else {
                        NiotronFTP.this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.8.2
                            @Override // java.lang.Runnable
                            public void run() {
                                NiotronFTP.this.UploadFailed();
                            }
                        });
                    }
                } catch (Exception e) {
                    Log.d(NiotronFTP.this.LOG_TAG, e.toString());
                    NiotronFTP.this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.8.3
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronFTP.this.UploadFailed();
                        }
                    });
                }
            }
        }).start();
    }

    @SimpleFunction(description = "Returns the list of available files")
    @Deprecated
    public YailList GetFileList() {
        try {
            return YailList.makeList(this.client.listNames());
        } catch (IOException unused) {
            return YailList.makeEmptyList();
        }
    }

    @SimpleFunction(description = "Returns the list of available files")
    public void GetListOfFiles() {
        new Thread() { // from class: com.google.appinventor.components.runtime.NiotronFTP.9
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                final YailList yailListMakeEmptyList = YailList.makeEmptyList();
                try {
                    yailListMakeEmptyList = YailList.makeList(NiotronFTP.this.client.listNames());
                } catch (IOException unused) {
                }
                NiotronFTP.this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.9.1
                    @Override // java.lang.Runnable
                    public void run() {
                        NiotronFTP.this.GotFileList(yailListMakeEmptyList);
                    }
                });
            }
        }.start();
    }

    @SimpleFunction(description = "Renames the remote file")
    public void Rename(final String str, final String str2) {
        new Thread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.10
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (NiotronFTP.this.client.rename(str, str2)) {
                        NiotronFTP.this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.10.1
                            @Override // java.lang.Runnable
                            public void run() {
                                NiotronFTP.this.RenameSuccessful();
                            }
                        });
                    } else {
                        NiotronFTP.this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.10.2
                            @Override // java.lang.Runnable
                            public void run() {
                                NiotronFTP.this.RenameFailed();
                            }
                        });
                    }
                } catch (IOException unused) {
                    NiotronFTP.this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFTP.10.3
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronFTP.this.RenameFailed();
                        }
                    });
                }
            }
        }).start();
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set the FTP server host here")
    @DesignerProperty
    public void Host(String str) {
        this.host = str;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set the FTP server host here")
    @DesignerProperty
    public void Password(String str) {
        this.password = str;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "FTP FTP port")
    @DesignerProperty
    public void Port(String str) {
        this.port = str;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set FTP username")
    @DesignerProperty
    public void Username(String str) {
        this.username = str;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set the working directory")
    @DesignerProperty
    public void WorkingDirectory(final String str) {
        this.directory = str;
        new Thread() { // from class: com.google.appinventor.components.runtime.NiotronFTP.11
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    NiotronFTP.this.client.changeWorkingDirectory(str);
                } catch (Exception unused) {
                }
            }
        }.start();
    }

    @SimpleEvent(description = "Upload successful")
    public void UploadSuccessful() {
        EventDispatcher.dispatchEvent(this, "UploadSuccessful", new Object[0]);
    }

    @SimpleEvent(description = "Upload failed")
    public void UploadFailed() {
        EventDispatcher.dispatchEvent(this, "UploadFailed", new Object[0]);
    }

    @SimpleEvent(description = "Download successful")
    public void DownloadSuccessful() {
        EventDispatcher.dispatchEvent(this, "DownloadSuccessful", new Object[0]);
    }

    @SimpleEvent(description = "Download failed")
    public void DownloadFailed() {
        EventDispatcher.dispatchEvent(this, "DownloadFailed", new Object[0]);
    }

    @SimpleFunction(description = "Got List Of Files")
    public void GotFileList(YailList yailList) {
        EventDispatcher.dispatchEvent(this, "GotFileList", yailList);
    }

    @SimpleEvent(description = "Error while connecting")
    public void ConnectError() {
        EventDispatcher.dispatchEvent(this, "ConnectError", new Object[0]);
    }

    @SimpleEvent(description = "Connected to server")
    public void Connected() {
        EventDispatcher.dispatchEvent(this, "Connected", new Object[0]);
    }

    @SimpleEvent(description = "Error while disconnecting")
    public void DisconnectError() {
        EventDispatcher.dispatchEvent(this, "DisconnectError", new Object[0]);
    }

    @SimpleEvent(description = "Disconnected from server")
    public void Disconnected() {
        EventDispatcher.dispatchEvent(this, "Disconnected", new Object[0]);
    }

    @SimpleEvent(description = "Renaming file successful")
    public void RenameSuccessful() {
        EventDispatcher.dispatchEvent(this, "RenameSuccessful", new Object[0]);
    }

    @SimpleEvent(description = "Renaming file failed")
    public void RenameFailed() {
        EventDispatcher.dispatchEvent(this, "RenameFailed", new Object[0]);
    }

    @SimpleEvent(description = "Login result got")
    public void LoginResult(boolean z) {
        EventDispatcher.dispatchEvent(this, "LoginResult", Boolean.valueOf(z));
    }
}
