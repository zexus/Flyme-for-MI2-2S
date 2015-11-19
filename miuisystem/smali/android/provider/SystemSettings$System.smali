.class public Landroid/provider/SystemSettings$System;
.super Ljava/lang/Object;
.source "SystemSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SystemSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "System"
.end annotation


# static fields
.field public static final LOCK_WALLPAPER_PROVIDER_AUTHORITY:Ljava/lang/String; = "lock_wallpaper_provider_authority"

.field public static final PERSIST_SYS_DEVICE_NAME:Ljava/lang/String; = "persist.sys.device_name"

.field public static final STATUS_BAR_WINDOW_LOADED:Ljava/lang/String; = "status_bar_window_loaded"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static getDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 35
    sget v1, Lcom/miui/system/internal/R$string;->device_xiaomi:I

    .line 36
    .local v1, "deviceNameRes":I
    const-string v3, "is_hongmi"

    invoke-static {v3, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    sget v1, Lcom/miui/system/internal/R$string;->device_hongmi:I

    .line 45
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "defaultName":Ljava/lang/String;
    const-string v3, "persist.sys.device_name"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "name":Ljava/lang/String;
    return-object v2

    .line 38
    .end local v0    # "defaultName":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    const-string v3, "is_xiaomi"

    invoke-static {v3, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39
    sget v1, Lcom/miui/system/internal/R$string;->device_xiaomi:I

    goto :goto_0

    .line 40
    :cond_1
    const-string v3, "is_pad"

    invoke-static {v3, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    sget v1, Lcom/miui/system/internal/R$string;->device_pad:I

    goto :goto_0

    .line 43
    :cond_2
    sget v1, Lcom/miui/system/internal/R$string;->miui_device_name:I

    goto :goto_0
.end method

.method public static setDeviceName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string v0, "persist.sys.device_name"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {p0}, Landroid/provider/SystemSettings$System;->setNetHostName(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public static setNetHostName(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v11, 0x1e

    .line 59
    const-string v1, "net.hostname"

    .line 60
    .local v1, "NET_HOSTNAME_PROPERTY":Ljava/lang/String;
    const/16 v0, 0x1e

    .line 61
    .local v0, "MAX_HOSTNAME_LENGTH":I
    const-string v8, "net.hostname"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "netHostName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v3, "nameBuilder":Ljava/lang/StringBuilder;
    sget-object v8, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v8, "-"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {}, Lmiui/text/ChinesePinyinConverter;->getInstance()Lmiui/text/ChinesePinyinConverter;

    move-result-object v8

    invoke-static {p0}, Landroid/provider/SystemSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lmiui/text/ChinesePinyinConverter;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 67
    .local v7, "tokenList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/text/ChinesePinyinConverter$Token;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/text/ChinesePinyinConverter$Token;

    .line 68
    .local v6, "token":Lmiui/text/ChinesePinyinConverter$Token;
    iget-object v8, v6, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 70
    .end local v6    # "token":Lmiui/text/ChinesePinyinConverter$Token;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "newNetHostName":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 72
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_1

    .line 73
    const/4 v8, 0x0

    invoke-virtual {v5, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 75
    :cond_1
    const-string v8, "net.hostname"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_2
    return-void
.end method
