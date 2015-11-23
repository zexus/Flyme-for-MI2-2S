.class Lcom/android/settings/applications/RunningState$BaseItem;
.super Ljava/lang/Object;
.source "RunningState.java"


# instance fields
.field final KT:Z

.field KU:Landroid/content/pm/PackageItemInfo;

.field KV:Ljava/lang/CharSequence;

.field KW:I

.field KX:J

.field KY:J

.field KZ:Ljava/lang/String;

.field La:Ljava/lang/String;

.field Lb:Z

.field Lc:Z

.field mDescription:Ljava/lang/String;

.field mLabel:Ljava/lang/String;

.field final mUserId:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningState$BaseItem;->KT:Z

    .line 321
    iput p2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    .line 322
    return-void
.end method
