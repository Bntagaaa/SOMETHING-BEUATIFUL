.class public Landroidx/appcompat/view/menu/MenuWrapperICS;
.super Landroidx/appcompat/view/menu/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final d:Landroidx/core/internal/view/SupportMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenu;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/a;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 45
    iput-object p2, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrapped Object can not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/a;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/a;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/a;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 50
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/a;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 11

    move-object/from16 v0, p8

    if-eqz v0, :cond_0

    .line 94
    array-length v1, v0

    new-array v1, v1, [Landroid/view/MenuItem;

    :goto_0
    move-object v10, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 97
    :goto_1
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 98
    invoke-interface/range {v2 .. v10}, Landroid/view/Menu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    move-result p1

    if-eqz v10, :cond_1

    .line 101
    array-length p2, v10

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p2, :cond_1

    .line 102
    aget-object p4, v10, p3

    invoke-virtual {p0, p4}, Landroidx/appcompat/view/menu/a;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p4

    aput-object p4, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_1
    return p1
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/a;->b(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    .line 85
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    .line 86
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/a;->b(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .line 80
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/a;->b(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .line 70
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/a;->b(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 83
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->b:Landroidx/collection/SimpleArrayMap;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 86
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->c:Landroidx/collection/SimpleArrayMap;

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 124
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    return-void
.end method

.method public close()V
    .locals 1

    .line 164
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 1

    .line 149
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/a;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    .line 159
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/a;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public hasVisibleItems()Z
    .locals 1

    .line 144
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 174
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1, p2}, Landroid/view/Menu;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public performIdentifierAction(II)Z
    .locals 1

    .line 179
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1, p2}, Landroid/view/Menu;->performIdentifierAction(II)Z

    move-result p1

    return p1
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 1

    .line 169
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1
.end method

.method public removeGroup(I)V
    .locals 2

    .line 92
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->b:Landroidx/collection/SimpleArrayMap;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 95
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/a;->b:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 96
    iget-object v1, p0, Landroidx/appcompat/view/menu/a;->b:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 97
    iget-object v1, p0, Landroidx/appcompat/view/menu/a;->b:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->removeGroup(I)V

    return-void
.end method

.method public removeItem(I)V
    .locals 2

    .line 104
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->b:Landroidx/collection/SimpleArrayMap;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 107
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/a;->b:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 108
    iget-object v1, p0, Landroidx/appcompat/view/menu/a;->b:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 109
    iget-object v1, p0, Landroidx/appcompat/view/menu/a;->b:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->removeItem(I)V

    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 1

    .line 129
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 1

    .line 139
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1, p2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 1

    .line 134
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1, p2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 1

    .line 184
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->setQwertyMode(Z)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 154
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->d:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    return v0
.end method
