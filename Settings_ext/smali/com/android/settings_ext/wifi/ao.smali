.class public Lcom/android/settings_ext/wifi/ao;
.super Ljava/lang/Object;
.source "WifiSettings.java"


# instance fields
.field private final avZ:Ljava/util/HashMap;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/ao;->avZ:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method p(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings_ext/wifi/ao;->avZ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 210
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings_ext/wifi/ao;->avZ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 215
    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    iget-object v1, p0, Lcom/android/settings_ext/wifi/ao;->avZ:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    return-void
.end method
