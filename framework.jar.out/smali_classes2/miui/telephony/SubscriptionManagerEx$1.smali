.class Lmiui/telephony/SubscriptionManagerEx$1;
.super Landroid/content/BroadcastReceiver;
.source "SubscriptionManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/SubscriptionManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/SubscriptionManagerEx;


# direct methods
.method constructor <init>(Lmiui/telephony/SubscriptionManagerEx;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lmiui/telephony/SubscriptionManagerEx$1;->this$0:Lmiui/telephony/SubscriptionManagerEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 91
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$1;->this$0:Lmiui/telephony/SubscriptionManagerEx;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManagerEx;->onSubscriptionInfoChanged()V

    .line 92
    return-void
.end method
