.class Lcom/android/settings_ext/u;
.super Landroid/os/Handler;
.source "AirplaneModeEnabler.java"


# instance fields
.field final synthetic ad:Lcom/android/settings_ext/t;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/t;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings_ext/u;->ad:Lcom/android/settings_ext/t;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ext/u;->ad:Lcom/android/settings_ext/t;

    invoke-static {v0}, Lcom/android/settings_ext/t;->a(Lcom/android/settings_ext/t;)V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
