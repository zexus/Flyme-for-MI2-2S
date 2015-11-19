.class public Landroid/provider/SystemSettings$Secure;
.super Ljava/lang/Object;
.source "SystemSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SystemSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Secure"
.end annotation


# static fields
.field public static final PRIVACY_MODE_ENABLED:Ljava/lang/String; = "privacy_mode_enabled"

.field public static final SCREEN_BUTTONS_STATE:Ljava/lang/String; = "screen_buttons_state"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPrivacyAndReturnCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "privacy_mode_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v2, v1, :cond_0

    move v0, v2

    .line 108
    .local v0, "enabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 109
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 113
    :goto_1
    return-object v1

    .end local v0    # "enabled":Z
    :cond_0
    move v0, v3

    .line 106
    goto :goto_0

    .line 113
    .restart local v0    # "enabled":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isCtaSupported(Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 102
    sget-boolean v0, Lmiui/os/Build;->IS_CTA_BUILD:Z

    return v0
.end method
