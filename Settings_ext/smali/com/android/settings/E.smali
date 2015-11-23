.class Lcom/android/settings_ext/E;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# instance fields
.field final synthetic ba:Lcom/android/settings_ext/ApnSettings;

.field private bb:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/settings_ext/E;->ba:Lcom/android/settings_ext/ApnSettings;

    .line 556
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 557
    iput-object p3, p0, Lcom/android/settings_ext/E;->bb:Landroid/os/Handler;

    .line 558
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 562
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 570
    :goto_0
    return-void

    .line 564
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ext/E;->ba:Lcom/android/settings_ext/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 565
    iget-object v1, p0, Lcom/android/settings_ext/E;->ba:Lcom/android/settings_ext/ApnSettings;

    invoke-static {}, Lcom/android/settings_ext/ApnSettings;->K()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings_ext/ApnSettings;->a(Lcom/android/settings_ext/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 566
    iget-object v0, p0, Lcom/android/settings_ext/E;->bb:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 562
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
