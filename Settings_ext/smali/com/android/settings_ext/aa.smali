.class Lcom/android/settings_ext/aa;
.super Landroid/os/Handler;
.source "BatteryInfo.java"


# instance fields
.field final synthetic cm:Lcom/android/settings_ext/BatteryInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/BatteryInfo;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings_ext/aa;->cm:Lcom/android/settings_ext/BatteryInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ext/aa;->cm:Lcom/android/settings_ext/BatteryInfo;

    invoke-static {v0}, Lcom/android/settings_ext/BatteryInfo;->a(Lcom/android/settings_ext/BatteryInfo;)V

    .line 59
    const/4 v0, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/settings_ext/aa;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
