package com.google.appinventor.components.runtime;

import android.content.Context;
import android.os.Environment;
import com.downloader.Error;
import com.downloader.OnCancelListener;
import com.downloader.OnDownloadListener;
import com.downloader.OnProgressListener;
import com.downloader.OnStartOrResumeListener;
import com.downloader.PRDownloader;
import com.downloader.PRDownloaderConfig;
import com.downloader.Progress;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.INTERNET, android.permission.WRITE_EXTERNAL_STORAGE, android.permission.WRITE_EXTERNAL_STORAGE")
@DesignerComponent(androidMinSdk = 14, category = ComponentCategory.STORAGE, description = "Download Component can be used to download any type of files like image, video, pdf, apk and etc.Supports Multiple File Downloads", iconName = "images/downloader.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "prdownloader.aar, prdownloader.jar")
/* loaded from: classes.dex */
public final class Downloader extends AndroidNonvisibleComponent {
    private Context context;
    int downloadId;

    public Downloader(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.context = componentContainer.$context();
    }

    @SimpleFunction(description = "Initialize the Downloader First. readTimeout and connectTimeout in seconds")
    public void InitializeDownloader(int i, int i2) {
        PRDownloader.initialize(this.context, PRDownloaderConfig.newBuilder().setReadTimeout(i * 1000).setConnectTimeout(i2 * 1000).build());
    }

    @SimpleFunction(description = "Start the Download of a File")
    public void StartDownload(String str, String str2, String str3) {
        int iStart = PRDownloader.download(str, Environment.getExternalStorageDirectory() + java.io.File.separator + str2, str3).build().setOnStartOrResumeListener(new OnStartOrResumeListener() { // from class: com.google.appinventor.components.runtime.Downloader.5
            public void onStartOrResume() {
                Downloader.this.StartedOrResumed();
            }
        }).setOnPauseListener(new com.downloader.OnPauseListener() { // from class: com.google.appinventor.components.runtime.Downloader.4
            public void onPause() {
                Downloader.this.Paused();
            }
        }).setOnCancelListener(new OnCancelListener() { // from class: com.google.appinventor.components.runtime.Downloader.3
            public void onCancel() {
                Downloader.this.Cancelled();
            }
        }).setOnProgressListener(new OnProgressListener() { // from class: com.google.appinventor.components.runtime.Downloader.2
            public void onProgress(Progress progress) {
                Downloader.this.ProgressChanged((int) Math.round((progress.currentBytes / progress.totalBytes) * 100.0d));
                Downloader.this.ProgressChangedBytes(progress.currentBytes, progress.totalBytes);
            }
        }).start(new OnDownloadListener() { // from class: com.google.appinventor.components.runtime.Downloader.1
            public void onDownloadComplete() {
                Downloader.this.DownloadCompleted();
            }

            public void onError(Error error) {
                Downloader.this.ErrorOccurred(error.toString());
            }
        });
        this.downloadId = iStart;
        DownloadScheduled(iStart);
    }

    @SimpleFunction(description = "Pauses the download")
    public void PauseDownload() {
        PRDownloader.pause(this.downloadId);
    }

    @SimpleFunction(description = "Resumes the download")
    public void ResumeDownload() {
        PRDownloader.resume(this.downloadId);
    }

    @SimpleFunction(description = "Cancels the download")
    public void CancelDownload() {
        PRDownloader.cancel(this.downloadId);
    }

    @SimpleFunction(description = "Returns the download status")
    public String GetDownloadStatus() {
        return PRDownloader.getStatus(this.downloadId).toString();
    }

    @SimpleFunction(description = "Cancels all the ongoing download tasks")
    public void CancelAllDownloads() {
        PRDownloader.cancelAll();
    }

    @SimpleEvent(description = "Download Started")
    public void StartedOrResumed() {
        EventDispatcher.dispatchEvent(this, "StartedOrResumed", new Object[0]);
    }

    @SimpleEvent(description = "Download Paused")
    public void Paused() {
        EventDispatcher.dispatchEvent(this, "Paused", new Object[0]);
    }

    @SimpleEvent(description = "Download Cancelled")
    public void Cancelled() {
        EventDispatcher.dispatchEvent(this, "Cancelled", new Object[0]);
    }

    @SimpleEvent(description = "Download Progress Changed. Progress in percentage")
    public void ProgressChanged(int i) {
        EventDispatcher.dispatchEvent(this, "ProgressChanged", Integer.valueOf(i));
    }

    @SimpleEvent(description = "Download Progress Changed. Progress in bytes")
    public void ProgressChangedBytes(long j, long j2) {
        EventDispatcher.dispatchEvent(this, "ProgressChangedBytes", Long.valueOf(j), Long.valueOf(j2));
    }

    @SimpleEvent(description = "Download Completed")
    public void DownloadCompleted() {
        EventDispatcher.dispatchEvent(this, "DownloadCompleted", new Object[0]);
    }

    @SimpleEvent(description = "Some Error Occurred")
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }

    @SimpleEvent(description = "Download was Scheduled. Use the Download id to check stats in the future")
    public void DownloadScheduled(int i) {
        EventDispatcher.dispatchEvent(this, "DownloadScheduled", Integer.valueOf(i));
    }
}
