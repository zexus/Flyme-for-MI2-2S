.class Lcom/android/internal/telephony/SubInfoRecordUpdater$1;
.super Landroid/content/BroadcastReceiver;
.source "SubInfoRecordUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubInfoRecordUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubInfoRecordUpdater;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater$1;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    const-string v13, "[Receiver]+"

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "action":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Action: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    .line 125
    const-string v13, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 126
    const-string v13, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, "simStatus":Ljava/lang/String;
    const-string v13, "slot"

    const/16 v14, -0x3e8

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 129
    .local v9, "slotId":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "slotId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " simStatus: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    .line 130
    const/16 v13, -0x3e8

    if-ne v9, v13, :cond_0

    .line 187
    .end local v8    # "simStatus":Ljava/lang/String;
    .end local v9    # "slotId":I
    :goto_0
    return-void

    .line 134
    .restart local v8    # "simStatus":Ljava/lang/String;
    .restart local v9    # "slotId":I
    :cond_0
    const-string v13, "LOADED"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 135
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$100()Landroid/telephony/TelephonyManager;

    move-result-object v13

    if-nez v13, :cond_1

    .line 136
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$200()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v13

    # setter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v13}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$102(Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 139
    :cond_1
    const-string v13, "subscription"

    const-wide/16 v14, -0x3e8

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 142
    .local v10, "subId":J
    invoke-static {v10, v11}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 143
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(J)Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, "msisdn":Ljava/lang/String;
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$200()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 146
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v4, :cond_2

    .line 147
    new-instance v7, Landroid/content/ContentValues;

    const/4 v13, 0x1

    invoke-direct {v7, v13}, Landroid/content/ContentValues;-><init>(I)V

    .line 148
    .local v7, "number":Landroid/content/ContentValues;
    const-string v13, "number"

    invoke-virtual {v7, v13, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object v13, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_id="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v3, v13, v7, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 153
    .end local v7    # "number":Landroid/content/ContentValues;
    :cond_2
    invoke-static {v10, v11}, Landroid/telephony/SubscriptionManager;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v12

    .line 156
    .local v12, "subInfo":Landroid/telephony/SubInfoRecord;
    if-eqz v12, :cond_3

    iget v13, v12, Landroid/telephony/SubInfoRecord;->nameSource:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_3

    .line 173
    const-string v6, ""

    .line 176
    .local v6, "nameToSet":Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v13, 0x1

    invoke-direct {v5, v13}, Landroid/content/ContentValues;-><init>(I)V

    .line 177
    .local v5, "name":Landroid/content/ContentValues;
    const-string v13, "display_name"

    invoke-virtual {v5, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v13, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_id="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v3, v13, v5, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 186
    .end local v3    # "contentResolver":Landroid/content/ContentResolver;
    .end local v4    # "msisdn":Ljava/lang/String;
    .end local v5    # "name":Landroid/content/ContentValues;
    .end local v6    # "nameToSet":Ljava/lang/String;
    .end local v8    # "simStatus":Ljava/lang/String;
    .end local v9    # "slotId":I
    .end local v10    # "subId":J
    .end local v12    # "subInfo":Landroid/telephony/SubInfoRecord;
    :cond_3
    :goto_1
    const-string v13, "[Receiver]-"

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    .restart local v8    # "simStatus":Ljava/lang/String;
    .restart local v9    # "slotId":I
    .restart local v10    # "subId":J
    :cond_4
    const-string v13, "[Receiver] Invalid subId, could not update ContentResolver"

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    goto :goto_1
.end method
