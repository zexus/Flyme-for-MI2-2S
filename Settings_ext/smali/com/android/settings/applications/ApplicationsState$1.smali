.class final Lcom/android/settings/applications/ApplicationsState$1;
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
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$1;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/applications/ApplicationsState$AppEntry;Lcom/android/settings/applications/ApplicationsState$AppEntry;)I
    .locals 5

    .prologue
    const/high16 v4, 0x800000

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 231
    iget-object v0, p1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_2

    move v0, v1

    .line 233
    :goto_0
    iget-object v3, p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    move v2, v1

    .line 235
    :cond_0
    if-eq v0, v2, :cond_3

    .line 236
    if-eqz v0, :cond_1

    const/4 v1, -0x1

    .line 240
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v2

    .line 231
    goto :goto_0

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$1;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->ES:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->ES:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 227
    check-cast p1, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    check-cast p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/ApplicationsState$1;->a(Lcom/android/settings/applications/ApplicationsState$AppEntry;Lcom/android/settings/applications/ApplicationsState$AppEntry;)I

    move-result v0

    return v0
.end method
