.class public Lmiui/mipub/MipubUtils;
.super Ljava/lang/Object;
.source "MipubUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MipubUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasFollowedMipubs(Landroid/content/ContentResolver;)Z
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 20
    const-string v3, "has_followed_mipub"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 23
    .local v1, "followedInt":I
    if-ne v1, v0, :cond_0

    .line 25
    .local v0, "followed":Z
    :goto_0
    return v0

    .end local v0    # "followed":Z
    :cond_0
    move v0, v2

    .line 23
    goto :goto_0
.end method

.method public static setHasFollowedMipubs(Landroid/content/ContentResolver;Z)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "followed"    # Z

    .prologue
    .line 29
    const-string v1, "has_followed_mipub"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 33
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
