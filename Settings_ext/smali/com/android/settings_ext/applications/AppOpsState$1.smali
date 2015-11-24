.class final Lcom/android/settings_ext/applications/AppOpsState$1;
.super Ljava/lang/Object;
.source "AppOpsState.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/AppOpsState$1;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 401
    invoke-virtual {p1}, Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;->iE()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;->iE()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 402
    invoke-virtual {p1}, Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;->iE()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;->iE()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 412
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 402
    goto :goto_0

    .line 404
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;->isRunning()Z

    move-result v2

    invoke-virtual {p2}, Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;->isRunning()Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 406
    invoke-virtual {p1}, Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 408
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 410
    invoke-virtual {p1}, Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 412
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/applications/AppOpsState$1;->sCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;->iD()Lcom/android/settings_ext/applications/AppOpsState$AppEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ext/applications/AppOpsState$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;->iD()Lcom/android/settings_ext/applications/AppOpsState$AppEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ext/applications/AppOpsState$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 397
    check-cast p1, Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;

    check-cast p2, Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ext/applications/AppOpsState$1;->a(Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;Lcom/android/settings_ext/applications/AppOpsState$AppOpEntry;)I

    move-result v0

    return v0
.end method
