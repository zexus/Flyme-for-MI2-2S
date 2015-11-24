.class Lcom/android/settings_ext/gB;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/settings_ext/eN;


# instance fields
.field final synthetic xX:Lcom/android/settings_ext/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/SoundSettings;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/settings_ext/gB;->xX:Lcom/android/settings_ext/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientConnected()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/settings_ext/gB;->xX:Lcom/android/settings_ext/SoundSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ext/SoundSettings;->a(Lcom/android/settings_ext/SoundSettings;Z)Z

    .line 342
    iget-object v0, p0, Lcom/android/settings_ext/gB;->xX:Lcom/android/settings_ext/SoundSettings;

    invoke-static {v0}, Lcom/android/settings_ext/SoundSettings;->c(Lcom/android/settings_ext/SoundSettings;)V

    .line 343
    return-void
.end method

.method public onClientDisconnected()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/settings_ext/gB;->xX:Lcom/android/settings_ext/SoundSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/SoundSettings;->a(Lcom/android/settings_ext/SoundSettings;Z)Z

    .line 348
    return-void
.end method

.method public onDsOn(Z)V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method public onEqSettingsChanged(II)V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 364
    return-void
.end method

.method public onProfileSelected(I)V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 0

    .prologue
    .line 360
    return-void
.end method
