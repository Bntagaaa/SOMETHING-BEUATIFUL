.class public Landroidx/core/content/pm/ShortcutInfoCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/pm/ShortcutInfoCompat$a;,
        Landroidx/core/content/pm/ShortcutInfoCompat$Builder;,
        Landroidx/core/content/pm/ShortcutInfoCompat$Surface;
    }
.end annotation


# static fields
.field public static final SURFACE_LAUNCHER:I = 0x1


# instance fields
.field public A:I

.field public B:I

.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:[Landroid/content/Intent;

.field public e:Landroid/content/ComponentName;

.field public f:Ljava/lang/CharSequence;

.field public g:Ljava/lang/CharSequence;

.field public h:Ljava/lang/CharSequence;

.field public i:Landroidx/core/graphics/drawable/IconCompat;

.field public j:Z

.field public k:[Landroidx/core/app/Person;

.field public l:Ljava/util/Set;

.field public m:Landroidx/core/content/LocusIdCompat;

.field public n:Z

.field public o:I

.field public p:Landroid/os/PersistableBundle;

.field public q:Landroid/os/Bundle;

.field public r:J

.field public s:Landroid/os/UserHandle;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->y:Z

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 392
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/content/pm/a;->h(Ljava/lang/Object;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    .line 393
    new-instance v2, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    invoke-direct {v2, p0, v1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {v2}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 3

    .line 196
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->d:[Landroid/content/Intent;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->f:Ljava/lang/CharSequence;

    .line 197
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->i:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v0, :cond_2

    .line 200
    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 202
    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->e:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 204
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 210
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 213
    :cond_1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->i:Landroidx/core/graphics/drawable/IconCompat;

    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, v1, v2}, Landroidx/core/graphics/drawable/IconCompat;->addToShortcutIntent(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public getActivity()Landroid/content/ComponentName;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 249
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->e:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getCategories()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->l:Ljava/util/Set;

    return-object v0
.end method

.method public getDisabledMessage()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 280
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->h:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDisabledReason()I
    .locals 1

    .line 287
    iget v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->A:I

    return v0
.end method

.method public getExcludedFromSurfaces()I
    .locals 1

    .line 527
    iget v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->B:I

    return v0
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 400
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->p:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public getIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->i:Landroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 227
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 298
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->d:[Landroid/content/Intent;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getIntents()[Landroid/content/Intent;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 308
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->d:[Landroid/content/Intent;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    return-object v0
.end method

.method public getLastChangedTimestamp()J
    .locals 2

    .line 426
    iget-wide v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->r:J

    return-wide v0
.end method

.method public getLocusId()Landroidx/core/content/LocusIdCompat;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 330
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->m:Landroidx/core/content/LocusIdCompat;

    return-object v0
.end method

.method public getLongLabel()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 269
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->g:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 235
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .line 339
    iget v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->o:I

    return v0
.end method

.method public getShortLabel()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 259
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTransientExtras()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->q:Landroid/os/Bundle;

    return-object v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 419
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->s:Landroid/os/UserHandle;

    return-object v0
.end method

.method public hasKeyFieldsOnly()Z
    .locals 1

    .line 499
    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->z:Z

    return v0
.end method

.method public isCached()Z
    .locals 1

    .line 431
    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->t:Z

    return v0
.end method

.method public isDeclaredInManifest()Z
    .locals 1

    .line 455
    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->w:Z

    return v0
.end method

.method public isDynamic()Z
    .locals 1

    .line 436
    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->u:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 479
    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->y:Z

    return v0
.end method

.method public isExcludedFromSurfaces(I)Z
    .locals 1

    .line 517
    iget v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->B:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isImmutable()Z
    .locals 1

    .line 471
    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->x:Z

    return v0
.end method

.method public isPinned()Z
    .locals 1

    .line 441
    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->v:Z

    return v0
.end method

.method public toShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x19
    .end annotation

    .line 126
    invoke-static {}, Landroidx/core/content/pm/a;->n()V

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->a:Landroid/content/Context;

    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/core/content/pm/a;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->f:Ljava/lang/CharSequence;

    .line 127
    invoke-static {v0, v1}, Landroidx/core/content/pm/a;->e(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->d:[Landroid/content/Intent;

    .line 128
    invoke-static {v0, v1}, Landroidx/core/content/pm/a;->f(Landroid/content/pm/ShortcutInfo$Builder;[Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 129
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->i:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v1, :cond_0

    .line 130
    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/content/pm/a;->q(Landroid/content/pm/ShortcutInfo$Builder;Landroid/graphics/drawable/Icon;)V

    .line 132
    :cond_0
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->g:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->g:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroidx/core/content/pm/a;->s(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/CharSequence;)V

    .line 135
    :cond_1
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->h:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 136
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->h:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroidx/core/content/pm/a;->y(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/CharSequence;)V

    .line 138
    :cond_2
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->e:Landroid/content/ComponentName;

    if-eqz v1, :cond_3

    .line 139
    invoke-static {v0, v1}, Landroidx/core/content/pm/a;->p(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/ComponentName;)V

    .line 141
    :cond_3
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->l:Ljava/util/Set;

    if-eqz v1, :cond_4

    .line 142
    invoke-static {v0, v1}, Landroidx/core/content/pm/a;->t(Landroid/content/pm/ShortcutInfo$Builder;Ljava/util/Set;)V

    .line 144
    :cond_4
    iget v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->o:I

    invoke-static {v0, v1}, Landroidx/core/content/pm/a;->o(Landroid/content/pm/ShortcutInfo$Builder;I)V

    .line 145
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->p:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_5

    .line 146
    invoke-static {v0, v1}, Landroidx/core/content/pm/a;->r(Landroid/content/pm/ShortcutInfo$Builder;Landroid/os/PersistableBundle;)V

    .line 148
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/4 v3, 0x0

    if-lt v1, v2, :cond_9

    .line 149
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->k:[Landroidx/core/app/Person;

    if-eqz v1, :cond_7

    array-length v2, v1

    if-lez v2, :cond_7

    .line 150
    array-length v1, v1

    new-array v2, v1, [Landroid/app/Person;

    :goto_0
    if-ge v3, v1, :cond_6

    .line 152
    iget-object v4, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->k:[Landroidx/core/app/Person;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroidx/core/app/Person;->toAndroidPerson()Landroid/app/Person;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    :cond_6
    invoke-static {v0, v2}, Landroidx/appcompat/widget/s;->m(Landroid/content/pm/ShortcutInfo$Builder;[Landroid/app/Person;)V

    .line 156
    :cond_7
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->m:Landroidx/core/content/LocusIdCompat;

    if-eqz v1, :cond_8

    .line 157
    invoke-virtual {v1}, Landroidx/core/content/LocusIdCompat;->toLocusId()Landroid/content/LocusId;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/appcompat/widget/s;->k(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/LocusId;)V

    .line 159
    :cond_8
    iget-boolean v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->n:Z

    invoke-static {v0, v1}, Landroidx/appcompat/widget/s;->l(Landroid/content/pm/ShortcutInfo$Builder;Z)V

    goto :goto_2

    .line 178
    :cond_9
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->p:Landroid/os/PersistableBundle;

    if-nez v1, :cond_a

    .line 179
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->p:Landroid/os/PersistableBundle;

    .line 181
    :cond_a
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->k:[Landroidx/core/app/Person;

    if-eqz v1, :cond_b

    array-length v2, v1

    if-lez v2, :cond_b

    .line 182
    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->p:Landroid/os/PersistableBundle;

    const-string v4, "extraPersonCount"

    array-length v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 183
    :goto_1
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->k:[Landroidx/core/app/Person;

    array-length v1, v1

    if-ge v3, v1, :cond_b

    .line 184
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->p:Landroid/os/PersistableBundle;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "extraPerson_"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->k:[Landroidx/core/app/Person;

    aget-object v3, v5, v3

    .line 185
    invoke-virtual {v3}, Landroidx/core/app/Person;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v3

    .line 184
    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    move v3, v4

    goto :goto_1

    .line 188
    :cond_b
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->m:Landroidx/core/content/LocusIdCompat;

    if-eqz v1, :cond_c

    .line 189
    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->p:Landroid/os/PersistableBundle;

    const-string v3, "extraLocusId"

    invoke-virtual {v1}, Landroidx/core/content/LocusIdCompat;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_c
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->p:Landroid/os/PersistableBundle;

    iget-boolean v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->n:Z

    invoke-static {v1, v2}, Landroidx/core/content/a;->d(Landroid/os/PersistableBundle;Z)V

    .line 192
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->p:Landroid/os/PersistableBundle;

    .line 164
    invoke-static {v0, v1}, Landroidx/core/content/pm/a;->r(Landroid/content/pm/ShortcutInfo$Builder;Landroid/os/PersistableBundle;)V

    .line 166
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_d

    .line 167
    iget v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->B:I

    invoke-static {v0, v1}, Landroidx/core/content/pm/ShortcutInfoCompat$a;->a(Landroid/content/pm/ShortcutInfo$Builder;I)V

    .line 169
    :cond_d
    invoke-static {v0}, Landroidx/core/content/pm/a;->g(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method
