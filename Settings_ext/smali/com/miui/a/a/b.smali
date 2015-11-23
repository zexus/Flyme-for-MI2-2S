.class public Lcom/miui/a/a/b;
.super Ljava/lang/Object;
.source "ScreensaverPreferenceHelper.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/miui/a/a/b;->mContentResolver:Landroid/content/ContentResolver;

    .line 13
    return-void
.end method


# virtual methods
.method public bw(Z)V
    .locals 3

    .prologue
    .line 34
    iget-object v1, p0, Lcom/miui/a/a/b;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screensaver_activate_mode"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 37
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bx(Z)V
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lcom/miui/a/a/b;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screensaver_activate_only_charging"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 61
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ch(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/miui/a/a/b;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screensaver-path"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    return-void
.end method

.method public dJ(I)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/a/a/b;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "slideshow_time"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 73
    return-void
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/a/a/b;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screensaver-display-name"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/a/a/b;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screensaver-display-name"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    return-void
.end method

.method public yA()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 52
    iget-object v1, p0, Lcom/miui/a/a/b;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screensaver_activate_only_charging"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public yB()I
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/a/a/b;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "slideshow_time"

    const/16 v2, 0x708

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public yy()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/a/a/b;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screensaver-path"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public yz()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    iget-object v2, p0, Lcom/miui/a/a/b;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screensaver_activate_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
