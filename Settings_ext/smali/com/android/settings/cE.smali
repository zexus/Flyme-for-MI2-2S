.class Lcom/android/settings/cE;
.super Ljava/lang/Object;
.source "HeadsetSettings.java"

# interfaces
.implements Lcom/android/settings/eN;


# instance fields
.field final synthetic mq:Lcom/android/settings/HeadsetSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/HeadsetSettings;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/settings/cE;->mq:Lcom/android/settings/HeadsetSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientConnected()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/settings/cE;->mq:Lcom/android/settings/HeadsetSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/HeadsetSettings;->a(Lcom/android/settings/HeadsetSettings;Z)Z

    .line 310
    iget-object v0, p0, Lcom/android/settings/cE;->mq:Lcom/android/settings/HeadsetSettings;

    invoke-static {v0}, Lcom/android/settings/HeadsetSettings;->b(Lcom/android/settings/HeadsetSettings;)V

    .line 311
    return-void
.end method

.method public onClientDisconnected()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/settings/cE;->mq:Lcom/android/settings/HeadsetSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/HeadsetSettings;->a(Lcom/android/settings/HeadsetSettings;Z)Z

    .line 316
    return-void
.end method

.method public onDsOn(Z)V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method public onEqSettingsChanged(II)V
    .locals 0

    .prologue
    .line 336
    return-void
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method public onProfileSelected(I)V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 0

    .prologue
    .line 328
    return-void
.end method
