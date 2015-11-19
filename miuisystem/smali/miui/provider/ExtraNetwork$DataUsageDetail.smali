.class public final Lmiui/provider/ExtraNetwork$DataUsageDetail;
.super Ljava/lang/Object;
.source "ExtraNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataUsageDetail"
.end annotation


# instance fields
.field public monthTotal:J

.field public monthUsed:J

.field public monthWarning:J

.field public todayUsed:J


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 1
    .param p1, "monthTotal"    # J
    .param p3, "monthUsed"    # J
    .param p5, "monthWarning"    # J
    .param p7, "todayUsed"    # J

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-wide p1, p0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthTotal:J

    .line 398
    iput-wide p3, p0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthUsed:J

    .line 399
    iput-wide p5, p0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthWarning:J

    .line 400
    iput-wide p7, p0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->todayUsed:J

    .line 401
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 405
    const-string v0, "monthTotal:%s, monthUsed:%s, monthWarning:%s, todayUsed:%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthTotal:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthUsed:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthWarning:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->todayUsed:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
