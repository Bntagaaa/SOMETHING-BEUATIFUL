.class public Lcom/google/appinventor/components/runtime/ImagePicker;
.super Lcom/google/appinventor/components/runtime/Picker;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A special-purpose button. When the user taps an image picker, the device\'s image gallery appears, and the user can choose an image. After an image is picked, it is saved, and the <code>Selected</code> property will be the name of the file where the image is stored. In order to not fill up storage, a maximum of 10 images will be stored.  Picking more images will delete previous images, in order from oldest to newest."
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final FILE_PREFIX:Ljava/lang/String; = "picked_image"

.field private static final LOG_TAG:Ljava/lang/String; = "ImagePicker"

.field private static final imagePickerDirectoryName:Ljava/lang/String; = "/Pictures/_app_inventor_image_picker"

.field private static final maxSavedFiles:I = 0xa


# instance fields
.field private havePermission:Z

.field private selectionSavedImage:Ljava/lang/String;

.field private selectionURI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Picker;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 75
    const-string p1, ""

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->selectionSavedImage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->havePermission:Z

    .line 87
    const-string p1, "10,10,0,0"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ImagePicker;->HeihPadding(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/ImagePicker;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->havePermission:Z

    return-void
.end method

.method private copyToExternalStorageAndDeleteSource(Ljava/io/File;Ljava/lang/String;)V
    .locals 6

    .line 185
    const-string v0, "ImagePicker"

    const-string v1, "Image was copied to "

    const-string v2, "saved file path is: "

    .line 187
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Picker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/Pictures/_app_inventor_image_picker"

    .line 0
    invoke-static {v3, v4}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 191
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 192
    const-string v5, "picked_image"

    invoke-static {v5, p2, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 194
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->selectionSavedImage:Ljava/lang/String;

    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->selectionSavedImage:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 207
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->selectionSavedImage:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "destination is "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": error is "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 208
    const-string v1, "copyFile failed. "

    .line 0
    invoke-static {v1, p2, v0}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Picker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0x641

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v2, v5

    const-string p2, "SaveImage"

    invoke-virtual {v0, p0, p2, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 211
    const-string p2, ""

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->selectionSavedImage:Ljava/lang/String;

    .line 212
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 217
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const/16 p1, 0xa

    .line 218
    invoke-direct {p0, p1, v4}, Lcom/google/appinventor/components/runtime/ImagePicker;->trimDirectory(ILjava/io/File;)V

    return-void
.end method

.method private saveSelectedImageToExternalStorage(Ljava/lang/String;)V
    .locals 4

    .line 162
    const-string v0, "ImagePicker"

    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->selectionSavedImage:Ljava/lang/String;

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Picker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->selectionURI:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "temp file path is: "

    .line 0
    invoke-static {v3, v2, v0}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, v1, p1}, Lcom/google/appinventor/components/runtime/ImagePicker;->copyToExternalStorageAndDeleteSource(Ljava/io/File;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 171
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "copyMediaToTempFile failed: "

    .line 0
    invoke-static {v2, v1, v0}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Picker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/16 p1, 0x642

    .line 172
    invoke-virtual {v1, p0, v0, p1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method private trimDirectory(ILjava/io/File;)V
    .locals 2

    .line 224
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    .line 226
    new-instance v0, Lcom/google/appinventor/components/runtime/ImagePicker$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ImagePicker$2;-><init>(Lcom/google/appinventor/components/runtime/ImagePicker;)V

    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 232
    array-length v0, p2

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 234
    aget-object v1, p2, p1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public HeihPadding(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "10,10,0,0"
        editorType = "four"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 103
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->HeihPadding(Ljava/lang/String;)V

    return-void
.end method

.method public Selection()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Path to the file containing the image that was selected."
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->selectionSavedImage:Ljava/lang/String;

    return-object v0
.end method

.method public click()V
    .locals 3

    .line 113
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->havePermission:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Picker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsWritePermission(Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Picker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/ImagePicker$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ImagePicker$1;-><init>(Lcom/google/appinventor/components/runtime/ImagePicker;)V

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void

    .line 129
    :cond_0
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Picker;->click()V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 1

    .line 141
    iget v0, p0, Lcom/google/appinventor/components/runtime/Picker;->requestCode:I

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 142
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->selectionURI:Ljava/lang/String;

    .line 144
    const-string p3, "selectionURI = "

    const-string v0, "ImagePicker"

    .line 0
    invoke-static {p3, p2, v0}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Picker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 148
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p3

    .line 149
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "."

    .line 0
    invoke-static {p2, p1}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 150
    const-string p2, "extension = "

    .line 0
    invoke-static {p2, p1, v0}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImagePicker;->saveSelectedImageToExternalStorage(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Picker;->AfterPicking()V

    :cond_0
    return-void
.end method
