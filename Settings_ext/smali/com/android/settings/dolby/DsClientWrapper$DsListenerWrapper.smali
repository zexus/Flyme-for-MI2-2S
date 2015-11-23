.class Lcom/android/settings/dolby/DsClientWrapper$DsListenerWrapper;
.super Ljava/lang/Object;
.source "DsClientWrapper.java"

# interfaces
.implements Landroid/dolby/IDsClientEvents;


# instance fields
.field private Yb:Lcom/android/settings/eN;


# direct methods
.method public constructor <init>(Lcom/android/settings/eN;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/settings/dolby/DsClientWrapper$DsListenerWrapper;->Yb:Lcom/android/settings/eN;

    .line 62
    return-void
.end method


# virtual methods
.method public onClientConnected()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/dolby/DsClientWrapper$DsListenerWrapper;->Yb:Lcom/android/settings/eN;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings/dolby/DsClientWrapper$DsListenerWrapper;->Yb:Lcom/android/settings/eN;

    invoke-interface {v0}, Lcom/android/settings/eN;->onClientConnected()V

    .line 111
    :cond_0
    return-void
.end method

.method public onClientDisconnected()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/dolby/DsClientWrapper$DsListenerWrapper;->Yb:Lcom/android/settings/eN;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/settings/dolby/DsClientWrapper$DsListenerWrapper;->Yb:Lcom/android/settings/eN;

    invoke-interface {v0}, Lcom/android/settings/eN;->onClientDisconnected()V

    .line 104
    :cond_0
    return-void
.end method

.method public onDsOn(Z)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/dolby/DsClientWrapper$DsListenerWrapper;->Yb:Lcom/android/settings/eN;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/settings/dolby/DsClientWrapper$DsListenerWrapper;->Yb:Lcom/android/settings/eN;

    invoke-interface {v0, p1}, Lcom/android/settings/eN;->onDsOn(Z)V

    .line 97
    :cond_0
    return-void
.end method

.method public onEqSettingsChanged(II)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/dolby/DsClientWrapper$DsListenerWrapper;->Yb:Lcom/android/settings/eN;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/dolby/DsClientWrapper$DsListenerWrapper;->Yb:Lcom/android/settings/eN;

    invoke-interface {v0, p1, p2}, Lcom/android/settings/eN;->onEqSettingsChanged(II)V

    .line 90
    :cond_0
    return-void
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/dolby/DsClientWrapper$DsListenerWrapper;->Yb:Lcom/android/settings/eN;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/settings/dolby/DsClientWrapper$DsListenerWrapper;->Yb:Lcom/android/settings/eN;

    invoke-interface {v0, p1, p2}, Lcom/android/settings/eN;->onProfileNameChanged(ILjava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method public onProfileSelected(I)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/dolby/DsClientWrapper$DsListenerWrapper;->Yb:Lcom/android/settings/eN;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings/dolby/DsClientWrapper$DsListenerWrapper;->Yb:Lcom/android/settings/eN;

    invoke-interface {v0, p1}, Lcom/android/settings/eN;->onProfileSelected(I)V

    .line 76
    :cond_0
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/dolby/DsClientWrapper$DsListenerWrapper;->Yb:Lcom/android/settings/eN;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/settings/dolby/DsClientWrapper$DsListenerWrapper;->Yb:Lcom/android/settings/eN;

    invoke-interface {v0, p1}, Lcom/android/settings/eN;->onProfileSettingsChanged(I)V

    .line 69
    :cond_0
    return-void
.end method
