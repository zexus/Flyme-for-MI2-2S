.class Lmiui/telephony/MiuiTelephony$TelephonyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/MiuiTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/MiuiTelephony;


# direct methods
.method private constructor <init>(Lmiui/telephony/MiuiTelephony;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lmiui/telephony/MiuiTelephony$TelephonyBroadcastReceiver;->this$0:Lmiui/telephony/MiuiTelephony;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/telephony/MiuiTelephony;Lmiui/telephony/MiuiTelephony$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/telephony/MiuiTelephony;
    .param p2, "x1"    # Lmiui/telephony/MiuiTelephony$1;

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lmiui/telephony/MiuiTelephony$TelephonyBroadcastReceiver;-><init>(Lmiui/telephony/MiuiTelephony;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 429
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lmiui/telephony/MiuiTelephony$TelephonyBroadcastReceiver;->this$0:Lmiui/telephony/MiuiTelephony;

    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {p2, v1}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v1

    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/MiuiTelephony;->onSimStateChanged(ILjava/lang/String;)V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    iget-object v0, p0, Lmiui/telephony/MiuiTelephony$TelephonyBroadcastReceiver;->this$0:Lmiui/telephony/MiuiTelephony;

    invoke-virtual {v0}, Lmiui/telephony/MiuiTelephony;->onDefaultDataSubscriptionChanged()V

    goto :goto_0

    .line 434
    :cond_2
    const-string v0, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lmiui/telephony/MiuiTelephony$TelephonyBroadcastReceiver;->this$0:Lmiui/telephony/MiuiTelephony;

    # invokes: Lmiui/telephony/MiuiTelephony;->onDefaultVoiceSubscriptionChanged()V
    invoke-static {v0}, Lmiui/telephony/MiuiTelephony;->access$600(Lmiui/telephony/MiuiTelephony;)V

    goto :goto_0
.end method

.method register(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 422
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 423
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 425
    return-void
.end method
