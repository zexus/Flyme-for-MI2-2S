.class Lcom/android/settings_ext/deviceinfo/Status$MyHandler;
.super Landroid/os/Handler;
.source "Status.java"


# instance fields
.field private Tk:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/deviceinfo/Status;)V
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 184
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status$MyHandler;->Tk:Ljava/lang/ref/WeakReference;

    .line 185
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status$MyHandler;->Tk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/deviceinfo/Status;

    .line 190
    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 194
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 196
    :sswitch_0
    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/Status;->fZ()V

    goto :goto_0

    .line 200
    :sswitch_1
    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/Status;->a(Lcom/android/settings_ext/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 201
    invoke-static {v0, v1}, Lcom/android/settings_ext/deviceinfo/Status;->a(Lcom/android/settings_ext/deviceinfo/Status;Landroid/telephony/ServiceState;)V

    goto :goto_0

    .line 205
    :sswitch_2
    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/Status;->jF()V

    .line 206
    const/16 v0, 0x1f4

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/settings_ext/deviceinfo/Status$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 210
    :sswitch_3
    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/Status;->ok()V

    goto :goto_0

    .line 194
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_1
        0x1f4 -> :sswitch_2
        0x258 -> :sswitch_3
    .end sparse-switch
.end method
