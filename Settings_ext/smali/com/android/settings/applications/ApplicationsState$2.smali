.class final Lcom/android/settings_ext/applications/ApplicationsState$2;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsState$2;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;)I
    .locals 4

    .prologue
    .line 249
    iget-wide v0, p1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->size:J

    iget-wide v2, p2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 251
    :goto_0
    return v0

    .line 250
    :cond_0
    iget-wide v0, p1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->size:J

    iget-wide v2, p2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsState$2;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 245
    check-cast p1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    check-cast p2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ext/applications/ApplicationsState$2;->a(Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;)I

    move-result v0

    return v0
.end method
