.class Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;
.super Ljava/lang/Object;
.source "MiuiUsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecordSize"
.end annotation


# instance fields
.field mRecordCount:I

.field mRecordSize:I

.field mTotalSize:I

.field final synthetic this$0:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;[I)V
    .locals 1
    .param p2, "recordSize"    # [I

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->this$0:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1093
    const/4 v0, 0x0

    aget v0, p2, v0

    iput v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    .line 1094
    const/4 v0, 0x1

    aget v0, p2, v0

    iput v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mTotalSize:I

    .line 1095
    const/4 v0, 0x2

    aget v0, p2, v0

    iput v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    .line 1096
    return-void
.end method
