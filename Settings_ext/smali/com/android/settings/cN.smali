.class Lcom/android/settings/cN;
.super Landroid/os/Handler;
.source "IccLockSettings.java"


# instance fields
.field final synthetic mU:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/settings/cN;->mU:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 113
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 115
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/cN;->mU:Lcom/android/settings/IccLockSettings;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/settings/IccLockSettings;->a(Lcom/android/settings/IccLockSettings;Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 118
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/cN;->mU:Lcom/android/settings/IccLockSettings;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/settings/IccLockSettings;->b(Lcom/android/settings/IccLockSettings;Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 121
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/cN;->mU:Lcom/android/settings/IccLockSettings;

    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->a(Lcom/android/settings/IccLockSettings;)V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
