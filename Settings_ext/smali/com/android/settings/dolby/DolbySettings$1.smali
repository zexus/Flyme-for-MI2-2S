.class Lcom/android/settings_ext/dolby/DolbySettings$1;
.super Ljava/lang/Object;
.source "DolbySettings.java"

# interfaces
.implements Landroid/dolby/IDsClientEvents;


# instance fields
.field final synthetic Ya:Lcom/android/settings_ext/dolby/DolbySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/dolby/DolbySettings;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings_ext/dolby/DolbySettings$1;->Ya:Lcom/android/settings_ext/dolby/DolbySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientConnected()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbySettings$1;->Ya:Lcom/android/settings_ext/dolby/DolbySettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ext/dolby/DolbySettings;->a(Lcom/android/settings_ext/dolby/DolbySettings;Z)Z

    .line 133
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbySettings$1;->Ya:Lcom/android/settings_ext/dolby/DolbySettings;

    invoke-static {v0}, Lcom/android/settings_ext/dolby/DolbySettings;->a(Lcom/android/settings_ext/dolby/DolbySettings;)V

    .line 134
    return-void
.end method

.method public onClientDisconnected()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbySettings$1;->Ya:Lcom/android/settings_ext/dolby/DolbySettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/dolby/DolbySettings;->a(Lcom/android/settings_ext/dolby/DolbySettings;Z)Z

    .line 139
    return-void
.end method

.method public onDsOn(Z)V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public onEqSettingsChanged(II)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public onProfileSelected(I)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbySettings$1;->Ya:Lcom/android/settings_ext/dolby/DolbySettings;

    invoke-static {v0}, Lcom/android/settings_ext/dolby/DolbySettings;->a(Lcom/android/settings_ext/dolby/DolbySettings;)V

    .line 148
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method
