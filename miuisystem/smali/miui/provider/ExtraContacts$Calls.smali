.class public Lmiui/provider/ExtraContacts$Calls;
.super Ljava/lang/Object;
.source "ExtraContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation


# static fields
.field public static final BACKUP_PARAM:Ljava/lang/String; = "backup"

.field public static final CLOUD_ANTISPAM_TYPE:Ljava/lang/String; = "cloud_antispam_type"

.field public static final CLOUD_ANTISPAM_TYPE_CUSTOM:I = 0x3

.field public static final CLOUD_ANTISPAM_TYPE_MAKRED:I = 0x2

.field public static final CLOUD_ANTISPAM_TYPE_NONE:I = 0x0

.field public static final CLOUD_ANTISPAM_TYPE_SP:I = 0x1

.field public static final CLOUD_ANTISPAM_TYPE_TAG:Ljava/lang/String; = "cloud_antispam_type_tag"

.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CONTENT_QUERY_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_WITH_BACKUP:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final FIREWALL_TYPE:Ljava/lang/String; = "firewalltype"

.field public static final FORWARDED_CALL:Ljava/lang/String; = "forwarded_call"

.field public static final INCOMING_FORWARDING_CALL:I = 0x1

.field public static final INCOMING_MUTE_TYPE:I = 0x2

.field public static final INCOMING_NO_FIREWALL_TYPE:I = 0x0

.field public static final INCOMING_REJECTED_TYPE:I = 0x1

.field public static final MARK_DELETED:Ljava/lang/String; = "mark_deleted"

.field public static final MISSED_COUNT:Ljava/lang/String; = "missed_count"

.field public static final MY_NUMBER:Ljava/lang/String; = "my_number"

.field public static final NEWCONTACT_TYPE:I = 0xa

.field public static final NUMBER_TYPE:Ljava/lang/String; = "number_type"

.field public static final NUMBER_TYPE_NORMAL:I = 0x0

.field public static final NUMBER_TYPE_YELLOWPAGE:I = 0x1

.field public static final PHONE_CALL_TYPE:Ljava/lang/String; = "phone_call_type"

.field public static final PHONE_CALL_TYPE_CALLBACK:I = 0x2

.field public static final PHONE_CALL_TYPE_NONE:I = 0x0

.field public static final PHONE_CALL_TYPE_VOIP:I = 0x1

.field public static final SIM_ID:Ljava/lang/String; = "simid"

.field public static final SOURCE_ID:Ljava/lang/String; = "source_id"

.field public static final SYNC1:Ljava/lang/String; = "sync_1"

.field public static final SYNC2:Ljava/lang/String; = "sync_2"

.field public static final SYNC3:Ljava/lang/String; = "sync_3"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 211
    const-string v0, "content://call_log/calls_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$Calls;->CONTENT_QUERY_URI:Landroid/net/Uri;

    .line 234
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "backup"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$Calls;->CONTENT_URI_WITH_BACKUP:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIII)Landroid/net/Uri;
    .locals 15
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "firewallType"    # I
    .param p9, "forwardedCall"    # I

    .prologue
    .line 432
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    int-to-long v10, v0

    const-wide/16 v12, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v13}, Lmiui/provider/ExtraContacts$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJ)Landroid/net/Uri;
    .locals 14
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "firewallType"    # I
    .param p9, "forwardedCall"    # I
    .param p10, "simInfoId"    # J

    .prologue
    .line 441
    const-wide/16 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v13}, Lmiui/provider/ExtraContacts$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJ)Landroid/net/Uri;
    .locals 16
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "firewallType"    # I
    .param p9, "forwardedCall"    # I
    .param p10, "simInfoId"    # J
    .param p12, "phoneCallType"    # J

    .prologue
    .line 465
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 466
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v9, 0x1

    .line 473
    .local v9, "numberPresentation":I
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_4

    .line 474
    const/4 v9, 0x2

    .line 481
    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-eq v9, v3, :cond_1

    .line 482
    const-string p2, ""

    .line 483
    if-eqz p0, :cond_1

    .line 484
    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 488
    :cond_1
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 490
    .local v14, "values":Landroid/content/ContentValues;
    const-string v3, "number"

    move-object/from16 v0, p2

    invoke-virtual {v14, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v3, "presentation"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 492
    const-string v3, "type"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 493
    const-string v3, "date"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 494
    const-string v3, "duration"

    move/from16 v0, p7

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 495
    const-string v3, "new"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 496
    const/4 v3, 0x3

    move/from16 v0, p4

    if-ne v0, v3, :cond_2

    .line 497
    const-string v3, "is_read"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    :cond_2
    if-eqz p0, :cond_3

    .line 500
    const-string v3, "name"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v3, "numbertype"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 502
    const-string v3, "numberlabel"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_3
    const-string v3, "firewalltype"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 505
    const-string v3, "forwarded_call"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 506
    const-string v3, "simid"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 507
    const-string v3, "phone_call_type"

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 510
    const/4 v3, 0x3

    move/from16 v0, p4

    if-ne v0, v3, :cond_9

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_NUMBERS_EQUAL(number,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",0)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 513
    .local v5, "selection":Ljava/lang/String;
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "type"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const-string v7, "date DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 517
    .local v8, "cursor":Landroid/database/Cursor;
    const-wide/16 v10, 0x1

    .line 518
    .local v10, "missedCount":J
    if-eqz v8, :cond_8

    .line 520
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 521
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    .line 522
    .local v12, "type":I
    const/4 v3, 0x3

    if-ne v12, v3, :cond_7

    .line 523
    const-wide/16 v6, 0x1

    add-long/2addr v10, v6

    .line 527
    goto :goto_1

    .line 475
    .end local v5    # "selection":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "missedCount":J
    .end local v12    # "type":I
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_4
    const/4 v3, 0x4

    move/from16 v0, p3

    if-ne v0, v3, :cond_5

    .line 476
    const/4 v9, 0x4

    goto/16 :goto_0

    .line 477
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x3

    move/from16 v0, p3

    if-ne v0, v3, :cond_0

    .line 479
    :cond_6
    const/4 v9, 0x3

    goto/16 :goto_0

    .line 529
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "missedCount":J
    .restart local v14    # "values":Landroid/content/ContentValues;
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 533
    :cond_8
    const-string v3, "missed_count"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 578
    .end local v5    # "selection":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "missedCount":J
    :cond_9
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 579
    .local v13, "uri":Landroid/net/Uri;
    return-object v13

    .line 529
    .end local v13    # "uri":Landroid/net/Uri;
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "missedCount":J
    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3
.end method
