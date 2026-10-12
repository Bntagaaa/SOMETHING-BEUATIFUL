.class public Lcom/puravidaapps/TaifunSettings;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Settings Extension. Version 7a (FREE VERSION) as of 2019-02-13 for App Inventor version nb175 and Companion version 2.51."
    helpUrl = "https://puravidaapps.com/settings.php"
    iconName = "https://puravidaapps.com/images/taifun16.png"
    nonVisible = true
    version = 0x7
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.READ_EXTERNAL_STORAGE, android.permission.WRITE_SETTINGS, android.permission.ACCESS_NOTIFICATION_POLICY"
.end annotation


# static fields
.field public static final VERSION:I = 0x7


# instance fields
.field public final a:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field public final b:Landroid/app/Activity;

.field public final c:Landroid/app/Activity;

.field public d:Landroid/media/Ringtone;

.field public final e:Landroid/media/AudioManager;

.field public f:Z

.field public final g:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 77
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 78
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    .line 81
    iput-object p1, p0, Lcom/puravidaapps/TaifunSettings;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 82
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/puravidaapps/TaifunSettings;->b:Landroid/app/Activity;

    .line 83
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/puravidaapps/TaifunSettings;->c:Landroid/app/Activity;

    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/puravidaapps/TaifunSettings;->g:Landroid/content/ContentResolver;

    .line 88
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/puravidaapps/TaifunSettings;->e:Landroid/media/AudioManager;

    .line 90
    const-string p1, "TaifunSettings"

    const-string v0, "TaifunSettings Created"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public Brightness()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "brightness (a value between 0 and 255)"
    .end annotation

    .line 101
    const-string v0, "screen_brightness"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/puravidaapps/TaifunSettings;->g:Landroid/content/ContentResolver;

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Brightness (get): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaifunSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public BrightnessMode()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "brightness mode (MANUAL or AUTO)"
    .end annotation

    .line 329
    const-string v0, "screen_brightness_mode"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/puravidaapps/TaifunSettings;->g:Landroid/content/ContentResolver;

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BrightnessMode (get): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaifunSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 331
    const-string v0, "AUTO"

    return-object v0

    :cond_0
    const-string v0, "MANUAL"

    return-object v0
.end method

