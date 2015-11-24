.class public Lcom/android/settings_ext/dolby/DsClientWrapper;
.super Lcom/android/settings_ext/eM;
.source "DsClientWrapper.java"


# instance fields
.field private XF:Landroid/dolby/DsClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/settings_ext/eM;-><init>()V

    .line 15
    new-instance v0, Landroid/dolby/DsClient;

    invoke-direct {v0}, Landroid/dolby/DsClient;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/dolby/DsClientWrapper;->XF:Landroid/dolby/DsClient;

    .line 56
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/eN;)V
    .locals 2

    .prologue
    .line 19
    if-eqz p1, :cond_0

    .line 20
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DsClientWrapper;->XF:Landroid/dolby/DsClient;

    new-instance v1, Lcom/android/settings_ext/dolby/DsClientWrapper$DsListenerWrapper;

    invoke-direct {v1, p1}, Lcom/android/settings_ext/dolby/DsClientWrapper$DsListenerWrapper;-><init>(Lcom/android/settings_ext/eN;)V

    invoke-virtual {v0, v1}, Landroid/dolby/DsClient;->setEventListener(Landroid/dolby/IDsClientEvents;)V

    .line 22
    :cond_0
    return-void
.end method

.method public bindDsService(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DsClientWrapper;->XF:Landroid/dolby/DsClient;

    invoke-virtual {v0, p1}, Landroid/dolby/DsClient;->bindDsService(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public fH()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public fI()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public getDsOn()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DsClientWrapper;->XF:Landroid/dolby/DsClient;

    invoke-virtual {v0}, Landroid/dolby/DsClient;->getDsOn()Z

    move-result v0

    return v0
.end method

.method public getSelectedProfile()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DsClientWrapper;->XF:Landroid/dolby/DsClient;

    invoke-virtual {v0}, Landroid/dolby/DsClient;->getSelectedProfile()I

    move-result v0

    return v0
.end method

.method public unBindDsService(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DsClientWrapper;->XF:Landroid/dolby/DsClient;

    invoke-virtual {v0, p1}, Landroid/dolby/DsClient;->unBindDsService(Landroid/content/Context;)V

    .line 32
    return-void
.end method
