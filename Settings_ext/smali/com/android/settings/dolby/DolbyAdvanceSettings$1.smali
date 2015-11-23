.class Lcom/android/settings/dolby/DolbyAdvanceSettings$1;
.super Ljava/lang/Object;
.source "DolbyAdvanceSettings.java"

# interfaces
.implements Landroid/dolby/IDsClientEvents;


# instance fields
.field final synthetic XH:Lcom/android/settings/dolby/DolbyAdvanceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/dolby/DolbyAdvanceSettings;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings$1;->XH:Lcom/android/settings/dolby/DolbyAdvanceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientConnected()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings$1;->XH:Lcom/android/settings/dolby/DolbyAdvanceSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/dolby/DolbyAdvanceSettings;->a(Lcom/android/settings/dolby/DolbyAdvanceSettings;Z)Z

    .line 191
    iget-object v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings$1;->XH:Lcom/android/settings/dolby/DolbyAdvanceSettings;

    invoke-static {v0}, Lcom/android/settings/dolby/DolbyAdvanceSettings;->a(Lcom/android/settings/dolby/DolbyAdvanceSettings;)V

    .line 192
    return-void
.end method

.method public onClientDisconnected()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings$1;->XH:Lcom/android/settings/dolby/DolbyAdvanceSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/dolby/DolbyAdvanceSettings;->a(Lcom/android/settings/dolby/DolbyAdvanceSettings;Z)Z

    .line 197
    return-void
.end method

.method public onDsOn(Z)V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public onEqSettingsChanged(II)V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public onProfileSelected(I)V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/dolby/DolbyAdvanceSettings$1;->XH:Lcom/android/settings/dolby/DolbyAdvanceSettings;

    invoke-static {v0}, Lcom/android/settings/dolby/DolbyAdvanceSettings;->a(Lcom/android/settings/dolby/DolbyAdvanceSettings;)V

    .line 210
    return-void
.end method
