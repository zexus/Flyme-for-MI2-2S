.class public interface abstract Lmiui/provider/VoipContract$VoipStatusColumns;
.super Ljava/lang/Object;
.source "VoipContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/VoipContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VoipStatusColumns"
.end annotation


# static fields
.field public static final ACCOUNT_ACTIVATED:Ljava/lang/String; = "account_activated"

.field public static final ACCOUNT_ACTIVATED_INDEX:I = 0x0

.field public static final AUDIO_ONLINE:Ljava/lang/String; = "audio_online"

.field public static final AUDIO_ONLINE_INDEX:I = 0x2

.field public static final AUDIO_SUPPORT:Ljava/lang/String; = "audio_support"

.field public static final AUDIO_SUPPORT_INDEX:I = 0x1

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final DESCRIPTION_INDEX:I = 0x7

.field public static final INTENT_ACTION:Ljava/lang/String; = "intent_action"

.field public static final INTENT_ACTION_INDEX:I = 0x5

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TITLE_INDEX:I = 0x6

.field public static final VIDEO_ONLINE:Ljava/lang/String; = "video_online"

.field public static final VIDEO_ONLINE_INDEX:I = 0x4

.field public static final VIDEO_SUPPORT:Ljava/lang/String; = "video_support"

.field public static final VIDEO_SUPPORT_INDEX:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 240
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account_activated"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "audio_support"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "audio_online"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "video_support"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "video_online"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "description"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/provider/VoipContract$VoipStatusColumns;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
