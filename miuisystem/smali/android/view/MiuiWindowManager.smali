.class public Landroid/view/MiuiWindowManager;
.super Ljava/lang/Object;
.source "MiuiWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MiuiWindowManager$LayoutParams;
    }
.end annotation


# static fields
.field private static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field private static final TYPE_LAYER_OFFSET:I = 0x3e8

.field private static sTypeLayers:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static getLayer(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 93
    invoke-static {p0}, Landroid/view/MiuiWindowManager;->loadTypeLayerIfNeed(Landroid/content/Context;)V

    .line 94
    const/4 v0, 0x2

    .line 95
    .local v0, "typeLayer":I
    sget-object v1, Landroid/view/MiuiWindowManager;->sTypeLayers:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_0

    .line 96
    sget-object v1, Landroid/view/MiuiWindowManager;->sTypeLayers:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 98
    :cond_0
    mul-int/lit16 v1, v0, 0x2710

    add-int/lit16 v1, v1, 0x3e8

    return v1
.end method

.method private static loadTypeLayerIfNeed(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    sget-object v7, Landroid/view/MiuiWindowManager;->sTypeLayers:Landroid/util/SparseIntArray;

    if-eqz v7, :cond_0

    sget-object v7, Landroid/view/MiuiWindowManager;->sTypeLayers:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "window_type_layer"

    invoke-static {v7, v8}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "strJsonTypeLayer":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 75
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    .local v2, "jsonTypeLayer":Lorg/json/JSONObject;
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v7, Landroid/view/MiuiWindowManager;->sTypeLayers:Landroid/util/SparseIntArray;

    .line 77
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 78
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 80
    .local v6, "strType":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 81
    .local v4, "nType":I
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 82
    .local v3, "layer":I
    sget-object v7, Landroid/view/MiuiWindowManager;->sTypeLayers:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "jsonTypeLayer":Lorg/json/JSONObject;
    .end local v3    # "layer":I
    .end local v4    # "nType":I
    .end local v6    # "strType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Lorg/json/JSONException;
    const/4 v7, 0x0

    sput-object v7, Landroid/view/MiuiWindowManager;->sTypeLayers:Landroid/util/SparseIntArray;

    .line 86
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 90
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v5    # "strJsonTypeLayer":Ljava/lang/String;
    :cond_1
    return-void
.end method
