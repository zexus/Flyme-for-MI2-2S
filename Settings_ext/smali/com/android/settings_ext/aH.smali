.class Lcom/android/settings_ext/aH;
.super Landroid/os/Handler;
.source "CryptKeeper.java"


# instance fields
.field final synthetic fb:Lcom/android/settings_ext/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/CryptKeeper;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/settings_ext/aH;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 282
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 295
    :goto_0
    return-void

    .line 284
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ext/aH;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings_ext/CryptKeeper;->g(Lcom/android/settings_ext/CryptKeeper;)V

    goto :goto_0

    .line 288
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ext/aH;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings_ext/CryptKeeper;->d(Lcom/android/settings_ext/CryptKeeper;)V

    goto :goto_0

    .line 292
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ext/aH;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings_ext/CryptKeeper;->h(Lcom/android/settings_ext/CryptKeeper;)V

    goto :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
