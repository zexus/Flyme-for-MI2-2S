.class public Lmiui/content/res/ThemeFontChangeHelper;
.super Ljava/lang/Object;
.source "ThemeFontChangeHelper.java"


# static fields
.field private static sWebViewThemeChanged:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, -0x1

    sput v0, Lmiui/content/res/ThemeFontChangeHelper;->sWebViewThemeChanged:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static markWebViewCreated(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    .line 19
    .local v0, "c":Landroid/content/res/MiuiConfiguration;
    sget v1, Lmiui/content/res/ThemeFontChangeHelper;->sWebViewThemeChanged:I

    invoke-virtual {v0, v1}, Landroid/content/res/MiuiConfiguration;->checkFontChange(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 20
    iget v1, v0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    sput v1, Lmiui/content/res/ThemeFontChangeHelper;->sWebViewThemeChanged:I

    .line 22
    :cond_0
    return-void
.end method

.method public static quitProcessIfNeed(Landroid/content/res/Configuration;)V
    .locals 3
    .param p0, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 25
    if-eqz p0, :cond_0

    const-string v1, "system_process"

    invoke-static {}, Landroid/ddm/DdmHandleAppName;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    .line 30
    .local v0, "c":Landroid/content/res/MiuiConfiguration;
    sget v1, Lmiui/content/res/ThemeFontChangeHelper;->sWebViewThemeChanged:I

    invoke-virtual {v0, v1}, Landroid/content/res/MiuiConfiguration;->checkFontChange(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const-string v1, "ThemeFontChangeHelper"

    const-string v2, "app has checked webview-font change and process will restart."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method
