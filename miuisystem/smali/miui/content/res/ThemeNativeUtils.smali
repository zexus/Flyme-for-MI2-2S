.class public Lmiui/content/res/ThemeNativeUtils;
.super Ljava/lang/Object;
.source "ThemeNativeUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "themeutils_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isContainXXXhdpiResource(Landroid/content/res/AssetManager;)Z
    .locals 1
    .param p0, "asset"    # Landroid/content/res/AssetManager;

    .prologue
    .line 21
    invoke-static {p0}, Lmiui/content/res/ThemeNativeUtils;->nIsContainXXXhdpiResource(Landroid/content/res/AssetManager;)Z

    move-result v0

    return v0
.end method

.method private static native nIsContainXXXhdpiResource(Landroid/content/res/AssetManager;)Z
.end method

.method private static native nTerminateAtlas()V
.end method

.method public static terminateAtlas()V
    .locals 0

    .prologue
    .line 17
    invoke-static {}, Lmiui/content/res/ThemeNativeUtils;->nTerminateAtlas()V

    .line 18
    return-void
.end method
