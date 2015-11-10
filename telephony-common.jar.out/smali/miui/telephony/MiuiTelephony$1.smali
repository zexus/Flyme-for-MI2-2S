.class Lmiui/telephony/MiuiTelephony$1;
.super Landroid/os/Handler;
.source "MiuiTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/MiuiTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/MiuiTelephony;


# direct methods
.method constructor <init>(Lmiui/telephony/MiuiTelephony;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lmiui/telephony/MiuiTelephony$1;->this$0:Lmiui/telephony/MiuiTelephony;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 57
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 58
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v4, p0, Lmiui/telephony/MiuiTelephony$1;->this$0:Lmiui/telephony/MiuiTelephony;

    invoke-virtual {v4}, Lmiui/telephony/MiuiTelephony;->onInitDefaultSlot()V

    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v4, p0, Lmiui/telephony/MiuiTelephony$1;->this$0:Lmiui/telephony/MiuiTelephony;

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v5

    # invokes: Lmiui/telephony/MiuiTelephony;->syncVoiceSubscription(Ljava/util/List;)V
    invoke-static {v4, v5}, Lmiui/telephony/MiuiTelephony;->access$000(Lmiui/telephony/MiuiTelephony;Ljava/util/List;)V

    goto :goto_0

    .line 66
    :pswitch_2
    iget-object v4, p0, Lmiui/telephony/MiuiTelephony$1;->this$0:Lmiui/telephony/MiuiTelephony;

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v5

    # invokes: Lmiui/telephony/MiuiTelephony;->syncVoiceSubscription(Ljava/util/List;)V
    invoke-static {v4, v5}, Lmiui/telephony/MiuiTelephony;->access$000(Lmiui/telephony/MiuiTelephony;Ljava/util/List;)V

    goto :goto_0

    .line 69
    :pswitch_3
    const/4 v2, 0x0

    .line 70
    .local v2, "cardIndex":Ljava/lang/Integer;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 71
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v2    # "cardIndex":Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;

    .line 76
    .restart local v2    # "cardIndex":Ljava/lang/Integer;
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 77
    .local v1, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    iget-object v4, p0, Lmiui/telephony/MiuiTelephony$1;->this$0:Lmiui/telephony/MiuiTelephony;

    # getter for: Lmiui/telephony/MiuiTelephony;->mSimApplicationNum:[I
    invoke-static {v4}, Lmiui/telephony/MiuiTelephony;->access$200(Lmiui/telephony/MiuiTelephony;)[I

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v3, v4, v6

    .line 78
    .local v3, "lastAppNum":I
    iget-object v4, p0, Lmiui/telephony/MiuiTelephony$1;->this$0:Lmiui/telephony/MiuiTelephony;

    # getter for: Lmiui/telephony/MiuiTelephony;->mSimApplicationNum:[I
    invoke-static {v4}, Lmiui/telephony/MiuiTelephony;->access$200(Lmiui/telephony/MiuiTelephony;)[I

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v1, :cond_2

    move v4, v5

    :goto_1
    aput v4, v6, v7

    .line 79
    if-eqz v3, :cond_3

    iget-object v4, p0, Lmiui/telephony/MiuiTelephony$1;->this$0:Lmiui/telephony/MiuiTelephony;

    # getter for: Lmiui/telephony/MiuiTelephony;->mSimApplicationNum:[I
    invoke-static {v4}, Lmiui/telephony/MiuiTelephony;->access$200(Lmiui/telephony/MiuiTelephony;)[I

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v4, v4, v6

    if-nez v4, :cond_3

    .line 81
    # getter for: Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/telephony/MiuiTelephony;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v6, "EVENT_ICC_CHANGED sim application is not OK"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v4, p0, Lmiui/telephony/MiuiTelephony$1;->this$0:Lmiui/telephony/MiuiTelephony;

    # getter for: Lmiui/telephony/MiuiTelephony;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lmiui/telephony/MiuiTelephony;->access$300(Lmiui/telephony/MiuiTelephony;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 73
    .end local v1    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v3    # "lastAppNum":I
    :cond_1
    # getter for: Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/telephony/MiuiTelephony;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error: Invalid card index EVENT_ICC_CHANGED "

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    .restart local v1    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    .restart local v3    # "lastAppNum":I
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v4

    goto :goto_1

    .line 83
    :cond_3
    if-nez v3, :cond_0

    iget-object v4, p0, Lmiui/telephony/MiuiTelephony$1;->this$0:Lmiui/telephony/MiuiTelephony;

    # getter for: Lmiui/telephony/MiuiTelephony;->mSimApplicationNum:[I
    invoke-static {v4}, Lmiui/telephony/MiuiTelephony;->access$200(Lmiui/telephony/MiuiTelephony;)[I

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v4, v4, v6

    if-eqz v4, :cond_0

    .line 85
    # getter for: Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/telephony/MiuiTelephony;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v6, "EVENT_ICC_CHANGED sim application is OK"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v4, p0, Lmiui/telephony/MiuiTelephony$1;->this$0:Lmiui/telephony/MiuiTelephony;

    # getter for: Lmiui/telephony/MiuiTelephony;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lmiui/telephony/MiuiTelephony;->access$300(Lmiui/telephony/MiuiTelephony;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    iget-object v4, p0, Lmiui/telephony/MiuiTelephony$1;->this$0:Lmiui/telephony/MiuiTelephony;

    const/4 v5, 0x0

    # setter for: Lmiui/telephony/MiuiTelephony;->mLastSubInfos:Ljava/util/List;
    invoke-static {v4, v5}, Lmiui/telephony/MiuiTelephony;->access$402(Lmiui/telephony/MiuiTelephony;Ljava/util/List;)Ljava/util/List;

    .line 88
    iget-object v4, p0, Lmiui/telephony/MiuiTelephony$1;->this$0:Lmiui/telephony/MiuiTelephony;

    invoke-virtual {v4}, Lmiui/telephony/MiuiTelephony;->onSubscriptionsChanged()V

    goto/16 :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