.method public FontScale()F
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "font scale"
    .end annotation

    .line 345
    const-string v0, "TaifunSettings"

    const-string v1, "FontScale"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/puravidaapps/TaifunSettings;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public RingtoneGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get current ringtone. Type can be RINGTONE, NOTIFICATION or ALARM."
    .end annotation

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RingtoneGet, type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaifunSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0, p1}, Lcom/puravidaapps/TaifunSettings;->b(Ljava/lang/String;)V

    .line 236
    iget-object p1, p0, Lcom/puravidaapps/TaifunSettings;->d:Landroid/media/Ringtone;

    iget-object v0, p0, Lcom/puravidaapps/TaifunSettings;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public RingtonePlay(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Play ringtone. Type can be RINGTONE, NOTIFICATION or ALARM."
    .end annotation

    .line 242
    const-string v0, "RingtonePlay, type: "

    const-string v1, "TaifunSettings"

    .line 0
    invoke-static {v0, p1, v1}, L_COROUTINE/a;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/puravidaapps/TaifunSettings;->d:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 246
    :cond_0
    invoke-virtual {p0, p1}, Lcom/puravidaapps/TaifunSettings;->b(Ljava/lang/String;)V

    .line 247
    iget-object p1, p0, Lcom/puravidaapps/TaifunSettings;->d:Landroid/media/Ringtone;

    invoke-virtual {p1}, Landroid/media/Ringtone;->play()V

    return-void
.end method

.method public RingtoneStop()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop currently playing ringtone."
    .end annotation

    .line 253
    const-string v0, "TaifunSettings"

    const-string v1, "RingtoneStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/puravidaapps/TaifunSettings;->d:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_0
    return-void
.end method

.method public ShowUI(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 131
    iput-boolean p1, p0, Lcom/puravidaapps/TaifunSettings;->f:Z

    return-void
.end method

.method public ShowUI()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "whether User Interface shoud be showed while setting the volume."
    .end annotation

    .line 120
    iget-boolean v0, p0, Lcom/puravidaapps/TaifunSettings;->f:Z

    return v0
.end method

.method public VolumeAlarm()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "notification volume in percent."
    .end annotation

    const/4 v0, 0x4

    .line 159
    invoke-virtual {p0, v0}, Lcom/puravidaapps/TaifunSettings;->a(I)I

    move-result v0

    return v0
.end method

.method public VolumeAlarm(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "82"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, 0x4

    .line 204
    invoke-virtual {p0, p1, v0}, Lcom/puravidaapps/TaifunSettings;->c(II)V

    return-void
.end method

.method public VolumeMusic()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "media volume in percent."
    .end annotation

    const/4 v0, 0x3

    .line 141
    invoke-virtual {p0, v0}, Lcom/puravidaapps/TaifunSettings;->a(I)I

    move-result v0

    return v0
.end method

.method public VolumeMusic(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "82"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, 0x3

    .line 179
    invoke-virtual {p0, p1, v0}, Lcom/puravidaapps/TaifunSettings;->c(II)V

    return-void
.end method

.method public VolumeRing()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "ringtone volume in percent."
    .end annotation

    const/4 v0, 0x2

    .line 150
    invoke-virtual {p0, v0}, Lcom/puravidaapps/TaifunSettings;->a(I)I

    move-result v0

    return v0
.end method

.method public VolumeRing(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "82"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x2

    .line 191
    invoke-virtual {p0, p1, v0}, Lcom/puravidaapps/TaifunSettings;->c(II)V

    :cond_0
    return-void
.end method

.method public final a(I)I
    .locals 5

    .line 164
    iget-object v0, p0, Lcom/puravidaapps/TaifunSettings;->e:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 165
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    mul-int/lit8 v0, p1, 0x64

    .line 166
    div-int/2addr v0, v1

    .line 167
    const-string v2, "getVolume,  percent= "

    const-string v3, " * 100 / "

    const-string v4, " = "

    .line 0
    invoke-static {p1, v1, v2, v3, v4}, L_COROUTINE/a;->n(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TaifunSettings"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 264
    const-string v0, "NOTIFICATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/puravidaapps/TaifunSettings;->b:Landroid/app/Activity;

    const-string v2, "TaifunSettings"

    if-eqz v0, :cond_0

    .line 265
    const-string p1, "setRingtone, NOTIFICATION"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 266
    invoke-static {v1, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 267
    :cond_0
    const-string v0, "ALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 268
    const-string p1, "setRingtone, ALARM"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    .line 269
    invoke-static {v1, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 271
    :cond_1
    const-string p1, "setRingtone, RINGTONE"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 272
    invoke-static {v1, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    .line 274
    :goto_0
    invoke-static {v1, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    iput-object p1, p0, Lcom/puravidaapps/TaifunSettings;->d:Landroid/media/Ringtone;

    return-void
.end method

.method public final c(II)V
    .locals 7

    const/16 v0, 0x64

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0xff

    if-le p1, v1, :cond_1

    const/16 p1, 0x64

    .line 217
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/puravidaapps/TaifunSettings;->f:Z

    .line 219
    iget-object v2, p0, Lcom/puravidaapps/TaifunSettings;->e:Landroid/media/AudioManager;

    invoke-virtual {v2, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    mul-int v4, v3, p1

    .line 220
    div-int/2addr v4, v0

    .line 221
    const-string v0, "setVolume, newVolume: "

    const-string v5, " * "

    const-string v6, " / 100 = "

    .line 0
    invoke-static {v3, p1, v0, v5, v6}, L_COROUTINE/a;->n(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 221
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TaifunSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v2, p2, v4, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method
