.class Lcom/android/settings_ext/gj;
.super Landroid/os/Handler;
.source "SettingsActivity.java"


# instance fields
.field final synthetic xh:Lcom/android/settings_ext/gh;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/gh;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/settings_ext/gj;->xh:Lcom/android/settings_ext/gh;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 365
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 367
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "msg_data_force_refresh"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 368
    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/settings_ext/gj;->xh:Lcom/android/settings_ext/gh;

    iget-object v1, p0, Lcom/android/settings_ext/gj;->xh:Lcom/android/settings_ext/gh;

    invoke-static {v1}, Lcom/android/settings_ext/gh;->b(Lcom/android/settings_ext/gh;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/gh;->a(Lcom/android/settings_ext/gh;Ljava/util/List;)V

    goto :goto_0

    .line 365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
