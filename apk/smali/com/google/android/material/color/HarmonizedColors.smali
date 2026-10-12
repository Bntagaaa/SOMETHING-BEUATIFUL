.class public Lcom/google/android/material/color/HarmonizedColors;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/HashMap;)Z
    .locals 6

    .line 46
    const-string v0, "c"

    const-string v1, "Table created, length: "

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/material/color/d;->c(Landroid/content/Context;Ljava/util/HashMap;)[B

    move-result-object p1

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    array-length v1, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_6

    .line 53
    :cond_0
    :try_start_1
    invoke-static {}, Landroidx/core/view/accessibility/b;->d()Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 55
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 56
    :try_start_3
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 58
    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    :try_start_4
    invoke-static {}, Landroidx/core/view/accessibility/b;->f()V

    invoke-static {}, Landroidx/core/view/accessibility/b;->a()Landroid/content/res/loader/ResourcesLoader;

    move-result-object v4

    .line 61
    invoke-static {p1}, Landroidx/core/view/accessibility/b;->b(Landroid/os/ParcelFileDescriptor;)Landroid/content/res/loader/ResourcesProvider;

    move-result-object v5

    .line 60
    invoke-static {v4, v5}, Landroidx/core/view/accessibility/b;->h(Landroid/content/res/loader/ResourcesLoader;Landroid/content/res/loader/ResourcesProvider;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p1, :cond_1

    .line 63
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 64
    :cond_1
    :goto_0
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_2

    .line 67
    :try_start_7
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_2
    move-object v2, v4

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_4

    :catchall_2
    move-exception v4

    if-eqz p1, :cond_3

    .line 58
    :try_start_8
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_9
    invoke-virtual {v4, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 55
    :goto_2
    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v3

    :try_start_b
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_5
    move-exception p1

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_4

    .line 67
    :try_start_c
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 69
    :cond_4
    throw p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 71
    :goto_5
    const-string v1, "Failed to create the ColorResourcesTableCreator."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    const/4 p1, 0x0

    if-eqz v2, :cond_5

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/res/loader/ResourcesLoader;

    aput-object v2, v1, p1

    invoke-static {p0, v1}, Landroidx/core/view/accessibility/b;->g(Landroid/content/res/Resources;[Landroid/content/res/loader/ResourcesLoader;)V

    return v0

    :cond_5
    return p1
.end method

.method public static applyToContextIfAvailable(Landroid/content/Context;Lcom/google/android/material/color/HarmonizedColorsOptions;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/material/color/HarmonizedColorsOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 70
    invoke-static {}, Lcom/google/android/material/color/HarmonizedColors;->isHarmonizedColorAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/material/color/HarmonizedColors;->b(Landroid/content/Context;Lcom/google/android/material/color/HarmonizedColorsOptions;)Ljava/util/HashMap;

    move-result-object v0

    .line 131
    iget-object p1, p1, Lcom/google/android/material/color/HarmonizedColorsOptions;->b:Lcom/google/android/material/color/HarmonizedColorAttributes;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/material/color/HarmonizedColorAttributes;->getThemeOverlay()I

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {p1}, Lcom/google/android/material/color/HarmonizedColorAttributes;->getThemeOverlay()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 77
    :goto_0
    invoke-static {p0, v0}, Lcom/google/android/material/color/HarmonizedColors;->a(Landroid/content/Context;Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 78
    invoke-static {p0, p1}, Lcom/google/android/material/color/h;->a(Landroid/content/Context;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/google/android/material/color/HarmonizedColorsOptions;)Ljava/util/HashMap;
    .locals 8

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    invoke-virtual {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getColorAttributeToHarmonizeWith()I

    move-result v1

    const-string v2, "HarmonizedColors"

    invoke-static {p0, v1, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    .line 136
    invoke-virtual {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getColorResourceIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget v6, v2, v5

    .line 139
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    .line 138
    invoke-static {v7, v1}, Lcom/google/android/material/color/MaterialColors;->harmonize(II)I

    move-result v7

    .line 140
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getColorAttributes()Lcom/google/android/material/color/HarmonizedColorAttributes;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 145
    invoke-virtual {p1}, Lcom/google/android/material/color/HarmonizedColorAttributes;->getAttributes()[I

    move-result-object v2

    .line 146
    array-length v3, v2

    if-lez v3, :cond_5

    .line 150
    invoke-virtual {p1}, Lcom/google/android/material/color/HarmonizedColorAttributes;->getThemeOverlay()I

    move-result p1

    .line 151
    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    if-eqz p1, :cond_1

    .line 155
    new-instance v5, Landroid/view/ContextThemeWrapper;

    invoke-direct {v5, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    move-object p1, p0

    goto :goto_2

    :cond_2
    move-object p1, v3

    :goto_2
    const/4 v2, 0x0

    .line 196
    :goto_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 197
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-eqz v5, :cond_3

    .line 199
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 200
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v6

    const/16 v7, 0x1c

    if-gt v7, v6, :cond_3

    const/16 v7, 0x1f

    if-gt v6, v7, :cond_3

    .line 201
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 203
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6, v1}, Lcom/google/android/material/color/MaterialColors;->harmonize(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 202
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 163
    :cond_4
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p0, :cond_5

    .line 165
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5
    return-object v0
.end method

.method public static isHarmonizedColorAvailable()Z
    .locals 2
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x1e
    .end annotation

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static wrapContextIfAvailable(Landroid/content/Context;Lcom/google/android/material/color/HarmonizedColorsOptions;)Landroid/content/Context;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/material/color/HarmonizedColorsOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 97
    invoke-static {}, Lcom/google/android/material/color/HarmonizedColors;->isHarmonizedColorAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/material/color/HarmonizedColors;->b(Landroid/content/Context;Lcom/google/android/material/color/HarmonizedColorsOptions;)Ljava/util/HashMap;

    move-result-object v0

    .line 105
    sget v1, Lcom/google/android/material/R$style;->ThemeOverlay_Material3_HarmonizedColors_Empty:I

    .line 131
    iget-object p1, p1, Lcom/google/android/material/color/HarmonizedColorsOptions;->b:Lcom/google/android/material/color/HarmonizedColorAttributes;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/material/color/HarmonizedColorAttributes;->getThemeOverlay()I

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {p1}, Lcom/google/android/material/color/HarmonizedColorAttributes;->getThemeOverlay()I

    move-result v1

    .line 107
    :cond_1
    new-instance p1, Landroid/view/ContextThemeWrapper;

    invoke-direct {p1, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 110
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 112
    invoke-static {p1, v0}, Lcom/google/android/material/color/HarmonizedColors;->a(Landroid/content/Context;Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    :goto_0
    return-object p0
.end method
