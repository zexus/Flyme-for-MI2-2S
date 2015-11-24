.class Lcom/android/settings_ext/users/UserSettings$1;
.super Landroid/os/Handler;
.source "UserSettings.java"


# instance fields
.field final synthetic amU:Lcom/android/settings_ext/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/users/UserSettings;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings_ext/users/UserSettings$1;->amU:Lcom/android/settings_ext/users/UserSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ext/users/UserSettings$1;->amU:Lcom/android/settings_ext/users/UserSettings;

    invoke-static {v0}, Lcom/android/settings_ext/users/UserSettings;->a(Lcom/android/settings_ext/users/UserSettings;)V

    goto :goto_0

    .line 155
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ext/users/UserSettings$1;->amU:Lcom/android/settings_ext/users/UserSettings;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/settings_ext/users/UserSettings;->a(Lcom/android/settings_ext/users/UserSettings;I)V

    goto :goto_0

    .line 158
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ext/users/UserSettings$1;->amU:Lcom/android/settings_ext/users/UserSettings;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/settings_ext/users/UserSettings;->a(Lcom/android/settings_ext/users/UserSettings;IZ)V

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
