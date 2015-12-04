.class public Lcom/miui/fmradio/FmMediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FmMediaButtonIntentReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    const-string v6, "phone"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 18
    .local v5, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    if-eqz v6, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v6, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 24
    const-string v6, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 26
    .local v1, "event":Landroid/view/KeyEvent;
    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 30
    .local v4, "keycode":I
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    .line 31
    .local v3, "keyaction":I
    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    const/16 v6, 0x4f

    if-eq v6, v4, :cond_2

    const/16 v6, 0x7f

    if-eq v6, v4, :cond_2

    const/16 v6, 0x7e

    if-eq v6, v4, :cond_2

    const/16 v6, 0x57

    if-eq v6, v4, :cond_2

    const/16 v6, 0x58

    if-eq v6, v4, :cond_2

    const/16 v6, 0x55

    if-ne v6, v4, :cond_0

    .line 38
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.miui.fmradio.action.MEDIA_BUTTON"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v2, "i":Landroid/content/Intent;
    const-string v6, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
